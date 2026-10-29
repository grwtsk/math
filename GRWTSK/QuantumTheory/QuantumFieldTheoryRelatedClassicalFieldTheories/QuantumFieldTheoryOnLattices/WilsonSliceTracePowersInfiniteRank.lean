/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib polynomial, linear-independence, dimension and continuous-to-Lp
theory retain their upstream attribution and Apache-2.0 licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceTracePlaquette
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceL2StrictPositivity
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Algebra.Polynomial.Coeff
import Mathlib.Order.Interval.Set.Infinite
import Mathlib.LinearAlgebra.Dimension.Finite

/-!
# Actual invariant trace powers and infinite rank of the slice operator

An actual finite relation among trace powers yields a real polynomial zero
on [-2,2]. Infinitely many roots force every coefficient zero. The actual
full-Haar-support continuous-to-L2 injection transfers independence to H.
The proved CONTINUOUS-domain injectivity of A composed with that embedding
transfers independence to actual operator images and their actual range.

The additional published all-L2 strictness source is retained unchanged as
a pinned dependency. Its stronger injectivity theorem is NOT used in the
independence/infinite-rank proof. Its closed quantitative moment/density
suppliers and NOT_RUN scope remain distinct. No spectral/eigenfunction or
F_n evaluation result is asserted here.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators Polynomial

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceTracePowersInfiniteRank

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantContinuousDensity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceContinuousStrictPositivity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceTracePlaquette

variable (L : ℕ) [NeZero L]

theorem tracePower_linearIndependent (hL : 8 ≤ L) :
    LinearIndependent ℝ (tracePower L) := by
  classical
  rw [linearIndependent_iff']
  intro s c hs i hi
  let p : ℝ[X] := ∑ n ∈ s, Polynomial.monomial n (c n)
  have hsum (a : Slice L SU2) : ∑ n ∈ s, c n * (traceObservable L a) ^ n = 0 := by
    let ev : invariantContinuousSpace L →ₗ[ℝ] ℝ :=
      { toFun := fun f => f.val a
        map_add' := fun _ _ => rfl
        map_smul' := fun _ _ => rfl }
    simpa only [map_sum, map_smul, map_zero, smul_eq_mul] using congrArg ev hs
  have hroot (r : ℝ) (hr : r ∈ Set.Icc (-2 : ℝ) 2) : p.IsRoot r := by
    obtain ⟨a, ha⟩ := traceObservable_attains L hL r hr
    change p.eval r = 0
    rw [← ha]
    simpa only [p, Polynomial.eval_finsetSum, Polynomial.eval_monomial] using hsum a
  have hp : p = 0 := Polynomial.eq_zero_of_infinite_isRoot p
    ((Set.Icc_infinite (by norm_num : (-2 : ℝ) < 2)).mono (fun r hr => hroot r hr))
  have hc : p.coeff i = c i := by
    simp [p, Polynomial.finsetSum_coeff, Polynomial.coeff_monomial, hi]
  rw [hp, Polynomial.coeff_zero] at hc
  exact hc.symm

/-- Actual full-support continuous-to-L2 injection; no arbitrary AE pointwise inference. -/
theorem invariantEmbedding_injective : Function.Injective (invariantEmbedding L) := by
  letI : Measure.IsOpenPosMeasure (sliceHaar L) := sliceHaar_isOpenPosMeasure L
  intro f g hfg
  have he : ContinuousMap.toLp 2 (sliceHaar L) ℝ f.val =
      ContinuousMap.toLp 2 (sliceHaar L) ℝ g.val := congrArg Subtype.val hfg
  apply Subtype.ext
  exact ContinuousMap.toLp_injective (sliceHaar L) he

theorem embedded_tracePower_linearIndependent (hL : 8 ≤ L) :
    LinearIndependent ℝ (fun n => invariantEmbedding L (tracePower L n)) :=
  (tracePower_linearIndependent L hL).map_injOn
    (invariantEmbedding L).toLinearMap (invariantEmbedding_injective L).injOn

theorem operator_tracePower_linearIndependent (hL : 8 ≤ L) (β : ℝ) (hβ : 0 < β) :
    LinearIndependent ℝ (fun n =>
      invariantOperator L β hβ.le (invariantEmbedding L (tracePower L n))) :=
  (tracePower_linearIndependent L hL).map_injOn
    ((invariantOperator L β hβ.le).comp (invariantEmbedding L)).toLinearMap
    (invariantOperator_embedding_injective L β hβ).injOn

/-- The range carrier has an explicit actual preimage for every member of the family. -/
def rangeTracePower (β : ℝ) (hβ : 0 < β) (n : ℕ) :
    LinearMap.range ((invariantOperator L β hβ.le).toLinearMap) :=
  ⟨invariantOperator L β hβ.le (invariantEmbedding L (tracePower L n)),
    ⟨invariantEmbedding L (tracePower L n), rfl⟩⟩

theorem rangeTracePower_linearIndependent (hL : 8 ≤ L) (β : ℝ) (hβ : 0 < β) :
    LinearIndependent ℝ (rangeTracePower L β hβ) := by
  have ha := operator_tracePower_linearIndependent L hL β hβ
  rw [linearIndependent_iff'] at ha ⊢
  intro s c hs i hi
  apply ha s c ?_ i hi
  have hv := congrArg
    (LinearMap.range ((invariantOperator L β hβ.le).toLinearMap)).subtype hs
  simpa only [map_sum, map_smul, map_zero] using hv

theorem invariantSpace_not_finiteDimensional (hL : 8 ≤ L) :
    ¬ FiniteDimensional ℝ (gaugeInvariantSpace L) := by
  intro hfin
  letI : FiniteDimensional ℝ (gaugeInvariantSpace L) := hfin
  exact (@not_finite ℕ inferInstance) (embedded_tracePower_linearIndependent L hL).finite

/-- Infinite rank of the EXISTING operator in its EXISTING invariant Hilbert space. -/
theorem invariantOperator_range_not_finiteDimensional (hL : 8 ≤ L) (β : ℝ) (hβ : 0 < β) :
    ¬ FiniteDimensional ℝ
      (LinearMap.range ((invariantOperator L β hβ.le).toLinearMap)) := by
  intro hfin
  letI : FiniteDimensional ℝ
    (LinearMap.range ((invariantOperator L β hβ.le).toLinearMap)) := hfin
  exact (@not_finite ℕ inferInstance) (rangeTracePower_linearIndependent L hL β hβ).finite

/-- The requested physical finite-period specialization; nonzero period is proved from T>=4. -/
theorem periodic_invariantOperator_range_not_finiteDimensional
    (T : ℕ) (hT : 4 ≤ T) (β : ℝ) (hβ : 0 < β) :
    letI : NeZero (2 * T) := ⟨by omega⟩
    ¬ FiniteDimensional ℝ
      (LinearMap.range ((invariantOperator (2 * T) β hβ.le).toLinearMap)) := by
  letI : NeZero (2 * T) := ⟨by omega⟩
  exact invariantOperator_range_not_finiteDimensional (2 * T) (by omega) β hβ

end GRWTSK.Geometry.GaugeTheory.WilsonSliceTracePowersInfiniteRank
