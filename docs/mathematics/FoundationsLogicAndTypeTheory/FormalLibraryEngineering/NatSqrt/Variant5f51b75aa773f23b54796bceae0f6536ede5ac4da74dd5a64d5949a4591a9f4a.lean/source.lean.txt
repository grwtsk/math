-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatSqrtHelper.Variant8f0ed5745469053403bbad5141979a5d4b995850db0318e3ff85fec6a17f5878","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8f0ed5745469053403bbad5141979a5d4b995850db0318e3ff85fec6a17f5878","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.NatSqrtHelper.Variant8f0ed5745469053403bbad5141979a5d4b995850db0318e3ff85fec6a17f5878","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8f0ed5745469053403bbad5141979a5d4b995850db0318e3ff85fec6a17f5878","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/NormNum/NatSqrt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Kyle Miller
-/
module

public import Mathlib.Tactic.NormNum

/-! # `norm_num` extension for `Nat.sqrt`

This module defines a `norm_num` extension for `Nat.sqrt`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatSqrtHelper.Variant8f0ed5745469053403bbad5141979a5d4b995850db0318e3ff85fec6a17f5878

public meta section

namespace Mathlib.Meta

namespace NormNum

open Qq Lean Elab.Tactic Mathlib.Meta.NormNum

lemma nat_sqrt_helper {x y r : ℕ} (hr : y * y + r = x) (hle : Nat.ble r (2 * y)) :
    Nat.sqrt x = y := by
  rw [← hr, ← pow_two]
  rw [two_mul] at hle
  exact Nat.sqrt_add_eq' _ (Nat.le_of_ble_eq_true hle)

theorem isNat_sqrt : {x nx z : ℕ} → IsNat x nx → Nat.sqrt nx = z → IsNat (Nat.sqrt x) z
  | _, _, _, ⟨rfl⟩, rfl => ⟨rfl⟩

/-- Given the natural number literal `ex`, returns its square root as a natural number literal
and an equality proof. Panics if `ex` isn't a natural number literal. -/
def proveNatSqrt (ex : Q(ℕ)) : (ey : Q(ℕ)) × Q(Nat.sqrt $ex = $ey) :=
  match ex.natLit! with
  | 0 => have : $ex =Q nat_lit 0 := ⟨⟩; ⟨q(nat_lit 0), q(Nat.sqrt_zero)⟩
  | 1 => have : $ex =Q nat_lit 1 := ⟨⟩; ⟨q(nat_lit 1), q(Nat.sqrt_one)⟩
  | x =>
    let y := Nat.sqrt x
    have ey : Q(ℕ) := mkRawNatLit y
    have er : Q(ℕ) := mkRawNatLit (x - y * y)
    have hr : Q($ey * $ey + $er = $ex) := (q(Eq.refl $ex) : Expr)
    have hle : Q(Nat.ble $er (2 * $ey)) := (q(Eq.refl true) : Expr)
    ⟨ey, q(nat_sqrt_helper $hr $hle)⟩

/-- Evaluates the `Nat.sqrt` function. -/
@[norm_num Nat.sqrt _]
def evalNatSqrt : NormNumExt where eval {_ _} e := do
  let .app _ (x : Q(ℕ)) ← Meta.whnfR e | failure
  let sℕ : Q(AddMonoidWithOne ℕ) := q(Nat.instAddMonoidWithOne)
  let ⟨ex, p⟩ ← deriveNat x sℕ
  let ⟨ey, pf⟩ := proveNatSqrt ex
  let pf' : Q(IsNat (Nat.sqrt $x) $ey) := q(isNat_sqrt $p $pf)
  return .isNat sℕ ey pf'

end NormNum

end Mathlib.Meta
