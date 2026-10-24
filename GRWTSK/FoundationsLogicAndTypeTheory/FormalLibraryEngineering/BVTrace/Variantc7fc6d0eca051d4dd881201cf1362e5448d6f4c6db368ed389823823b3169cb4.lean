-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLratFileName.Variant412442b6dddab5b698cff42e19f267f57368d373e10b434dd160da1eb2d65ad5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"412442b6dddab5b698cff42e19f267f57368d373e10b434dd160da1eb2d65ad5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetLratFileName.Variant412442b6dddab5b698cff42e19f267f57368d373e10b434dd160da1eb2d65ad5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"412442b6dddab5b698cff42e19f267f57368d373e10b434dd160da1eb2d65ad5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/BVDecide/BVTrace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Elab.Tactic.BVDecide.BVCheck
import Lean.Meta.Tactic.BVDecide.LRAT.Trim


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLratFileName.Variant412442b6dddab5b698cff42e19f267f57368d373e10b434dd160da1eb2d65ad5

public section

/-!
This module contains the implementation of `bv_decide?`.
-/

namespace Lean.Elab.Tactic.BVDecide
namespace BVTrace


-- TODO: think of a more maintainable file pattern for this stuff.
/--
Produce a file with the pattern:
LeanFileName-DeclName-Line-Col.lrat
-/
def getLratFileName : TermElabM System.FilePath := do
  let some baseName := System.FilePath.mk (← getFileName) |>.fileName | throwError "could not find file name"
  let some declName ← Term.getDeclName? | throwError "could not find declaration name"
  let pos := (← getFileMap).toPosition (← getRefPos)
  return s!"{baseName}-{declName}-{pos.line}-{pos.column}.lrat"

open Std.Tactic.BVDecide.LRAT in
open Lean.Meta.Tactic in
open Lean.Meta.Tactic.BVDecide in
@[builtin_tactic Lean.Parser.Tactic.bvTrace]
def evalBvTrace : Tactic := fun
  | `(tactic| bv_decide?%$tk $cfgStx:optConfig) => do
    let cfg := { (← elabBVDecideConfig cfgStx) with trimProofs := false }
    let lratFile : System.FilePath ← BVTrace.getLratFileName
    let ctx ← BVCheck.mkContext lratFile cfg
    let g ← getMainGoal
    let trace ← g.withContext do
      bvDecide g ctx
    /-
    Ideally trace.lratCert would be the `ByteArray` version of the proof already and we just write
    it. This isn't yet possible so instead we do the following:
    1. Produce the proof in the tactic.
    2. Skip trimming it in the tactic.
    3. Run trimming on the LRAT file that was produced by the SAT solver directly, emitting the
       correct binary format according to `sat.binaryProofs`.
    TODO: Fix this hack:
    1. Introduce `ByteArray` literals to the kernel.
    2. Just return the fully trimmed proof in the format desired by the configuration from `bvDecide`.
    3. Write it to the file directly.
    -/
    match trace.lratCert with
    | none =>
      let normalizeStx ← `(tactic| bv_normalize)
      TryThis.addSuggestion tk normalizeStx (origSpan? := ← getRef)
    | some .. =>
      if ctx.config.trimProofs then
        let lratPath := (← BVCheck.getSrcDir) / lratFile
        let proof ← loadLRATProof lratPath
        let trimmed ← IO.ofExcept <| LRAT.trim proof
        dumpLRATProof lratPath trimmed cfg.binaryProofs
      let bvCheckStx ← `(tactic| bv_check $cfgStx:optConfig $(quote lratFile.toString))
      TryThis.addSuggestion tk bvCheckStx (origSpan? := ← getRef)
  | _ => throwUnsupportedSyntax

end BVTrace
end Lean.Elab.Tactic.BVDecide
