-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConstructorsTransparency.Variantb2851bc173f7f3696edc89592b8b59b4e4b78a271a0c78eb2b46d2ff7fa701fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b2851bc173f7f3696edc89592b8b59b4e4b78a271a0c78eb2b46d2ff7fa701fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ConstructorsTransparency.Variantb2851bc173f7f3696edc89592b8b59b4e4b78a271a0c78eb2b46d2ff7fa701fb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b2851bc173f7f3696edc89592b8b59b4e4b78a271a0c78eb2b46d2ff7fa701fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Builder/Constructors.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Builder.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConstructorsTransparency.Variantb2851bc173f7f3696edc89592b8b59b4e4b78a271a0c78eb2b46d2ff7fa701fb

public section

open Lean
open Lean.Meta

namespace Aesop.RuleBuilderOptions

def constructorsTransparency (opts : RuleBuilderOptions) : TransparencyMode :=
  opts.transparency?.getD .default

def constructorsIndexTransparency (opts : RuleBuilderOptions) : TransparencyMode :=
  opts.indexTransparency?.getD .reducible

end RuleBuilderOptions

namespace RuleBuilder

def getConstructorsIndexingMode (indexMd : TransparencyMode)
    (info : InductiveVal) : MetaM IndexingMode := do
  if indexMd != .reducible then
    return .unindexed
  else
    let mut imodes := Array.mkEmpty info.numCtors
    for ctor in info.ctors do
      let ctorInfo ← getConstInfo ctor
      let imode ← IndexingMode.targetMatchingConclusion ctorInfo.type
      imodes := imodes.push imode
    return .or imodes

def constructorsCore (info : InductiveVal) (imode? : Option IndexingMode)
    (md indexMd : TransparencyMode) (phase : PhaseSpec) :
    MetaM LocalRuleSetMember := do
  let tac := .constructors info.ctors.toArray md
  let imode ← imode?.getDM $ getConstructorsIndexingMode indexMd info
  return .global $ .base $
    phase.toRule info.name .constructors .global tac imode none

def constructors : RuleBuilder := λ input => do
  let (_, info) ← elabInductiveRuleIdent .constructors input.term .default
  let opts := input.options
  constructorsCore info opts.indexingMode? opts.constructorsTransparency
    opts.constructorsIndexTransparency input.phase

end Aesop.RuleBuilder
