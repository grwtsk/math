/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT.
Mathlib and external-source results retain their upstream authorship and licenses. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticScaleBijectiveWitness
import GRWTSK.NumberTheory.Zeta.Riemann.OpenAISevenEighthsPort
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticTraceCriterion
import Mathlib.Topology.Algebra.Module.Basic
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section
open scoped BigOperators

/-!
# One-way theorem ports and proof-relevant seven-eighths mechanism bridges

A sound theorem port is one-way: an accepted external proof, together with an
audited local adapter, yields a local proof term.  No bijection is required for
that admission step.

A stronger claim that two proof mechanisms are equivalent, or that positivity
can be transported reversibly, belongs on proof-relevant witness carriers.  The
carrier map must preserve the declared linear/topological structure, the two
commuting continuous linear involutions, and the compared continuous real
bilinear forms.  It may be an equivalence, a faithful embedding, or a
quotient/specialization.

The terminal extraction interface is the repository's existing signed quartic
criterion.  A prime-derived nonnegative sequence with positive limiting weight
and a complete named residual tending to zero supplies the exact hypotheses of
`riemannHypothesis_of_trace_extraction`.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EXTERNAL_TERMINAL_PORT_BLOCKED / EXTERNAL_MECHANISM_PORT_BLOCKED /
PRIME_QUARTIC_EXTRACTION_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology
open GRWTSK.Polynomial.ConjugateQuartic

/-! ## One-way theorem admission -/

/-- A proof-relevant one-way transport from an external claim to the local raw
zero-free-half-plane proposition.  There is intentionally no inverse or
bijection field. -/
structure OneWayRawHalfPlaneTransport (σ : ℝ) where
  ExternalClaim : Prop
  externalProof : ExternalClaim
  toLocal : ExternalClaim → RiemannZetaZeroFreeRightHalfPlane σ

namespace OneWayRawHalfPlaneTransport

/-- The local theorem term produced by a sound one-way transport. -/
def localTheorem {σ : ℝ} (transport : OneWayRawHalfPlaneTransport σ) :
    RiemannZetaZeroFreeRightHalfPlane σ :=
  transport.toLocal transport.externalProof

/-- Complete source/trust admission plus a one-way proof transport constructs
the existing local theorem-port record.  Arithmetic-scale bijectivity is not an
input. -/
def toAcceptedPort {σ : ℝ}
    (transport : OneWayRawHalfPlaneTransport σ)
    (review : ExternalDeclarationReview)
    (hready : review.AdmissionReady) :
    AcceptedExternalRawHalfPlanePort σ where
  review := review
  admissionReady := hready
  theorem := transport.localTheorem

end OneWayRawHalfPlaneTransport

/-- The local proposition adapter for the displayed OpenAI seven-eighths claim.
This transports a local proof of the aligned proposition; it does not import or
accept the external proof. -/
def openAISevenEighthsClaim_toLocal :
    OpenAISevenEighthsClaim →
      RiemannZetaZeroFreeRightHalfPlane ((7 : ℝ) / 8) :=
  openAISevenEighthsClaim_iff_local.mp

/-- Package a supplied proof of the aligned claim as a one-way transport.
External replay and trust admission remain separate inputs to
`OneWayRawHalfPlaneTransport.toAcceptedPort`. -/
def openAISevenEighthsOneWayTransport
    (h : OpenAISevenEighthsClaim) :
    OneWayRawHalfPlaneTransport ((7 : ℝ) / 8) where
  ExternalClaim := OpenAISevenEighthsClaim
  externalProof := h
  toLocal := openAISevenEighthsClaim_toLocal

/-- Gate one: the external terminal proposition has been accepted locally.
No arithmetic-scale or mechanism-equivalence field occurs here. -/
structure PortAccepted where
  port : AcceptedExternalRawHalfPlanePort ((7 : ℝ) / 8)

/-! ## Exact external mechanism source and review -/

/-- Immutable source locations for the visible OpenAI detector/moment/probe
chain.  This is provenance metadata, not a local proof term. -/
structure SevenEighthsMechanismSourceRecord where
  repository : String
  revision : String
  certifiedBandsPath : String
  certifiedBandsBlob : String
  chosenDataPath : String
  chosenDataBlob : String
  commonProbePath : String
  commonProbeBlob : String
  unconditionalPath : String
  unconditionalBlob : String
  terminalPath : String
  terminalBlob : String
  detectorDeclaration : String
  fineMomentDeclaration : String
  chosenMomentDeclaration : String
  commonProbeDeclaration : String
  betaBoundDeclaration : String
  familyNonvanishingDeclaration : String
  zetaSpecializationDeclaration : String
  deriving Repr

/-- Pinned source record for the visible OpenAI seven-eighths mechanism. -/
def openAISevenEighthsMechanismSource : SevenEighthsMechanismSourceRecord where
  repository := "openai/math"
  revision := "1581d4cbdd69a0faf34b2089614fe2a814316a6a"
  certifiedBandsPath :=
    "lean/OAI/NumberTheory/DirichletL/Detector/FinalAssemblyCertifiedBands.lean"
  certifiedBandsBlob := "8c7337e8f0755ba24fddab46a6630d58a32a9c86"
  chosenDataPath :=
    "lean/OAI/NumberTheory/DirichletL/Detector/FinalAssemblyChosenData.lean"
  chosenDataBlob := "94b7543e8076fc514b61e89efa7141831e102c03"
  commonProbePath :=
    "lean/OAI/NumberTheory/DirichletL/Hecke/CommonProbe.lean"
  commonProbeBlob := "92ae82094f323d97b92ae54801e88f2c97f20187"
  unconditionalPath :=
    "lean/OAI/NumberTheory/DirichletL/Detector/FinalAssemblyUnconditional.lean"
  unconditionalBlob := "e7c20910424837fb954796e1216f5aa453bbd5da"
  terminalPath := "lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean"
  terminalBlob := "46c67f4000906b1391a471d6e6396ac0da3c16a5"
  detectorDeclaration :=
    "OAI.SevenEighths.ProbeFinalAssemblyCertifiedBands.DetectorCertifiedBands"
  fineMomentDeclaration :=
    "OAI.SevenEighths.ProbeFinalAssembly.FineMomentInput"
  chosenMomentDeclaration :=
    "OAI.SevenEighths.ProbeFinalAssembly.ChosenMomentInput"
  commonProbeDeclaration :=
    "OAI.SevenEighths.HeckeCommonProbe.UniformCommonProbe"
  betaBoundDeclaration :=
    "OAI.SevenEighths.HeckeCommonProbe.beta_le_seven_eighths"
  familyNonvanishingDeclaration :=
    "OAI.DirichletCharacter.LFunction_ne_zero_of_seven_eighths_lt_re"
  zetaSpecializationDeclaration :=
    "OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re"

/-- Independent gates for importing the proof-relevant mechanism, which is
strictly stronger than importing its terminal proposition. -/
inductive MechanismFormalCheck where
  | sourceChainLocated
  | declarationTypesAligned
  | familySpecializationReviewed
  | toolchainAligned
  | mathlibRevisionAligned
  | dependencyClosureReviewed
  | trustProfileReviewed
  | cleanPinnedBuildReceipt
  | localMechanismAdapterProved
  deriving DecidableEq, Repr

/-- Source-bound review state for the complete detector/moment/probe chain. -/
structure ExternalMechanismReview where
  source : SevenEighthsMechanismSourceRecord
  observed : List MechanismFormalCheck
  deriving Repr

namespace ExternalMechanismReview

def Has (review : ExternalMechanismReview)
    (check : MechanismFormalCheck) : Prop :=
  check ∈ review.observed

def requiredChecks : List MechanismFormalCheck :=
  [ .sourceChainLocated,
    .declarationTypesAligned,
    .familySpecializationReviewed,
    .toolchainAligned,
    .mathlibRevisionAligned,
    .dependencyClosureReviewed,
    .trustProfileReviewed,
    .cleanPinnedBuildReceipt,
    .localMechanismAdapterProved ]

def AdmissionReady (review : ExternalMechanismReview) : Prop :=
  ∀ check, check ∈ requiredChecks → review.Has check

end ExternalMechanismReview

/-- Current bounded inspection locates the source chain only.  It does not
admit cross-environment proof terms or the mechanism dependency closure. -/
def openAISevenEighthsMechanismReview : ExternalMechanismReview where
  source := openAISevenEighthsMechanismSource
  observed := [.sourceChainLocated, .familySpecializationReviewed]

theorem openAISevenEighthsMechanismReview_not_admissionReady :
    ¬ openAISevenEighthsMechanismReview.AdmissionReady := by
  intro hready
  have htypes :=
    hready .declarationTypesAligned
      (by simp [ExternalMechanismReview.requiredChecks])
  simpa [ExternalMechanismReview.Has, openAISevenEighthsMechanismReview] using htypes

/-! ## Proof-relevant mechanism chain -/

/-- A local, proof-relevant shape for the visible detector-to-zeta chain.
The family-level conclusion is retained separately from its zeta
specialization; no global bijection between them is required. -/
structure SevenEighthsMechanismChain where
  detectorCertifiedBands : Prop
  fineMomentInput : Prop
  chosenMomentInput : Prop
  uniformCommonProbe : Prop
  betaAtMostSevenEighths : Prop
  familyNonvanishing : Prop
  detector : detectorCertifiedBands
  detectorToFine : detectorCertifiedBands → fineMomentInput
  fineToChosen : fineMomentInput → chosenMomentInput
  chosenToProbe : chosenMomentInput → uniformCommonProbe
  probeToBetaBound : uniformCommonProbe → betaAtMostSevenEighths
  betaBoundToFamily : betaAtMostSevenEighths → familyNonvanishing
  familyToZeta :
    familyNonvanishing →
      RiemannZetaZeroFreeRightHalfPlane ((7 : ℝ) / 8)

/-- Terminal zeta theorem derived from the full proof-relevant chain. -/
def SevenEighthsMechanismChain.toZeta
    (chain : SevenEighthsMechanismChain) :
    RiemannZetaZeroFreeRightHalfPlane ((7 : ℝ) / 8) :=
  chain.familyToZeta
    (chain.betaBoundToFamily
      (chain.probeToBetaBound
        (chain.chosenToProbe
          (chain.fineToChosen
            (chain.detectorToFine chain.detector)))))

/-- A mechanism-level port is stronger than a terminal theorem port: it retains
the detector witness and every typed intermediate transport. -/
structure AcceptedSevenEighthsMechanismPort where
  terminal : PortAccepted
  review : ExternalMechanismReview
  admissionReady : review.AdmissionReady
  chain : SevenEighthsMechanismChain
  terminalAgreement : chain.toZeta = terminal.port.theorem

/-! ## Linear, topological, form, and symmetry bridges -/

/-- Continuous linear equivalence of proof-relevant carriers. -/
structure ContinuousLinearEquivalence
    (Source Target : Type*)
    [AddCommGroup Source] [AddCommGroup Target]
    [Module ℝ Source] [Module ℝ Target]
    [TopologicalSpace Source] [TopologicalSpace Target] where
  linearEquiv : Source ≃ₗ[ℝ] Target
  continuous_to : Continuous (fun x => linearEquiv x)
  continuous_inv : Continuous (fun y => linearEquiv.symm y)

/-- Faithful continuous linear embedding into a declared target carrier. -/
structure FaithfulContinuousLinearEmbedding
    (Source Target : Type*)
    [AddCommGroup Source] [AddCommGroup Target]
    [Module ℝ Source] [Module ℝ Target]
    [TopologicalSpace Source] [TopologicalSpace Target] where
  linearMap : Source →ₗ[ℝ] Target
  continuous_map : Continuous (fun x => linearMap x)
  injective : Function.Injective linearMap

/-- Continuous linear quotient or specialization onto the target carrier. -/
structure ContinuousLinearQuotient
    (Source Target : Type*)
    [AddCommGroup Source] [AddCommGroup Target]
    [Module ℝ Source] [Module ℝ Target]
    [TopologicalSpace Source] [TopologicalSpace Target] where
  linearMap : Source →ₗ[ℝ] Target
  continuous_map : Continuous (fun x => linearMap x)
  surjective : Function.Surjective linearMap

/-- Noncoercible map profiles for a strong mechanism bridge. -/
inductive WitnessCarrierBridge
    (Source Target : Type*)
    [AddCommGroup Source] [AddCommGroup Target]
    [Module ℝ Source] [Module ℝ Target]
    [TopologicalSpace Source] [TopologicalSpace Target] where
  | equivalence (data : ContinuousLinearEquivalence Source Target)
  | embedding (data : FaithfulContinuousLinearEmbedding Source Target)
  | quotient (data : ContinuousLinearQuotient Source Target)

/-- Underlying carrier map of any supported bridge profile. -/
def WitnessCarrierBridge.toFun
    {Source Target : Type*}
    [AddCommGroup Source] [AddCommGroup Target]
    [Module ℝ Source] [Module ℝ Target]
    [TopologicalSpace Source] [TopologicalSpace Target] :
    WitnessCarrierBridge Source Target → Source → Target
  | .equivalence data => fun x => data.linearEquiv x
  | .embedding data => fun x => data.linearMap x
  | .quotient data => fun x => data.linearMap x

/-- Two commuting continuous linear involutions on one witness carrier. -/
structure CommutingInvolutionPair
    (X : Type*) [AddCommGroup X] [Module ℝ X] [TopologicalSpace X] where
  first : X →ₗ[ℝ] X
  second : X →ₗ[ℝ] X
  first_continuous : Continuous (fun x => first x)
  second_continuous : Continuous (fun x => second x)
  first_involutive : Function.Involutive first
  second_involutive : Function.Involutive second
  commute : Function.Commute first second

/-- Real bilinear-form transport through a linear/topological carrier map,
including the two commuting involutions and a quantified comparison defect. -/
structure RealBilinearMechanismBridge
    (Source Target : Type*)
    [AddCommGroup Source] [AddCommGroup Target]
    [Module ℝ Source] [Module ℝ Target]
    [TopologicalSpace Source] [TopologicalSpace Target] where
  carrier : WitnessCarrierBridge Source Target
  sourceInvolutions : CommutingInvolutionPair Source
  targetInvolutions : CommutingInvolutionPair Target
  intertwines_first :
    ∀ x, carrier.toFun (sourceInvolutions.first x) =
      targetInvolutions.first (carrier.toFun x)
  intertwines_second :
    ∀ x, carrier.toFun (sourceInvolutions.second x) =
      targetInvolutions.second (carrier.toFun x)
  sourceForm : Source →ₗ[ℝ] (Source →ₗ[ℝ] ℝ)
  targetForm : Target →ₗ[ℝ] (Target →ₗ[ℝ] ℝ)
  sourceForm_continuous :
    Continuous (fun xy : Source × Source => sourceForm xy.1 xy.2)
  targetForm_continuous :
    Continuous (fun xy : Target × Target => targetForm xy.1 xy.2)
  scale : ℝ
  scale_pos : 0 < scale
  error : Source → Source → ℝ
  error_nonneg : ∀ x y, 0 ≤ error x y
  comparison :
    ∀ x y,
      |targetForm (carrier.toFun x) (carrier.toFun y) -
          scale * sourceForm x y| ≤ error x y

/-! ## PNT-independent quartic extraction -/

/-- A theorem-level dependency audit bound to the exact theorem term being
audited.  `closure` is required to be exactly the reflexive-transitive
dependency closure of `root`; every declaration in it is certified not to be a
PNT result or an equivalent/stronger circular zero-free supplier. -/
structure PNTIndependentDependencyAudit (Claim : Prop) where
  theoremTerm : Claim
  Declaration : Type
  root : Declaration
  directDependency : Declaration → Declaration → Prop
  closure : Set Declaration
  closure_exact :
    ∀ d, d ∈ closure ↔ Relation.ReflTransGen directDependency root d
  pntOrCircularZeroFree : Declaration → Prop
  no_forbidden :
    ∀ d, d ∈ closure → ¬ pntOrCircularZeroFree d
  repository : String
  revision : String
  closureDigest : String

/-- Every active numerical residual in the prime-to-quartic comparison.  Missing
logical premises remain outside this numeric enumeration. -/
inductive PrimeQuarticResidualKey where
  | primePower
  | archimedeanGamma
  | pole
  | trivialZero
  | endpoint
  | zeroMultiplicity
  | omittedTail
  | detectorTransport
  | involutionTransport
  | formComparison
  | quadrature
  | rounding
  deriving DecidableEq, Fintype, Repr

/-- Complete finite residual ledger.  The total is definitionally tied by a
proof to the sum over every named key and is the exact error sequence required
to tend to zero. -/
structure PrimeQuarticResidualLedger where
  component : PrimeQuarticResidualKey → ℕ → ℝ
  total : ℕ → ℝ
  total_eq : ∀ n, total n = ∑ key, component key n
  total_tendsto : Tendsto total atTop (𝓝 0)

/-- Extraction data for one actual nontrivial zeta zero. -/
structure QuarticExtractionAtZero (s : ℂ) where
  W : ℕ → ℝ
  weight : ℕ → ℝ
  residual : PrimeQuarticResidualLedger
  limitWeight : ℝ
  limitWeight_pos : 0 < limitWeight
  identity :
    ∀ n,
      W n =
        weight n * witnessTrace (s.re - 1 / 2) s.im + residual.total n
  nonnegative : ∀ n, 0 ≤ W n
  weight_tendsto : Tendsto weight atTop (𝓝 limitWeight)

/-- The exact all-zero extraction claim audited by a prime-derived supplier. -/
def PrimeQuarticClaim : Prop :=
  ∀ s : ℂ, NontrivialZetaZero s → QuarticExtractionAtZero s

/-- Prime-derived nonnegative quartic extraction for every actual nontrivial
zero.  The dependency audit carries the exact theorem term it certifies. -/
structure PrimeQuarticExtraction where
  sourceIdentity : String
  normalization : String
  pntIndependent : PNTIndependentDependencyAudit PrimeQuarticClaim

/-- The exact repository extraction criterion consumes the typed prime
extraction without any additional logical reformulation. -/
theorem riemannHypothesis_of_primeQuarticExtraction
    (extraction : PrimeQuarticExtraction) :
    _root_.RiemannHypothesis := by
  apply
    GRWTSK.NumberTheory.Zeta.Riemann.riemannHypothesis_of_trace_extraction
  intro s hs
  let data := extraction.pntIndependent.theoremTerm s hs
  exact
    ⟨data.W, data.weight, data.residual.total, data.limitWeight,
      data.limitWeight_pos, data.identity, data.nonnegative,
      data.weight_tendsto, data.residual.total_tendsto⟩

/-- Proof-relevant transport from the detector witness carrier into a local
carrier.  This gate does not yet construct quartic extraction data. -/
structure DetectorToLocalWitnessBridge
    (chain : SevenEighthsMechanismChain)
    (Source Local : Type*)
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local] where
  forms : RealBilinearMechanismBridge Source Local
  sourceWitness : chain.detectorCertifiedBands → Source

/-- Local witness obtained from the accepted detector proof and the strong
carrier bridge. -/
def DetectorToLocalWitnessBridge.localWitness
    {chain : SevenEighthsMechanismChain}
    {Source Local : Type*}
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local]
    (bridge : DetectorToLocalWitnessBridge chain Source Local) : Local :=
  bridge.forms.carrier.toFun (bridge.sourceWitness chain.detector)

/-- Separate gate converting a local proof-relevant witness into the complete
prime quartic extraction record. -/
structure LocalPrimeQuarticExtractor (Local : Type*) where
  extract : Local → PrimeQuarticExtraction

/-- Gate two: terminal admission plus the complete proof-relevant mechanism and
its linear/topological/form/symmetry transport. -/
structure MechanismBridgeAccepted
    (Source Local : Type*)
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local] where
  mechanism : AcceptedSevenEighthsMechanismPort
  bridge : DetectorToLocalWitnessBridge mechanism.chain Source Local

/-- Gate three: an independently audited prime-derived quartic extraction has
been constructed. -/
structure QuadraticExtractionAccepted where
  extraction : PrimeQuarticExtraction

/-- A mechanism bridge reaches gate three only through a separately supplied
local extractor. -/
def MechanismBridgeAccepted.toQuadraticExtraction
    {Source Local : Type*}
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local]
    (accepted : MechanismBridgeAccepted Source Local)
    (extractor : LocalPrimeQuarticExtractor Local) :
    QuadraticExtractionAccepted where
  extraction :=
    extractor.extract
      (DetectorToLocalWitnessBridge.localWitness accepted.bridge)

/-! ## Regional compactness and threshold closure -/

/-- Regional nonvanishing plus the independently supplied reflected lower
bound.  The second field is not inferred from a terminal theorem name. -/
structure ReflectedRegionalZeroBound (σ : ℝ) where
  zeroFree : RiemannZetaZeroFreeRightHalfPlane σ
  reflectedLower :
    ∀ s : ℂ, NontrivialZetaZero s → 1 - σ ≤ s.re

/-- At seven eighths, reflection-symmetric regional control confines the
centered horizontal coordinate to `|re(s)-1/2| ≤ 3/8`. -/
theorem ReflectedRegionalZeroBound.centered_abs_le_threeEighths
    (regional : ReflectedRegionalZeroBound ((7 : ℝ) / 8))
    {s : ℂ} (hs : NontrivialZetaZero s) :
    |s.re - 1 / 2| ≤ (3 : ℝ) / 8 := by
  have hupper : s.re ≤ (7 : ℝ) / 8 := by
    by_contra hnot
    have hright : (7 : ℝ) / 8 < s.re := lt_of_not_ge hnot
    exact (regional.zeroFree s hright) hs.1
  have hlower := regional.reflectedLower s hs
  rw [abs_le]
  constructor <;> linarith

/-- The exact theorem type carried by one audited threshold descent. -/
def RawDescentClaim (τ σ : ℝ) : Prop :=
  RiemannZetaZeroFreeRightHalfPlane σ →
    RiemannZetaZeroFreeRightHalfPlane τ

/-- One audited descent step from a regional threshold `σ` to a stronger
threshold `τ`.  The dependency audit carries the actual descent theorem term. -/
structure PrimeQuarticStep (τ σ : ℝ) where
  half_le : (1 / 2 : ℝ) ≤ τ
  strict : τ < σ
  pntIndependent : PNTIndependentDependencyAudit (RawDescentClaim τ σ)

/-- The descent theorem term certified by this step's dependency audit. -/
def PrimeQuarticStep.descend
    {τ σ : ℝ} (step : PrimeQuarticStep τ σ) :
    RawDescentClaim τ σ :=
  step.pntIndependent.theoremTerm

/-- A complete cofinal threshold-descent tower.  Cofinality is explicit so the
tower cannot converge to a boundary strictly larger than one half. -/
structure CofinalPrimeQuarticDescent where
  threshold : ℕ → ℝ
  threshold_zero : threshold 0 = (7 : ℝ) / 8
  initial : RiemannZetaZeroFreeRightHalfPlane (threshold 0)
  aboveCritical : ∀ n, (1 / 2 : ℝ) < threshold n
  step : ∀ n, PrimeQuarticStep (threshold (n + 1)) (threshold n)
  cofinal :
    ∀ x : ℝ, (1 / 2 : ℝ) < x → ∃ n, threshold n < x

/-- Every stage of a descent tower inherits raw nonvanishing. -/
def CofinalPrimeQuarticDescent.zeroFreeAt
    (tower : CofinalPrimeQuarticDescent) :
    ∀ n, RiemannZetaZeroFreeRightHalfPlane (tower.threshold n)
  | 0 => tower.initial
  | n + 1 =>
      (tower.step n).descend
        (CofinalPrimeQuarticDescent.zeroFreeAt tower n)

/-- Cofinality upgrades all tower stages to the strict critical threshold. -/
theorem CofinalPrimeQuarticDescent.toCriticalRaw
    (tower : CofinalPrimeQuarticDescent) :
    RiemannZetaZeroFreeRightHalfPlane (1 / 2 : ℝ) := by
  intro s hs
  obtain ⟨n, hn⟩ := tower.cofinal s.re hs
  exact tower.zeroFreeAt n s hn

/-- Gate four: either direct all-zero extraction or a complete cofinal descent
has reached the RH-equivalent critical consumer. -/
inductive ThresholdClosureAccepted where
  | direct (quadratic : QuadraticExtractionAccepted)
  | cofinal (descent : CofinalPrimeQuarticDescent)

/-- Only the threshold-closure gate has a theorem edge to canonical RH. -/
theorem ThresholdClosureAccepted.toRiemannHypothesis
    (closure : ThresholdClosureAccepted) :
    _root_.RiemannHypothesis := by
  cases closure with
  | direct quadratic =>
      exact riemannHypothesis_of_primeQuarticExtraction quadratic.extraction
  | cofinal descent =>
      exact
        riemannZetaZeroFreeRightHalfPlane_half_iff_riemannHypothesis.mp
          descent.toCriticalRaw

end GRWTSK.RiemannHypothesis
