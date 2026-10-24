# Complete source: GRWTSK.Algebra.Expand.Variant0e52f0c9531504161a277ebc8e30004cbb2bb80bf7fe08a83936fe097386d32a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e77cb70151853865ea8417b14363edcb62805e46` · SHA-256 `3b37a59ad66a7c3bac481b29da71eadc13482e14f15ed93276b29e792063f799`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Expand.Variant841ced8e348214d5a83f6af7c19b6c0f342c6e15f4da7ccdba0da94084e27b61","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"841ced8e348214d5a83f6af7c19b6c0f342c6e15f4da7ccdba0da94084e27b61","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Expand.Variant841ced8e348214d5a83f6af7c19b6c0f342c6e15f4da7ccdba0da94084e27b61","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"841ced8e348214d5a83f6af7c19b6c0f342c6e15f4da7ccdba0da94084e27b61","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/PowerSeries/Expand.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Wenrong Zou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wenrong Zou
-/
module

public import Mathlib.RingTheory.PowerSeries.Substitution
public import Mathlib.RingTheory.MvPowerSeries.Expand

/-!
## Expand power series

Given a power series `φ`, one may replace every occurrence of `X i` by `X i ^ n`,
for some nonzero natural number `n`.
This operation is called `PowerSeries.expand` and it is an algebra homomorphism.

### Main declaration

* `PowerSeries.expand`: expand a power series by a nonzero factor of p,
  so `∑ aₙ xⁿ` becomes `∑ aₙ xⁿᵖ`.
-/


namespace GRWTSK.Algebra.Expand.Variant841ced8e348214d5a83f6af7c19b6c0f342c6e15f4da7ccdba0da94084e27b61

@[expose] public section

namespace PowerSeries

variable {τ R S : Type*} [CommRing R] [CommRing S] (p : ℕ) (hp : p ≠ 0)

/-- Expand the power series by a factor of p, so `∑ aₙ xⁿ` becomes `∑ aₙ xⁿᵖ`.

See also `PowerSeries.expand`. -/
noncomputable def expand : PowerSeries R →ₐ[R] PowerSeries R :=
  MvPowerSeries.expand p hp

theorem expand_apply (f : PowerSeries R) : expand p hp f = subst (X ^ p) f := by
  simp [expand, MvPowerSeries.expand, subst, X]

theorem expand_C (r : R) : expand p hp (C r : PowerSeries R) = C r := by
  conv_lhs => rw [← mul_one (C r), ← smul_eq_C_mul, expand, AlgHom.map_smul_of_tower,
    map_one, smul_eq_C_mul, mul_one]

theorem expand_mul_eq_comp (q : ℕ) (hq : q ≠ 0) :
    expand (p * q) (p.mul_ne_zero hp hq) = (expand p hp (R := R)).comp (expand q hq) := by
  ext1 i
  simp [expand, MvPowerSeries.expand_mul_eq_comp p hp q hq]

theorem expand_mul (q : ℕ) (hq : q ≠ 0) (φ : PowerSeries R) :
    φ.expand (p * q) (p.mul_ne_zero hp hq) = (φ.expand q hq).expand p hp :=
  DFunLike.congr_fun (expand_mul_eq_comp p hp q hq) φ

theorem expand_smul (a : R) (φ : PowerSeries R) :
    expand p hp (a • φ) = a • φ.expand p hp := AlgHom.map_smul_of_tower _ _ _

@[simp]
theorem expand_X : expand p hp (X (R := R)) = X ^ p :=
  substAlgHom_X (HasSubst.X_pow hp)

@[simp]
theorem expand_monomial (d : ℕ) (r : R) :
    expand p hp (monomial d r) = monomial (p * d) r := by
  simp [expand, monomial, MvPowerSeries.expand_monomial]

@[simp]
theorem expand_one : expand 1 one_ne_zero = AlgHom.id R (PowerSeries R) := by
  simp [expand]

theorem expand_one_apply (f : PowerSeries R) : expand 1 one_ne_zero f = f := by simp

@[simp]
theorem map_expand (f : R →+* S) (φ : PowerSeries R) :
    map f (expand p hp φ) = expand p hp (map f φ) := by
  simp [map, expand, MvPowerSeries.map_expand]

theorem expand_subst {f : MvPowerSeries τ S} (hf : HasSubst f) (φ : PowerSeries S) :
    (subst f φ).expand p hp = subst (f.expand p hp) φ := by
  rw [PowerSeries.subst, MvPowerSeries.expand_subst _ hp (HasSubst.const hf) (φ := φ),
    PowerSeries.subst]

/- TODO : In the original file of multivariate polynomial, there are two theorems about rename
here, but we don't have rename for multivariate power series. And for `eval₂Hom`, `eval₂`
and `aeval`, the expression does not look good. -/

variable (φ : PowerSeries R) (q : ℕ) (hq : 0 < q)

@[simp]
theorem coeff_expand_mul (m : ℕ) :
    (expand p hp φ).coeff (p * m) = φ.coeff m := by
  rw [coeff, coeff, expand, ← smul_eq_mul, ← Finsupp.smul_single, MvPowerSeries.coeff_expand_smul]

@[simp]
theorem constantCoeff_expand (φ : PowerSeries R) :
    (φ.expand p hp).constantCoeff = φ.constantCoeff := by
  conv_lhs => rw [← coeff_zero_eq_constantCoeff, ← mul_zero p, coeff_expand_mul]
  simp

theorem coeff_expand_of_not_dvd {m : ℕ} (h : ¬ p ∣ m) :
    (expand p hp φ).coeff m = 0 := by
  rw [coeff, expand, MvPowerSeries.coeff_expand_of_not_dvd (i := ())]
  simpa

theorem support_expand_subset :
    (expand p hp φ).support ⊆ φ.support.image (p • ·) := by
  rw [expand, MvPowerSeries.support_expand]

theorem support_expand :
    (expand p hp φ).support = φ.support.image (p • ·) := by
  rw [expand, MvPowerSeries.support_expand]

theorem coeff_expand {n : ℕ} :
    (φ.expand p hp).coeff n = if p ∣ n then φ.coeff (n / p) else 0 := by
  split_ifs with h
  · obtain ⟨q, hq⟩ := h
    rw [hq, coeff_expand_mul, Nat.mul_div_cancel_left _ (p.pos_of_ne_zero hp)]
  exact coeff_expand_of_not_dvd p hp _ h

@[simp]
theorem order_expand : (φ.expand p hp).order = p • φ.order := by
  simp_rw [expand, order_eq_order, MvPowerSeries.order_expand p hp φ]

section ExpChar

variable [ExpChar R p]

theorem map_frobenius_expand {f : R⟦X⟧} :
    (f.expand p hp).map (frobenius R p) = f ^ p := by
  rw [expand, map, MvPowerSeries.map_frobenius_expand _ hp]

theorem map_iterateFrobenius_expand (f : R⟦X⟧) (n : ℕ) :
    map (iterateFrobenius R p n) (expand (p ^ n) (pow_ne_zero n hp) f) = f ^ p ^ n := by
  rw [expand, map, MvPowerSeries.map_iterateFrobenius_expand _ hp]

theorem _root_.GRWTSK.Algebra.Expand.Variant841ced8e348214d5a83f6af7c19b6c0f342c6e15f4da7ccdba0da94084e27b61.FiniteField.PowerSeries.expand_card {K : Type*} [Field K] [Fintype K] (f : K⟦X⟧) :
    f.expand (Fintype.card K) Fintype.card_ne_zero = f ^ (Fintype.card K) := by
  rw [expand, FiniteField.MvPowerSeries.expand_card]

end ExpChar

end PowerSeries
```
