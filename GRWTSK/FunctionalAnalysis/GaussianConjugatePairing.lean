/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported Mathlib results retain their upstream authorship and license. -/
import GRWTSK.FunctionalAnalysis.WeightedConjugatePairingTopology
import Mathlib.Analysis.SpecialFunctions.Complex.Log

/-!
# Fixed-head Gaussian localization of a signed conjugate pairing

MSC2020: 42A38, 46C20; arithmetic consumers 11M26, 11M41.

RP-OC-02, math#1801 and research#51. The seed is a FIXED weighted evaluation
family, not an arithmetic zero divisor manufactured by this module. A seed
could be the b=1 Gaussian-polynomial transform in W2, once its weighted bound
is supplied, or any other family with the stated bound. Damping is the actual
complex multiplier exp(-a*((z-t)^2+delta^2)), a>=0. The sum remains signed:
the reflected factors are not replaced by absolute squares.

The finite head is fixed before a varies. We prove absolute convergence and
an explicit infinite-remainder bound from strip geometry and the seed's
summable majorant. No finite-off-critical-exception assumption is made.
Fourier realization, baseline interpolation/conditioning, common smooth
compactification, the full arithmetic explicit formula and positivity are not
proved here. Finite head negativity must be separately certified.

Inspected math main: 8d7c8b8084caa6ff3cf6b254da449042617519f8.
Pinned Mathlib: d13f23b723b8a846827a245b89c10fc7d3f11612.
Standard analytical consequences; novelty UNASSESSED. Source candidates only:
elaboration, fresh kernel replay, transitive axiom audit and independent
analytical review NOT_RUN. See individual adjacent provenance records.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

namespace GRWTSK.FunctionalAnalysis.GaussianConjugatePairing

open GRWTSK.FunctionalAnalysis.WeightedConjugatePairing

/-- The entire quadratic phase, with a specified real center and displacement. -/
def phase (t delta : ℝ) (z : ℂ) : ℂ := (z - (t : ℂ)) ^ 2 + (delta : ℂ) ^ 2

/-- Real part of the phase; no projection of the original divisor is performed. -/
def energy (t delta : ℝ) (z : ℂ) : ℝ :=
  (z.re - t) ^ 2 - z.im ^ 2 + delta ^ 2

/-- Complex Gaussian multiplier. On nonreal points it need not be real. -/
def gaussian (a t delta : ℝ) (z : ℂ) : ℂ :=
  Complex.exp (-(a : ℂ) * phase t delta z)

theorem phase_re (t delta : ℝ) (z : ℂ) : (phase t delta z).re = energy t delta z := by
  simp [phase, energy, pow_two, Complex.mul_re]
  <;> ring

theorem phase_conj (t delta : ℝ) (z : ℂ) :
    phase t delta (conj z) = conj (phase t delta z) := by
  simp [phase, map_add, map_sub, map_pow]

theorem energy_conj (t delta : ℝ) (z : ℂ) :
    energy t delta (conj z) = energy t delta z := by
  simp [energy]

theorem norm_gaussian (a t delta : ℝ) (z : ℂ) :
    ‖gaussian a t delta z‖ = Real.exp (-a * energy t delta z) := by
  rw [gaussian, Complex.norm_exp]
  congr 1
  simp [Complex.mul_re, phase_re]

/-- Both selected conjugate nodes have exactly zero complex phase. -/
theorem phase_at_pair (t delta : ℝ) :
    phase t delta ((t : ℂ) + (delta : ℂ) * Complex.I) = 0 ∧
      phase t delta ((t : ℂ) - (delta : ℂ) * Complex.I) = 0 := by
  constructor <;> unfold phase
  · calc
      _ = (delta : ℂ) ^ 2 * (Complex.I ^ 2 + 1) := by ring
      _ = 0 := by norm_num
  · calc
      _ = (delta : ℂ) ^ 2 * (Complex.I ^ 2 + 1) := by ring
      _ = 0 := by norm_num

/-- The target values are unchanged, not merely approximately preserved. -/
theorem gaussian_at_pair (a t delta : ℝ) :
    gaussian a t delta ((t : ℂ) + (delta : ℂ) * Complex.I) = 1 ∧
      gaussian a t delta ((t : ℂ) - (delta : ℂ) * Complex.I) = 1 := by
  simp [gaussian, (phase_at_pair t delta).1, (phase_at_pair t delta).2]

/-- Hostile control: a Gaussian need not contract inside the strip.
The tail separation and the global cutoff envelope cannot be omitted. -/
theorem gaussian_can_grow_in_strip : 1 < ‖gaussian 1 0 0 Complex.I‖ := by
  have h := Real.exp_lt_exp.mpr (by norm_num : (0 : ℝ) < 1)
  simpa [norm_gaussian, energy] using h

/-- The strict positive gap follows, for example, from R>B>=0. -/
theorem energy_ge_of_strip (t delta B R : ℝ) (z : ℂ)
    (hB : 0 ≤ B) (hR : 0 ≤ R) (hstrip : |z.im| ≤ B)
    (hfar : R ≤ |z.re - t|) :
    R ^ 2 + delta ^ 2 - B ^ 2 ≤ energy t delta z := by
  have hy : z.im ^ 2 ≤ B ^ 2 := by
    nlinarith [sq_abs z.im,
      mul_nonneg (sub_nonneg.mpr hstrip) (add_nonneg hB (abs_nonneg z.im))]
  have hx : R ^ 2 ≤ (z.re - t) ^ 2 := by
    nlinarith [sq_abs (z.re - t),
      mul_nonneg (sub_nonneg.mpr hfar) (add_nonneg (abs_nonneg _) hR)]
  unfold energy
  linarith

/-- A fixed baseline and its complete weighted moment. No arithmetic identity is asserted. -/
structure Seed (ι : Type*) where
  multiplicity : ι → ℝ
  weight : ι → ℝ
  reflect : ι → ι
  location : ι → ℂ
  baseline : ι → ℂ
  scale : ℝ
  multiplicity_nonneg : ∀ i, 0 ≤ multiplicity i
  weight_nonneg : ∀ i, 0 ≤ weight i
  weight_reflect : ∀ i, weight (reflect i) = weight i
  location_reflect : ∀ i, location (reflect i) = conj (location i)
  scale_nonneg : 0 ≤ scale
  baseline_bound : ∀ i, ‖baseline i‖ ≤ scale * weight i
  moment_summable : Summable (fun i => multiplicity i * weight i ^ 2)

namespace Seed
variable {ι E : Type*}

def mass (D : Seed ι) : ℝ := ∑' i, D.multiplicity i * D.weight i ^ 2

def damped (D : Seed ι) (a t delta : ℝ) (i : ι) : ℂ :=
  D.baseline i * gaussian a t delta (D.location i)

/-- Reuse the existing normed evaluation model rather than assuming a new Fourier map. -/
def ofEvaluation [NormedAddCommGroup E] [NormedSpace ℂ E]
    (D : EvaluationModel ι E) (location : ι → ℂ)
    (hreflection : ∀ i, location (D.reflect i) = conj (location i)) (x : E) : Seed ι where
  multiplicity := D.multiplicity
  weight := D.weight
  reflect := D.reflect
  location := location
  baseline := D.transform x
  scale := ‖x‖
  multiplicity_nonneg := D.multiplicity_nonneg
  weight_nonneg := D.weight_nonneg
  weight_reflect := D.weight_reflect
  location_reflect := hreflection
  scale_nonneg := norm_nonneg x
  baseline_bound := D.transform_le x
  moment_summable := D.moment_summable

/-- This is a norm identity only; the signed summand is generally complex. -/
theorem norm_damped_term (D : Seed ι) (a t delta : ℝ) (i : ι) :
    ‖term D.multiplicity D.reflect (D.damped a t delta) (D.damped a t delta) i‖ =
      ‖term D.multiplicity D.reflect D.baseline D.baseline i‖ *
        Real.exp (-2 * a * energy t delta (D.location i)) := by
  have hfactor :
      term D.multiplicity D.reflect (D.damped a t delta) (D.damped a t delta) i =
      term D.multiplicity D.reflect D.baseline D.baseline i *
        (gaussian a t delta (D.location i) *
          conj (gaussian a t delta (D.location (D.reflect i)))) := by
    simp only [term, damped, map_mul]
    ring
  rw [hfactor]
  simp only [norm_mul, Complex.norm_conj, norm_gaussian, D.location_reflect, energy_conj]
  rw [← Real.exp_add]
  congr 2
  ring

/-- One majorant controls every omitted signed summand, including off-line ones. -/
theorem norm_damped_term_le (D : Seed ι) (a t delta gap : ℝ) (ha : 0 ≤ a)
    (i : ι) (hgap : gap ≤ energy t delta (D.location i)) :
    ‖term D.multiplicity D.reflect (D.damped a t delta) (D.damped a t delta) i‖ ≤
      (D.scale ^ 2 * Real.exp (-2 * a * gap)) *
        (D.multiplicity i * D.weight i ^ 2) := by
  have hbase := norm_term_le D.multiplicity D.weight D.reflect
    D.baseline D.baseline D.scale D.scale D.multiplicity_nonneg D.weight_nonneg
    D.weight_reflect D.scale_nonneg D.baseline_bound D.baseline_bound i
  have hexp : Real.exp (-2 * a * energy t delta (D.location i)) ≤
      Real.exp (-2 * a * gap) := by
    apply Real.exp_le_exp.mpr
    nlinarith [mul_nonneg ha (sub_nonneg.mpr hgap)]
  rw [D.norm_damped_term]
  calc
    _ ≤ ((D.scale * D.scale) * (D.multiplicity i * D.weight i ^ 2)) *
        Real.exp (-2 * a * gap) :=
      mul_le_mul hbase hexp (Real.exp_nonneg _)
        (mul_nonneg (mul_self_nonneg _) (mul_nonneg (D.multiplicity_nonneg i) (sq_nonneg _)))
    _ = _ := by ring

/-- Absolute convergence and a bound on the ENTIRE complement of one fixed finite head.
The supplied gap may be negative; useful decay requires gap>0 and is not hidden. -/
theorem summable_and_remainder_le (D : Seed ι) (head : Finset ι)
    (a t delta gap : ℝ) (ha : 0 ≤ a)
    (hgap : ∀ i, i ∉ head → gap ≤ energy t delta (D.location i)) :
    Summable (fun i =>
      ‖term D.multiplicity D.reflect (D.damped a t delta) (D.damped a t delta) i‖) ∧
    ‖pairing D.multiplicity D.reflect (D.damped a t delta) (D.damped a t delta) -
      ∑ i ∈ head, term D.multiplicity D.reflect
        (D.damped a t delta) (D.damped a t delta) i‖ ≤
      (D.scale ^ 2 * D.mass) * Real.exp (-2 * a * gap) := by
  classical
  let q := term D.multiplicity D.reflect (D.damped a t delta) (D.damped a t delta)
  let h : ι → ℂ := fun i => if i ∈ head then q i else 0
  let r : ι → ℂ := fun i => if i ∈ head then 0 else q i
  let C : ℝ := D.scale ^ 2 * Real.exp (-2 * a * gap)
  have hrbound : ∀ i, ‖r i‖ ≤ C * (D.multiplicity i * D.weight i ^ 2) := by
    intro i
    by_cases hi : i ∈ head
    · simp only [r, if_pos hi, norm_zero]
      exact mul_nonneg (mul_nonneg (sq_nonneg _) (Real.exp_nonneg _))
        (mul_nonneg (D.multiplicity_nonneg i) (sq_nonneg _))
    · simpa only [r, if_neg hi, C, q] using
        D.norm_damped_term_le a t delta gap ha i (hgap i hi)
  have hrnorm : Summable (fun i => ‖r i‖) := by
    apply (D.moment_summable.mul_left C).of_norm_bounded
    intro i
    simpa only [norm_norm] using hrbound i
  have hhnorm : Summable (fun i => ‖h i‖) := by
    apply summable_of_ne_finset_zero (s := head)
    intro i hi
    simp [h, hi]
  have hqnorm : Summable (fun i => ‖q i‖) := by
    apply (hhnorm.add hrnorm).congr
    intro i
    by_cases hi : i ∈ head <;> simp [h, r, hi]
  have hsum : (∑' i, h i) = ∑ i ∈ head, q i := by
    calc
      _ = ∑ i ∈ head, h i := tsum_eq_sum (fun i hi => by simp [h, hi])
      _ = _ := Finset.sum_congr rfl (fun i hi => by simp [h, hi])
  have hsplit : (∑' i, q i) - ∑ i ∈ head, q i = ∑' i, r i := by
    rw [← hsum, ← tsum_sub hqnorm.of_norm hhnorm.of_norm]
    apply tsum_congr
    intro i
    by_cases hi : i ∈ head <;> simp [h, r, hi]
  refine ⟨hqnorm, ?_⟩
  change ‖(∑' i, q i) - ∑ i ∈ head, q i‖ ≤ _
  rw [hsplit]
  calc
    _ ≤ C * ∑' i, D.multiplicity i * D.weight i ^ 2 :=
      tsum_of_norm_bounded (D.moment_summable.hasSum.mul_left C) hrbound
    _ = (D.scale ^ 2 * D.mass) * Real.exp (-2 * a * gap) := by
      dsimp [C, mass]
      ring

/-- A zero seed value or zero complex phase preserves each finite-head summand. -/
theorem head_preserved (D : Seed ι) (head : Finset ι) (a t delta : ℝ)
    (hhead : ∀ i ∈ head, D.baseline i = 0 ∨ phase t delta (D.location i) = 0) :
    (∑ i ∈ head, term D.multiplicity D.reflect
      (D.damped a t delta) (D.damped a t delta) i) =
      ∑ i ∈ head, term D.multiplicity D.reflect D.baseline D.baseline i := by
  apply Finset.sum_congr rfl
  intro i hi
  rcases hhead i hi with hzero | hphase
  · simp [term, damped, hzero]
  · have hphase' : phase t delta (D.location (D.reflect i)) = 0 := by
      rw [D.location_reflect, phase_conj, hphase]
      simp
    simp [term, damped, gaussian, hphase, hphase']

/-- Fixed-head localization with an explicit geometric exponent R^2+delta^2-B^2. -/
theorem fixed_head_remainder_le (D : Seed ι) (head : Finset ι)
    (a t delta B R : ℝ) (ha : 0 ≤ a) (hB : 0 ≤ B) (hR : 0 ≤ R)
    (hstrip : ∀ i, i ∉ head → |(D.location i).im| ≤ B)
    (hfar : ∀ i, i ∉ head → R ≤ |(D.location i).re - t|)
    (hhead : ∀ i ∈ head, D.baseline i = 0 ∨ phase t delta (D.location i) = 0) :
    ‖pairing D.multiplicity D.reflect (D.damped a t delta) (D.damped a t delta) -
      ∑ i ∈ head, term D.multiplicity D.reflect D.baseline D.baseline i‖ ≤
      (D.scale ^ 2 * D.mass) * Real.exp (-2 * a * (R ^ 2 + delta ^ 2 - B ^ 2)) := by
  have h := (D.summable_and_remainder_le head a t delta
    (R ^ 2 + delta ^ 2 - B ^ 2) ha (fun i hi =>
      energy_ge_of_strip t delta B R (D.location i) hB hR (hstrip i hi) (hfar i hi))).2
  rw [D.head_preserved head a t delta hhead] at h
  exact h

/-- A global strip gives the weighted envelope needed by the existing cutoff theorem. -/
theorem damped_bound (D : Seed ι) (a t delta B : ℝ) (ha : 0 ≤ a) (hB : 0 ≤ B)
    (hstrip : ∀ i, |(D.location i).im| ≤ B) (i : ι) :
    ‖D.damped a t delta i‖ ≤
      (D.scale * Real.exp (a * B ^ 2)) * D.weight i := by
  have henergy := energy_ge_of_strip t delta B 0 (D.location i) hB (by norm_num)
    (hstrip i) (abs_nonneg _)
  have hlow : -B ^ 2 ≤ energy t delta (D.location i) := by
    nlinarith [sq_nonneg delta]
  have he : Real.exp (-a * energy t delta (D.location i)) ≤ Real.exp (a * B ^ 2) := by
    apply Real.exp_le_exp.mpr
    nlinarith [mul_nonneg ha (sub_nonneg.mpr hlow)]
  rw [damped, norm_mul, norm_gaussian]
  calc
    _ ≤ (D.scale * D.weight i) * Real.exp (a * B ^ 2) :=
      mul_le_mul (D.baseline_bound i) he (Real.exp_nonneg _)
        (mul_nonneg D.scale_nonneg (D.weight_nonneg i))
    _ = _ := by ring

end Seed
end GRWTSK.FunctionalAnalysis.GaussianConjugatePairing
