/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicPotentialFourierEntry
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.ArithmeticCyclicSecondVariation

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact cyclic shifts and second-difference Fourier multiplier. All seam
terms are in the cyclic reindexing. No uniform tail or physical embedding
is inferred. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicSecondDifferenceFourierMultiplier
open ZMod AddChar CyclicPotentialFourierEntry ArithmeticCyclicSecondVariation
variable (N : ℕ) [NeZero N]

def fourierSum (q : ZMod N → ℂ) (r : ZMod N) : ℂ :=
  ∑ j : ZMod N, q j*stdAddChar ((-r)*j)

theorem shifted_fourierSum (q : ZMod N → ℂ) (r d : ZMod N) :
    fourierSum N (fun j => q (j+d)) r=stdAddChar (r*d)*fourierSum N q r := by
  unfold fourierSum
  calc
    _ = ∑ k : ZMod N, q k*stdAddChar ((-r)*(k-d)) :=
      Fintype.sum_equiv (Equiv.addRight d) _ _ (fun j => by simp)
    _ = ∑ k : ZMod N, stdAddChar (r*d)*(q k*stdAddChar ((-r)*k)) := by
      apply Finset.sum_congr rfl
      intro k _
      have he : (-r)*(k-d)=r*d+(-r)*k := by ring
      rw [he,map_add_eq_mul]
      ring
    _ = _ := (Finset.mul_sum _ _ _).symm

theorem secondDifference_fourierSum (q : ZMod N → ℂ) (r : ZMod N) :
    fourierSum N (fun j => 2*q j-q (j+1)-q (j-1)) r =
      (2-stdAddChar r-stdAddChar (-r))*fourierSum N q r := by
  have he : fourierSum N (fun j => 2*q j-q (j+1)-q (j-1)) r =
      2*fourierSum N q r-fourierSum N (fun j => q (j+1)) r-
        fourierSum N (fun j => q (j-1)) r := by
    unfold fourierSum
    simp only [Finset.mul_sum,← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro j _
    ring
  rw [he,shifted_fourierSum]
  have hm := shifted_fourierSum N q r (-1)
  simp only [mul_neg,mul_one,sub_eq_add_neg] at hm
  rw [hm]
  simp only [mul_one]
  ring

theorem actual_secondDifference_coefficient (q : ZMod N → ℝ) (r : ZMod N) :
    potentialFourierCoefficient N (secondDifference N q) r =
      (2-stdAddChar r-stdAddChar (-r))*potentialFourierCoefficient N q r := by
  have he : (fun j : ZMod N => (secondDifference N q j : ℂ)) =
      fun j => 2*(q j : ℂ)-(q (j+1) : ℂ)-(q (j-1) : ℂ) := by
    funext j
    simp [secondDifference]
  change (N : ℂ)⁻¹*fourierSum N (fun j => (secondDifference N q j : ℂ)) r = _
  rw [he,secondDifference_fourierSum]
  change (N : ℂ)⁻¹*((2-stdAddChar r-stdAddChar (-r))*fourierSum N (fun j => (q j : ℂ)) r) =
    (2-stdAddChar r-stdAddChar (-r))*((N : ℂ)⁻¹*fourierSum N (fun j => (q j : ℂ)) r)
  ring

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicSecondDifferenceFourierMultiplier
