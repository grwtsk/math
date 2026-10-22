/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #543. Direct stacked parent: draft PR #539 at
`e0579210da1ffa0185a33fe4556b51cdd19d2b23`.
-/
import GRWTSK.NumberTheory.Moebius.EndpointCrossCollisionDivisorSquareSieve

/-!
# Squarefree half of the divisor-square Möbius identity

The parent adapter left the classical identity

`1_Squarefree(m) = sum_(d^2 | m) mu(d)`

as a proof-relevant certificate.

This module proves the complete squarefree case directly.  If `m>0` is
squarefree and `d*d | m`, then squarefreeness makes `d` a unit; over the
naturals this forces `d=1`.  Therefore the finite square-divisor Möbius sum
has exactly one surviving term, `mu(1)=1`.

The only remaining certificate obligation is the nonsquarefree cancellation
case.  That obligation is isolated as its own proof-relevant structure, and a
value of it is shown to construct the parent identity supplier.

No nonsquarefree cancellation theorem is proved here.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- For a positive squarefree integer, the divisor-square Möbius sum contains
only the unit divisor and therefore equals one. -/
theorem squareDivisorMobiusSum_eq_one_of_squarefree
    {m : ℕ} (hm : 0 < m) (hsq : Squarefree m) :
    squareDivisorMobiusSum m = 1 := by
  classical
  unfold squareDivisorMobiusSum
  have hm0 : m ≠ 0 := ne_of_gt hm
  have h1 : 1 ∈ m.divisors := Nat.one_mem_divisors.mpr hm0
  rw [Finset.sum_eq_single 1]
  · simp [moebiusReal, ArithmeticFunction.moebius_apply_one]
  · intro d hd hne
    by_cases hdd : d * d ∣ m
    · exfalso
      have hu : IsUnit d := hsq d hdd
      exact hne (Nat.isUnit_iff.mp hu)
    · simp [hdd]
  · intro hnot
    exact (hnot h1).elim

/-- Exact squarefree-indicator equality in the squarefree case. -/
theorem squarefreeIndicatorReal_eq_squareDivisorMobiusSum_of_squarefree
    {m : ℕ} (hm : 0 < m) (hsq : Squarefree m) :
    squarefreeIndicatorReal m = squareDivisorMobiusSum m := by
  rw [squareDivisorMobiusSum_eq_one_of_squarefree hm hsq]
  simp [squarefreeIndicatorReal, hsq]

/-- The only arithmetic obligation left after discharging the squarefree case:
for a positive nonsquarefree integer, the square-divisor Möbius sum cancels to
zero.

No value is constructed in this module. -/
structure NonSquarefreeSquareDivisorMobiusCancellation : Type where
  cancellation :
    ∀ m : ℕ, 0 < m → ¬ Squarefree m →
      squareDivisorMobiusSum m = 0

/-- A nonsquarefree cancellation certificate completes the full
squarefree/divisor-square identity supplier from the parent module. -/
def squarefreeDivisorSquareMobiusIdentity_of_nonsquarefreeCancellation
    (cert : NonSquarefreeSquareDivisorMobiusCancellation) :
    SquarefreeDivisorSquareMobiusIdentity where
  identity := by
    intro m hm
    by_cases hsq : Squarefree m
    · exact
        squarefreeIndicatorReal_eq_squareDivisorMobiusSum_of_squarefree
          hm hsq
    · rw [squarefreeIndicatorReal, if_neg hsq, cert.cancellation m hm hsq]

/-- After the squarefree case is discharged, constructing the original parent
supplier is conditionally reduced to the nonsquarefree cancellation field. -/
theorem exists_squarefreeDivisorSquareMobiusIdentity_of_exists_nonsquarefreeCancellation
    (h :
      Nonempty NonSquarefreeSquareDivisorMobiusCancellation) :
    Nonempty SquarefreeDivisorSquareMobiusIdentity := by
  rcases h with ⟨cert⟩
  exact
    ⟨squarefreeDivisorSquareMobiusIdentity_of_nonsquarefreeCancellation
      cert⟩

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.squareDivisorMobiusSum_eq_one_of_squarefree
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.squarefreeDivisorSquareMobiusIdentity_of_nonsquarefreeCancellation
