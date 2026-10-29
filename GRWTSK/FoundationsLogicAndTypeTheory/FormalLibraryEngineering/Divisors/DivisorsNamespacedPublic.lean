-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Divisors.Variantcb89aa5e57d8a41e6390a66446de49669c4939fd88bc0401dbf0de0c080d6ad0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb89aa5e57d8a41e6390a66446de49669c4939fd88bc0401dbf0de0c080d6ad0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Divisors.Variantcb89aa5e57d8a41e6390a66446de49669c4939fd88bc0401dbf0de0c080d6ad0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"cb89aa5e57d8a41e6390a66446de49669c4939fd88bc0401dbf0de0c080d6ad0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/Simproc/Divisors.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Paul Lezeau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Lezeau, Bhavik Mehta
-/
module

public meta import Mathlib.NumberTheory.Divisors
public meta import Mathlib.Tactic.ToAdditive
public meta import Mathlib.Util.Qq
public import Mathlib.Data.Finset.Attr
public import Mathlib.Tactic.Bound.Init
public import Mathlib.Tactic.Common
public import Mathlib.Tactic.Finiteness.Attr
public import Mathlib.Tactic.SetLike
public import Mathlib.Util.CompileInductive

/-! # Divisor Simprocs

This file implements (d)simprocs to compute various objects related to divisors:
- `Nat.divisors_ofNat`: computes `Nat.divisors n` for explicit values of `n`
- `Nat.properDivisors_ofNat`: computes `Nat.properDivisors n` for explicit values of `n`

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Divisors.Variantcb89aa5e57d8a41e6390a66446de49669c4939fd88bc0401dbf0de0c080d6ad0

public meta section

open Lean Meta Simp Qq

/-- The dsimproc `Nat.divisors_ofNat` computes the finset `Nat.divisors n` when `n` is a
numeral. For instance, this simplifies `Nat.divisors 6` to `{1, 2, 3, 6}`. -/
dsimproc_decl Nat.divisors_ofNat (Nat.divisors _) := fun e => do
  unless e.isAppOfArity `Nat.divisors 1 do return .continue
  let some n ← Lean.Nat.fromExpr? e.appArg! | return .continue
  return .done <| mkSetLiteralQ q(Finset ℕ) <| ((unsafe n.divisors.val.unquot).map mkNatLit)

/-- The dsimproc `Nat.properDivisors_ofNat` computes the finset `Nat.properDivisors n` when
`n` is a numeral. For instance, this simplifies `Nat.properDivisors 12` to `{1, 2, 3, 4, 6}`. -/
dsimproc_decl Nat.properDivisors_ofNat (Nat.properDivisors _) := fun e => do
  unless e.isAppOfArity `Nat.properDivisors 1 do return .continue
  let some n ← Lean.Nat.fromExpr? e.appArg! | return .continue
  return unsafe .done <| mkSetLiteralQ q(Finset ℕ) <|
    ((unsafe n.properDivisors.val.unquot).map mkNatLit)
