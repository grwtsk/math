-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PassPipeline.Variantb95f4a1610a53f7dc8edc4e21ec9ddb8a7b1274a15f2c6ff9d76f8c3e738dadc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b95f4a1610a53f7dc8edc4e21ec9ddb8a7b1274a15f2c6ff9d76f8c3e738dadc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PassPipeline.Variantb95f4a1610a53f7dc8edc4e21ec9ddb8a7b1274a15f2c6ff9d76f8c3e738dadc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b95f4a1610a53f7dc8edc4e21ec9ddb8a7b1274a15f2c6ff9d76f8c3e738dadc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/BVDecide/Normalize.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Elab.Tactic.FalseOrByContra
public import Lean.Meta.Tactic.BVDecide.Normalize.Basic
public import Lean.Meta.Tactic.BVDecide.Normalize.ApplyControlFlow
public import Lean.Meta.Tactic.BVDecide.Normalize.Simproc
public import Lean.Meta.Tactic.BVDecide.Normalize.Rewrite
public import Lean.Meta.Tactic.BVDecide.Normalize.AndFlatten
public import Lean.Meta.Tactic.BVDecide.Normalize.EmbeddedConstraint
public import Lean.Meta.Tactic.BVDecide.Normalize.AC
public import Lean.Meta.Tactic.BVDecide.Normalize.Structures
public import Lean.Meta.Tactic.BVDecide.Normalize.IntToBitVec
public import Lean.Meta.Tactic.BVDecide.Normalize.Enums
public import Lean.Meta.Tactic.BVDecide.Normalize.TypeAnalysis
public import Lean.Meta.Tactic.BVDecide.Normalize.ShortCircuit

/-!
This module contains the implementation of `bv_normalize`, the preprocessing tactic for `bv_decide`.
It is in essence a (slightly reduced) version of the Bitwuzla preprocessor together with Lean
specific details.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PassPipeline.Variantb95f4a1610a53f7dc8edc4e21ec9ddb8a7b1274a15f2c6ff9d76f8c3e738dadc

namespace Lean.Meta.Tactic.BVDecide
namespace Normalize

def passPipeline : PreProcessM (List Pass) := do
  let mut passPipeline := [rewriteRulesPass]
  let cfg ← PreProcessM.getConfig

  if cfg.acNf then
    passPipeline := passPipeline ++ [bvAcNormalizePass]

  if cfg.embeddedConstraintSubst && cfg.andFlattening then
    passPipeline := passPipeline ++ [andFlatteningPass]

  if cfg.embeddedConstraintSubst then
    passPipeline := passPipeline ++ [embeddedConstraintPass]

  return passPipeline

public def bvNormalize (g : MVarId) (cfg : Elab.Tactic.BVDecide.BVDecideConfig) :
    MetaM (Option MVarId) := do
  withTraceNode `Meta.Tactic.bv (fun _ => return "Preprocessing goal") do
    (go g).run cfg g
where
  go (g : MVarId) : PreProcessM (Option MVarId) := do
    let some g' ← g.falseOrByContra | return none
    let mut g := g'

    trace[Meta.Tactic.bv] m!"Running preprocessing pipeline on:\n{g}"
    let cfg ← PreProcessM.getConfig

    if cfg.structures || cfg.enums then
      let some g' ← typeAnalysisPass.run g | return none
      g := g'

    /-
    There is a tension between the structures and enums pass at play:
    1. Enums should run before structures as it could convert matches on enums into `cond`
       chains. This in turn can be used by the structures pass to float projections into control
       flow which might be necessary.
    2. Structures should run before enums as it could reveal new facts about enums that we might
       need to handle. For example a structure might contain a field that contains a fact about
       some enum. This fact needs to be processed properly by the enums pass

    To resolve this tension we do the following:
    1. Run the structures pass (if enabled)
    2. Run the enums pass (if enabled)
    3. Within the enums pass we rerun the part of the structures pass that could profit from the
       enums pass as described above. This comes down to adding a few more lemmas to a simp
       invocation that is going to happen in the enums pass anyway and should thus be cheap.
    -/
    if cfg.structures then
      let some g' ← structuresPass.run g | return none
      g := g'

    if cfg.enums then
      let some g' ← enumsPass.run g | return none
      g := g'

    if cfg.fixedInt then
      let some g' ← intToBitVecPass.run g | return none
      g := g'

    trace[Meta.Tactic.bv] m!"Running fixpoint pipeline on:\n{g}"
    let pipeline ← passPipeline
    let some g' ← Pass.fixpointPipeline pipeline g | return none
    /-
    Run short circuiting once post fixpoint, as it increases the size of terms with
    the aim of exposing potential short-circuit reasoning to the solver.
    -/
    if cfg.shortCircuit then
      shortCircuitPass |>.run g'
    else
      return g'

end Normalize
end Lean.Meta.Tactic.BVDecide
