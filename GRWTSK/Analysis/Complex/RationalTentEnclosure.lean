/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RationalTentFamily
import GRWTSK.Analysis.Complex.TentKernelSensitivity
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

set_option autoImplicit false

/-!
# Rational tent-family tolerance with separately proved coordinate/source binding

The finite check evaluates rational centers and computes a rational majorant of
h*log(x+h) from the inherited logarithm enclosure. The actual coordinate and
source correspondence premises remain mathematical proofs, not Boolean labels.
The source transport uses a genuine equivalence of finite index types and exact
multiplicity equalities. No zero inventory, count or omitted tail is constructed.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.RationalTentEnclosure

open scoped BigOperators
open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure
open RationalMellinFamily (Member memberAt)
open TentMellinKernel

structure CoordinateData where
  logScale : ℕ
  logTwoCells : ℕ
  mantissaCells : ℕ
  radii : List ℚ
  deriving DecidableEq

def radiusAt (d : CoordinateData) (i : ℕ) : ℚ := d.radii.getD i 0

def logUpper (x h : ℚ) (d : CoordinateData) : ℚ :=
  RationalLogEnclosure.center (x + h) d.logScale d.logTwoCells d.mantissaCells +
    RationalLogEnclosure.radius (x + h) d.logScale d.logTwoCells d.mantissaCells

def coordinateBudget (family : List Member) (x h : ℚ) (d : CoordinateData) : ℚ :=
  (h * logUpper x h d) *
    ∑ i ∈ Finset.range family.length, (memberAt family i).multiplicity * radiusAt d i

def totalError (family : List Member) (x h : ℚ)
    (tr : RationalTentFamily.Trace) (d : CoordinateData) : ℚ :=
  coordinateBudget family x h d + RationalTentFamily.error family x h tr

/-- Does not test actual analytic coordinates: their enclosures are separate proof arguments. -/
def checkWithin (family : List Member) (x h : ℚ) (tr : RationalTentFamily.Trace)
    (d : CoordinateData) (ε : ℚ) : Bool :=
  RationalTentFamily.check family x h tr &&
    (RationalLogEnclosure.validScale (x + h) d.logScale d.logTwoCells d.mantissaCells &&
      decide (d.radii.length = family.length ∧
        (∀ i ∈ Finset.range family.length, 0 ≤ radiusAt d i) ∧
        0 ≤ ε ∧ totalError family x h tr d ≤ ε))

theorem checkWithin_iff (family : List Member) (x h : ℚ) (tr : RationalTentFamily.Trace)
    (d : CoordinateData) (ε : ℚ) :
    checkWithin family x h tr d ε = true ↔
      RationalTentFamily.check family x h tr = true ∧
      RationalLogEnclosure.validScale (x + h) d.logScale d.logTwoCells d.mantissaCells = true ∧
      d.radii.length = family.length ∧
      (∀ i ∈ Finset.range family.length, 0 ≤ radiusAt d i) ∧
      0 ≤ ε ∧ totalError family x h tr d ≤ ε := by
  simp only [checkWithin, Bool.and_eq_true, decide_eq_true_eq]

/-- Reuse a genuine logarithm enclosure at the exact upper endpoint. -/
theorem log_le_logUpper {x h : ℚ} {d : CoordinateData}
    (hl : RationalLogEnclosure.validScale (x + h) d.logScale d.logTwoCells d.mantissaCells = true) :
    Real.log ((x : ℝ) + h) ≤ (logUpper x h d : ℝ) := by
  have hu := (abs_le.mp (RationalLogEnclosure.log_error hl)).2
  simp only [logUpper, Rat.cast_add]
  simp only [Rat.cast_add] at hu
  linarith

/-- Finite arithmetic prices coordinate perturbations of the same indexed family. -/
theorem coordinate_error {family : List Member} {x h : ℚ} {d : CoordinateData}
    (hh : 0 < h) (ha : 1 < x - h)
    (hl : RationalLogEnclosure.validScale (x + h) d.logScale d.logTwoCells d.mantissaCells = true)
    (hn : ∀ i ∈ Finset.range family.length, 0 ≤ radiusAt d i)
    (ρ : ℕ → ℂ)
    (hρ : ∀ i ∈ Finset.range family.length, (ρ i).re ≤ 1)
    (hc : ∀ i ∈ Finset.range family.length, (toComplex (memberAt family i).center).re ≤ 1)
    (hr : ∀ i ∈ Finset.range family.length,
      ‖ρ i - toComplex (memberAt family i).center‖ ≤ (radiusAt d i : ℝ)) :
    ‖(∑ i ∈ Finset.range family.length, ((memberAt family i).multiplicity : ℂ) *
      tentKernel (x : ℝ) (h : ℝ) (ρ i)) - RationalTentFamily.centerSum family x h‖ ≤
      (coordinateBudget family x h d : ℝ) := by
  have hh' : (0 : ℝ) < h := by exact_mod_cast hh
  have ht := TentKernelSensitivity.finite_enclosure_error (Finset.range family.length)
    (fun i => (memberAt family i).multiplicity) ρ
    (fun i => toComplex (memberAt family i).center) (fun i => (radiusAt d i : ℝ))
    (x : ℝ) (h : ℝ) hh' (by exact_mod_cast ha) hρ hc hr
  have hm : 0 ≤ ∑ i ∈ Finset.range family.length,
      ((memberAt family i).multiplicity : ℝ) * (radiusAt d i : ℝ) := by
    apply Finset.sum_nonneg
    intro i hi
    exact mul_nonneg (Nat.cast_nonneg _) (by exact_mod_cast hn i hi)
  apply ht.trans
  have hcoeff := mul_le_mul_of_nonneg_left (log_le_logUpper hl) hh'.le
  simpa only [coordinateBudget, Rat.cast_mul, Rat.cast_sum, Rat.cast_natCast] using
    mul_le_mul_of_nonneg_right hcoeff hm

/-- The Boolean result and independent actual-coordinate enclosures imply the requested bound. -/
theorem checkWithin_sound {family : List Member} {x h ε : ℚ}
    {tr : RationalTentFamily.Trace} {d : CoordinateData}
    (hcheck : checkWithin family x h tr d ε = true) (ρ : ℕ → ℂ)
    (hρ : ∀ i ∈ Finset.range family.length, (ρ i).re ≤ 1)
    (hr : ∀ i ∈ Finset.range family.length,
      ‖ρ i - toComplex (memberAt family i).center‖ ≤ (radiusAt d i : ℝ)) :
    ‖(∑ i ∈ Finset.range family.length, ((memberAt family i).multiplicity : ℂ) *
      tentKernel (x : ℝ) (h : ℝ) (ρ i)) -
      toComplex (RationalTentFamily.output family tr)‖ ≤ (ε : ℝ) := by
  obtain ⟨hf, hl, _hlen, hn, _he0, he⟩ := (checkWithin_iff family x h tr d ε).mp hcheck
  obtain ⟨hh, ha, _, _, hs, _⟩ := (RationalTentFamily.check_iff_valid family x h tr).mp hf
  have hc : ∀ i ∈ Finset.range family.length, (toComplex (memberAt family i).center).re ≤ 1 := by
    intro i hi
    have hi' := (RationalTentQuadrature.check_iff_valid _ _ _ _ _).mp (hs i hi).2.2
    have hz : (memberAt family i).center.1 ≤ 1 := hi'.2.2.2.1
    change ((memberAt family i).center.1 : ℝ) ≤ 1
    exact_mod_cast hz
  have hp := coordinate_error hh ha hl hn ρ hρ hc hr
  have hv := RationalTentFamily.check_sound hf
  let S : ℂ := ∑ i ∈ Finset.range family.length, ((memberAt family i).multiplicity : ℂ) *
    tentKernel (x : ℝ) (h : ℝ) (ρ i)
  calc
    _ = ‖(S - RationalTentFamily.centerSum family x h) +
        (RationalTentFamily.centerSum family x h - toComplex (RationalTentFamily.output family tr))‖ := by
      congr 1; abel
    _ ≤ ‖S - RationalTentFamily.centerSum family x h‖ +
        ‖RationalTentFamily.centerSum family x h - toComplex (RationalTentFamily.output family tr)‖ :=
      norm_add_le _ _
    _ ≤ (coordinateBudget family x h d : ℝ) + (RationalTentFamily.error family x h tr : ℝ) :=
      add_le_add hp hv
    _ ≤ (ε : ℝ) := by
      have he' : (totalError family x h tr d : ℝ) ≤ (ε : ℝ) := by exact_mod_cast he
      simpa only [totalError, Rat.cast_add] using he'

/-- No source records can be omitted or duplicated through this equivalence.
Take the finite type to be the subtype of the independently established source head.
The equivalence, point agreement and actual multiplicities are not supplied by keys. -/
theorem reindexed_source_sound {ι : Type*} [Fintype ι]
    {family : List Member} {x h ε : ℚ} {tr : RationalTentFamily.Trace} {d : CoordinateData}
    (hcheck : checkWithin family x h tr d ε = true)
    (source : ι → ℂ) (multiplicity : ι → ℕ)
    (e : {i // i ∈ Finset.range family.length} ≃ ι)
    (ρ : ℕ → ℂ)
    (hp : ∀ i : {i // i ∈ Finset.range family.length}, ρ i = source (e i))
    (hm : ∀ i : {i // i ∈ Finset.range family.length},
      (memberAt family i).multiplicity = multiplicity (e i))
    (hρ : ∀ i ∈ Finset.range family.length, (ρ i).re ≤ 1)
    (hr : ∀ i ∈ Finset.range family.length,
      ‖ρ i - toComplex (memberAt family i).center‖ ≤ (radiusAt d i : ℝ)) :
    ‖(∑ u : ι, (multiplicity u : ℂ) * tentKernel (x : ℝ) (h : ℝ) (source u)) -
      toComplex (RationalTentFamily.output family tr)‖ ≤ (ε : ℝ) := by
  classical
  have hsum : (∑ i ∈ Finset.range family.length, ((memberAt family i).multiplicity : ℂ) *
      tentKernel (x : ℝ) (h : ℝ) (ρ i)) =
      ∑ u : ι, (multiplicity u : ℂ) * tentKernel (x : ℝ) (h : ℝ) (source u) := by
    calc
      _ = ∑ i : {i // i ∈ Finset.range family.length}, ((memberAt family i).multiplicity : ℂ) *
          tentKernel (x : ℝ) (h : ℝ) (ρ i) := (Finset.sum_attach _ _).symm
      _ = ∑ i : {i // i ∈ Finset.range family.length}, (multiplicity (e i) : ℂ) *
          tentKernel (x : ℝ) (h : ℝ) (source (e i)) := by
        apply Finset.sum_congr rfl
        intro i _
        rw [hp i, hm i]
      _ = _ := e.sum_comp (fun u => (multiplicity u : ℂ) *
          tentKernel (x : ℝ) (h : ℝ) (source u))
  rw [← hsum]
  exact checkWithin_sound hcheck ρ hρ hr

end GRWTSK.Analysis.Complex.RationalTentEnclosure
