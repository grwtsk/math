# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NormSimp.Variant5e736d9b742ae4d483c088d5665f4d973c6ddebab090e505f14495a63ab68845

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66bcd52058f46c89ee84487896e69224ee5e31b0` · SHA-256 `cf4e9acce030fbad41c1eb117f2cc10dd34a2e8828458ec0a9d8d08c69d93f06`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetSimpEntriesFromPropConst.Variantd10cbc2104999437682e32d075dc10229b277cc7cdf5f157ad5fc77cae4b1f94","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d10cbc2104999437682e32d075dc10229b277cc7cdf5f157ad5fc77cae4b1f94","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetSimpEntriesFromPropConst.Variantd10cbc2104999437682e32d075dc10229b277cc7cdf5f157ad5fc77cae4b1f94","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d10cbc2104999437682e32d075dc10229b277cc7cdf5f157ad5fc77cae4b1f94","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Builder/NormSimp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Builder.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetSimpEntriesFromPropConst.Variantd10cbc2104999437682e32d075dc10229b277cc7cdf5f157ad5fc77cae4b1f94

public section

open Lean
open Lean.Meta

namespace Aesop

private def getSimpEntriesFromPropConst (decl : Name) :
    MetaM (Array SimpEntry) := do
  let thms ← ({} : SimpTheorems).addConst decl
  return SimpTheorems.simpEntries thms

private def getSimpEntriesForConst (decl : Name) : MetaM (Array SimpEntry) := do
  let info ← getConstInfo decl
  let mut thms : SimpTheorems := {}
  if (← isProp info.type) then
    thms ← thms.addConst decl
  else if info.hasValue then
    thms ← thms.addDeclToUnfold decl
  return SimpTheorems.simpEntries thms

def PhaseSpec.getSimpPrio [Monad m] [MonadError m] : PhaseSpec → m Nat
  | .norm info =>
    if info.penalty ≥ 0 then
      return info.penalty.toNat
    else
      throwError "aesop: simp rules must be given a non-negative integer priority"
  | _ => throwError "aesop: simp builder can only construct 'norm' rules"

namespace RuleBuilder

def simpCore (decl : Name) (phase : PhaseSpec) : MetaM LocalRuleSetMember :=
  withExceptionTransform (λ msg => m!"aesop: simp builder: exception while trying to add {decl} as a simp theorem:{indentD msg}") do
    let entries ← getSimpEntriesForConst decl
    let prio ← phase.getSimpPrio
    let entries := entries.map (updateSimpEntryPriority prio)
    let name :=
      { name := decl, scope := .global, builder := .simp, phase := .norm }
    return .global $ .normSimpRule { name, entries }

def simp : RuleBuilder := λ input => do
  if let some decl ← elabGlobalRuleIdent? input.term then
    simpCore decl input.phase
  else
    checkElabRuleTermForSimp input.term (isSimpAll := true) -- TODO (isSimpAll := true) correct?
    return .localNormSimpRule {
      id := ← mkFreshId
      simpTheorem := input.term
    }

end Aesop.RuleBuilder
```
