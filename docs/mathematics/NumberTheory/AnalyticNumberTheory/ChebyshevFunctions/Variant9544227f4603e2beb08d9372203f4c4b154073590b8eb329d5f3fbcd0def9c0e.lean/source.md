# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ChebyshevFunctions.Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9866937cfbda9bbcfd3a690e9e3004e87d20777` · SHA-256 `9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.PrimeReciprocalSums
import Mathlib.Analysis.SpecialFunctions.Log.Basic

/-!
# Folder.Rebuild.AnalyticNumberTheory.ChebyshevFunctions

Finite Chebyshev theta and prime-counting scaffolding.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def primeCounting
    (N : Nat) : Nat :=
  (primesUpTo N).card

noncomputable def chebyshevTheta
    (N : Nat) : Real :=
  ∑ p ∈ primesUpTo N, Real.log p

theorem primeCounting_eq_card_primesUpTo
    (N : Nat) :
    primeCounting N = (primesUpTo N).card := by
  rfl

theorem chebyshevTheta_nonneg
    (N : Nat) :
    0 ≤ chebyshevTheta N := by
  unfold chebyshevTheta
  exact
    Finset.sum_nonneg
      (fun p hp =>
        Real.log_nonneg
          (by exact_mod_cast (primesUpTo_prime hp).one_le))

theorem chebyshevTheta_mono :
    Monotone chebyshevTheta := by
  intro M N hMN
  unfold chebyshevTheta
  exact
    Finset.sum_le_sum_of_subset_of_nonneg
      (primesUpTo_subset_of_le hMN)
      (fun p hp _hnot =>
        Real.log_nonneg
          (by exact_mod_cast (primesUpTo_prime hp).one_le))

theorem chebyshevTheta_le_primeCounting_mul_log
    (N : Nat) :
    chebyshevTheta N ≤ (primeCounting N : Real) * Real.log N := by
  unfold chebyshevTheta primeCounting
  calc
    (∑ p ∈ primesUpTo N, Real.log p)
        ≤ ∑ _p ∈ primesUpTo N, Real.log N := by
          refine Finset.sum_le_sum ?_
          intro p hp
          exact
            Real.log_le_log
              (by exact_mod_cast (primesUpTo_prime hp).pos)
              (by exact_mod_cast (mem_primesUpTo_iff.mp hp).2)
    _ = ((primesUpTo N).card : Real) * Real.log N := by
          simp [Finset.sum_const, nsmul_eq_mul]

theorem primeCounting_mul_log_two_le_chebyshevTheta
    (N : Nat) :
    (primeCounting N : Real) * Real.log 2 ≤ chebyshevTheta N := by
  unfold chebyshevTheta primeCounting
  calc
    ((primesUpTo N).card : Real) * Real.log 2
        = ∑ _p ∈ primesUpTo N, Real.log 2 := by
          simp [Finset.sum_const, nsmul_eq_mul]
    _ ≤ ∑ p ∈ primesUpTo N, Real.log p := by
          refine Finset.sum_le_sum ?_
          intro p hp
          exact
            Real.log_le_log
              (by norm_num)
              (by exact_mod_cast (primesUpTo_prime hp).two_le)

/-- Theorem target: a finite-linear upper bound for theta. -/
def ChebyshevThetaUpperBoundTarget : Prop :=
  ∃ C : Real, 0 < C ∧ ∀ N : Nat, chebyshevTheta N ≤ C * N

/-- Theorem target: classical two-sided prime-counting bounds. -/
def ChebyshevPrimeCountingBoundsTarget : Prop :=
  ∃ c C : Real, 0 < c ∧ c < C ∧
    Filter.Eventually (fun N : Nat =>
      c * (N : Real) / Real.log (N : Real) ≤ primeCounting N ∧
      (primeCounting N : Real) ≤ C * (N : Real) / Real.log (N : Real))
      Filter.atTop

end AnalyticNumberTheory
end Rebuild
end Folder
```
