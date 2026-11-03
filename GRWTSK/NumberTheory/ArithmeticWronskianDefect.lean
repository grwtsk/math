/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib rational algebra retains upstream authorship and licenses. -/
import GRWTSK.NumberTheory.RetainedArithmeticDerivative

set_option autoImplicit false
noncomputable section

/-!
# Exact Wronskian failure on genuine additive triples

For D from retained factorization put delta=D(c)-D(a)-D(b).
The two cyclic Wronskians differ from the additive-derivation formulas
by b*delta and -a*delta. These terms must remain in any repeated-factor
divisibility or height estimate. No bound on them is supplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.ABC.ArithmeticWronskianDefect
open RetainedFactorization RetainedArithmeticDerivative

def additiveDefect (T : CoprimeAdditiveTriple) : ℚ :=
  arithmeticDerivative T.c - arithmeticDerivative T.a - arithmeticDerivative T.b

def arithmeticWronskian (m n : ℕ) : ℚ :=
  (m : ℚ) * arithmeticDerivative n - (n : ℚ) * arithmeticDerivative m

theorem wronskian_ab_bc_defect (T : CoprimeAdditiveTriple) :
    arithmeticWronskian T.a T.b + arithmeticWronskian T.b T.c =
      (T.b : ℚ) * additiveDefect T := by
  have hc : (T.c : ℚ) = (T.a : ℚ) + (T.b : ℚ) := by exact_mod_cast T.additive.symm
  unfold arithmeticWronskian additiveDefect
  rw [hc]
  ring

theorem wronskian_ca_ab_defect (T : CoprimeAdditiveTriple) :
    arithmeticWronskian T.c T.a + arithmeticWronskian T.a T.b =
      -(T.a : ℚ) * additiveDefect T := by
  have hc : (T.c : ℚ) = (T.a : ℚ) + (T.b : ℚ) := by exact_mod_cast T.additive.symm
  unfold arithmeticWronskian additiveDefect
  rw [hc]
  ring

def sourceTriple235 : CoprimeAdditiveTriple where
  a := 2
  b := 3
  c := 5
  a_pos := by norm_num
  b_pos := by norm_num
  c_pos := by norm_num
  additive := by norm_num
  coprime := by norm_num

theorem sourceTriple235_defect : additiveDefect sourceTriple235 = -1 := by
  change arithmeticDerivative 5 - arithmeticDerivative 2 - arithmeticDerivative 3 = -1
  rw [arithmeticDerivative_prime 5 (by norm_num), arithmeticDerivative_prime 2 (by norm_num),
    arithmeticDerivative_prime 3 (by norm_num)]
  norm_num

end GRWTSK.NumberTheory.ABC.ArithmeticWronskianDefect
