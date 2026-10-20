/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFifteenDerivativeWitness

set_option autoImplicit false

/-! Source fixtures only; not executed. Actual zeros are permitted by the witness. -/
namespace GRWTSK.RiemannHypothesis.Checks.SixteenDerivativeFifteenHeight
open Complex Set
open GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
open CenteredMellin.SexticPrimitive
open DerivativeSixteen ZeroIsolation ZeroIsolation.FifteenWitness
noncomputable section

example {s : ℂ} (hs : 0 < s.re) : deriv poleNormalizedZeta s =
    exactDerivative s-productSlope 7 s*tail 16 s+
      multiplier s*sixthKernel.logTail (s+6) 16 := source_derivative_identity hs

example {s : ℂ} (hs : Region s) :
    ‖deriv poleNormalizedZeta s-exactDerivative s‖ ≤ (1/4 : ℝ) := derivative_source_error hs
example {s : ℂ} (hs : Region s) :
    ‖exactDerivative s-Jet.model s‖ ≤ (1/4 : ℝ) := Jet.finite_derivative_enclosure hs
example {s : ℂ} (hs : Region s) :
    ‖Jet.model s-(1+13*I)‖ ≤ (23/2 : ℝ) := Certificate.model_disk hs
example : (1/4 : ℝ)+1/4+23/2 = 12 := by norm_num
example : (7*21^6 : ℝ)/(30240*5*16^5)+(21^7 : ℝ)/(30240*4*16^4) < 1/4 := by norm_num
example : (17/2 : ℝ)^2+(15/2)^2 ≤ (23/2)^2 := by norm_num

example : DerivativeDisk poleNormalizedZeta domain := certificate
example {z w : ℂ} (hz : z ∈ domain) (hw : w ∈ domain) :
    ‖z-w‖ ≤ ‖poleNormalizedZeta z-poleNormalizedZeta w‖ := source_separation hz hw
example {z : ℂ} (hz : z ∈ domain) : deriv poleNormalizedZeta z ≠ 0 := derivative_nonzero hz
example : AtMostOneTarget fifteenBox := fifteen_target_capacity
example {z : ℂ} (hz : z ∈ fifteenBox) (hzero : NontrivialZetaZero z) : z.re=1/2 :=
  target_on_line hz hzero
example : ShellRH 14 := shellRH_fourteen
example : WindowRH 15 := windowRH_fifteen
-- Exact previous port; its blanket-nonvanishing replacement would be incorrect.
example : WindowRH 15 := window_fifteen_of_capacity fifteen_target_capacity

-- Strict derivative control permits a genuine source zero.
def exampleCenter : ℂ := ⟨1/2,29/2⟩
def exampleAffine (z : ℂ) : ℂ := (1+13*I)*(z-exampleCenter)
example : exampleAffine exampleCenter=0 := by simp [exampleAffine]
example : Nonempty (DerivativeDisk exampleAffine Set.univ) := by
  exact ⟨DerivativeDisk.affine (1+13*I) exampleCenter
    (by intro h; have hi := congrArg Complex.im h; norm_num at hi) convex_univ⟩
example : exampleCenter.re=1/2 := rfl

-- A uniform VALUE radius cannot simply be differentiated with the same radius.
example {z : ℂ} (hz : ‖z‖ ≤ (1 : ℝ)) : ‖z^2‖ ≤ (1 : ℝ) := by
  rw [norm_pow]
  exact pow_le_one₀ (norm_nonneg _) hz
example : deriv (fun z : ℂ => z^2) 1=2 := by
  have h := ((hasDerivAt_id (1 : ℂ)).pow 2).deriv
  norm_num at h
  exact h
example : ¬ ‖deriv (fun z : ℂ => z^2) 1‖ ≤ (1 : ℝ) := by
  have h := ((hasDerivAt_id (1 : ℂ)).pow 2).deriv
  norm_num at h
  rw [h]
  norm_num

-- At-most-one is not existence; non-strict derivative radius need not be injective.
example : AtMostOneZero (fun _ : ℂ => 1) Set.univ := by
  intro z hz w hw hzero
  norm_num at hzero
example : ¬ AtMostOneZero (fun _ : ℂ => 0) Set.univ := by
  intro h
  have he := h 0 (by trivial) 1 (by trivial) rfl rfl
  norm_num at he

-- The unused left boundary is not silently included in the analytic source domain.
example : (⟨0,29/2⟩ : ℂ) ∉ domain := by norm_num [domain, Region]
example : (⟨1/2,14⟩ : ℂ) ∈ domain := by norm_num [domain, Region]
example : (⟨1/2,15⟩ : ℂ) ∈ domain := by norm_num [domain, Region]
example (h : ShellRH 15) : WindowRH 16 := window_sixteen_of_shell h
example (h : ∀ N : ℕ, 15 ≤ N → WindowRH N → ShellRH N) : _root_.RiemannHypothesis :=
  rh_of_above_fifteen h

end
end GRWTSK.RiemannHypothesis.Checks.SixteenDerivativeFifteenHeight
