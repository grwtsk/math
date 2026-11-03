/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ExplicitRadicalHeightAssembly

set_option autoImplicit false
noncomputable section

/-! Actual zero-defect branch needs no unpaid-budget assumption, but keeps
W nonzero. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.ZeroDefectNonzeroWronskianEpsilonHeight
open RetainedFactorization IntegerWronskianRepetitionCorrection
open UnpaidRepetitionHeight UnpaidDefectFactorization ExplicitRadicalHeightAssembly

theorem actual_zero_defect_log_height (T : CoprimeAdditiveTriple)
    (hd : integerAdditiveDefect T=0) (hW : integerWronskian T.a T.b≠0) :
    (T.c : ℝ)≤(UniqueFactorizationMonoid.radical T.product : ℝ)*
      Real.log (T.c : ℝ)/Real.log 2 := by
  simpa only [zero_defect_unpaid_one T hd,Nat.cast_one,mul_one] using
    partial_credit_unpaid_height T hW

theorem actual_zero_defect_epsilon_height (T : CoprimeAdditiveTriple)
    (hd : integerAdditiveDefect T=0) (hW : integerWronskian T.a T.b≠0)
    (ε : ℝ) (hε : 0<ε) :
    (T.c : ℝ)≤(Real.exp (-1)/((ε/(1+ε))*Real.log 2))^(1+ε)*
      (UniqueFactorizationMonoid.radical T.product : ℝ)^(1+ε) := by
  have hp : 0<1+ε := by linarith
  have ha : 0<ε/(1+ε) := div_pos hε hp
  have ha1 : ε/(1+ε)<1 := (div_lt_one hp).mpr (by linarith)
  have hi : (1-ε/(1+ε))⁻¹=1+ε := by
    have hn : 1-ε/(1+ε)≠0 := ne_of_gt (by linarith)
    field_simp
    <;> ring
  have hR : 0<(UniqueFactorizationMonoid.radical T.product : ℝ) := by
    exact_mod_cast Nat.radical_pos T.product
  have hh := explicit_radical_height (T.c : ℝ)
    (UniqueFactorizationMonoid.radical T.product : ℝ) 1 0 (ε/(1+ε))
    (by exact_mod_cast T.c_pos) hR (by norm_num) ha ha1
    (by simpa using actual_zero_defect_log_height T hd hW)
  simpa only [add_zero,one_mul,one_div,hi] using hh

/- This is a restricted source branch, not ABC: nonzero defect still needs
its actual weighted-log budget, and W=0 destroys the divisibility-to-size
argument even when the defect also vanishes. Neither branch is removed. -/
end GRWTSK.NumberTheory.ABC.ZeroDefectNonzeroWronskianEpsilonHeight
