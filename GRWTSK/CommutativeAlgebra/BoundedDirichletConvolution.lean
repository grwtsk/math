import Folder.Rebuild.AnalyticNumberTheory.DirichletPolynomialProduct
import Mathlib.Order.Interval.Finset.Nat

/-!
# Folder.Rebuild.AnalyticNumberTheory.BoundedDirichletConvolution

Finite bounded divisor pairs and bounded Dirichlet convolution reindexing.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open Folder.Rebuild.NumberTheory
open scoped BigOperators

def boundedDivisorPairs
    (N n : Nat) : Finset Nat :=
  (Nat.divisors n).filter
    (fun d => d ≤ N ∧ n / d ≤ N)

theorem mem_boundedDivisorPairs_iff
    {N n d : Nat} :
    d ∈ boundedDivisorPairs N n ↔
      d ∈ Nat.divisors n ∧ d ≤ N ∧ n / d ≤ N := by
  simp [boundedDivisorPairs]

theorem boundedDirichletConv_eq_sum
    [Semiring R]
    (N : Nat)
    (f g : ArithFn R)
    (n : Nat) :
    boundedDirichletConv N f g n =
      ∑ d ∈ boundedDivisorPairs N n, f d * g (n / d) := by
  unfold boundedDirichletConv boundedDivisorPairs
  rw [Finset.sum_filter]

noncomputable def pairProductByValue
    [Semiring R]
    (N n : Nat)
    (f g : ArithFn R) : R :=
  ∑ de ∈ ((Finset.Icc 1 N).product (Finset.Icc 1 N)).filter
      (fun de : Nat × Nat => de.1 * de.2 = n),
    f de.1 * g de.2

theorem pairProductByValue_eq_boundedDirichletConv
    [CommSemiring R]
    (N n : Nat)
    (f g : ArithFn R)
    (hn : 0 < n) :
    pairProductByValue N n f g =
      boundedDirichletConv N f g n := by
  rw [boundedDirichletConv_eq_sum]
  unfold pairProductByValue
  symm
  refine Finset.sum_bij
    (fun d _hd => (d, n / d)) ?hi ?hinj ?hsurj ?hterm
  · intro d hd
    simp only [boundedDivisorPairs, Finset.mem_filter] at hd
    rcases hd with ⟨hdivmem, hdle, hquotle⟩
    have hdvd : d ∣ n := (Nat.mem_divisors.mp hdivmem).1
    have hdpos : 0 < d := Nat.pos_of_mem_divisors hdivmem
    have hmul : d * (n / d) = n := by
      rw [Nat.mul_comm]
      exact Nat.div_mul_cancel hdvd
    have hquotpos : 0 < n / d := by
      by_contra hnot
      have hzero : n / d = 0 := Nat.eq_zero_of_not_pos hnot
      have : n = 0 := by simpa [hzero] using hmul.symm
      exact hn.ne' this
    refine Finset.mem_filter.mpr ?_
    refine ⟨Finset.mem_product.mpr ?_, hmul⟩
    exact
      ⟨ Finset.mem_Icc.mpr ⟨Nat.succ_le_of_lt hdpos, hdle⟩
      , Finset.mem_Icc.mpr ⟨Nat.succ_le_of_lt hquotpos, hquotle⟩
      ⟩
  · intro _d₁ _hd₁ _d₂ _hd₂ hpair
    exact Prod.ext_iff.mp hpair |>.1
  · intro de hde
    rcases Finset.mem_filter.mp hde with ⟨hprodmem, hmul⟩
    rcases Finset.mem_product.mp hprodmem with ⟨hdmem, hemem⟩
    have hdIcc := Finset.mem_Icc.mp hdmem
    have heIcc := Finset.mem_Icc.mp hemem
    refine ⟨de.1, ?_, ?_⟩
    · simp only [boundedDivisorPairs, Finset.mem_filter]
      have hdvd : de.1 ∣ n := ⟨de.2, hmul.symm⟩
      have hdivmem : de.1 ∈ Nat.divisors n :=
        Nat.mem_divisors.mpr ⟨hdvd, hn.ne'⟩
      have hdpos : 0 < de.1 :=
        lt_of_lt_of_le Nat.zero_lt_one hdIcc.1
      have hdiv : n / de.1 = de.2 := by
        exact Nat.div_eq_of_eq_mul_right hdpos hmul.symm
      exact ⟨hdivmem, hdIcc.2, by simpa [hdiv] using heIcc.2⟩
    · have hdpos : 0 < de.1 :=
        lt_of_lt_of_le Nat.zero_lt_one hdIcc.1
      have hdiv : n / de.1 = de.2 := by
        exact Nat.div_eq_of_eq_mul_right hdpos hmul.symm
      ext <;> simp [hdiv]
  · intro _d _hd
    rfl

end AnalyticNumberTheory
end Rebuild
end Folder
