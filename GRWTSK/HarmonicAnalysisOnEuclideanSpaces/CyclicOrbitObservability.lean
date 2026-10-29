/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib authorship and licenses are retained. -/
import GRWTSK.NumberTheory.RamanujanFourierHodge
import Mathlib.Tactic

/-!
# A shared-center cyclic orbit retains phase beyond its barycenter

These are actual equally spaced complex orbit samples. The first harmonic
vanishes for q>1, but the q-th harmonic recovers z^q. Dividing that readout by
q gives a phase-bearing circle of radius 1/q for a unit input. This is the
finite rational-orbit calculation relevant to the Thomae/popcorn comparison;
it is not a proof identifying a zeta-zero source or an ergodic-measure space.
The full additive spectrum is used; primitive Ramanujan frequencies remain
a distinct source and are not silently substituted.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.CyclicOrbitObservability

open FiniteAdditiveProjector

/-- Same canonical modes as the existing finite cyclic/Farey Fourier carrier. -/
def orbitSample (q : ℕ) [NeZero q] (z : ℂ) (j : ZMod q) : ℂ :=
  z * ZMod.stdAddChar j

def orbitMoment (q : ℕ) [NeZero q] (z : ℂ) (k : ℕ) : ℂ :=
  (q : ℂ)⁻¹ * ∑ j : ZMod q, orbitSample q z j ^ k

/-- Explicit power transport proved from the additive-character law. -/
theorem character_pow (q : ℕ) [NeZero q] (j : ZMod q) (k : ℕ) :
    ZMod.stdAddChar j ^ k = ZMod.stdAddChar ((k : ZMod q) * j) := by
  induction k with
  | zero => simp
  | succ k ih =>
      rw [pow_succ, ih]
      have h : ((k + 1 : ℕ) : ZMod q) * j = (k : ZMod q) * j + j := by
        push_cast
        ring
      rw [h, AddChar.map_add_eq_mul]

/-- Derive the source's observation from its literal finite samples. -/
theorem orbitMoment_eq_characterAverage (q : ℕ) [NeZero q] (z : ℂ) (k : ℕ) :
    orbitMoment q z k = z ^ k * characterAverage q (k : ZMod q) := by
  unfold orbitMoment orbitSample
  calc
    _ = (q : ℂ)⁻¹ * ∑ j : ZMod q,
        z ^ k * ZMod.stdAddChar (j * (k : ZMod q)) := by
      congr 1
      apply Finset.sum_congr rfl
      intro j _
      rw [mul_pow, character_pow q j k, mul_comm (k : ZMod q) j]
    _ = _ := by
      rw [← Finset.mul_sum]
      unfold characterAverage
      ring

/-- Full-frequency orthogonality, with the nonzero q normalization retained. -/
theorem orbitMoment_eq (q : ℕ) [NeZero q] (z : ℂ) (k : ℕ) :
    orbitMoment q z k = z ^ k * (if (k : ZMod q) = 0 then 1 else 0) := by
  rw [orbitMoment_eq_characterAverage, characterAverage_eq_indicator]

theorem barycenter_zero (q : ℕ) [NeZero q] (hq : 1 < q) (z : ℂ) :
    orbitMoment q z 1 = 0 := by
  letI : Fact (1 < q) := ⟨hq⟩
  rw [orbitMoment_eq]
  simp

/-- The orbit phase is not erased by the first-moment cancellation. -/
theorem phase_return (q : ℕ) [NeZero q] (z : ℂ) : orbitMoment q z q = z ^ q := by
  rw [orbitMoment_eq]
  simp

/-- Starting at another point of the SAME orbit preserves the returned phase. -/
theorem phase_return_rotation (q : ℕ) [NeZero q] (z : ℂ) (j : ZMod q) :
    orbitMoment q (orbitSample q z j) q = orbitMoment q z q := by
  rw [phase_return, phase_return]
  unfold orbitSample
  rw [mul_pow, character_pow]
  simp

def popcornPhase (q : ℕ) [NeZero q] (z : ℂ) : ℂ := orbitMoment q z q / (q : ℂ)

theorem popcornPhase_norm (q : ℕ) [NeZero q] (z : ℂ) (hz : ‖z‖ = 1) :
    ‖popcornPhase q z‖ = (q : ℝ)⁻¹ := by
  simp [popcornPhase, phase_return, norm_div, norm_pow, hz, one_div]

/-- A concrete equal-center collision: the barycenter cannot recover the needed phase. -/
theorem same_barycenter_different_phase :
    orbitMoment 2 (1 : ℂ) 1 = orbitMoment 2 Complex.I 1 ∧
      orbitMoment 2 (1 : ℂ) 2 ≠ orbitMoment 2 Complex.I 2 := by
  constructor
  · rw [barycenter_zero 2 (by norm_num), barycenter_zero 2 (by norm_num)]
  · rw [phase_return, phase_return]
    norm_num

end GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.CyclicOrbitObservability
