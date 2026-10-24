# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CriticalInvolution.Variant6ee95b669c49c57c4360a5ee6efc86252c949cea713c35a5c4833130521f84c0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b732b2c5f72496be4f2d31cf59fbf29289a4d76a` · SHA-256 `a0757d7b508b1851bf7b2cfcd74bb1b95ef74795f71eb2a8c98eb7841d8af2d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CriticalAssessment.Variant4f81882cfdb52104876aefdaba4732d6530b2c720934bb6a24c55ecbb4ae9f17","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4f81882cfdb52104876aefdaba4732d6530b2c720934bb6a24c55ecbb4ae9f17","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CriticalAssessment.Variant4f81882cfdb52104876aefdaba4732d6530b2c720934bb6a24c55ecbb4ae9f17","mathematical_subject":"Computation.DataStructures","original_sha256":"4f81882cfdb52104876aefdaba4732d6530b2c720934bb6a24c55ecbb4ae9f17","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Model/CriticalInvolution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.FullDeclaration

/-!
# Singleton critical structure and exact signed-basis involution

The kernel critical-evidence contract at source commit
`c8c09fd232e13c523fccb5b35d7e565073fb1a3a` explicitly states: a singleton has
least period one, an empty internal critical set, and no internal critical event.
The exact source is `docs/contracts/critical-evidence-v0.md`, lines 36--37,
63--68, SHA-256 `546f8929877f385eeb1da037c98e7e93b7dc16d75054a296d796bd7eb38bb480`.
Only this source-grounded fragment is supported here. General local-period
semantics remain Unsupported, and BoundaryCover is rejected even for a singleton.

The independent K5 checker verifies a signed permutation on a finite signed
basis domain, both inverse products and its port/fiber block action exactly.
It does not claim approximate matrices, arbitrary linear operators or a native
C++ capability. The finite domains and source scope are retained in the types.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CriticalAssessment.Variant4f81882cfdb52104876aefdaba4732d6530b2c720934bb6a24c55ecbb4ae9f17

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model

/-- The supported singleton convention: period one, no internal cuts, gaps or events. -/
def SingletonCriticalValid (declaration : FullModelDeclaration) : Prop :=
  declaration.coreSnapshot.occurrences.length = 1 ∧
  declaration.critical.version = 1 ∧
  declaration.critical.period = 1 ∧
  declaration.critical.cuts = [] ∧
  declaration.critical.mode = .internalOnly ∧
  declaration.critical.checkedGaps = 0 ∧ declaration.critical.events = 0

instance (declaration : FullModelDeclaration) : Decidable (SingletonCriticalValid declaration) := by
  unfold SingletonCriticalValid
  infer_instance

/-- Separate malformed singleton evidence from unsupported non-singleton critical profiles. -/
inductive CriticalAssessment where
  | accepted
  | rejected
  | unsupported
  deriving DecidableEq, Repr

/-- Classify critical evidence without assigning semantics to unsupported word lengths. -/
def assessCritical (declaration : FullModelDeclaration) : CriticalAssessment :=
  if declaration.coreSnapshot.occurrences.length ≠ 1 then .unsupported
  else if SingletonCriticalValid declaration then .accepted else .rejected

/-- Decide singleton critical evidence within an already checked whole declaration. -/
def checkCritical (declaration : CheckedFullDeclaration) : Bool :=
  decide (SingletonCriticalValid declaration.value)

theorem checkCritical_sound (declaration : CheckedFullDeclaration)
    (accepted : checkCritical declaration = true) : SingletonCriticalValid declaration.value := by
  simpa [checkCritical] using accepted

/-- The singleton critical claim scoped to its exact checked full declaration. -/
structure CheckedCritical (declaration : CheckedFullDeclaration) where
  /-- The exact singleton period, empty-cut and zero-event claim. -/
  valid : SingletonCriticalValid declaration.value

/-- Standard nonempty finite-word global-period predicate, independent of local criticality. -/
def WordPeriod (word : List SymbolId) (period : ℕ) : Prop :=
  0 < period ∧ period ≤ word.length ∧
    ∀ index ∈ List.range (word.length - period), word[index]? = word[index + period]?

/-- A valid positive word period that is no larger than every other valid period. -/
def LeastWordPeriod (word : List SymbolId) (period : ℕ) : Prop :=
  WordPeriod word period ∧ ∀ other, WordPeriod word other → period ≤ other

theorem singleton_least_period (symbol : SymbolId) : LeastWordPeriod [symbol] 1 := by
  constructor
  · simp [WordPeriod]
  · intro other valid
    exact valid.1

theorem checkedCritical_least_period (declaration : CheckedFullDeclaration)
    (critical : CheckedCritical declaration) :
    LeastWordPeriod (declaration.value.coreSnapshot.occurrences.map Occurrence.symbol)
      declaration.value.critical.period := by
  obtain ⟨occurrence, hword⟩ := List.length_eq_one_iff.mp critical.valid.1
  rw [critical.valid.2.2.1, hword]
  exact singleton_least_period occurrence.symbol

theorem checkedCritical_empty_internal_domain (declaration : CheckedFullDeclaration)
    (critical : CheckedCritical declaration) :
    ¬∃ cut, 1 ≤ cut ∧ cut < declaration.value.coreSnapshot.occurrences.length := by
  rw [critical.valid.1]
  omega

theorem checkedCritical_no_events (declaration : CheckedFullDeclaration)
    (critical : CheckedCritical declaration) : declaration.value.critical.events = 0 :=
  critical.valid.2.2.2.2.2.2

/-- Every signed basis state, ordered by index and then by its two possible signs. -/
def signedStates (dimension : ℕ) : List SignedEntry :=
  (List.range dimension).flatMap fun index => [⟨index, false⟩, ⟨index, true⟩]

/-- Apply one signed permutation entry; an unknown input index returns `none`. -/
def applySigned (permutation : List SignedEntry) (state : SignedEntry) : Option SignedEntry :=
  (permutation[state.index]?).map fun image =>
    ⟨image.index, Bool.xor state.negative image.negative⟩

/-- The exact port/fiber action `(forward(second), inverse(first))` on signed basis states. -/
def blockAction (candidate : InvolutionCandidate)
    (state : SignedEntry × SignedEntry) : Option (SignedEntry × SignedEntry) := do
  let first ← applySigned candidate.forward state.2
  let second ← applySigned candidate.inverse state.1
  pure (first, second)

/-- Check finite signed domains, both inverse products, block order two and declared work. -/
def InvolutionValid (declaration : FullModelDeclaration) : Prop :=
  let candidate := declaration.involution
  candidate.version = 1 ∧ 0 < candidate.dimension ∧
  candidate.forward.length = candidate.dimension ∧
  candidate.inverse.length = candidate.dimension ∧
  (∀ entry ∈ candidate.forward, entry.index < candidate.dimension) ∧
  (∀ entry ∈ candidate.inverse, entry.index < candidate.dimension) ∧
  (∀ state ∈ signedStates candidate.dimension,
    (applySigned candidate.forward state).bind (applySigned candidate.inverse) = some state ∧
    (applySigned candidate.inverse state).bind (applySigned candidate.forward) = some state) ∧
  (∀ first ∈ signedStates candidate.dimension, ∀ second ∈ signedStates candidate.dimension,
    (blockAction candidate (first, second)).bind (blockAction candidate) = some (first, second)) ∧
  (2 * candidate.dimension) ^ 2 + 4 * candidate.dimension ≤
    declaration.coreSnapshot.limits.maxWork

instance (declaration : FullModelDeclaration) : Decidable (InvolutionValid declaration) := by
  unfold InvolutionValid
  infer_instance

/-- Decide the finite signed involution after the exact critical predecessor is supplied. -/
def checkInvolution (declaration : CheckedFullDeclaration)
    (_critical : CheckedCritical declaration) : Bool := decide (InvolutionValid declaration.value)

theorem checkInvolution_sound (declaration : CheckedFullDeclaration)
    (critical : CheckedCritical declaration)
    (accepted : checkInvolution declaration critical = true) :
    InvolutionValid declaration.value := by
  simpa [checkInvolution] using accepted

/-- Exact signed-basis involution evidence bound to the same declaration and critical result. -/
structure CheckedInvolution (declaration : CheckedFullDeclaration)
    (_critical : CheckedCritical declaration) where
  /-- Both inverse identities and order-two block action on the declared signed domain. -/
  valid : InvolutionValid declaration.value

theorem checkedInvolution_order_two (declaration : CheckedFullDeclaration)
    (critical : CheckedCritical declaration) (involution : CheckedInvolution declaration critical)
    (first second : SignedEntry)
    (hfirst : first ∈ signedStates declaration.value.involution.dimension)
    (hsecond : second ∈ signedStates declaration.value.involution.dimension) :
    (blockAction declaration.value.involution (first, second)).bind
      (blockAction declaration.value.involution) = some (first, second) :=
  involution.valid.2.2.2.2.2.2.2.1 first hfirst second hsecond

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model
```
