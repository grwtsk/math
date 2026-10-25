# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RealSqrt.Variantbe792ca894c6dc86bf3199757f6fa1a5f32e31a98581d99dd17ba69c2ecb9399

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5968b4578dc7656e01b2f1133d4d2aa406b3d571` · SHA-256 `13d33e0c0a73ad244ef406d4673601832a6c76dd4b1677df59dd741fa2f87787`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsNatRealSqrt.Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IsNatRealSqrt.Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"a0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/NormNum/RealSqrt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Frédéric Dupuis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Frédéric Dupuis
-/
import Mathlib.Data.Real.Sqrt

/-! # `norm_num` extension for `Real.sqrt`

This module defines a `norm_num` extension for `Real.sqrt` and `NNReal.sqrt`.

## Implementation notes

While the extension for `Real.sqrt` can handle both integers and rationals, the one for
`NNReal.sqrt` can only deal with integers, due to a limitation of norm_num
(i.e. the `IsRat` type requires a Ring instance).
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsNatRealSqrt.Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8

namespace Tactic.NormNum

open Qq Lean Lean.Meta Elab.Tactic Mathlib.Meta.NormNum NNReal

lemma isNat_realSqrt {x : ℝ} {nx ny : ℕ} (h : IsNat x nx) (hy : ny * ny = nx) :
    IsNat √x ny := ⟨by simp [h.out, ← hy]⟩

lemma isNat_nnrealSqrt {x : ℝ≥0} {nx ny : ℕ} (h : IsNat x nx) (hy : ny * ny = nx) :
    IsNat (NNReal.sqrt x) ny := ⟨by simp [h.out, ← hy]⟩

lemma isNat_realSqrt_neg {x : ℝ} {nx : ℕ} (h : IsInt x (Int.negOfNat nx)) :
    IsNat √x (nat_lit 0) := ⟨by simp [Real.sqrt_eq_zero', h.out]⟩

lemma isNat_realSqrt_of_isRat_negOfNat {x : ℝ} {num : ℕ} {denom : ℕ}
    (h : IsRat x (.negOfNat num) denom) : IsNat √x (nat_lit 0) := by
  refine ⟨?_⟩
  obtain ⟨inv, rfl⟩ := h
  have h₁ : 0 ≤ (num : ℚ) * ⅟(denom : ℝ) :=
    mul_nonneg (Nat.cast_nonneg' _) (invOf_nonneg.2 <| Nat.cast_nonneg' _)
  simpa [Nat.cast_zero, Real.sqrt_eq_zero', Int.cast_negOfNat, neg_mul, neg_nonpos] using h₁

lemma isRat_realSqrt_of_isRat_ofNat {x : ℝ} {n sn : ℕ} {d sd : ℕ} (hn : sn * sn = n)
    (hd : sd * sd = d) (h : IsRat x (.ofNat n) d) :
    IsRat √x (.ofNat sn) sd := by
  obtain ⟨_, rfl⟩ := h
  refine ⟨?_, ?out⟩
  · apply invertibleOfNonzero
    rw [← mul_self_ne_zero, ← Nat.cast_mul, hd]
    exact Invertible.ne_zero _
  · simp [← hn, ← hd, Real.sqrt_mul (mul_self_nonneg ↑sn)]

/-- `norm_num` extension that evaluates the function `Real.sqrt`. -/
@[norm_num √_]
def evalRealSqrt : NormNumExt where eval {u α} e := do
  match u, α, e with
  | 0, ~q(ℝ), ~q(√$x) =>
    match ← derive x with
    | .isBool _ _ => failure
    | .isNat sℝ ex pf =>
        let x := ex.natLit!
        let y := Nat.sqrt x
        unless y * y = x do failure
        have ey : Q(ℕ) := mkRawNatLit y
        have pf₁ : Q($ey * $ey = $ex) := (q(Eq.refl $ex) : Expr)
        assumeInstancesCommute
        return .isNat q($sℝ) q($ey) q(isNat_realSqrt $pf $pf₁)
    | .isNegNat _ ex pf =>
        -- Recall that `Real.sqrt` returns 0 for negative inputs
        assumeInstancesCommute
        return .isNat q(inferInstance) q(nat_lit 0) q(isNat_realSqrt_neg $pf)
    | .isRat sℝ eq en ed pf =>
        match en with
        | .app (.const ``Int.negOfNat []) (n : Q(ℕ)) =>
          assumeInstancesCommute
          return .isNat q(inferInstance) q(nat_lit 0) q(isNat_realSqrt_of_isRat_negOfNat $pf)
        | .app (.const ``Int.ofNat []) (n' : Q(ℕ)) =>
          let n : ℕ := n'.natLit!
          let d : ℕ := ed.natLit!
          let sn := Nat.sqrt n
          let sd := Nat.sqrt d
          unless sn * sn = n ∧ sd * sd = d do failure
          have esn : Q(ℕ) := mkRawNatLit sn
          have esd : Q(ℕ) := mkRawNatLit sd
          have hn : Q($esn * $esn = $n') := (q(Eq.refl $n') : Expr)
          have hd : Q($esd * $esd = $ed) := (q(Eq.refl $ed) : Expr)
          assumeInstancesCommute
          return .isRat q($sℝ) (sn / sd) _ q($esd) q(isRat_realSqrt_of_isRat_ofNat $hn $hd $pf)
        | _ => failure
  | _ => failure

/-- `norm_num` extension that evaluates the function `NNReal.sqrt`. -/
@[norm_num NNReal.sqrt _]
def evalNNRealSqrt : NormNumExt where eval {u α} e := do
  match u, α, e with
  | 0, ~q(NNReal), ~q(NNReal.sqrt $x) =>
    match ← derive x with
    | .isBool _ _ => failure
    | .isNat sℝ ex pf =>
        let x := ex.natLit!
        let y := Nat.sqrt x
        unless y * y = x do failure
        have ey : Q(ℕ) := mkRawNatLit y
        have pf₁ : Q($ey * $ey = $ex) := (q(Eq.refl $ex) : Expr)
        assumeInstancesCommute
        return .isNat sℝ ey q(isNat_nnrealSqrt $pf $pf₁)
    | .isNegNat _ ex pf => failure
    | .isRat sℝ eq en ed pf =>
        -- `IsRat` only works on types with a `Ring` instance, so it can't work on `ℝ≥0`.
        failure
  | _ => failure

end Tactic.NormNum
```
