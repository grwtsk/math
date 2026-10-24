# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CatalanJacobiResolvent.Variant05d526901467237bf96f56f5a1df3a6b8a6b1b2160e683b17b731516f2259b69

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f001d4b47c2205be652e6a1aafff105876f671b` · SHA-256 `943ca46417dcf11a91c55cbdead9d1d5b56f57519898e59a92527a23c48882ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EvenMomentSeries.Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.EvenMomentSeries.Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/CatalanJacobiResolvent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 grwtsk. All rights reserved.
Released under MIT license as described in the file LICENSE.
-/

import FormalResearch.RiemannHypothesis.CatalanJacobi
import Mathlib.RingTheory.PowerSeries.Catalan
import Mathlib.RingTheory.PowerSeries.Inverse
import Mathlib.RingTheory.PowerSeries.Expand

/-!
# Formal free-Jacobi generating function and continued-fraction recursion

The generating series is constructed from the already proved operator
coefficients, rather than defined to have Catalan coefficients. Its recursion
is a formal-power-series identity. No assertion about the domain of an
analytic Hilbert-space resolvent or the spectrum of a deformed operator is
made here.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EvenMomentSeries.Variant6e39611cfad1206015970e21b42538866bbddaa85b5f3bb5839746e70a7148f2

namespace FormalResearch.RiemannHypothesis.CatalanJacobi

/-- The even-moment generating series of the genuine free Jacobi operator,
with the Catalan normalization `C₀ = 1`. -/
noncomputable def evenMomentSeries : PowerSeries ℕ :=
  PowerSeries.mk (fun n => cyclicCoefficient (R := ℕ) (2 * n))

lemma evenMomentSeries_eq_catalanSeries : evenMomentSeries = PowerSeries.catalanSeries := by
  ext n
  simp [evenMomentSeries, cyclicCoefficient_even]

lemma evenMomentSeries_fixed_point :
    evenMomentSeries = 1 + PowerSeries.X * evenMomentSeries ^ 2 := by
  rw [evenMomentSeries_eq_catalanSeries]
  simpa [add_comm, mul_comm] using PowerSeries.catalanSeries_sq_mul_X_add_one.symm


/-- Rational coefficients permit subtraction and the formal continued-fraction
inverse. The coefficient at `n` is the free cyclic coefficient at exponent `2n`. -/
noncomputable def evenMomentSeriesRat : PowerSeries ℚ :=
  PowerSeries.map (Nat.castRingHom ℚ) evenMomentSeries

lemma evenMomentSeriesRat_coeff (n : ℕ) :
    PowerSeries.coeff n evenMomentSeriesRat = cyclicCoefficient (R := ℚ) (2 * n) := by
  simp [evenMomentSeriesRat, evenMomentSeries, cyclicCoefficient_even]

lemma evenMomentSeriesRat_fixed_point :
    evenMomentSeriesRat = 1 + PowerSeries.X * evenMomentSeriesRat ^ 2 := by
  have H := congrArg (PowerSeries.map (Nat.castRingHom ℚ)) evenMomentSeries_fixed_point
  simpa [evenMomentSeriesRat] using H

lemma evenMomentSeriesRat_constantCoeff : PowerSeries.constantCoeff evenMomentSeriesRat = 1 := by
  rw [← PowerSeries.coeff_zero_eq_constantCoeff_apply, evenMomentSeriesRat_coeff]
  simpa using cyclicCoefficient_even (R := ℚ) 0

lemma evenMomentSeriesRat_mul_denominator :
    evenMomentSeriesRat * (1 - PowerSeries.X * evenMomentSeriesRat) = 1 := by
  have H := evenMomentSeriesRat_fixed_point
  calc
    evenMomentSeriesRat * (1 - PowerSeries.X * evenMomentSeriesRat) =
        evenMomentSeriesRat - PowerSeries.X * evenMomentSeriesRat ^ 2 := by ring
    _ = 1 := by linear_combination H

/-- Formal self-similar J-fraction equation, with invertible denominator of
constant coefficient `1`. It is the algebraic free-Jacobi recursion. -/
lemma evenMomentSeriesRat_jFraction :
    evenMomentSeriesRat = (1 - PowerSeries.X * evenMomentSeriesRat)⁻¹ := by
  apply (PowerSeries.eq_inv_iff_mul_eq_one (by simp)).mpr
  exact evenMomentSeriesRat_mul_denominator


/-- The formal cyclic resolvent expansion at infinity, with reciprocal-energy
variable `X`: the coefficient at `n` is `⟨e₀, Jfree^n e₀⟩`. -/
noncomputable def formalResolventSeries : PowerSeries ℚ :=
  PowerSeries.expand 2 (by decide) evenMomentSeriesRat

lemma formalResolventSeries_coeff (n : ℕ) :
    PowerSeries.coeff n formalResolventSeries = cyclicCoefficient (R := ℚ) n := by
  obtain ⟨k, H | H⟩ := Nat.even_or_odd' n
  · rw [H, formalResolventSeries, PowerSeries.coeff_expand_mul, evenMomentSeriesRat_coeff]
  · rw [H, cyclicCoefficient_odd, formalResolventSeries,
      PowerSeries.coeff_expand_of_not_dvd]
    omega

lemma formalResolventSeries_fixed_point :
    formalResolventSeries = 1 + PowerSeries.X ^ 2 * formalResolventSeries ^ 2 := by
  have H := congrArg (PowerSeries.expand 2 (by decide)) evenMomentSeriesRat_fixed_point
  simpa [formalResolventSeries] using H

lemma formalResolventSeries_mul_denominator :
    formalResolventSeries * (1 - PowerSeries.X ^ 2 * formalResolventSeries) = 1 := by
  have H := formalResolventSeries_fixed_point
  calc
    formalResolventSeries * (1 - PowerSeries.X ^ 2 * formalResolventSeries) =
        formalResolventSeries - PowerSeries.X ^ 2 * formalResolventSeries ^ 2 := by ring
    _ = 1 := by linear_combination H

/-- Exact formal Riccati/J-fraction recursion of the cyclic free Jacobi data.
The `X²` tracks one up-step and one down-step; it must not be replaced by `X`
in the full-moment series. -/
lemma formalResolventSeries_jFraction :
    formalResolventSeries = (1 - PowerSeries.X ^ 2 * formalResolventSeries)⁻¹ := by
  apply (PowerSeries.eq_inv_iff_mul_eq_one (by simp)).mpr
  exact formalResolventSeries_mul_denominator

end FormalResearch.RiemannHypothesis.CatalanJacobi
```
