import GRWTSK.NumberTheory.Moebius.FiniteProductResponseIdentification
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.PrimePhasePacketCertificates
import GRWTSK.Analysis.AsymptoticAnalysis.FinitePrimeChainEnergyBounds
import GRWTSK.Analysis.AsymptoticAnalysis.ExponentialEnergyObstruction

/-!
Lean formulation of both research problems, with their literal arithmetic source.
Definitions ending in `Obligation` are propositions, not asserted theorems.
A reserve producer must provide its explicit formula and independent budget proof.
No future-energy reserve, external spectral identification, P04, or RH is assumed.
The raw-integral Fourier interface is displayed explicitly; its unconditional
producer for the finite source is proved in `PlancherelBridge.lean`.
-/
noncomputable section
open MeasureTheory
namespace PPNCP04

def harmonicMass (B : Finset ℕ) : ℝ := PPNC.harmonicMass B

def windowedSource (P : Finset ℕ) (T : ℝ) (u : ℝ) : ℂ :=
  restrict T (primeState P) u

def narrowEnergy (κ : ℝ) (P B : Finset ℕ) (T : ℝ) : ℝ :=
  Charts.narrowEnergy B κ (Charts.spectrum (windowedSource P T))

def blockAmplification (κ : ℝ) (B : Finset ℕ) : ℝ := Charts.amplification B κ

structure AdmissibleBlock (P B : Finset ℕ) (T η : ℝ) : Prop where
  scale_nonneg : 0 ≤ T
  previous_primes : P ⊆ primeInventory T
  block_primes : B ⊆ primeInventory T
  disjoint : Disjoint P B
  upper_mass : harmonicMass B ≤ η

structure FullMassBlock (P B : Finset ℕ) (T η : ℝ) : Prop
    extends AdmissibleBlock P B T η where
  lower_mass : η/2 ≤ harmonicMass B

/-- An input interface. No reserve formula is supplied by this structure itself.
The definition of `value` must be audited for the problem's source/provenance rule. -/
structure ReserveFunctional where
  value : Finset ℕ → ℝ → ℝ
  nonnegative : ∀ P T, 0 ≤ value P T
  initialConstant : ℝ
  initialExponent : ℝ
  initialConstant_nonneg : 0 ≤ initialConstant
  initialExponent_nonneg : 0 ≤ initialExponent
  initialBudget : ∀ T, 0 ≤ T →
    value ∅ T ≤ initialConstant*(1+T)^initialExponent

def potential (A : ReserveFunctional) (P : Finset ℕ) (T : ℝ) : ℝ :=
  sourceEnergy P T+A.value P T

def ASObligation (A : ReserveFunctional) (C q η : ℝ) : Prop :=
  0 ≤ C ∧ 0 ≤ q ∧ 0 < η ∧
    ∀ T P B, AdmissibleBlock P B T η →
      potential A (P ∪ B) T ≤
        Real.exp (C*harmonicMass B)*potential A P T+C*harmonicMass B*(1+T)^q

def NCObligation (A : ReserveFunctional) (κ C q η : ℝ) : Prop :=
  0 < κ ∧ 0 ≤ C ∧ 0 ≤ q ∧ 0 < η ∧
    ∀ T P B, FullMassBlock P B T η →
      narrowEnergy κ P B T ≤ blockAmplification κ B*A.value P T-
        A.value (P ∪ B) T+C*harmonicMass B*(1+T)^q

def UniversalASConstructionObligation : Prop :=
  ∃ A : ReserveFunctional, ∃ C q η : ℝ, ASObligation A C q η

def UniversalNCConstructionObligation : Prop :=
  ∃ A : ReserveFunctional, ∃ κ C q η : ℝ, NCObligation A κ C q η

/-- Exact source-side L²/Fourier return interface. `PlancherelBridge.lean`
constructs every field for the actual source and admissible prime blocks.
The second inequality combines causal cutoff loss with the exact block multiplier.
Integrability is stated rather than silently using zero for undefined integrals. -/
structure FourierReduction (P B : Finset ℕ) (T : ℝ) : Prop where
  weighted_integrable : Integrable
    (Charts.density B (Charts.spectrum (windowedSource P T)))
  spectrum_integrable : Integrable
    (fun ξ => ‖Charts.spectrum (windowedSource P T) ξ‖ ^ 2)
  source_plancherel : Charts.sourceSpectralEnergy
    (Charts.spectrum (windowedSource P T)) = sourceEnergy P T
  block_return : sourceEnergy (P ∪ B) T ≤
    Charts.packetEnergy B (Charts.spectrum (windowedSource P T))

def FourierReductionObligation : Prop :=
  ∀ T P B η, AdmissibleBlock P B T η → FourierReduction P B T

theorem fourier_reduction_broad_bound (P B : Finset ℕ) (T κ : ℝ)
    (reduction : FourierReduction P B T) :
    sourceEnergy (P ∪ B) T ≤
      blockAmplification κ B*sourceEnergy P T+narrowEnergy κ P B T := by
  have h := Charts.broad_narrow_integral_bound B κ
    (Charts.spectrum (windowedSource P T))
    reduction.weighted_integrable reduction.spectrum_integrable
  rw [reduction.source_plancherel] at h
  exact reduction.block_return.trans h

theorem narrow_contract_returns_amortized_step
    (A : ReserveFunctional) (P B : Finset ℕ) (T κ C q : ℝ)
    (reduction : FourierReduction P B T)
    (hnarrow : narrowEnergy κ P B T ≤
      blockAmplification κ B*A.value P T-A.value (P ∪ B) T+
        C*harmonicMass B*(1+T)^q) :
    potential A (P ∪ B) T ≤ blockAmplification κ B*potential A P T+
      C*harmonicMass B*(1+T)^q := by
  have hb := fourier_reduction_broad_bound P B T κ reduction
  dsimp [potential]
  rw [mul_add]
  linarith

/-- The sufficient weaker replacement is a chain estimate at every real T,
rather than an estimate for every intermediate prime subset. -/
def ChainConstructionObligation : Prop :=
  ∃ C₀ C₁ a q d H : ℝ,
    0 ≤ C₀ ∧ 0 ≤ C₁ ∧ 0 ≤ a ∧ 0 ≤ q ∧ 0 ≤ d ∧
    ∀ T, 0 ≤ T → Nonempty (AmortizedCompletion T C₀ C₁ a q d H)

theorem chainConstruction_implies_P04 (h : ChainConstructionObligation) : P04 := by
  obtain ⟨C₀, C₁, a, q, d, H, hC₀, hC₁, ha, hq, hd, hc⟩ := h
  exact amortized_completion_implies_P04 hC₀ hC₁ ha hq hd hc

/-- The literal source energy to which the conditional obstruction must be applied. -/
def bandEnergy (a T : ℝ) : ℝ := sourceEnergy (Obstruction.primeBand a T) T

def BandEnergyGrowthObligation (a c : ℝ) : Prop :=
  Obstruction.ExponentialEnergyInput (bandEnergy a) c

end PPNCP04

#print axioms PPNCP04.fourier_reduction_broad_bound
#print axioms PPNCP04.narrow_contract_returns_amortized_step
#print axioms PPNCP04.chainConstruction_implies_P04
