/-
Abstract type/term claim forms and full scoped judgment records
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d45d46498501b83972354dacb3c2b07ed50afc07161016454a029b6de0125aae
Organized SHA-256: 8ba4392116300741b6cff1d47c8fdb2fdb066208f3b8f06dc427d6aecfda9f8b
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Complete abstract syntax and context data only. Formation/typing labels do not provide semantic validity, concrete Lean expression/context encoding, definitional equality, frontend provenance or adapter completeness. -/

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

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.ScopedJudgmentData.Variantd45d46498501b839

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

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.ScopedJudgmentData.Variantd45d46498501b839
