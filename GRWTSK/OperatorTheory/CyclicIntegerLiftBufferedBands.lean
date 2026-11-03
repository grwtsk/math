/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicBufferedPotentialTailBound

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Genuine cyclic frequency bands via bounded integer lifts, including
wraparound and overlapping lifts. No no-aliasing hypothesis is suppressed.
Physical gauge sectors and uniform arithmetic tails remain unsupplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicIntegerLiftBufferedBands
open CyclicBufferedPotentialTailBound CyclicPotentialFourierEntry
open CyclicPotentialConvolutionConjugacy
variable (N : ℕ) [NeZero N]

def frequencyBand (K : ℕ) : Finset (ZMod N) :=
  (Finset.Icc (-(K : ℤ)) (K : ℤ)).image (fun k : ℤ => (k : ZMod N))

theorem frequencyBand_add (K₀ L : ℕ) (l r : ZMod N)
    (hl : l ∈ frequencyBand N K₀) (hr : r ∈ frequencyBand N L) :
    l+r ∈ frequencyBand N (K₀+L) := by
  obtain ⟨a,ha,rfl⟩ := Finset.mem_image.mp hl
  obtain ⟨b,hb,rfl⟩ := Finset.mem_image.mp hr
  apply Finset.mem_image.mpr
  refine ⟨a+b,?_,by simp⟩
  simp only [Finset.mem_Icc] at ha hb ⊢
  push_cast
  constructor <;> omega

theorem frequencyBand_mono {K L : ℕ} (hKL : K ≤ L) :
    frequencyBand N K ⊆ frequencyBand N L := by
  intro k hk
  obtain ⟨a,ha,rfl⟩ := Finset.mem_image.mp hk
  apply Finset.mem_image.mpr
  refine ⟨a,?_,rfl⟩
  simp only [Finset.mem_Icc] at ha ⊢
  constructor <;> omega

theorem actual_potential_band_tail (K₀ L K : ℕ) (hK : K₀+L ≤ K)
    (q : ZMod N → ℝ) (x : EuclideanSpace ℂ (ZMod N))
    (hx : ∀ l ∉ frequencyBand N K₀, x l=0) :
    ‖outsideMask N (frequencyBand N K) (potentialConvolution N q x)‖ ≤
      (∑ r ∈ Finset.univ \ frequencyBand N L,
        ‖potentialFourierCoefficient N q r‖)*‖x‖ := by
  apply buffered_actual_potential_tail_bound N (frequencyBand N K₀)
    (frequencyBand N K) (frequencyBand N L) _ q x hx
  intro r hr l hl
  exact frequencyBand_mono N hK (frequencyBand_add N K₀ L l r hl hr)

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicIntegerLiftBufferedBands
