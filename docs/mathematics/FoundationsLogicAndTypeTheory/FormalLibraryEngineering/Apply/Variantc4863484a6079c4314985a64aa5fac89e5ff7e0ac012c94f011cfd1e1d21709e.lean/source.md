# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Apply.Variantc4863484a6079c4314985a64aa5fac89e5ff7e0ac012c94f011cfd1e1d21709e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84efa169e293e4312092de87b03932ad93f21d1d` · SHA-256 `60713fc5f944aef1a854496a55c6dabf1f40e6c5ae341187e9186655a4e672bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyTransparency.Variant1d75e204b0b0a7e29978e20cb0c1ab833a8fa701a91e3bef8f947c488ed6b10b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d75e204b0b0a7e29978e20cb0c1ab833a8fa701a91e3bef8f947c488ed6b10b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ApplyTransparency.Variant1d75e204b0b0a7e29978e20cb0c1ab833a8fa701a91e3bef8f947c488ed6b10b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1d75e204b0b0a7e29978e20cb0c1ab833a8fa701a91e3bef8f947c488ed6b10b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Builder/Apply.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Builder.Basic
import Batteries.Lean.Expr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyTransparency.Variant1d75e204b0b0a7e29978e20cb0c1ab833a8fa701a91e3bef8f947c488ed6b10b

public section

open Lean
open Lean.Meta

namespace Aesop

namespace RuleBuilderOptions

def applyTransparency (opts : RuleBuilderOptions) : TransparencyMode :=
  opts.transparency?.getD .default

def applyIndexTransparency (opts : RuleBuilderOptions) : TransparencyMode :=
  opts.indexTransparency?.getD .reducible

end RuleBuilderOptions

namespace RuleBuilder

def getApplyIndexingMode (indexMd : TransparencyMode) (type : Expr) :
    MetaM IndexingMode :=
  if indexMd != .reducible then
    return .unindexed
  else
    IndexingMode.targetMatchingConclusion type

def checkNoIff (type : Expr) : MetaM Unit := do
  if aesop.warn.applyIff.get (← getOptions) then
    forallTelescope type λ _ conclusion => do
      if ← testHelper conclusion λ e => return e.isAppOf' ``Iff then
        logWarning m!"Apply builder was used for a theorem with conclusion A ↔ B.\nYou probably want to use the simp builder or create an alias that applies the theorem in one direction.\nUse `set_option aesop.warn.applyIff false` to disable this warning."

def applyCore (t : ElabRuleTerm) (pat? : Option RulePattern)
    (imode? : Option IndexingMode) (md indexMd : TransparencyMode)
    (phase : PhaseSpec) : MetaM LocalRuleSetMember := do
  let e ← t.expr
  let type ← inferType e
  let imode ← imode?.getDM $ getApplyIndexingMode indexMd type
  let tac := .apply t.toRuleTerm md
  return .global $ .base $ phase.toRule (← t.name) .apply t.scope tac imode pat?

def apply : RuleBuilder := λ input => do
  let opts := input.options
  let e ← elabRuleTermForApplyLike input.term
  let t := ElabRuleTerm.ofElaboratedTerm input.term e
  let type ← inferType e
  checkNoIff type
  let pat? ← opts.pattern?.mapM (RulePattern.elab · e)
  applyCore t pat? opts.indexingMode? opts.applyTransparency
    opts.applyIndexTransparency input.phase

end Aesop.RuleBuilder
```
