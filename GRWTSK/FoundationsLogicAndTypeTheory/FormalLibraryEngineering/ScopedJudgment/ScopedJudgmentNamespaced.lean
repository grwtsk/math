-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Claim.Variantd45d46498501b83972354dacb3c2b07ed50afc07161016454a029b6de0125aae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d45d46498501b83972354dacb3c2b07ed50afc07161016454a029b6de0125aae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Claim.Variantd45d46498501b83972354dacb3c2b07ed50afc07161016454a029b6de0125aae","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d45d46498501b83972354dacb3c2b07ed50afc07161016454a029b6de0125aae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Atomize/Formal/ScopedJudgment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Scope-indexed abstract judgments

**Architectural problem:** A term such as `x` is meaningful only together with
the telescope that declares `x`, and a universe-polymorphic expression is
meaningful only together with its universe parameters.  Recording an expression
alone would therefore let a later proof-plan node forget the scope in which it
was checked.

**Important data and indices:** A `Claim` distinguishes formation of a type
from typing of a term.  A `ScopedJudgment` then records the universe context,
the ordered local context (the abstract presentation's telescope), and that
claim.  `ScopedJudgment.At Γ` is the dependent view used when an operation must
accept a judgment from exactly the represented local context `Γ`.

**Type-enforced invariant:** Derivations and plans are indexed by the complete
`ScopedJudgment` value supplied by the presentation.  Context transport uses
`At Γ`, so a morphism whose source is `Γ` cannot be applied to a value packaged
at a different source context.

**Layer boundary:** The local context is abstract here.  A future pinned Lean
adapter must represent binder order, binder types, let values, binder metadata,
local instances, and dependencies faithfully.  This module is neither a Lean
frontend trace nor a claim that these three fields exhaust Lean's internal
state.

**Worked example:** A presentation of `P → P` may put `P` in a root universe
context, extend the local telescope by one binder for the body variable, and
type the body variable in that extended context.  The conclusion returns to
the root telescope.  `Examples.lean` makes this distinction concrete.

**Proof idea:** There is no semantic proof hidden in this data definition.  The
later structural theorems exploit the record as an exact type index, while
`At Γ` adds an equality witness when an endpoint-specific operation needs one.

**Boundary cases:** The empty local context represents a closed telescope, not
an absence of universe information.  A locally introduced binder is not a
root-telescope variable and must not be counted as one merely because both are
represented by variable leaves.

**Validation consequence:** Successful construction establishes only that the
abstract indices line up.  It does not establish that the record came from the
pinned Lean frontend or that its context representation is adapter-complete.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Claim.Variantd45d46498501b83972354dacb3c2b07ed50afc07161016454a029b6de0125aae

namespace Atomize.Formal

universe u v w

/--
**Architectural problem:** Type formation and term typing have different
premises and must not be collapsed into one unstructured expression predicate.

**Important data and indices:** `isType T` says that `T` is a type; `hasType t T`
says that term `t` has type `T`.  Both are interpreted only inside the enclosing
`ScopedJudgment` contexts.

**Type-enforced invariant:** Formation and typing evidence use different
constructors, so consumers must handle the selected claim shape explicitly.

**Layer boundary:** These are abstract claims.  Their connection to Lean
expressions requires the later version-specific adapter.

**Worked example:** `hasType x P` is the body judgment of the private `P → P`
fixture, while `isType P` states formation rather than term typing.

**Used by:** `ScopedJudgment.claim` and every derivation or plan root.

**Proof idea:** Constructors keep the two judgment forms disjoint by syntax.

**Equality notion:** Derived decidable equality compares constructor and stored
expressions exactly.

**Boundary cases:** `isType` has no term field; neither constructor supplies
scope without the enclosing `ScopedJudgment`.

**Validation consequence:** A constructed claim identifies its abstract form,
not that Lean's frontend actually emitted it.
-/
inductive Claim (Expr : Type w)
  | isType (type : Expr)
  | hasType (term type : Expr)
  deriving DecidableEq

/--
**Architectural problem:** The same printed term may refer to different binders
in different telescopes, so its represented judgment must retain its scope.

**Important data and indices:** `universeContext` records universe parameters,
`localContext` records the ordered telescope, and `claim` records type formation
or term typing.

**Type-enforced invariant:** A `RawDer` or `TreePlan` indexed by this value can
only contain children whose exact premise judgments are named by its rule.

**Equality notion:** Equality is ordinary Lean propositional equality of this
abstract record.  Any alpha-canonicalization or Lean definitional equality is a
responsibility of the concrete adapter, not an implicit quotient here.

**Layer boundary:** The record is presentation data and does not certify a
concrete Lean local context or expression encoding.

**Worked example:** The private identity fixture stores its binder-extended
body and root conclusion as distinct values.

**Used by:** `KernelPresentation.Judgment`, `RawDer`, and `TreePlan` indices.

**Proof idea:** A single structure value retains all scope components together.

**Boundary cases:** An empty local context is valid and remains distinct from
the universe context.

**Validation consequence:** Equality of records validates exact abstract data
only, not frontend provenance or definitional equality.
-/
structure ScopedJudgment
    (UniverseContext : Type u)
    (LocalContext : Type v)
    (Expr : Type w) where
  universeContext : UniverseContext
  localContext : LocalContext
  claim : Claim Expr
  deriving DecidableEq

namespace ScopedJudgment

/--
**Architectural problem:** A context morphism indexed by source `Γ` must not
accept an arbitrary judgment whose stored local context happens to be ignored.

**Important data and indices:** `At Γ` pairs a full scoped judgment with a proof
that its `localContext` is exactly `Γ`.

**Type-enforced invariant:** A value of `At Γ` cannot be passed where `At Δ` is
required unless Lean can establish the relevant equality of context indices.

**Used by:** `KernelPresentation.actJudgment` uses this family at both endpoints
to make wrong-source transport fail during elaboration.

**Boundary cases:** At the empty telescope, the equality witness is still
present; no special unscoped case is introduced.

**Layer boundary:** `At` constrains the abstract local-context field; it does
not construct or validate a Lean `LocalContext`.

**Worked example:** A value at `[]` cannot be passed to an action requiring
source `[99]` in the private compile-fail fixture.

**Proof idea:** The subtype equality is carried with the judgment.

**Equality notion:** Membership uses propositional equality of context values.

**Validation consequence:** Elaboration rejects mismatched abstract endpoints,
while concrete adapter fidelity remains a separate obligation.
-/
def At
    {UniverseContext : Type u}
    {LocalContext : Type v}
    {Expr : Type w}
    (context : LocalContext) :=
  {judgment : ScopedJudgment UniverseContext LocalContext Expr //
    judgment.localContext = context}

/--
**Type-enforced invariant:** Projecting a judgment packaged at `context`
recovers exactly that local-context endpoint.

**Used by:** Endpoint-sensitive adapter proofs may rewrite the stored context
without unpacking the subtype witness manually.

**Architectural problem:** Endpoint proofs should expose their scope invariant
without duplicating subtype elimination.

**Important data and indices:** The input is indexed by `context` and contains
a full scoped judgment plus its equality witness.

**Layer boundary:** The theorem concerns only the abstract subtype projection.

**Worked example:** Applying it to `closedRootJudgmentAt` returns `[]`.

**Proof idea:** The result is exactly the subtype's second projection.

**Equality notion:** The conclusion is propositional equality of local contexts.

**Boundary cases:** It also applies when `context` is empty.

**Validation consequence:** The theorem certifies endpoint retention, not the
origin or completeness of a concrete context representation.
-/
@[simp]
theorem localContext_at
    {UniverseContext : Type u}
    {LocalContext : Type v}
    {Expr : Type w}
    {context : LocalContext}
    (judgment : At (UniverseContext := UniverseContext)
      (LocalContext := LocalContext) (Expr := Expr) context) :
    judgment.1.localContext = context :=
  judgment.2

end ScopedJudgment

end Atomize.Formal
