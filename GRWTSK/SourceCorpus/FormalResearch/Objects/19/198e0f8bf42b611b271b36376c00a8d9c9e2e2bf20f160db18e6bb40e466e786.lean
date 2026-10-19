module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeCharacterArithmetic
public import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
public import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic

/-!
# The exact finite conductor-three twisted Chebyshev sum

The coefficient sequence is `χ₃(n) Λ(n)` before any summation or spatial
encoding.  This is the lossless arithmetic object needed by both the classical
explicit-formula route and any future coefficient-level packet route.

The finite identities below are unconditional.  In particular, the module
does **not** postulate an explicit formula, GRH, or a critical error bound.
-/

public section

namespace Surface.Core.ConductorThreeVonMangoldt

noncomputable section

open scoped ArithmeticFunction BigOperators
open Surface.Core.AnalyticPrimeWalk
open Surface.Core.ConductorThreeCharacterArithmetic

/-- The real coefficient `χ₃(n) Λ(n)`. -/
@[expose]
def twistedVonMangoldtThree (n : ℕ) : ℝ :=
  (conductorThreeIntegerValue n : ℝ) * ArithmeticFunction.vonMangoldt n

/-- The exact finite sum `∑_{0 ≤ n ≤ x} χ₃(n) Λ(n)`.  The `n = 0`
term vanishes, so `range (x + 1)` represents the conventional `1 ≤ n ≤ x`
sum without a boundary conversion. -/
@[expose]
def conductorThreePsi (x : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (x + 1), twistedVonMangoldtThree n

@[surface_novel, surface_published, simp]
theorem twistedVonMangoldtThree_mod_zero
    {n : ℕ} (h : n % 3 = 0) :
    twistedVonMangoldtThree n = 0 := by
  simp [twistedVonMangoldtThree, conductorThreeIntegerValue_mod_zero h]

@[surface_novel, surface_published, simp]
theorem twistedVonMangoldtThree_mod_one
    {n : ℕ} (h : n % 3 = 1) :
    twistedVonMangoldtThree n = ArithmeticFunction.vonMangoldt n := by
  simp [twistedVonMangoldtThree, conductorThreeIntegerValue_mod_one h]

@[surface_novel, surface_published, simp]
theorem twistedVonMangoldtThree_mod_two
    {n : ℕ} (h : n % 3 = 2) :
    twistedVonMangoldtThree n = -ArithmeticFunction.vonMangoldt n := by
  simp [twistedVonMangoldtThree, conductorThreeIntegerValue_mod_two h]

/-- Pointwise decomposition into the two nonzero residue classes modulo
three. -/
@[surface_novel, surface_published]
theorem twistedVonMangoldtThree_eq_residue_difference (n : ℕ) :
    twistedVonMangoldtThree n =
      (if n % 3 = 1 then ArithmeticFunction.vonMangoldt n else 0) -
      (if n % 3 = 2 then ArithmeticFunction.vonMangoldt n else 0) := by
  have hlt : n % 3 < 3 := Nat.mod_lt n (by omega)
  interval_cases hmod : n % 3 <;>
    simp [hmod, twistedVonMangoldtThree]

/-- Von Mangoldt mass in one residue class modulo three. -/
@[expose]
def residueVonMangoldtThree (r x : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (x + 1),
    if n % 3 = r % 3 then ArithmeticFunction.vonMangoldt n else 0

/-- Exact finite residue-class decomposition of the twisted Chebyshev sum. -/
@[surface_novel, surface_published]
theorem conductorThreePsi_eq_residue_difference (x : ℕ) :
    conductorThreePsi x =
      residueVonMangoldtThree 1 x - residueVonMangoldtThree 2 x := by
  simp only [conductorThreePsi, residueVonMangoldtThree,
    Nat.one_mod, twistedVonMangoldtThree_eq_residue_difference]
  rw [Finset.sum_sub_distrib]

/-- Complex-valued presentation of the same finite sum using the existing
`DirichletCharacter ℂ 3`. -/
@[expose]
def conductorThreePsiComplex (x : ℕ) : ℂ :=
  ∑ n ∈ Finset.range (x + 1),
    conductorThreeCharacter n * ArithmeticFunction.vonMangoldt n

/-- The real and complex finite sums agree exactly after casting. -/
@[surface_adapter, surface_published]
theorem conductorThreePsiComplex_eq_real (x : ℕ) :
    conductorThreePsiComplex x = (conductorThreePsi x : ℂ) := by
  simp only [conductorThreePsiComplex, conductorThreePsi,
    twistedVonMangoldtThree, conductorThreeCharacter_eq_intCast]
  push_cast
  rfl

end

end Surface.Core.ConductorThreeVonMangoldt

