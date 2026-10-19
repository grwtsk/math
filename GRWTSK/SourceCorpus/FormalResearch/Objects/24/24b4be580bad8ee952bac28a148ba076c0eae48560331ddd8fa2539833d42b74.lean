import FormalResearch.RiemannHypothesis.Conversation.UnitJetCorrection
import FormalResearch.RiemannHypothesis.Conversation.ZetaJetCancellation
import Mathlib.Analysis.SpecialFunctions.ExpDeriv

/-!
# The actual finite Mobius polynomial has the prescribed unit jet

The two-point correction from Batch 18 is now an actual finite complex
Dirichlet polynomial. Its subtraction from the finite Mobius polynomial has
value zero and derivative kappa at one. The next consumer cancels the actual
Mathlib zeta pole and allocates a supplied continuous source germ. No source
germ identification or signed arithmetic size estimate is assumed silently.

Human unit-jet direction: grwtsk contributors. Local analytic adapter:
OpenAI Codex. Mathlib's Mobius, complex exponential, derivative and zeta
declarations retain their upstream identities and attribution.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.FiniteMobiusJet

open UnitJetCorrection Filter
open scoped BigOperators ArithmeticFunction.Moebius Topology
noncomputable section

/-- The dirichlet atom in this module, with the following exact parameterization.

def dirichletAtom (n : ℕ) (s : ℂ) : ℂ := Complex.exp (-s * (Real.log n : ℂ))
-/
def dirichletAtom (n : ℕ) (s : ℂ) : ℂ :=
  Complex.exp (-s * (Real.log n : ℂ))

/-- The finite mobius in this module, with the following exact parameterization.

def finiteMobius (U : ℕ) (s : ℂ) : ℂ := ∑ n ∈ Finset.Icc 1 U, ((μ : ArithmeticFunction ℝ) n :
ℂ) * dirichletAtom n s
-/
def finiteMobius (U : ℕ) (s : ℂ) : ℂ :=
  ∑ n ∈ Finset.Icc 1 U, ((μ : ArithmeticFunction ℝ) n : ℂ) * dirichletAtom n s

/-- The correction in this module, with the following exact parameterization.

def correction (U : ℕ) (kappa : ℝ) (q : ℕ) (s : ℂ) : ℂ := (atOne U kappa q : ℂ) + (atQ U kappa
q : ℂ) * dirichletAtom q s
-/
def correction (U : ℕ) (kappa : ℝ) (q : ℕ) (s : ℂ) : ℂ :=
  (atOne U kappa q : ℂ) + (atQ U kappa q : ℂ) * dirichletAtom q s

/-- The balanced factor in this module, with the following exact parameterization.

def balancedFactor (U : ℕ) (kappa : ℝ) (q : ℕ) (s : ℂ) : ℂ := finiteMobius U s - correction U
kappa q s
-/
def balancedFactor (U : ℕ) (kappa : ℝ) (q : ℕ) (s : ℂ) : ℂ :=
  finiteMobius U s - correction U kappa q s

theorem atom_at_one {n : ℕ} (hn : 1 ≤ n) :
    dirichletAtom n 1 = 1 / (n : ℂ) := by
  have hnR : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  unfold dirichletAtom
  simp only [neg_mul, one_mul, ← Complex.ofReal_neg, ← Complex.ofReal_exp,
    Real.exp_neg, Real.exp_log hnR, Complex.ofReal_inv, Complex.ofReal_natCast,
    one_div]

theorem atom_derivative_at_one {n : ℕ} (hn : 1 ≤ n) :
    HasDerivAt (dirichletAtom n) (-(Real.log n : ℂ) / n) 1 := by
  have h := (((hasDerivAt_id (1 : ℂ)).neg.mul_const (Real.log n : ℂ)).cexp)
  change HasDerivAt (dirichletAtom n)
    (dirichletAtom n 1 * (-1 * (Real.log n : ℂ))) 1 at h
  rw [atom_at_one hn] at h
  convert h using 1
  ring

theorem finite_mobius_value (U : ℕ) : finiteMobius U 1 = (momentZero U : ℂ) := by
  unfold finiteMobius momentZero
  rw [Complex.ofReal_sum]
  apply Finset.sum_congr rfl
  intro n hn
  rw [atom_at_one (Finset.mem_Icc.mp hn).1]
  push_cast
  ring

theorem finite_mobius_derivative (U : ℕ) :
    HasDerivAt (finiteMobius U) (-(momentOne U : ℂ)) 1 := by
  have h := HasDerivAt.fun_sum (u := Finset.Icc 1 U)
    (fun n hn ↦ (atom_derivative_at_one (Finset.mem_Icc.mp hn).1).const_mul
      ((μ : ArithmeticFunction ℝ) n : ℂ))
  change HasDerivAt (finiteMobius U)
    (∑ n ∈ Finset.Icc 1 U,
      ((μ : ArithmeticFunction ℝ) n : ℂ) * (-(Real.log n : ℂ) / n)) 1 at h
  convert h using 1
  unfold momentOne
  rw [Complex.ofReal_sum, ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  push_cast
  ring

theorem correction_value (U : ℕ) (kappa : ℝ) {q : ℕ} (hq : 2 ≤ q) :
    correction U kappa q 1 = (momentZero U : ℂ) := by
  unfold correction
  rw [atom_at_one (by omega : 1 ≤ q)]
  have h := (exact_two_moments U kappa hq).1
  have hc := congrArg (fun x : ℝ ↦ (x : ℂ)) h
  push_cast at hc
  simpa [div_eq_mul_inv] using hc

theorem correction_derivative (U : ℕ) (kappa : ℝ) {q : ℕ} (hq : 2 ≤ q) :
    HasDerivAt (correction U kappa q)
      (-(atQ U kappa q * Real.log q / q : ℝ) : ℂ) 1 := by
  have h := ((atom_derivative_at_one (by omega : 1 ≤ q)).const_mul
    (atQ U kappa q : ℂ)).const_add (atOne U kappa q : ℂ)
  change HasDerivAt (correction U kappa q)
    ((atQ U kappa q : ℂ) * (-(Real.log q : ℂ) / q)) 1 at h
  convert h using 1
  push_cast
  ring

theorem balanced_factor_value (U : ℕ) (kappa : ℝ) {q : ℕ} (hq : 2 ≤ q) :
    balancedFactor U kappa q 1 = 0 := by
  simp [balancedFactor, finite_mobius_value, correction_value U kappa hq]

theorem balanced_factor_jet (U : ℕ) (kappa : ℝ) {q : ℕ} (hq : 2 ≤ q) :
    HasDerivAt (balancedFactor U kappa q) (kappa : ℂ) 1 := by
  have h := (finite_mobius_derivative U).sub (correction_derivative U kappa hq)
  change HasDerivAt (balancedFactor U kappa q)
    (-(momentOne U : ℂ) - (-(atQ U kappa q * Real.log q / q : ℝ) : ℂ)) 1 at h
  have hc := congrArg (fun x : ℝ ↦ (x : ℂ)) (allocated_low_value U kappa hq)
  simp only [Complex.ofReal_add, Complex.ofReal_neg] at hc
  convert h using 1
  simpa only [sub_neg_eq_add] using hc.symm

theorem actual_balanced_zeta_limit (U : ℕ) (kappa : ℝ) {q : ℕ} (hq : 2 ≤ q) :
    Tendsto (fun s ↦ balancedFactor U kappa q s * riemannZeta s) (𝓝[≠] 1)
      (𝓝 (kappa : ℂ)) :=
  ZetaJetCancellation.actual_zeta_pole_cancellation
    (balanced_factor_value U kappa hq) (balanced_factor_jet U kappa hq)

theorem actual_unit_high_child_limit (U : ℕ) {q : ℕ} (hq : 2 ≤ q)
    {C : ℂ → ℂ} (hC : ContinuousAt C 1) :
    Tendsto (fun s ↦ (1 - balancedFactor U 1 q s * riemannZeta s) * C s)
      (𝓝[≠] 1) (𝓝 0) :=
  ZetaJetCancellation.unit_jet_high_child_vanishes
    (balanced_factor_value U 1 hq) (balanced_factor_jet U 1 hq) hC

theorem actual_unit_low_child_limit (U : ℕ) {q : ℕ} (hq : 2 ≤ q)
    {C : ℂ → ℂ} (hC : ContinuousAt C 1) :
    Tendsto (fun s ↦ (balancedFactor U 1 q s * riemannZeta s) * C s)
      (𝓝[≠] 1) (𝓝 (C 1)) :=
  ZetaJetCancellation.unit_jet_low_child_preserves_source
    (balanced_factor_value U 1 hq) (balanced_factor_jet U 1 hq) hC

end
end GRWTSK.RiemannHypothesis.Conversation.FiniteMobiusJet
