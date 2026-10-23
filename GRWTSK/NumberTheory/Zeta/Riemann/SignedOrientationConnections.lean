/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI GPT-5.6 Sol.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAlgebra.SignedOrientationBridge
import GRWTSK.Algebra.Polynomial.SignedRootTrace
import GRWTSK.Analysis.InnerProductSpace.SignedWindowGramIdentity
import GRWTSK.NumberTheory.Zeta.Riemann.WeilPositiveLimit
import GRWTSK.NumberTheory.Zeta.Riemann.ScrewQuarticPathControl
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalQuarticProbe
import Mathlib.Tactic

set_option autoImplicit false

open Filter Topology

/-!
# Proof-bearing signed-orientation connections

This file connects the generic positive-source / signed-consumer boundary to
existing repository theorems.

Two classes are deliberately separated:

* proof-bearing local adapters, which reuse actual Lean declarations;
* connection profiles, which are provenance/classification metadata only.

A connection profile for an open conjecture, proposed program, or external
source does not create a theorem edge.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.SignedOrientationConnections

open GRWTSK.LinearAlgebra.SignedOrientationBridge
open GRWTSK.Polynomial.SignedRootTrace
open GRWTSK.NumberTheory.Zeta.Riemann.ScrewQuarticPathControl
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalQuarticProbe
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralNormalization

/-- Epistemic class for one connection entry. -/
inductive ConnectionEvidence
  | provedLocal
  | conditionalLocal
  | proposedInterface
  | sourceReviewRequired
deriving DecidableEq, Repr

/-- Non-proof-bearing registry entry. Strings and classification fields carry
no mathematical authority. -/
structure ConnectionProfile where
  connectionId : String
  subject : String
  sharedObstruction : String
  sourceOrIssue : String
  evidence : ConnectionEvidence
  nonclaim : String
deriving Repr

/-- Standard-conjecture/Hodge-type connection. This is classification only;
no external theorem is imported by this declaration. -/
def hodgeStandardConjectureProfile : ConnectionProfile where
  connectionId := "HODGE_PRIMITIVE_SIGN_TWIST"
  subject := "Grothendieck standard conjecture of Hodge type"
  sharedObstruction :=
    "positive metric data does not orient the signed intersection consumer; primitive/degree sign data is required"
  sourceOrIssue := "SOURCE_REVIEW_REQUIRED; local generic owner #205"
  evidence := .sourceReviewRequired
  nonclaim := "does not prove any standard conjecture"

/-- Arithmetic Hodge-index/height-pairing connection. -/
def arithmeticHodgeIndexProfile : ConnectionProfile where
  connectionId := "ARITHMETIC_HODGE_SIGNED_HEIGHT"
  subject := "arithmetic Hodge-index and height-pairing positivity"
  sharedObstruction :=
    "the conjectural consumer is signed/degree-sensitive rather than the raw positive metric"
  sourceOrIssue := "SOURCE_REVIEW_REQUIRED"
  evidence := .sourceReviewRequired
  nonclaim := "does not prove height nondegeneracy or positivity"

/-- Rational CM Hodge adapter program already tracked in the repository. -/
def rationalCMHodgeProfile : ConnectionProfile where
  connectionId := "Q_HODGE_CELL_SIGN_BOUNDARY"
  subject := "rational CM Hodge to cellular metric mechanics"
  sharedObstruction :=
    "algebraic/cellular Hodge data and positive metric Hodge energy remain noncoercible from signed Hermite/screw consumers"
  sourceOrIssue := "grwtsk/math#176"
  evidence := .proposedInterface
  nonclaim := "does not replay or prove the rational Hodge source theorem"

/-- C3 SOS/signed-screw program. -/
def c3SignedScrewProfile : ConnectionProfile where
  connectionId := "C3_SOS_SIGNED_SCREW_BOUNDARY"
  subject := "C3 SOS quartic and signed-screw consumer"
  sharedObstruction :=
    "positive SOS/reconstruction error does not imply positivity of the literal signed screw"
  sourceOrIssue := "grwtsk/math#196 and #199"
  evidence := .proposedInterface
  nonclaim := "does not construct the missing global Weil/screw bridge"

/-- Weil positive-Gram program. -/
def weilPositiveLimitProfile : ConnectionProfile where
  connectionId := "WEIL_POSITIVE_GRAM_SIGN_BOUNDARY"
  subject := "positive-Gram approximation to the independently defined Weil form"
  sharedObstruction :=
    "a negative signed target value cannot be a pointwise limit of nonnegative Gram diagonals"
  sourceOrIssue := "grwtsk/math#215"
  evidence := .provedLocal
  nonclaim := "does not construct the arithmetic comparison family"

/-- Current RH quartic sign witness. -/
def quarticProbeProfile : ConnectionProfile where
  connectionId := "WITNESS_QUARTIC_SIGN_ORIENTATION"
  subject := "canonical prime-power quartic probe"
  sharedObstruction :=
    "the natural positive Gram realizes -witnessTrace while the RH extraction requires +witnessTrace orientation"
  sourceOrIssue := "grwtsk/math#521 / stacked PR #525"
  evidence := .provedLocal
  nonclaim := "does not construct the sign-reversing signed-screw theorem"

/-- Recent sign/cancellation failure class. Kept source-review-required until
an exact external source/revision is pinned in a dedicated review packet. -/
def recentHodgeSignFailureProfile : ConnectionProfile where
  connectionId := "RECENT_HODGE_SIGN_CANCELLATION_FAILURE"
  subject := "recent Hodge-oriented sign/cancellation failure"
  sharedObstruction :=
    "a sign convention can turn a claimed cancellation or positive orientation into a nonzero signed defect"
  sourceOrIssue := "SOURCE_REVIEW_REQUIRED; no external theorem admitted here"
  evidence := .sourceReviewRequired
  nonclaim := "does not assert or replay an external paper result"

/-- Data point for the current zero-parameterized quartic probe. -/
structure QuarticProbeDatum where
  α : ℝ
  γ : ℝ
  stage : ℕ

/-- The existing screw-quartic penalty is an exact negative-orientation
certificate for witnessTrace. -/
noncomputable def screwQuarticPenaltyCertificate :
    OrientationCertificate (ℝ × ℝ) where
  sign := -1
  sign_sq := by norm_num
  positiveSource := fun x => quarticPenalty x.1 x.2
  signedConsumer := fun x =>
    GRWTSK.Polynomial.ConjugateQuartic.witnessTrace x.1 x.2
  positive_nonneg := fun x => quarticPenalty_nonnegative x.1 x.2
  identity := by
    intro x
    change -GRWTSK.Polynomial.ConjugateQuartic.witnessTrace x.1 x.2 =
      quarticPenalty x.1 x.2
    rfl

/-- The current canonical prime-power probe inhabits the SAME abstract
negative-orientation type, but with its own arithmetic source factor. This
does not identify it with the Hodge or screw constructions. -/
noncomputable def quarticProbeOrientationCertificate :
    OrientationCertificate QuarticProbeDatum where
  sign := -1
  sign_sq := by norm_num
  positiveSource := fun x =>
    GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt.stageEnergy
      (GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort.canonicalStage x.stage)
      (quarticProbe x.α x.γ x.stage)
  signedConsumer := fun x =>
    GRWTSK.Polynomial.ConjugateQuartic.witnessTrace x.α x.γ *
      radiusNormalizedCorrection x.stage
  positive_nonneg := fun x =>
    GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt.stageEnergy_nonneg
      (GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort.canonicalStage x.stage)
      (quarticProbe x.α x.γ x.stage)
  identity := by
    intro x
    rw [stageEnergy_quarticProbe_eq]
    ring

/-- Generic Hodge-sector connection: a pure negative sector carries positive
metric energy only after the required sign twist. -/
theorem hodge_negative_sector_requires_sign_twist
    {ι : Type*} [Fintype ι]
    {mask : ι → Bool} {x : ι → ℝ}
    (hx : InMinusSector mask x) :
    -signedEnergy mask x = positiveEnergy x :=
  neg_signedEnergy_eq_positiveEnergy_of_minusSector hx

/-- Existing signed-root trace theorem is the same obstruction in finite
polynomial language: positive node weights make every signed square trace
nonnegative exactly when every node is real. -/
theorem signedRootTrace_orientation_connection
    {nodes : Finset ℂ}
    (hclosed : ∀ z ∈ nodes, conj z ∈ nodes)
    {weight : ℂ → ℝ}
    (hweight : ∀ z ∈ nodes, 0 < weight z) :
    (∀ p : Polynomial ℝ, p.degree < (nodes.card : WithBot ℕ) →
      0 ≤ (squareTrace nodes weight p).re) ↔
      ∀ z ∈ nodes, z.im = 0 :=
  squareTrace_nonneg_iff_real hclosed hweight

/-- Existing screw/quartic path objective uses exactly the negative
orientation of witnessTrace as its nonnegative penalty. -/
theorem screwQuarticPenalty_is_negative_orientation
    (α γ : ℝ) :
    quarticPenalty α γ =
      -GRWTSK.Polynomial.ConjugateQuartic.witnessTrace α γ :=
  rfl

/-- The current canonical prime-power probe realizes the same negative
orientation, now multiplied by the nonnegative radius-normalized source. -/
theorem canonicalProbe_is_negative_orientation
    (α γ : ℝ) (n : ℕ) :
    GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt.stageEnergy
      (GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort.canonicalStage n)
      (quarticProbe α γ n) =
      (-GRWTSK.Polynomial.ConjugateQuartic.witnessTrace α γ) *
        radiusNormalizedCorrection n :=
  stageEnergy_quarticProbe_eq α γ n

/-- A negative Weil diagonal witness cannot be the pointwise limit of a
positive Gram family at that vector. This is the infinite-dimensional
analogue of the finite signed-orientation obstruction. -/
theorem negativeWeilWitness_blocks_positiveGramLimit
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : GRWTSK.RiemannHypothesis.WeilTestSpace T}
    {form : GRWTSK.RiemannHypothesis.WeilHermitianForm space}
    {H : ℕ → Type*}
    [∀ n, NormedAddCommGroup (H n)]
    [∀ n, InnerProductSpace ℂ (H n)]
    (family : GRWTSK.RiemannHypothesis.PositiveGramFamily space H)
    (f : space.Vector)
    (hnegative : form.diagonal f < 0) :
    ¬ Tendsto (fun n => family.diagonal n f) atTop
        (𝓝 (form.diagonal f)) :=
  GRWTSK.RiemannHypothesis.no_positiveGramLimit_at_negativeWitness
    family f hnegative

/-- Signed settlement connection: two independently nonnegative component
energies do not eliminate the signed cross term from the exact source ledger. -/
theorem signedSettlement_keeps_cross_term
    {b T : ℝ}
    (hb : HSSCP04.PinnedShellWidth b)
    (hT : b ≤ T) :
    PPNCP04.localEnergy b T =
      HSSCP04.Settlement.matureEnergy b T +
      HSSCP04.Settlement.horizonEnergy b T +
      HSSCP04.Settlement.signedCorrelation b T :=
  HSSCP04.Settlement.settlement_ledger hb hT

/-- The signed settlement's two square energies are independently
nonnegative, but that fact gives no sign for the cross term. -/
theorem signedSettlement_component_energies_nonnegative
    (b T : ℝ) :
    0 ≤ HSSCP04.Settlement.matureEnergy b T ∧
      0 ≤ HSSCP04.Settlement.horizonEnergy b T :=
  ⟨HSSCP04.Settlement.matureEnergy_nonnegative b T,
    HSSCP04.Settlement.horizonEnergy_nonnegative b T⟩

end GRWTSK.NumberTheory.Zeta.Riemann.SignedOrientationConnections
