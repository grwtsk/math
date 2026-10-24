# Complete source: GRWTSK.Topology.GeneralTopology.PrimeSectorObligation.Variant2d80ba256704e04bff0c3c30c626092fa86068b45af7afd281c8e914b088f428

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ddbdb9e6cffd60bb9ac656973533b21840437fc9` · SHA-256 `cd33a3560ceda930622c79ca1a77bcc032b334c984fbf291ab01f133068167f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.PrimorialC1TestFunction.Variantd649237f3af1bc11e269dd596fe52a3eb3ca4edf49fe3b1300d8206245d4b70e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d649237f3af1bc11e269dd596fe52a3eb3ca4edf49fe3b1300d8206245d4b70e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.PrimorialC1TestFunction.Variantd649237f3af1bc11e269dd596fe52a3eb3ca4edf49fe3b1300d8206245d4b70e","mathematical_subject":"Topology.GeneralTopology","original_sha256":"d649237f3af1bc11e269dd596fe52a3eb3ca4edf49fe3b1300d8206245d4b70e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/NeuralDiffusion/PrimeSectorObligation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projection.SeparatorObligation
import Mathematics.Authority.Kernel
import Mathematics.Discovery.OpenElement
import Mathlib.Analysis.Calculus.Deriv.Basic
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.NumberTheory.PrimeCounting
import Mathlib.Topology.Order

/-!
# Kernel-exclusive primorial separator authority

`SEP-PRIME-PRIMORIAL` is an immutable, versioned theorem obligation.  Its
canonical statement is a uniform weighted asymptotic on certified `C¹` test
functions.  The only transition to `proved` carries a proof of that exact
statement, either directly or through a kernel-checked equivalence.

Heat, numerics, visualization, compactification, surgery, orbit convolution,
neural inference, and symbolic search can attach evidence.  Evidence
attachment is definitionally status preserving.
-/


namespace GRWTSK.Topology.GeneralTopology.PrimorialC1TestFunction.Variantd649237f3af1bc11e269dd596fe52a3eb3ca4edf49fe3b1300d8206245d4b70e

namespace Mathematics.NeuralDiffusion

open Filter
open Set
open scoped Interval
open Mathematics.Authority
open Mathematics.Discovery

noncomputable section

/-- The sole immutable identity of the primorial separator obligation. -/
def primePrimorialSeparatorObligationId : String :=
  "SEP-PRIME-PRIMORIAL"

/-- The sole canonical Lean declaration named by the primorial obligation. -/
def canonicalPrimorialSeparatorLeanDeclarationName : String :=
  "Mathematics.NeuralDiffusion.CanonicalPrimorialSeparatorStatement"

/-- Product of the first `k` primes, with the prime sequence indexed from zero. -/
def kthPrimorial (k : Nat) : Nat :=
  ∏ index ∈ Finset.range k, Nat.nth Nat.Prime index

/-- The primes in the upper half of the `k`-th primorial window. -/
def primorialPrimeWindow (k : Nat) : Finset Nat :=
  let scale := kthPrimorial k
  (Finset.Icc (scale / 2 + 1) scale).filter Nat.Prime

/--
A `C¹` test function on `[1/2,1]` with explicit certified uniform bounds.
The bounds need not be minimal, but they cannot be smaller than the displayed
function and derivative values.
-/
structure PrimorialC1TestFunction where
  function : ℝ → ℝ
  derivative : ℝ → ℝ
  hasDerivative :
    ∀ point ∈ Icc (1 / 2 : ℝ) 1,
      HasDerivWithinAt function (derivative point)
        (Icc (1 / 2 : ℝ) 1) point
  derivativeContinuous :
    ContinuousOn derivative (Icc (1 / 2 : ℝ) 1)
  functionBound : ℝ
  derivativeBound : ℝ
  functionBound_nonnegative : 0 ≤ functionBound
  derivativeBound_nonnegative : 0 ≤ derivativeBound
  function_le :
    ∀ point ∈ Icc (1 / 2 : ℝ) 1,
      |function point| ≤ functionBound
  derivative_le :
    ∀ point ∈ Icc (1 / 2 : ℝ) 1,
      |derivative point| ≤ derivativeBound

namespace PrimorialC1TestFunction

/-- The certified `C¹` norm bound used by the uniform theorem. -/
def c1Norm (testFunction : PrimorialC1TestFunction) : ℝ :=
  testFunction.functionBound + testFunction.derivativeBound

theorem c1Norm_nonnegative
    (testFunction : PrimorialC1TestFunction) :
    0 ≤ testFunction.c1Norm :=
  add_nonneg
    testFunction.functionBound_nonnegative
    testFunction.derivativeBound_nonnegative

end PrimorialC1TestFunction

/-- The normalized prime-sector test-function mass. -/
def normalizedPrimorialPrimeMass
    (testFunction : PrimorialC1TestFunction) (k : Nat) : ℝ :=
  let scale : Nat := kthPrimorial k
  (Real.log (scale : ℝ) / (scale : ℝ)) *
    ∑ prime ∈ primorialPrimeWindow k,
      testFunction.function ((prime : ℝ) / (scale : ℝ))

/-- Error against Lebesgue mass on the normalized half interval. -/
def normalizedPrimorialPrimeError
    (testFunction : PrimorialC1TestFunction) (k : Nat) : ℝ :=
  normalizedPrimorialPrimeMass testFunction k -
    ∫ point in (1 / 2 : ℝ)..1, testFunction.function point

/-- Rational majorant required by the canonical separator statement. -/
structure RationalPrimeErrorMajorant where
  epsilon : Nat → ℝ
  epsilon_nonnegative : ∀ k, 0 ≤ epsilon k
  tendsToZero :
    Tendsto epsilon atTop (nhds 0)
  formulaDigest : Digest
  effectiveUpperBound : Nat → ℚ
  effectiveUpperBound_nonnegative :
    ∀ k, 0 ≤ effectiveUpperBound k
  effectiveUpperBoundTendsToZero :
    Tendsto
      (fun k ↦ (effectiveUpperBound k : ℝ))
      atTop
      (nhds 0)
  boundedByEffectiveFormula :
    ∀ k, epsilon k ≤ effectiveUpperBound k

/--
The exact canonical weighted theorem.  The same profile and absolute constant
work for every certified `C¹` test function and every `k ≥ 2`.
-/
def CanonicalPrimorialSeparatorStatement : Prop :=
  ∃ profile : RationalPrimeErrorMajorant,
    ∃ absoluteConstant : ℝ,
      0 ≤ absoluteConstant ∧
      ∀ k, 2 ≤ k →
        ∀ testFunction : PrimorialC1TestFunction,
          |normalizedPrimorialPrimeError testFunction k| ≤
            absoluteConstant * profile.epsilon k *
              testFunction.c1Norm

/--
The immutable discovery element for the still-open canonical separator.  It
has proposal authority only; the indexed obligation state below is the sole
path to theorem authority.
-/
def canonicalPrimorialSeparatorOpenElement :
    OpenConjectureElement CanonicalPrimorialSeparatorStatement where
  elementId :=
    { id := { value := "open:neural-diffusion:prime-primorial-separator" } }
  elementId_valid := by
    simp [StableId.Valid]
  name := "Canonical primorial prime-sector separator"
  name_nonempty := by
    decide
  leanDeclarationName := canonicalPrimorialSeparatorLeanDeclarationName
  leanDeclarationName_nonempty := by
    decide

/--
Immutable version of `SEP-PRIME-PRIMORIAL`.  Status and submitted evidence are
stored in a separate append-only ledger state.
-/
structure PrimeAsymptoticObligation where
  version : Nat
  parentObligationDigest : Option Digest
  canonicalStatementDigest : Digest
  quantifierAndUniformityDigest : Digest
  permittedDependencyProfile : List ObjectAddress
  prohibitedDependencyProfile : List ObjectAddress
  environment : FrozenKernelEnvironment
  obligationDigest : Digest

namespace PrimeAsymptoticObligation

/-- Obligation identity is constant, never a caller-selected record field. -/
def obligationId (_obligation : PrimeAsymptoticObligation) : String :=
  primePrimorialSeparatorObligationId

/-- Canonical declaration name is constant, never a caller-selected field. -/
def leanDeclarationName
    (_obligation : PrimeAsymptoticObligation) : String :=
  canonicalPrimorialSeparatorLeanDeclarationName

/-- The proposition named by every version of the obligation. -/
def statement (_obligation : PrimeAsymptoticObligation) : Prop :=
  CanonicalPrimorialSeparatorStatement

theorem obligationId_is_canonical
    (obligation : PrimeAsymptoticObligation) :
    obligation.obligationId = primePrimorialSeparatorObligationId :=
  rfl

theorem leanDeclarationName_is_canonical
    (obligation : PrimeAsymptoticObligation) :
    obligation.leanDeclarationName =
      canonicalPrimorialSeparatorLeanDeclarationName :=
  rfl

end PrimeAsymptoticObligation

/-- Authoritative theorem-status component. -/
inductive PrimeObligationStatus
  | open
  | underProof
  | proofRejected
  | proved
  deriving DecidableEq, Repr

/-- Whether this immutable obligation version is current or superseded. -/
inductive ObligationVersionDisposition
  | current
  | superseded
  deriving DecidableEq, Repr

/-- Producer classes that have evidence authority only. -/
inductive NonKernelEvidenceProducer
  | heat
  | numerics
  | visualization
  | compactification
  | poleSurgery
  | spectralDiffusion
  | orbitConvolution
  | neuralModel
  | symbolicSearch
  deriving DecidableEq, Repr

/-- Evidence from a non-kernel producer; no proof constructor is present. -/
structure SeparatorEvidenceArtifact where
  artifactId : ObjectAddress
  producer : NonKernelEvidenceProducer
  payloadDigest : Digest
  description : String

/-- One submitted proof attempt, accepted or rejected only by later checking. -/
structure SeparatorProofAttempt where
  attemptId : ObjectAddress
  sourceDigest : Digest
  proposedDeclarationDigest : Digest
  generatedBy : NonKernelEvidenceProducer
  compilerProxyId : Option ObjectAddress

/--
The sole authority payload for transition to `proved`.  The shared kernel
certificate contains the exact canonical proposition; equivalent
formulations must first produce a kernel-checked theorem of that proposition.
-/
structure AcceptedKernelSeparatorCertificate
    (obligation : PrimeAsymptoticObligation) where
  certificateId : ObjectAddress
  kernel :
    AcceptedKernelCertificate
      obligation.environment obligation.statement
  statementDigest_bound :
    kernel.declaration.statementDigest =
      obligation.canonicalStatementDigest
  declarationName_bound :
    kernel.declaration.declarationName =
      canonicalPrimorialSeparatorLeanDeclarationName
  dependencyConePermitted :
    ∀ dependency ∈ kernel.audit.dependencyCone.dependencies,
      dependency ∈ obligation.permittedDependencyProfile
  prohibitedDependenciesAbsent :
    ∀ dependency ∈ obligation.prohibitedDependencyProfile,
      dependency ∉ kernel.audit.dependencyCone.dependencies

namespace AcceptedKernelSeparatorCertificate

theorem provesCanonicalStatement
    {obligation : PrimeAsymptoticObligation}
    (certificate :
      AcceptedKernelSeparatorCertificate obligation) :
    obligation.statement :=
  certificate.kernel.proves

theorem declaration_is_canonical
    {obligation : PrimeAsymptoticObligation}
    (certificate :
      AcceptedKernelSeparatorCertificate obligation) :
    certificate.kernel.declaration.declarationName =
      canonicalPrimorialSeparatorLeanDeclarationName :=
  certificate.declarationName_bound

theorem statement_digest_is_canonical
    {obligation : PrimeAsymptoticObligation}
    (certificate :
      AcceptedKernelSeparatorCertificate obligation) :
    certificate.kernel.declaration.statementDigest =
      obligation.canonicalStatementDigest :=
  certificate.statementDigest_bound

end AcceptedKernelSeparatorCertificate

/-- Append-only history common to every reachable status. -/
structure PrimeObligationHistory
    (obligation : PrimeAsymptoticObligation) where
  versionDisposition : ObligationVersionDisposition
  evidence : List SeparatorEvidenceArtifact
  submittedAttempts : List SeparatorProofAttempt
  eventChainDigest : Digest
  eventChainDigest_valid : eventChainDigest.Valid

namespace PrimeObligationHistory

/-- Current-version evidence required by every proof-state transition. -/
def IsCurrent
    {obligation : PrimeAsymptoticObligation}
    (history : PrimeObligationHistory obligation) : Prop :=
  history.versionDisposition = .current

/-- A superseded history cannot satisfy the proof-state admission predicate. -/
theorem superseded_not_current
    {obligation : PrimeAsymptoticObligation}
    (history : PrimeObligationHistory obligation)
    (superseded : history.versionDisposition = .superseded) :
    ¬ history.IsCurrent := by
  simp [IsCurrent, superseded]

/-- Current-version evidence excludes the superseded disposition. -/
theorem current_not_superseded
    {obligation : PrimeAsymptoticObligation}
    {history : PrimeObligationHistory obligation}
    (current : history.IsCurrent) :
    history.versionDisposition ≠ .superseded := by
  intro superseded
  rw [IsCurrent, superseded] at current
  contradiction

end PrimeObligationHistory

/--
Reachable status-indexed states.  The `proved` constructor cannot be called
without both current-version evidence and a certificate containing a Lean
proof of the canonical proposition.
-/
inductive PrimeObligationState
    (obligation : PrimeAsymptoticObligation) :
    PrimeObligationStatus → Type
  | open (history : PrimeObligationHistory obligation) :
      PrimeObligationState obligation .open
  | underProof
      (history : PrimeObligationHistory obligation)
      (versionCurrent : history.IsCurrent) :
      PrimeObligationState obligation .underProof
  | proofRejected
      (history : PrimeObligationHistory obligation)
      (versionCurrent : history.IsCurrent) :
      PrimeObligationState obligation .proofRejected
  | proved
      (history : PrimeObligationHistory obligation)
      (versionCurrent : history.IsCurrent)
      (certificate : AcceptedKernelSeparatorCertificate obligation) :
      PrimeObligationState obligation .proved

namespace PrimeObligationState

def history
    {obligation : PrimeAsymptoticObligation}
    {status : PrimeObligationStatus} :
    PrimeObligationState obligation status →
      PrimeObligationHistory obligation
  | .open history
  | .underProof history _
  | .proofRejected history _
  | .proved history _ _ => history

def beginProof
    {obligation : PrimeAsymptoticObligation}
    (state : PrimeObligationState obligation .open)
    (versionCurrent : state.history.IsCurrent) :
    PrimeObligationState obligation .underProof :=
  .underProof state.history versionCurrent

def retryProof
    {obligation : PrimeAsymptoticObligation}
    (state : PrimeObligationState obligation .proofRejected) :
    PrimeObligationState obligation .underProof :=
  match state with
  | .proofRejected history versionCurrent =>
      .underProof history versionCurrent

def rejectProof
    {obligation : PrimeAsymptoticObligation}
    (state : PrimeObligationState obligation .underProof) :
    PrimeObligationState obligation .proofRejected :=
  match state with
  | .underProof history versionCurrent =>
      .proofRejected history versionCurrent

def certify
    {obligation : PrimeAsymptoticObligation}
    (state : PrimeObligationState obligation .underProof)
    (certificate : AcceptedKernelSeparatorCertificate obligation) :
    PrimeObligationState obligation .proved :=
  match state with
  | .underProof history versionCurrent =>
      .proved history versionCurrent certificate

/-- Every under-proof state is definitionally tied to a current version. -/
theorem underProof_version_current
    {obligation : PrimeAsymptoticObligation}
    (state : PrimeObligationState obligation .underProof) :
    state.history.IsCurrent := by
  cases state with
  | underProof _ versionCurrent => exact versionCurrent

/-- Every rejected attempt remains tied to the same current version. -/
theorem proofRejected_version_current
    {obligation : PrimeAsymptoticObligation}
    (state : PrimeObligationState obligation .proofRejected) :
    state.history.IsCurrent := by
  cases state with
  | proofRejected _ versionCurrent => exact versionCurrent

/-- Every proved state carries current-version evidence. -/
theorem proved_version_current
    {obligation : PrimeAsymptoticObligation}
    (state : PrimeObligationState obligation .proved) :
    state.history.IsCurrent := by
  cases state with
  | proved _ versionCurrent _ => exact versionCurrent

/-- Mutation test: no under-proof state can describe a superseded version. -/
theorem underProof_version_not_superseded
    {obligation : PrimeAsymptoticObligation}
    (state : PrimeObligationState obligation .underProof) :
    state.history.versionDisposition ≠ .superseded :=
  PrimeObligationHistory.current_not_superseded
    (underProof_version_current state)

/-- Mutation test: no proved state can describe a superseded version. -/
theorem proved_version_not_superseded
    {obligation : PrimeAsymptoticObligation}
    (state : PrimeObligationState obligation .proved) :
    state.history.versionDisposition ≠ .superseded :=
  PrimeObligationHistory.current_not_superseded
    (proved_version_current state)

/-- Every proved state contains the exact kernel-exclusive separator proof. -/
theorem proved_implies_canonical_statement
    {obligation : PrimeAsymptoticObligation}
    (state : PrimeObligationState obligation .proved) :
    obligation.statement := by
  cases state with
  | proved _ _ certificate =>
      exact certificate.provesCanonicalStatement

/-- Evidence changes history but not the status index. -/
def attachEvidence
    {obligation : PrimeAsymptoticObligation}
    {status : PrimeObligationStatus}
    (state : PrimeObligationState obligation status)
    (artifact : SeparatorEvidenceArtifact)
    (nextEventChainDigest : Digest)
    (nextEventChainDigest_valid : nextEventChainDigest.Valid) :
    PrimeObligationState obligation status :=
  let appendTo
      (history : PrimeObligationHistory obligation) :
      PrimeObligationHistory obligation := {
        versionDisposition := history.versionDisposition
        evidence := history.evidence ++ [artifact]
        submittedAttempts := history.submittedAttempts
        eventChainDigest := nextEventChainDigest
        eventChainDigest_valid := nextEventChainDigest_valid
      }
  match state with
  | .open history => .open (appendTo history)
  | .underProof history versionCurrent =>
      .underProof (appendTo history) versionCurrent
  | .proofRejected history versionCurrent =>
      .proofRejected (appendTo history) versionCurrent
  | .proved history versionCurrent certificate =>
      .proved (appendTo history) versionCurrent certificate

/-- Mutation test: attaching evidence preserves version disposition exactly. -/
theorem attachEvidence_preserves_version_disposition
    {obligation : PrimeAsymptoticObligation}
    {status : PrimeObligationStatus}
    (state : PrimeObligationState obligation status)
    (artifact : SeparatorEvidenceArtifact)
    (nextEventChainDigest : Digest)
    (nextEventChainDigest_valid : nextEventChainDigest.Valid) :
    (attachEvidence state artifact nextEventChainDigest
      nextEventChainDigest_valid).history.versionDisposition =
        state.history.versionDisposition := by
  cases state <;> rfl

/-- Proof proposals change history but not the status index. -/
def submitAttempt
    {obligation : PrimeAsymptoticObligation}
    {status : PrimeObligationStatus}
    (state : PrimeObligationState obligation status)
    (attempt : SeparatorProofAttempt)
    (nextEventChainDigest : Digest)
    (nextEventChainDigest_valid : nextEventChainDigest.Valid) :
    PrimeObligationState obligation status :=
  let appendTo
      (history : PrimeObligationHistory obligation) :
      PrimeObligationHistory obligation := {
        versionDisposition := history.versionDisposition
        evidence := history.evidence
        submittedAttempts := history.submittedAttempts ++ [attempt]
        eventChainDigest := nextEventChainDigest
        eventChainDigest_valid := nextEventChainDigest_valid
      }
  match state with
  | .open history => .open (appendTo history)
  | .underProof history versionCurrent =>
      .underProof (appendTo history) versionCurrent
  | .proofRejected history versionCurrent =>
      .proofRejected (appendTo history) versionCurrent
  | .proved history versionCurrent certificate =>
      .proved (appendTo history) versionCurrent certificate

end PrimeObligationState

/--
Changing statement, dependency profile, or environment creates a distinct
version with an explicit parent and supersedes rather than rewrites the old
version.
-/
structure PrimeObligationSupersession
    (previous next : PrimeAsymptoticObligation) : Prop where
  version_increases :
    previous.version < next.version
  parent_bound :
    next.parentObligationDigest = some previous.obligationDigest
  identity_changes :
    next.obligationDigest ≠ previous.obligationDigest

end

end Mathematics.NeuralDiffusion
```
