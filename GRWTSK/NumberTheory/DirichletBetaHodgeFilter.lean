/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's MIT license.

Algebraic core of DirichletBetaHodgeFilter.md.
Source provenance, exact mathematical scope, and verification status are in that
adjacent record. This is a Lean source candidate: elaboration, kernel checking,
and transitive axiom auditing are NOT_RUN. No assertion of RH or of a universal
arithmetic energy estimate is made. The beta functional equation is an explicit
input to the abstract completion-transport theorem, not a new axiom.
-/
import Mathlib.Analysis.Complex.Trigonometric
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic

noncomputable section

namespace GRWTSK.NumberTheory.DirichletBetaHodgeFilter

/-- The spectral coordinate shifted by a real logarithmic phase. -/
def phaseCoordinate (a : ℝ) (s : ℂ) : ℂ := s - (a : ℂ) * Complex.I

@[simp] theorem phaseCoordinate_re (a : ℝ) (s : ℂ) :
    (phaseCoordinate a s).re = s.re := by
  simp [phaseCoordinate, Complex.mul_re]

theorem phaseCoordinate_reflection (a : ℝ) (s : ℂ) :
    phaseCoordinate (-a) (1 - s) = 1 - phaseCoordinate a s := by
  simp only [phaseCoordinate, Complex.ofReal_neg]
  ring

/-- The quotient with its removable value filled in. In the beta application,
`h = Real.log 2`. Holomorphic removability is proved in the companion note,
not by the following definition alone. -/
def mellinWindow (h a : ℝ) (s : ℂ) : ℂ := by
  classical
  exact if phaseCoordinate a s = 0 then (h : ℂ)
  else (Complex.exp (phaseCoordinate a s * (h : ℂ)) - 1) /
    phaseCoordinate a s

@[simp] theorem mellinWindow_at_center (h a : ℝ) :
    mellinWindow h a ((a : ℂ) * Complex.I) = (h : ℂ) := by
  simp [mellinWindow, phaseCoordinate]

/-- A real phase cannot cancel a nontrivial-zero response in Re(s) > 0. -/
theorem mellinWindow_ne_zero_of_re_pos {h a : ℝ} {s : ℂ}
    (hh : 0 < h) (hs : 0 < s.re) : mellinWindow h a s ≠ 0 := by
  have hq : phaseCoordinate a s ≠ 0 := by
    intro hz
    have hr := congrArg Complex.re hz
    have hzre : s.re = 0 := by simpa using hr
    linarith
  have he : 1 < ‖Complex.exp (phaseCoordinate a s * (h : ℂ))‖ := by
    rw [Complex.norm_exp, Real.one_lt_exp_iff]
    simpa [Complex.mul_re] using mul_pos hs hh
  have hn : Complex.exp (phaseCoordinate a s * (h : ℂ)) - 1 ≠ 0 := by
    intro hz
    have heq : Complex.exp (phaseCoordinate a s * (h : ℂ)) = 1 :=
      sub_eq_zero.mp hz
    rw [heq, norm_one] at he
    exact (lt_irrefl (1 : ℝ)) he
  simpa only [mellinWindow, if_neg hq] using div_ne_zero hn hq

/-- The reflected Mellin product. Width and phase are distinct coordinates. -/
def pairedKernel (h a : ℝ) (s : ℂ) : ℂ :=
  mellinWindow h a s * mellinWindow h (-a) (1 - s)

theorem pairedKernel_reflection (h a : ℝ) (s : ℂ) :
    pairedKernel h a s = pairedKernel h (-a) (1 - s) := by
  have hs : (1 : ℂ) - (1 - s) = s := by ring
  simp only [pairedKernel, neg_neg, hs]
  exact mul_comm _ _

theorem pairedKernel_ne_zero_in_strip {h a : ℝ} {s : ℂ}
    (hh : 0 < h) (hs0 : 0 < s.re) (hs1 : s.re < 1) :
    pairedKernel h a s ≠ 0 := by
  have hr : 0 < ((1 : ℂ) - s).re := by
    simp only [Complex.sub_re, Complex.one_re]
    linarith
  exact mul_ne_zero (mellinWindow_ne_zero_of_re_pos hh hs0)
    (mellinWindow_ne_zero_of_re_pos hh hr)

/-- An auxiliary completion; `B` is separately identified with completed beta
in the analytic companion. -/
def filteredCompletion (h a : ℝ) (B : ℂ → ℂ) (s : ℂ) : ℂ :=
  pairedKernel h a s * B s

theorem filteredCompletion_reflection (h a : ℝ) (B : ℂ → ℂ)
    (hB : ∀ s, B s = B (1 - s)) (s : ℂ) :
    filteredCompletion h a B s = filteredCompletion h (-a) B (1 - s) := by
  unfold filteredCompletion
  rw [pairedKernel_reflection h a s, hB s]

theorem filteredCompletion_zero_iff {h a : ℝ} {s : ℂ} (B : ℂ → ℂ)
    (hh : 0 < h) (hs0 : 0 < s.re) (hs1 : s.re < 1) :
    filteredCompletion h a B s = 0 ↔ B s = 0 := by
  have hk := pairedKernel_ne_zero_in_strip (a := a) hh hs0 hs1
  simp [filteredCompletion, mul_eq_zero, hk]

/-- Only zero membership, not analytic zero order, is claimed by this lemma. -/
theorem unitMultiplier_zero_iff (u b : ℂ) (hu : u ≠ 0) :
    u * b = 0 ↔ b = 0 := by
  simp [mul_eq_zero, hu]

/-- Apply this to the completed logarithmic derivative only after its analytic
identification and reflection have been supplied. -/
def weightedDetector (h a : ℝ) (J : ℂ → ℂ) (s : ℂ) : ℂ :=
  pairedKernel h a s * J s

theorem weightedDetector_reflection (h a : ℝ) (J : ℂ → ℂ)
    (hJ : ∀ s, J s = -J (1 - s)) (s : ℂ) :
    weightedDetector h a J s = -weightedDetector h (-a) J (1 - s) := by
  unfold weightedDetector
  rw [pairedKernel_reflection h a s, hJ s]
  ring

/-- The residue coefficient identified analytically in equation (6.3) of the
companion. This definition does not itself assert a contour-residue theorem. -/
def weightedPoleResidue (h a : ℝ) (m : ℕ) (s : ℂ) : ℂ :=
  -(m : ℂ) * mellinWindow h a s

theorem weightedPoleResidue_ne_zero {h a : ℝ} {m : ℕ} {s : ℂ}
    (hh : 0 < h) (hm : m ≠ 0) (hs : 0 < s.re) :
    weightedPoleResidue h a m s ≠ 0 := by
  have hmC : (m : ℂ) ≠ 0 := by exact_mod_cast hm
  exact mul_ne_zero (neg_ne_zero.mpr hmC)
    (mellinWindow_ne_zero_of_re_pos hh hs)

/-- The normalized residue is the integer multiplicity, although the weighted
residue changes with phase and the logarithmic-derivative pole is simple. -/
theorem recoverMultiplicity {h a : ℝ} {s : ℂ} (m : ℕ)
    (hh : 0 < h) (hs : 0 < s.re) :
    -weightedPoleResidue h a m s / mellinWindow h a s = (m : ℂ) := by
  have ha : mellinWindow h a s ≠ 0 := mellinWindow_ne_zero_of_re_pos hh hs
  dsimp [weightedPoleResidue]
  field_simp [ha] <;> ring

/-- The removable sine quotient, rather than the degenerating raw sine. -/
def sineQuotient (w : ℂ) : ℂ := by
  classical
  exact if w = 0 then 1 else Complex.sin w / w

def normalizedFactor (z w : ℂ) : ℂ :=
  sineQuotient w * Complex.exp (z * (Complex.cos w - 1))

@[simp] theorem normalizedFactor_zero_iff (z w : ℂ) :
    normalizedFactor z w = 0 ↔ sineQuotient w = 0 := by
  simp [normalizedFactor, mul_eq_zero, Complex.exp_ne_zero]

/-- This is a different family from `normalizedFactor`. Its quadratic
counterterm is what permits every z on the analytic domain Re(s) > 1/4. -/
def renormalizedFactor (z w : ℂ) : ℂ :=
  normalizedFactor z w * Complex.exp (((z + 1 / 3) / 2) * w ^ 2)

@[simp] theorem renormalizedFactor_zero_iff (z w : ℂ) :
    renormalizedFactor z w = 0 ↔ sineQuotient w = 0 := by
  simp [renormalizedFactor, mul_eq_zero, Complex.exp_ne_zero]

@[simp] theorem renormalizedFactor_at_special (w : ℂ) :
    renormalizedFactor (-(1 / 3 : ℂ)) w = normalizedFactor (-(1 / 3 : ℂ)) w := by
  simp [renormalizedFactor]

/-- Named polynomial expression. Its identification as a Taylor coefficient
is an analytic statement proved in the companion, not this definition. -/
def quadraticCoefficient (z : ℂ) : ℂ := -(1 / 6 + z / 2)

def quarticCoefficient (z : ℂ) : ℂ := -(1 / 180 : ℂ) + z / 24

@[simp] theorem quadraticCoefficient_at_special :
    quadraticCoefficient (-(1 / 3 : ℂ)) = 0 := by
  norm_num [quadraticCoefficient]

@[simp] theorem quarticCoefficient_at_special :
    quarticCoefficient (-(1 / 3 : ℂ)) = -(7 / 360 : ℂ) := by
  norm_num [quarticCoefficient]

theorem quadraticCoefficient_eq_zero_iff (z : ℂ) :
    quadraticCoefficient z = 0 ↔ z = -(1 / 3 : ℂ) := by
  constructor
  · intro hz
    dsimp [quadraticCoefficient] at hz
    linear_combination -2 * hz
  · rintro rfl
    exact quadraticCoefficient_at_special

/-- A nonzero additive correction cannot be a value-preserving continuation.
The companion separately proves that the actual window is entire. -/
theorem logarithmicCorrection_is_not_invariant {A c u : ℂ}
    (hc : c ≠ 0) (hu : u ≠ 0) : A + c / u ≠ A := by
  intro hz
  have hq : c / u = 0 := by
    calc
      c / u = (A + c / u) - A := by ring
      _ = 0 := by rw [hz]; ring
  exact (div_ne_zero hc hu) hq

section Periods

variable {E F G : Type*}
variable [AddCommGroup E] [Module ℂ E]
variable [AddCommGroup F] [Module ℂ F]
variable [AddCommGroup G] [Module ℂ G]

/-- Closedness survives an exact perturbation in a genuine complex. -/
theorem closed_add_exact (d0 : E →ₗ[ℂ] F) (d1 : F →ₗ[ℂ] G)
    (hcomplex : d1.comp d0 = 0) (v : F) (u : E) (hv : d1 v = 0) :
    d1 (v + d0 u) = 0 := by
  have hu : d1 (d0 u) = 0 := by
    have he := congrArg (fun f : E →ₗ[ℂ] G => f u) hcomplex
    simpa using he
  simp only [map_add, hv, hu, add_zero]

/-- The cycle/period hypothesis is explicit: a general linear functional need
not kill exact cochains. -/
theorem period_add_exact (d0 : E →ₗ[ℂ] F) (period : F →ₗ[ℂ] ℂ)
    (killsExact : ∀ u, period (d0 u) = 0) (v : F) (u : E) :
    period (v + d0 u) = period v := by
  rw [map_add, killsExact u, add_zero]

end Periods

section Energy

variable {V E F : Type*} [NormedAddCommGroup E] [NormedAddCommGroup F]

/-- In the Hodge application, `down = d0.adjoint` and `up = d1`.
No such identification with an arithmetic operator is assumed implicitly. -/
def hodgeEnergy (down : V → E) (up : V → F) (v : V) : ℝ :=
  ‖down v‖ ^ 2 + ‖up v‖ ^ 2

theorem hodgeEnergy_nonneg (down : V → E) (up : V → F) (v : V) :
    0 ≤ hodgeEnergy down up v := by
  exact add_nonneg (sq_nonneg _) (sq_nonneg _)

theorem hodgeEnergy_eq_zero_iff (down : V → E) (up : V → F) (v : V) :
    hodgeEnergy down up v = 0 ↔ down v = 0 ∧ up v = 0 := by
  constructor
  · intro hz
    dsimp [hodgeEnergy] at hz
    have hd : ‖down v‖ = 0 := by
      nlinarith [sq_nonneg ‖up v‖, norm_nonneg (down v)]
    have hu : ‖up v‖ = 0 := by
      nlinarith [sq_nonneg ‖down v‖, norm_nonneg (up v)]
    exact ⟨norm_eq_zero.mp hd, norm_eq_zero.mp hu⟩
  · rintro ⟨hd, hu⟩
    simp [hodgeEnergy, hd, hu]

end Energy

end GRWTSK.NumberTheory.DirichletBetaHodgeFilter
