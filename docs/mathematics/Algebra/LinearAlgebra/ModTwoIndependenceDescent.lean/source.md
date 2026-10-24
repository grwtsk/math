# Complete source: GRWTSK.LinearAlgebra.ModTwoIndependenceDescent

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ebbda4394deb18a86815feb686e476bcb14cf8f` · SHA-256 `44e382bea8f06d112c33f80a69ab4dfa50ce55fadb89eddbc5ed0758f478fb70`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
This is pure abelian-group and integer arithmetic. No elliptic-curve
group law, Selmer-group construction, or arithmetic rank is assumed.
-/
import Mathlib

/-!
# Integer independence from even-relation detection and injective doubling

Suppose G is an abelian group and P is a finite family of elements.
If (a) doubling kills no nonzero element of G and
(b) every integer relation among the P_i has only even coefficients,
then P is linearly independent over the integers.

The proof is a genuine infinite descent, measured by the sum of the
absolute values of the integer coefficients. It does not use a
finite bound on coefficients or numerical evidence.

The separate application to the ICARM #4239 character matrix is in
Record4239RankCriterion.lean. That application must construct true
homomorphisms on the actual nonsingular elliptic-curve point group.
-/

namespace GRWTSK.LinearAlgebra.ModTwoIndependenceDescent

open Finset

variable {ι G : Type*} [Fintype ι] [AddCommGroup G]

/-- The positive integer norm measuring the size of an integer relation. -/
private def coefficientMass (c : ι → ℤ) : ℕ :=
  ∑ i, (c i).natAbs

/-- Simultaneously doubling all coefficients exactly doubles their mass. -/
private theorem coefficientMass_double (d : ι → ℤ) :
    coefficientMass (fun i => (2 : ℤ) * d i) = 2 * coefficientMass d := by
  classical
  unfold coefficientMass
  calc
    (∑ i, ((2 : ℤ) * d i).natAbs) = ∑ i, 2 * (d i).natAbs := by
      apply Finset.sum_congr rfl
      intro i hi
      simp [Int.natAbs_mul]
    _ = 2 * (∑ i, (d i).natAbs) := by
      rw [Finset.mul_sum]

/-- A finite family is integer-linearly independent if every zero relation
has even coefficients and multiplication by two is injective on G.

Both hypotheses are essential and neither asserts independence itself.
The proof uses strong induction on the finite sum of absolute coefficients.
No rational tensor product or assumption of full torsion-freeness is used. -/
theorem linearIndependent_of_even_relations
    (P : ι → G)
    (noTwoTorsion : ∀ x : G, (2 : ℤ) • x = 0 → x = 0)
    (relationsEven : ∀ (c : ι → ℤ),
      (∑ i, c i • P i) = 0 → ∀ i, (2 : ℤ) ∣ c i) :
    LinearIndependent ℤ P := by
  classical
  apply (Fintype.linearIndependent_iff).2
  intro c hc
  have descend :
      ∀ n : ℕ, ∀ (r : ι → ℤ),
        coefficientMass r = n →
        (∑ i, r i • P i) = 0 →
        ∀ i, r i = 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | h n ih =>
      intro r hmass hrelation
      by_cases hn : n = 0
      · intro i
        have hle : (r i).natAbs ≤ coefficientMass r := by
          unfold coefficientMass
          exact Finset.single_le_sum (fun j hj => Nat.zero_le (r j).natAbs) (Finset.mem_univ i)
        have hz : (r i).natAbs = 0 := by omega
        exact Int.natAbs_eq_zero.mp hz
      · have hhalf : ∀ i, ∃ d : ℤ, r i = (2 : ℤ) * d := by
          intro i
          exact relationsEven r hrelation i
        choose d hd using hhalf
        have hweight : coefficientMass r = 2 * coefficientMass d := by
          have heq : r = fun i => (2 : ℤ) * d i := by
            funext i
            exact hd i
          rw [heq, coefficientMass_double]
        have hsubrelation : (∑ i, d i • P i) = 0 := by
          apply noTwoTorsion
          calc
            (2 : ℤ) • (∑ i, d i • P i) =
                ∑ i, (2 : ℤ) • (d i • P i) := by
                  rw [smul_sum]
            _ = ∑ i, r i • P i := by
                  apply Finset.sum_congr rfl
                  intro i hi
                  rw [hd i, mul_zsmul]
            _ = 0 := hrelation
        have hsmaller : coefficientMass d < n := by omega
        have hd0 := ih (coefficientMass d) hsmaller d rfl hsubrelation
        intro i
        rw [hd i, hd0 i, mul_zero]
  exact descend (coefficientMass c) c rfl hc

/-- The double-kernel assumption is not dispensable. The singleton
family 1 in ZMod 2 has a nonzero mod-2 coordinate but is killed by 2. -/
theorem doubling_counterexample :
    (2 : ℤ) • (1 : ZMod 2) = 0 ∧ (1 : ZMod 2) ≠ 0 := by
  constructor <;> decide

end GRWTSK.LinearAlgebra.ModTwoIndependenceDescent
```
