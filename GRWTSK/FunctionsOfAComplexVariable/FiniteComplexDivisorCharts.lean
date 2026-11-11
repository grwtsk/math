/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain their upstream authorship and licenses. -/
import GRWTSK.FunctionsOfAComplexVariable.AnalyticOrderTransport

/-!
# Finite complex source charts with analytic multiplicities

RP-OC-05, issue #1809. MSC2020: 30C15, 30B10.

Generalizes the multiplicity argument in RP-OC-08 from real indexed spectra to
arbitrary distinct COMPLEX locations with positive natural multiplicities.
Uses the same finite-product analytic-order argument without restricting root
coordinates to the real line. No reality or simplicity is assumed. The source identity is local on an open domain and the multiplier
is analytic and nonvanishing there. Its existence is not inferred from samples,
root counts, or a matrix certificate. No Weierstrass/Rouche algorithm is supplied.

Analytic orders enforce overlap consistency at a fixed source/parameter; they
do not establish constancy of individual orders under parameter deformation.
No global root labeling, contour moments, or arithmetic realization is asserted.
Source candidates: elaboration, kernel replay, axiom audit, review NOT_RUN.
See individual adjacent provenance records and their source-bound context.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology ComplexConjugate
open Filter Set

namespace GRWTSK.FunctionsOfAComplexVariable.FiniteComplexDivisorCharts

/-- Distinct complex locations; repeated zeros are retained in the exponents. -/
def weightedProduct (S : Finset ℂ) (m : ℂ → ℕ) (z : ℂ) : ℂ :=
  ∏ a ∈ S, (z - a) ^ m a

/-- Multiplicity is zero away from the finite support. -/
def weightAt (S : Finset ℂ) (m : ℂ → ℕ) (z : ℂ) : ℕ := by
  classical
  exact if z ∈ S then m z else 0

/-- The polynomial model is analytic even when roots coincide or are nonreal. -/
theorem weightedProduct_analytic (S : Finset ℂ) (m : ℂ → ℕ) (z : ℂ) :
    AnalyticAt ℂ (weightedProduct S m) z := by
  unfold weightedProduct
  fun_prop

/-- A powered linear factor contributes its full exponent at its root. -/
theorem order_powered_linear (a z : ℂ) (n : ℕ) :
    analyticOrderAt (fun w : ℂ => (w - a) ^ n) z =
      (if a = z then (n : ℕ∞) else 0) := by
  classical
  by_cases h : a = z
  · subst a
    simpa using
      (analyticOrderAt_centeredMonomial (𝕜 := ℂ) (z₀ := z) (n := n))
  · rw [if_neg h]
    exact (show AnalyticAt ℂ (fun w : ℂ => (w - a) ^ n) z by fun_prop)
      .analyticOrderAt_eq_zero.mpr (pow_ne_zero n (sub_ne_zero.mpr (Ne.symm h)))

/-- A finite product has precisely the indicated analytic orders, including order zero. -/
theorem order_weightedProduct (S : Finset ℂ) (m : ℂ → ℕ) (z : ℂ) :
    analyticOrderAt (weightedProduct S m) z = (weightAt S m z : ℕ∞) := by
  classical
  induction S using Finset.induction_on with
  | empty =>
      simpa [weightedProduct, weightAt] using
        (show AnalyticAt ℂ (fun _ : ℂ => (1 : ℂ)) z by fun_prop)
          .analyticOrderAt_eq_zero.mpr one_ne_zero
  | @insert a S ha ih =>
      have hprod : weightedProduct (insert a S) m =
          (fun w : ℂ => (w - a) ^ m a) * weightedProduct S m := by
        funext w
        simp [weightedProduct, ha]
      rw [hprod, analyticOrderAt_mul (by fun_prop) (weightedProduct_analytic S m z),
        order_powered_linear, ih]
      by_cases haz : a = z
      · subst a
        simp [weightAt, ha]
      · by_cases hz : z ∈ S <;> simp [weightAt, haz, Ne.symm haz, hz]

/-- Positivity of every stored multiplicity rules out spurious support entries. -/
theorem weightedProduct_zero_iff (S : Finset ℂ) (m : ℂ → ℕ)
    (hpos : ∀ a ∈ S, 0 < m a) (z : ℂ) :
    weightedProduct S m z = 0 ↔ z ∈ S := by
  classical
  unfold weightedProduct
  constructor
  · intro hz
    obtain ⟨a, ha, hpow⟩ := Finset.prod_eq_zero_iff.mp hz
    have hza : z = a := by
      by_contra hne
      exact (pow_ne_zero (m a) (sub_ne_zero.mpr hne)) hpow
    simpa only [hza] using ha
  · intro hz
    exact Finset.prod_eq_zero_iff.mpr
      ⟨z, hz, by simp [Nat.ne_of_gt (hpos z hz)]⟩

/-- An exact finite factorization of the actual source on an open chart.
All listed roots belong to the domain; exponents are positive, not simple. -/
structure Chart (f : ℂ → ℂ) where
  domain : Set ℂ
  isOpen_domain : IsOpen domain
  roots : Finset ℂ
  multiplicity : ℂ → ℕ
  multiplicity_pos : ∀ z ∈ roots, 0 < multiplicity z
  roots_mem_domain : ∀ z ∈ roots, z ∈ domain
  unit : ℂ → ℂ
  unit_analytic : ∀ z ∈ domain, AnalyticAt ℂ unit z
  unit_ne_zero : ∀ z ∈ domain, unit z ≠ 0
  factorization : ∀ z ∈ domain,
    f z = unit z * weightedProduct roots multiplicity z

namespace Chart

variable {f : ℂ → ℂ}

/-- The open-set identity gives a genuine complex-neighborhood identity. -/
theorem germ (C : Chart f) {z : ℂ} (hz : z ∈ C.domain) :
    f =ᶠ[𝓝 z] (fun w => C.unit w * weightedProduct C.roots C.multiplicity w) :=
  Filter.mem_of_superset (C.isOpen_domain.mem_nhds hz)
    (fun w hw => C.factorization w hw)

/-- Analyticity of the source is derived, so totalized analytic-order junk is not used. -/
theorem source_analytic (C : Chart f) {z : ℂ} (hz : z ∈ C.domain) :
    AnalyticAt ℂ f z :=
  ((C.unit_analytic z hz).mul (weightedProduct_analytic C.roots C.multiplicity z))
    .congr (C.germ hz).symm

/-- Exact source-zero identification, not merely polynomial-root identification. -/
theorem zero_iff (C : Chart f) {z : ℂ} (hz : z ∈ C.domain) :
    f z = 0 ↔ z ∈ C.roots := by
  rw [C.factorization z hz, mul_eq_zero]
  simp only [C.unit_ne_zero z hz, false_or]
  exact weightedProduct_zero_iff C.roots C.multiplicity C.multiplicity_pos z

/-- The nonvanishing analytic unit and neighborhood identity preserve every order. -/
theorem source_order (C : Chart f) {z : ℂ} (hz : z ∈ C.domain) :
    analyticOrderAt f z = (weightAt C.roots C.multiplicity z : ℕ∞) := by
  rw [analyticOrderAt_congr (C.germ hz)]
  change analyticOrderAt (C.unit * weightedProduct C.roots C.multiplicity) z = _
  rw [analyticOrderAt_mul (C.unit_analytic z hz)
      (weightedProduct_analytic C.roots C.multiplicity z),
    (C.unit_analytic z hz).analyticOrderAt_eq_zero.mpr (C.unit_ne_zero z hz),
    zero_add, order_weightedProduct]

/-- A natural-number weight equal to the actual source analytic order. -/
theorem source_orderNat (C : Chart f) {z : ℂ} (hz : z ∈ C.domain) :
    analyticOrderNatAt f z = weightAt C.roots C.multiplicity z := by
  simp [analyticOrderNatAt, C.source_order hz]

/-- Two valid charts for the SAME source agree on support in their overlap. -/
theorem overlap_support (C D : Chart f) {z : ℂ}
    (hzC : z ∈ C.domain) (hzD : z ∈ D.domain) :
    z ∈ C.roots ↔ z ∈ D.roots :=
  (C.zero_iff hzC).symm.trans (D.zero_iff hzD)

/-- Overlap consistency includes multiplicities, not just distinct locations. -/
theorem overlap_weight (C D : Chart f) {z : ℂ}
    (hzC : z ∈ C.domain) (hzD : z ∈ D.domain) :
    weightAt C.roots C.multiplicity z = weightAt D.roots D.multiplicity z :=
  (C.source_orderNat hzC).symm.trans (D.source_orderNat hzD)

/-- Any common finite observation of two source charts has the same weighted count.
This is overlap consistency, not a claim of parameter-invariance through collisions. -/
theorem overlap_sum (C D : Chart f) (S : Finset ℂ)
    (hC : ∀ z ∈ S, z ∈ C.domain) (hD : ∀ z ∈ S, z ∈ D.domain) :
    (∑ z ∈ S, weightAt C.roots C.multiplicity z) =
      ∑ z ∈ S, weightAt D.roots D.multiplicity z := by
  apply Finset.sum_congr rfl
  intro z hz
  exact C.overlap_weight D (hC z hz) (hD z hz)

/-- Root-conjugation closure comes from the actual source and the chart domain.
Zero symmetry suffices here; equality of multiplicities needs value equivariance. -/
theorem conjugate_mem (C : Chart f)
    (hdom : ∀ z ∈ C.domain, conj z ∈ C.domain)
    (hzero : ∀ z ∈ C.domain, f z = 0 → f (conj z) = 0)
    {z : ℂ} (hz : z ∈ C.roots) : conj z ∈ C.roots := by
  have hzu := C.roots_mem_domain z hz
  exact (C.zero_iff (hdom z hzu)).mp (hzero z hzu ((C.zero_iff hzu).mpr hz))

/-- Actual value equivariance plus analyticity preserves conjugate multiplicities. -/
theorem conjugate_weight (C : Chart f)
    (hdom : ∀ z ∈ C.domain, conj z ∈ C.domain)
    (hequiv : ∀ z, f (conj z) = conj (f z))
    {z : ℂ} (hz : z ∈ C.domain) :
    weightAt C.roots C.multiplicity (conj z) = weightAt C.roots C.multiplicity z := by
  have horder :=
    GRWTSK.Analysis.ComplexAnalysis.AnalyticOrderTransport.order_conjugate_of_equivariant
      f z hequiv (C.source_analytic hz) (C.source_analytic (hdom z hz))
  have hnat := congrArg (fun n : ℕ∞ => n.toNat) horder
  change analyticOrderNatAt f (conj z) = analyticOrderNatAt f z at hnat
  simpa only [C.source_orderNat (hdom z hz), C.source_orderNat hz] using hnat

end Chart

/-- Regression: a nonreal location is not removed, and its order is three. -/
theorem nonreal_triple_order :
    analyticOrderAt (weightedProduct {Complex.I} (fun _ => 3)) Complex.I = 3 := by
  rw [order_weightedProduct]
  simp [weightAt]

/-- Regression: two distinct multiplicities add when their locations coalesce. -/
theorem coalescing_orders (a : ℂ) (p q : ℕ) :
    analyticOrderAt (fun z : ℂ => (z - a) ^ p * (z - a) ^ q) a =
      ((p + q : ℕ) : ℕ∞) := by
  simpa [pow_add] using
    (analyticOrderAt_centeredMonomial (𝕜 := ℂ) (z₀ := a) (n := p + q))

end GRWTSK.FunctionsOfAComplexVariable.FiniteComplexDivisorCharts
