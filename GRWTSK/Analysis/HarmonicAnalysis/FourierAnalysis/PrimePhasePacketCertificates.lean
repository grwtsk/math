import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.PrimePhaseMultiplierBounds
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Angle
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Tactic.Continuity

/-! Certificate interfaces: every arithmetic extraction and transport assertion is a
field to be supplied, not a constructed theorem. Elementary spectral split and
conditional certificate composition are proved separately. -/
noncomputable section
open scoped BigOperators
open MeasureTheory
namespace PPNCP04.Charts

def broadSet (B : Finset ℕ) (κ : ℝ) : Set ℝ := {ξ | PPNC.Broad B κ ξ}
def narrowSet (B : Finset ℕ) (κ : ℝ) : Set ℝ := {ξ | PPNC.Narrow B κ ξ}
def spectrum (g : ℝ → ℂ) : ℝ → ℂ := PPNC.rawFourier g
def density (B : Finset ℕ) (F : ℝ → ℂ) (ξ : ℝ) : ℝ :=
  ‖PPNC.blockMultiplier B ξ‖ ^ 2 * ‖F ξ‖ ^ 2
def packetEnergy (B : Finset ℕ) (F : ℝ → ℂ) : ℝ :=
  (2 * Real.pi)⁻¹ * ∫ ξ, density B F ξ
def narrowEnergy (B : Finset ℕ) (κ : ℝ) (F : ℝ → ℂ) : ℝ :=
  (2 * Real.pi)⁻¹ * ∫ ξ in narrowSet B κ, density B F ξ
def sourceSpectralEnergy (F : ℝ → ℂ) : ℝ :=
  (2 * Real.pi)⁻¹ * ∫ ξ, ‖F ξ‖ ^ 2
def amplification (B : Finset ℕ) (κ : ℝ) : ℝ :=
  Real.exp (2 * κ * Real.sqrt (PPNC.harmonicMass B) + PPNC.harmonicMass B)
def phaseDistance (p : ℕ) (ξ ζ : ℝ) : ℝ :=
  |((ξ * Real.log (p : ℝ) - ζ * Real.log (p : ℝ) : ℝ) : Real.Angle).toReal|

theorem narrowSet_eq_complement (B : Finset ℕ) (κ : ℝ) :
    narrowSet B κ = (broadSet B κ)ᶜ := by
  ext ξ
  exact PPNC.narrow_iff_not_broad B κ ξ

theorem broadSet_measurable (B : Finset ℕ) (κ : ℝ) : MeasurableSet (broadSet B κ) := by
  have h : Continuous (fun ξ : ℝ => -(PPNC.primeField B ξ).re) := by
    simp only [PPNC.primeField_re]
    continuity
  exact measurableSet_le h.measurable measurable_const

theorem spectral_split (B : Finset ℕ) (κ : ℝ) (F : ℝ → ℂ)
    (h : Integrable (density B F)) :
    packetEnergy B F =
      (2 * Real.pi)⁻¹ * (∫ ξ in broadSet B κ, density B F ξ) + narrowEnergy B κ F := by
  rw [packetEnergy, narrowEnergy, narrowSet_eq_complement,
    ← integral_add_compl (broadSet_measurable B κ) h, mul_add]

theorem broad_narrow_integral_bound (B : Finset ℕ) (κ : ℝ) (F : ℝ → ℂ)
    (hweighted : Integrable (density B F)) (hsource : Integrable (fun ξ => ‖F ξ‖ ^ 2)) :
    packetEnergy B F ≤ amplification B κ * sourceSpectralEnergy F + narrowEnergy B κ F := by
  have hpoint : ∀ᵐ ξ ∂volume.restrict (broadSet B κ),
      density B F ξ ≤ amplification B κ * ‖F ξ‖ ^ 2 := by
    filter_upwards [ae_restrict_mem (broadSet_measurable B κ)] with ξ hξ
    exact mul_le_mul_of_nonneg_right (PPNC.broad_multiplier_bound B κ ξ hξ) (sq_nonneg _)
  have hint : (∫ ξ in broadSet B κ, density B F ξ) ≤
      amplification B κ * ∫ ξ, ‖F ξ‖ ^ 2 := by
    calc
      (∫ ξ in broadSet B κ, density B F ξ) ≤
          ∫ ξ in broadSet B κ, amplification B κ * ‖F ξ‖ ^ 2 :=
        integral_mono_ae hweighted.restrict (hsource.const_mul _).restrict hpoint
      _ = amplification B κ * ∫ ξ in broadSet B κ, ‖F ξ‖ ^ 2 := integral_const_mul _ _
      _ ≤ amplification B κ * ∫ ξ, ‖F ξ‖ ^ 2 := by
        apply mul_le_mul_of_nonneg_left _ (Real.exp_pos _).le
        exact integral_mono_measure Measure.restrict_le_self
          (Filter.Eventually.of_forall (fun ξ => sq_nonneg _)) hsource
  rw [spectral_split B κ F hweighted]
  have hscale : 0 ≤ (2 * Real.pi)⁻¹ := by positivity
  have hscaled := mul_le_mul_of_nonneg_left hint hscale
  have hfinal : (2 * Real.pi)⁻¹ * (∫ ξ in broadSet B κ, density B F ξ) ≤
      amplification B κ * sourceSpectralEnergy F := by
    simpa only [sourceSpectralEnergy, mul_left_comm] using hscaled
  linarith

/-- Mass-bearing chart data with exact packet identity and unchanged block multiplier. -/
structure Chart (B : Finset ℕ) (κ c₀ : ℝ) (g : ℝ → ℂ) where
  center : ℝ
  width : ℝ
  width_nonneg : 0 ≤ width
  phaseRadius : ℝ
  phaseRadius_nonneg : 0 ≤ phaseRadius
  coherentPrimes : Finset ℕ
  coherentPrimes_subset : coherentPrimes ⊆ B
  antiphase : c₀ * κ * Real.sqrt (PPNC.harmonicMass B) ≤
    -(PPNC.primeField coherentPrimes center).re
  phaseStable : ∀ ξ ∈ Set.Icc (center - width) (center + width),
    ∀ p ∈ coherentPrimes, phaseDistance p ξ center ≤ phaseRadius
  cutoff : ℝ → ℂ
  cutoff_support : ∀ ξ ∉ Set.Icc (center - 2 * width) (center + 2 * width), cutoff ξ = 0
  packet : ℝ → ℂ
  packet_eq : ∀ ξ, packet ξ = cutoff ξ * spectrum g ξ
  rank : ℕ

def ChildRelation {B : Finset ℕ} {κ c₀ : ℝ} {g : ℝ → ℂ}
    (child parent : Chart B κ c₀ g) : Prop := child.rank < parent.rank

theorem childRelation_wellFounded {B : Finset ℕ} {κ c₀ : ℝ} {g : ℝ → ℂ} :
    WellFounded (ChildRelation (B := B) (κ := κ) (c₀ := c₀) (g := g)) :=
  InvImage.wf Chart.rank Nat.lt_wfRel.wf

theorem nondecreasing_child_rejected {B : Finset ℕ} {κ c₀ : ℝ} {g : ℝ → ℂ}
    (child parent : Chart B κ c₀ g) (h : parent.rank ≤ child.rank) :
    ¬ ChildRelation child parent := by
  exact not_lt.mpr h

theorem zero_rank_no_child {B : Finset ℕ} {κ c₀ : ℝ} {g : ℝ → ℂ}
    (child parent : Chart B κ c₀ g) (h : parent.rank = 0) : ¬ ChildRelation child parent := by
  unfold ChildRelation
  rw [h]
  exact Nat.not_lt_zero _

/-- An explicit affine packet normalization, with exact reconstruction as an obligation. -/
structure NormalizedChild {B : Finset ℕ} {κ c₀ : ℝ} {g : ℝ → ℂ}
    (parent : Chart B κ c₀ g) where
  child : Chart B κ c₀ g
  rank_decrease : ChildRelation child parent
  scale : ℝ
  scale_pos : 0 < scale
  residual : ℝ → ℂ
  reconstruction : ∀ ξ, parent.packet ξ =
    (Real.sqrt scale : ℂ) * child.packet (parent.center + scale * ξ) + residual ξ
  transportError : ℝ
  transportError_nonneg : 0 ≤ transportError
  transport : packetEnergy B parent.packet ≤ packetEnergy B child.packet + transportError

/-- Each constructor stores the estimate or reduction proof it claims to deliver. -/
inductive PacketResolution {B : Finset ℕ} {κ c₀ : ℝ} {g : ℝ → ℂ}
    (chart : Chart B κ c₀ g)
  | direct (budget : ℝ) (budget_nonneg : 0 ≤ budget)
      (estimate : packetEnergy B chart.packet ≤ budget)
  | child (certificate : NormalizedChild chart)
  | reserveDebit (available debit : ℝ) (available_nonneg : 0 ≤ available)
      (debit_nonneg : 0 ≤ debit) (affordable : debit ≤ available)
      (estimate : packetEnergy B chart.packet ≤ debit)

/-- All existence, overlap, coverage and loss claims must be supplied by a producer. -/
structure ExtractionCertificate (α : Type*) [DecidableEq α]
    (B : Finset ℕ) (κ c₀ T C : ℝ) (q : ℕ) (g : ℝ → ℂ) where
  threshold_pos : 0 < κ
  coherence_pos : 0 < c₀
  scale_nonneg : 0 ≤ T
  cost_nonneg : 0 ≤ C
  prime_block : ∀ p ∈ B, Nat.Prime p
  indices : Finset α
  charts : α → Chart B κ c₀ g
  overlapConstant : ℝ
  overlapConstant_nonneg : 0 ≤ overlapConstant
  overlap : ∀ ξ, ∑ i ∈ indices, ‖(charts i).cutoff ξ‖ ^ 2 ≤ overlapConstant
  coverError : ℝ
  packetError : ℝ
  returnError : ℝ
  coverError_nonneg : 0 ≤ coverError
  packetError_nonneg : 0 ≤ packetError
  returnError_nonneg : 0 ≤ returnError
  residual : ℝ → ℂ
  reconstruction : ∀ ξ ∈ narrowSet B κ,
    spectrum g ξ = (∑ i ∈ indices, (charts i).packet ξ) + residual ξ
  coverage : narrowEnergy B κ (spectrum g) ≤
    (∑ i ∈ indices, packetEnergy B (charts i).packet) + coverError
  lossLedger : coverError + packetError + returnError ≤ C * PPNC.harmonicMass B * (1 + T) ^ q

/-- Conditional aggregate return contract. This structure does not construct a reserve. -/
structure PaidCertificate {α : Type*} [DecidableEq α]
    {B : Finset ℕ} {κ c₀ T C : ℝ} {q : ℕ} {g : ℝ → ℂ}
    (cert : ExtractionCertificate α B κ c₀ T C q g) (beforeReserve afterReserve : ℝ) where
  before_nonneg : 0 ≤ beforeReserve
  after_nonneg : 0 ≤ afterReserve
  resolutions : ∀ i ∈ cert.indices, PacketResolution (cert.charts i)
  packetBudget :
    (∑ i ∈ cert.indices, packetEnergy B (cert.charts i).packet) ≤
      amplification B κ * beforeReserve - afterReserve + cert.packetError + cert.returnError

theorem paid_extraction_implies_NC {α : Type*} [DecidableEq α]
    {B : Finset ℕ} {κ c₀ T C beforeReserve afterReserve : ℝ} {q : ℕ} {g : ℝ → ℂ}
    (cert : ExtractionCertificate α B κ c₀ T C q g)
    (paid : PaidCertificate cert beforeReserve afterReserve) :
    narrowEnergy B κ (spectrum g) ≤
      amplification B κ * beforeReserve - afterReserve + C * PPNC.harmonicMass B * (1 + T) ^ q := by
  have hcover := cert.coverage
  have hbudget := paid.packetBudget
  have hloss := cert.lossLedger
  linarith

theorem paid_spectral_step {α : Type*} [DecidableEq α]
    {B : Finset ℕ} {κ c₀ T C beforeReserve afterReserve : ℝ} {q : ℕ} {g : ℝ → ℂ}
    (cert : ExtractionCertificate α B κ c₀ T C q g)
    (paid : PaidCertificate cert beforeReserve afterReserve)
    (hweighted : Integrable (density B (spectrum g)))
    (hsource : Integrable (fun ξ => ‖spectrum g ξ‖ ^ 2)) :
    packetEnergy B (spectrum g) + afterReserve ≤
      amplification B κ * (sourceSpectralEnergy (spectrum g) + beforeReserve) +
        C * PPNC.harmonicMass B * (1 + T) ^ q := by
  have hsplit := broad_narrow_integral_bound B κ (spectrum g) hweighted hsource
  have hnc := paid_extraction_implies_NC cert paid
  rw [mul_add]
  linarith

#print axioms PPNCP04.Charts.spectral_split
#print axioms PPNCP04.Charts.broad_narrow_integral_bound
#print axioms PPNCP04.Charts.childRelation_wellFounded
#print axioms PPNCP04.Charts.nondecreasing_child_rejected
#print axioms PPNCP04.Charts.paid_extraction_implies_NC
#print axioms PPNCP04.Charts.paid_spectral_step
end PPNCP04.Charts
