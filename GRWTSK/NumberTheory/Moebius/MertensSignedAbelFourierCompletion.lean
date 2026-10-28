/- Copyright (c) 2026 grwtsk. MIT.
Mathlib and imported GRWTSK results retain their upstream attribution/licenses. -/
import GRWTSK.Analysis.FiniteSums.DiscreteFourierSynthesis
import GRWTSK.NumberTheory.Moebius.MertensSignedAbelBilinearSynthesis

/-!
# Canonical Mathlib Fourier completion of the actual signed Abel source

Period Y+1 contains all positive source indices 1,...,Y without wraparound.
Actual Mobius samples and Mathlib's normalized DFT construct the formerly
hypothetical finite phase input. Full synthesis is exact and contributes no
input error. A partial spectrum pays its actual complementary coefficients
or, more sharply, its actual omitted bilinear windows. The original unsifted
and repeated-prime channels remain signed and unchanged.
This is finite reconstruction, NOT a growing-family cancellation estimate.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelFourierCompletion
open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.Analysis.FiniteSums.BilinearWindowSynthesis
open GRWTSK.Analysis.FiniteSums.DiscreteFourierSynthesis
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeExtraction
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelDyadicPrimeRange
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBandMultiplicity
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelRamareCofactor
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBilinearSynthesis

/-- One larger than the source endpoint, to avoid aliasing its last coordinate. -/
def fourierPeriod (j : ℕ) : ℕ := 2 ^ (j + 1) + 1
instance fourierPeriod_neZero (j : ℕ) : NeZero (fourierPeriod j) :=
  ⟨by unfold fourierPeriod; omega⟩

/-- The actual finite Mobius input; no periodicity of Mobius is claimed. -/
def mobiusSamples (j : ℕ) : ZMod (fourierPeriod j) → ℂ :=
  sample (fun n => (moebiusReal n : ℂ))

def mobiusCoefficient (j : ℕ) (k : ZMod (fourierPeriod j)) : ℂ :=
  coefficient (mobiusSamples j) k

/-- Same corrected packet model as before; only its phase input is now constructed. -/
def fourierPacketModel (j : ℕ) (S : Finset (ZMod (fourierPeriod j)))
    (width : ℕ → ℕ) : ℝ :=
  bilinearPacketModel S (mobiusCoefficient j) frequency width j

/-- Exact reconstruction on every ordinary input coordinate used by the packet. -/
theorem synthesis_mobius (j n : ℕ) (hn : n < fourierPeriod j) :
    phaseSynthesis Finset.univ (mobiusCoefficient j) frequency n = (moebiusReal n : ℂ) := by
  exact synthesis_sample (D := fourierPeriod j) (fun n => (moebiusReal n : ℂ)) hn

theorem synthesis_mobius_re (j n : ℕ) (hn : n < fourierPeriod j) :
    (phaseSynthesis Finset.univ (mobiusCoefficient j) frequency n).re = moebiusReal n := by
  rw [synthesis_mobius j n hn, Complex.ofReal_re]

/-- All frequencies reconstruct the same raw prefix, with the exclusive cutoff unchanged. -/
theorem full_phasePrefix_eq_raw (j h N : ℕ)
    (hh : 1 ≤ h) (hw : N + h < 2 ^ (j + 1)) :
    phasePrefix Finset.univ (mobiusCoefficient j) frequency
      (primeBand j) (cofactorCutoff j) h N =
      ramarePrefix (primeBand j) h N moebiusReal := by
  have hb := abs_raw_minus_phase_le Finset.univ (mobiusCoefficient j) frequency
    (primeBand j) (fun _ hp => primeBand_prime hp) (cofactorCutoff j) h N
    (fun _ hp => quotient_lt_cofactorCutoff hp hw) 0
    (by
      intro n hn hnN
      have hnD : n < fourierPeriod j := by unfold fourierPeriod; omega
      rw [synthesis_mobius_re j n hnD]
      simp)
  simp only [zero_mul] at hb
  exact (sub_eq_zero.mp (abs_eq_zero.mp (le_antisymm hb (abs_nonneg _)))).symm

/-- The full canonical Fourier model equals the ACTUAL retained bulk, not an approximation. -/
theorem fourierPacketModel_univ_eq_bulk (width : ℕ → ℕ) (j : ℕ) :
    fourierPacketModel j Finset.univ width = bulkPacket width j := by
  apply (sub_eq_zero.mp ?_).symm
  change bulkPacket width j -
    bilinearPacketModel Finset.univ (mobiusCoefficient j) frequency width j = 0
  rw [bulk_sub_bilinearPacketModel]
  have hz : bulkPrefixFunctional width j (fun h N =>
      ramarePrefix (primeBand j) h N moebiusReal -
        phasePrefix Finset.univ (mobiusCoefficient j) frequency
          (primeBand j) (cofactorCutoff j) h N) = 0 := by
    calc
      _ = bulkPrefixFunctional width j (fun _ _ => 0) := by
        apply bulkPrefixFunctional_congr_supported
        intro h N hh hw
        rw [full_phasePrefix_eq_raw j h N hh hw, sub_self]
      _ = 0 := by simp [bulkPrefixFunctional]
  rw [hz, neg_zero]

/-- The only remaining full-spectrum discrepancy is the old two-unit boundary cost. -/
theorem full_packet_exact_fourier (j : ℕ) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      fourierPacketModel j Finset.univ sqrtWidth| ≤ 2 := by
  rw [fourierPacketModel_univ_eq_bulk]
  exact abs_packet_sub_sqrt_bulk_le_two j

/-- Generic frequency partition in the actual bilinear phase prefix. -/
theorem phasePrefix_partition {ι : Type*} [Fintype ι] [DecidableEq ι]
    (S : Finset ι) (b : ι → ℂ) (α : ι → ℝ) (P : Finset ℕ) (M h N : ℕ) :
    phasePrefix S b α P M h N + phasePrefix Sᶜ b α P M h N =
      phasePrefix Finset.univ b α P M h N := by
  unfold phasePrefix
  rw [← Complex.add_re, Finset.sum_add_sum_compl]

/-- Omitted frequencies are a signed source function, not an unspecified error. -/
def omittedPrefix (j : ℕ) (S : Finset (ZMod (fourierPeriod j))) (h N : ℕ) : ℝ :=
  phasePrefix Sᶜ (mobiusCoefficient j) frequency (primeBand j) (cofactorCutoff j) h N

/-- Exact sign of the omission: the packet subtracts the raw prime channel. -/
theorem bulk_sub_partialModel (j : ℕ) (S : Finset (ZMod (fourierPeriod j)))
    (width : ℕ → ℕ) :
    bulkPacket width j - fourierPacketModel j S width =
      -bulkPrefixFunctional width j (omittedPrefix j S) := by
  change bulkPacket width j -
    bilinearPacketModel S (mobiusCoefficient j) frequency width j = _
  rw [bulk_sub_bilinearPacketModel]
  congr 1
  apply bulkPrefixFunctional_congr_supported
  intro h N hh hw
  have hp := phasePrefix_partition S (mobiusCoefficient j) frequency
    (primeBand j) (cofactorCutoff j) h N
  rw [full_phasePrefix_eq_raw j h N hh hw] at hp
  change ramarePrefix (primeBand j) h N moebiusReal -
    phasePrefix S (mobiusCoefficient j) frequency (primeBand j) (cofactorCutoff j) h N = _
  unfold omittedPrefix
  linarith

/-- Cancellation inside the omitted kernel-weighted response is retained. -/
theorem full_packet_partial_comparison (j : ℕ)
    (S : Finset (ZMod (fourierPeriod j))) :
    |weightedMertensDyadicSignedAbelDepthPacket j - fourierPacketModel j S sqrtWidth| ≤
      2 + |bulkPrefixFunctional sqrtWidth j (omittedPrefix j S)| := by
  calc
    _ = |(weightedMertensDyadicSignedAbelDepthPacket j - bulkPacket sqrtWidth j) +
        (bulkPacket sqrtWidth j - fourierPacketModel j S sqrtWidth)| := by congr 1; ring
    _ ≤ |weightedMertensDyadicSignedAbelDepthPacket j - bulkPacket sqrtWidth j| +
        |bulkPacket sqrtWidth j - fourierPacketModel j S sqrtWidth| := abs_add _ _
    _ ≤ 2 + |bulkPrefixFunctional sqrtWidth j (omittedPrefix j S)| := by
      rw [bulk_sub_partialModel, abs_neg]
      exact add_le_add_right (abs_packet_sub_sqrt_bulk_le_two j) _

/-- A coarser uniform tail uses the ACTUAL omitted canonical coefficients. -/
theorem partial_input_error (j : ℕ) (S : Finset (ZMod (fourierPeriod j)))
    {n : ℕ} (hn : n < fourierPeriod j) :
    |moebiusReal n - (phaseSynthesis S (mobiusCoefficient j) frequency n).re| ≤
      tailMass S (mobiusSamples j) := by
  have hs : mobiusSamples j (n : ZMod (fourierPeriod j)) = (moebiusReal n : ℂ) :=
    sample_natCast _ hn
  have h := norm_residual_le_tailMass S (mobiusSamples j) n
  rw [hs] at h
  calc
    _ = |((moebiusReal n : ℂ) -
        phaseSynthesis S (mobiusCoefficient j) frequency n).re| := by
      simp only [Complex.sub_re, Complex.ofReal_re]
    _ ≤ ‖(moebiusReal n : ℂ) -
        phaseSynthesis S (mobiusCoefficient j) frequency n‖ := Complex.abs_re_le_norm _
    _ ≤ tailMass S (mobiusSamples j) := h

theorem full_packet_tailMass_comparison (j : ℕ)
    (S : Finset (ZMod (fourierPeriod j))) :
    |weightedMertensDyadicSignedAbelDepthPacket j - fourierPacketModel j S sqrtWidth| ≤
      2 + bulkPrefixFunctional sqrtWidth j (fun h N =>
        tailMass S (mobiusSamples j) *
          windowMass (primeBand j) (cofactorCutoff j) N 1
            (complexCofactor (primeBand j)) (fun _ => 1) h) := by
  apply full_packet_phase_input_comparison
  intro h N hh hw n hn hnN
  apply partial_input_error
  unfold fourierPeriod
  omega

/-- Major/minor or other frequency estimates are charged only on their actual omitted modes. -/
theorem full_packet_frequency_envelope (j : ℕ)
    (S : Finset (ZMod (fourierPeriod j)))
    (E : ZMod (fourierPeriod j) → ℕ → ℕ → ℝ)
    (hE : ∀ h N : ℕ, 1 ≤ h → N + h < 2 ^ (j + 1) →
      ∀ k ∈ Sᶜ, ‖bilinearWindow (primeBand j) (cofactorCutoff j) N 1
        (complexCofactor (primeBand j)) (fun _ => 1) (frequency k) h‖ ≤ E k h N) :
    |weightedMertensDyadicSignedAbelDepthPacket j - fourierPacketModel j S sqrtWidth| ≤
      2 + bulkPrefixFunctional sqrtWidth j
        (fun h N => ∑ k ∈ Sᶜ, ‖mobiusCoefficient j k‖ * E k h N) := by
  apply (full_packet_partial_comparison j S).trans
  apply add_le_add_left
  apply abs_bulkPrefixFunctional_le_envelope
  intro h N hh hw
  exact abs_phasePrefix_le Sᶜ (mobiusCoefficient j) frequency
    (primeBand j) (cofactorCutoff j) h N (fun k => E k h N)
    (hE h N hh hw)

/-- The zero mode is the actual finite mean, not an imposed centering condition. -/
theorem mobiusCoefficient_zero (j : ℕ) :
    mobiusCoefficient j 0 = (fourierPeriod j : ℂ)⁻¹ *
      ∑ x : ZMod (fourierPeriod j), (moebiusReal x.val : ℂ) :=
  coefficient_zero (mobiusSamples j)

/-- The original all-positive-exponent condition, now on a constructed exact spectrum. -/
theorem riemannHypothesis_of_full_fourier_budget
    (hbudget : ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
      fourierPacketModel j Finset.univ sqrtWidth ≤ C * (((2 ^ j : ℕ) : ℝ) ^ δ)) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_sqrt_bulk_budget
  intro δ hδ
  obtain ⟨C, hC, h⟩ := hbudget δ hδ
  exact ⟨C, hC, fun j => by simpa only [fourierPacketModel_univ_eq_bulk] using h j⟩

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelFourierCompletion
