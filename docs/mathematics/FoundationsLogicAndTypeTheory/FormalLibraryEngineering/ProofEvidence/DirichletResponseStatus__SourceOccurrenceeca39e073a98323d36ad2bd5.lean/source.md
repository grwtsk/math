# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ProofEvidence.DirichletResponseStatus

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1273d518e0a1f18187946945b02c104d799aa981` · SHA-256 `8d64ae52dae42b629329e459e708bf2948d2c34bd481b51bd6f768a1e40dd7e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Zeta.ResponseBoundZeroConversions
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ProofEvidence.ProvenanceCertificates
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ProofEvidence.MoebiusResponseStatus
import GRWTSK.NumberTheory.Moebius.MoebiusEulerProduct
import GRWTSK.Analysis.LaplaceTransform.MoebiusResponseFormula
import GRWTSK.Analysis.SumIntegralComparison.ExponentialResponseSquareSum
import GRWTSK.NumberTheory.Zeta.ReciprocalDecayBounds
import GRWTSK.NumberTheory.Zeta.ReciprocalHolomorphyZeroSymmetry
import GRWTSK.Analysis.MeasureTheory.Integral.MoebiusCumulativeEnergy
import GRWTSK.Analysis.InnerProductSpace.SignedSynthesisEnergyBounds
import GRWTSK.Analysis.InnerProductSpace.LogarithmicCharacterGramBounds
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ProofEvidence.EnergyInterfaceEquivalence
import GRWTSK.Analysis.Fourier.ReciprocalZetaQuadraticKernel
import GRWTSK.NumberTheory.Moebius.SubsetPotentialObstruction
import GRWTSK.Analysis.AsymptoticAnalysis.SelectedPrimeChainBounds
import GRWTSK.NumberTheory.Moebius.QuadraticTransformBoundConversion

/-! Native research ledger for Euler–Möbius–Bessel–P04–RH/0.1.
A checked implication is recorded separately from its unsupplied hypotheses.
The terminal target is the literal library proposition. Concrete kernel identification
and right-line tail truncation are proved. Source packet reconstruction, signed
head/residue settlement, and P04 remain open.
Universal AS is refuted by an unconditional actual-source band-growth theorem.
Selected complete-chain estimates remain a sufficient open replacement.
-/
noncomputable section
namespace EulerP04RH.ProgramLedger
open PPNCP04.Ledger
open Research

/-- Immutable terminal, with no renamed or weakened RH proposition. -/
def TerminalTarget : Prop := _root_.RiemannHypothesis

theorem terminal_target_literal : TerminalTarget = _root_.RiemannHypothesis := rfl

/-- Source attachment identity; the compiler receipt independently hashes Lean sources. -/
def researchAttachmentSHA256 : String :=
  "87756c4be3c6edd72c4d5e8fb54fa9df6cc51bc41a0daf0c3c377775a2740165"

def EulerRightLine : Prop := ∀ s : ℂ, 1 < s.re →
  (∑' n : ℕ, FEMI.moebiusDirichletTerm s n) =
    ∏' p : Nat.Primes, (1-(p:ℂ)^(-s))

def eulerRightLine : Evidence EulerRightLine :=
  .exact FEMI.moebius_sum_eq_euler_product

def sharpDiagonal : Evidence (∀ T : ℝ, 0 ≤ T → PPNCP04.diagonal T ≤ 2*T^2) :=
  .exact SharpDiagonal.diagonal_le_two_mul_sq

def sourceInitialLaplace : Evidence RHTerminal.PickupInitialLaplaceObligation :=
  .exact FEMI.pickupLaplace_eq_reciprocal

def NativeWindowEstimate : Prop := ∃ C q : ℝ, 0 ≤ C ∧ 0 ≤ q ∧
  ∀ T : ℝ, 1 ≤ T → NativeWindow.windowEnergy T ≤ C*(1+T)^q

def nativeWindowRoute : Evidence PPNCP04.P04 := .conditional NativeWindowEstimate (by
  rintro ⟨C,q,hC,hq,hw⟩
  exact NativeWindow.fixed_window_implies_literal_P04 hC hq hw)

def nativeTransformRoute : Evidence PPNCP04.P04 :=
  .conditional TransformRouteConstruction transform_route_implies_P04

def analyticReturn : Evidence RHTerminal.PolynomialEnergyLaplaceReturnObligation :=
  .exact LaplaceEnergy.polynomial_energy_laplace_return

def P04ToLiteralRH : Evidence (PPNCP04.P04 → TerminalTarget) :=
  .exact LaplaceEnergy.literal_RH_of_P04

def conditionalTerminal : Evidence TerminalTarget :=
  .conditional PPNCP04.P04 LaplaceEnergy.literal_RH_of_P04

/-- No producer of the signed arithmetic statement is present in this module. -/
def signedTransformConstruction : Evidence TransformRouteConstruction := .open
def fixedWindowConstruction : Evidence NativeWindowEstimate := .open
def terminalP04 : Evidence PPNCP04.P04 := .open
def terminalRH : Evidence TerminalTarget := .open

def universalAS : Evidence PPNCP04.UniversalASConstructionObligation :=
  .refuted ASRefutation.universal_AS_refuted

def actualBandGrowth : Evidence
    (PPNCP04.Obstruction.ExponentialEnergyInput
      (fun T => PPNCP04.sourceEnergy (PPNCP04.Obstruction.primeBand (3/4) T) T)
      PPNCP04.BandGrowth.growthConstant) :=
  .exact PPNCP04.BandGrowth.actual_band_energy_exponential

def selectedChainConstruction : Evidence ChainOnlyAS.Construction := .open

def selectedChainTerminal : Evidence TerminalTarget :=
  .conditional ChainOnlyAS.Construction ChainOnlyAS.construction_implies_literal_RH

def concreteIdentification : Evidence (ConcreteRightLine.Identification 2) :=
  .exact (ConcreteIdentification.actual_identification (by norm_num))

def concreteMovingHeightTail : Evidence
    (ConcreteRightLine.TailBudget 2 (ConcreteTail.quadraticHeight 2)) :=
  .exact (ConcreteTail.polynomial_tail_budget (by norm_num))

def concreteSignedConstruction : Evidence ConcreteCompletion.SignedSettlementObligation := .open

def concreteTerminal : Evidence TerminalTarget :=
  .conditional ConcreteCompletion.SignedSettlementObligation
    ConcreteCompletion.literal_RH_of_fixed_signed_settlement

def concreteSignedTargetEquivalence : Evidence
    (ConcreteCompletion.SignedSettlementObligation ↔ PPNCP04.P04) :=
  .exact (ConcreteCompletion.signed_settlement_iff_literal_P04 (by norm_num))

def concreteSignedSettlement (height : ℝ → ℝ) :
    Evidence (ConcreteRightLine.SignedHeadResidueBudget 2 height) := .open

/-- A budget for an arbitrary height is not inferred from the declared exponential height. -/
def concreteTailBudget (height : ℝ → ℝ) :
    Evidence (ConcreteRightLine.TailBudget 2 height) := .open

def absoluteGramDoesNotTrackSigns : Evidence
    (‖(1:ℂ)+(-1:ℂ)‖^2=(0:ℝ) ∧ ‖(1:ℂ)+(1:ℂ)‖^2=(4:ℝ)) :=
  .finite ResearchObstructions.signed_two_packet_fixture

def HaarOrbitTransferRefuted : Evidence (ResearchObstructions.logarithmicOrbitGram 2 3=0) :=
  .refuted (ne_of_gt ResearchObstructions.two_prime_orbit_gram_positive)

/-- External references have provenance and limitations even when no native adapter exists. -/
def metadata (key title locator statement consumer : String) : PacketMetadata where
  packetId := key
  title := title
  contributors := []
  sourceKind := .formalization
  locator := locator
  version := "Euler–Möbius–Bessel–P04–RH/0.1"
  contentHash := none
  publicationBoundary := "External mathematical assertions require a checked native consumer."
  exactStatement := statement
  hypotheses := []
  quantifiedDomain := "Exactly the Lean proposition carried by the packet."
  constantsAndDependencies := []
  proofLocator := locator
  formalizationLocator := some locator
  reproductionProcedure := "asbn-p04/check_lean.py; Lean 4.33.0; --trust=0; warnings as errors"
  reproductionResult := "See the source-hashed build receipt; no global research premise is supplied."
  intendedObligation := consumer
  claimedSourceMap := "Only the explicit typed applicability certificate can supply a conversion."
  limitations := ["No arithmetic head/residue bound or P04 proof is inferred from a reference."]
  disclosedRisks := []
  supersessionKeys := []
  invalidationKeys := []

def eulerPacket : ExternalResearchPacket EulerRightLine where
  metadata := { metadata "femi-right-line" "Literal Möbius Dirichlet and Euler identities"
      "euler-p04-rh/FEMIFoundation.lean"
      "For Re(s)>1, the actual Möbius Dirichlet series equals the reciprocal Euler product."
      "FEMI–2" with
    contributors := ["Mathlib contributors", "Native adapter formalization"]
    contentHash := some "48efa77916d47be6306889356064dfc5f2a720b6da241021c41ed09f18defb9a"
    version := "Mathlib db584cd6d46c92f209a44c0f1c829460d327499d; Lean 4.33.0"
    hypotheses := ["1 < Re(s)"]
    constantsAndDependencies := ["No critical-strip continuation of the Dirichlet series."] }
  evidence := .focusedCompiled FEMI.moebius_sum_eq_euler_product

def UnweightedSparseGramStatement : Prop :=
  ∀ (S : Finset ℕ) (v a : ℕ → ℂ) (B : ℝ),
    (∀ i ∈ S, ∑ j ∈ S, ‖inner ℂ (v i) (v j)‖ ≤ B) →
      ‖∑ i ∈ S, a i • v i‖^2 ≤ B*∑ i ∈ S, ‖a i‖^2

/-- The local-corpus original was not replayed; its grade remains uncompiled.
The new WeightedGram adaptation has its own independent checked theorem. -/
def originalSparseGramReference : ExternalResearchPacket UnweightedSparseGramStatement where
  metadata := { metadata "openai-sparse-gram-original" "OpenAI/math MRTSparseGram provenance"
      "https://github.com/openai/math/blob/main/lean/OAI/NumberTheory/TwoPoint/ShortIntervals/MRTSparseGram.lean"
      "mrt_gram_synthesis, specialized to indices N and Hilbert space C: absolute unweighted Gram row bound implies finite synthesis with coefficient-square budget."
      "BGP–1 research lead" with
    contentHash := some "644fb24801aef8becac05d3b1bb5f7d21db8ea224254c88b372723191b1d7437"
    publicationBoundary := "Local source corpus marked organization_only_uncompiled."
    reproductionResult := "Original not replayed; Mathlib-only WeightedGram adaptation checked separately."
    limitations := ["Historical locator from local provenance.",
      "No transfer from Haar measure to the actual logarithmic prime orbit.",
      "No source reconstruction, coefficient budget, or signed residue settlement."]
    disclosedRisks := [.unprovedFrameLowerBound,.equivalentArithmeticEstimate] }
  evidence := .formalSourceUncompiled

/-- The negative result is retained at its actual proposition and source. -/
def universalASCounterexample :
    ExternalResearchPacket PPNCP04.UniversalASConstructionObligation where
  metadata := { metadata "universal-as-actual-band-refutation"
      "Actual signed prime-band counterexample to universal AS"
      "euler-p04-rh/ASRefutation.lean"
      "No nonnegative reserve with a polynomial initial budget can satisfy AS uniformly on all admissible actual prime subsets."
      "ASBN interface replacement" with
    sourceKind := .counterexample
    contributors := ["Native source-preserving formalization"]
    contentHash := some "8f1ee39f9ba20cbdceca013e06783b9752b3318c74eebc16204ec45c18958a55"
    hypotheses := ["The failed interface requires nonnegative reserve and polynomial initial budget."]
    quantifiedDomain := "Every proposed legal reserve and constants C,q,eta; an actual admissible failed transition exists."
    constantsAndDependencies := ["Source P(T)=primeBand(3/4,T).",
      "Positive constant: BandGrowth.growthConstant.",
      "Actual energy lower bound c exp(T)/(1+T)^2 eventually for all real T.",
      "Unconditional Chebyshev estimates and prime-harmonic upper bound."]
    claimedSourceMap := "Literal primeState and sourceEnergy; composite delays vanish beyond the horizon; all Mobius signs remain."
    limitations := ["Refutes universal AS, not P04, RH, or the full completed pickup.",
      "Selected complete-chain construction and the full-mass narrow interface remain open."] }
  evidence := .refuted ASRefutation.universal_AS_refuted

def analyticReturnPacket : ExternalResearchPacket (PPNCP04.P04 → TerminalTarget) where
  metadata := { metadata "literal-p04-to-literal-rh"
      "Actual pickup analytic return from P04 to literal RH"
      "euler-p04-rh/LaplaceEnergy.lean"
      "PPNCP04.P04 implies the literal root RiemannHypothesis proposition."
      "RH terminal consumer" with
    contentHash := some "f46c8b77a32dcf0eadd0ce271709bffdd89e262787803ea26c67b743701e8575"
    hypotheses := ["P04 is the explicit antecedent; its proof is not supplied."]
    constantsAndDependencies := ["Actual finite signed energy identity.",
      "Initial pickup Laplace identity only for Re(z)>1/2.",
      "Polynomial cumulative L2 implies analytic Laplace transform on Re(z)>0.",
      "Regularized zeta continuation and unconditional functional equation."]
    claimedSourceMap := "The actual pickup Laplace integral and the literal library RH target."
    limitations := ["Proves an implication; no unconditional P04 or RH proof is present."] }
  evidence := .focusedCompiled LaplaceEnergy.literal_RH_of_P04

/-- A theorem's own identity map discharges all conversion fields; it does not
construct a conversion to another research goal. -/
def identityAdapter (P : Prop) : ApplicabilityCertificate P P where
  sourceMapLocator := "Identity on the exact carried Lean proposition."
  hypothesisDischarge := P → P
  hypothesisProof := id
  scaleConversion := P = P
  scaleProof := rfl
  normalizationConversion := P = P
  normalizationProof := rfl
  signConversion := P = P
  signProof := rfl
  errorBudget := P = P
  errorProof := rfl
  consumer := id

def registry : Registry where
  packets := [⟨EulerRightLine,eulerPacket⟩,
    ⟨UnweightedSparseGramStatement,originalSparseGramReference⟩,
    ⟨PPNCP04.UniversalASConstructionObligation,universalASCounterexample⟩,
    ⟨PPNCP04.P04 → TerminalTarget,analyticReturnPacket⟩]
  invalidated := []
  supersessions := []

theorem original_reference_supplies_no_checked_proof :
    originalSparseGramReference.evidence.proof? = none := rfl

theorem universal_AS_packet_retains_refutation :
    universalASCounterexample.evidence.grade = .refuted := rfl

theorem terminal_RH_status_open : terminalRH.status = .open := rfl

theorem terminal_P04_status_open : terminalP04.status = .open := rfl

theorem universal_AS_status_refuted : universalAS.status = .refuted := rfl

theorem selected_chain_producer_status_open : selectedChainConstruction.status = .open := rfl

theorem conditional_terminal_supplies_no_unconditional_proof :
    conditionalTerminal.checkedProof = none := rfl

end EulerP04RH.ProgramLedger

#print axioms EulerP04RH.ProgramLedger.eulerRightLine
#print axioms EulerP04RH.ProgramLedger.nativeWindowRoute
#print axioms EulerP04RH.ProgramLedger.conditionalTerminal
#print axioms EulerP04RH.ProgramLedger.HaarOrbitTransferRefuted
```
