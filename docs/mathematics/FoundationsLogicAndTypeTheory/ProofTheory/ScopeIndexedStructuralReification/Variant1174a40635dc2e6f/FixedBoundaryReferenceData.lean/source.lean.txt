/-
FixedBoundaryReferenceData — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 1174a40635dc2e6fbf55ddd7c85994e5ea99b83bbb2d1c6e92810ea5d1248e47
Organized SHA-256: 618e916ad682b16d939dfebf0cdef7b25fb29fee1ce86aa149acdc0601474fd3
PMD: 510.0.040 proof theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole original fixed-boundary containment predicate and complete restricted indexed-plan subtype. No boundary selection, adapter, trusted-input or global declaration-closure witness is manufactured. -/

import Atomize.Formal.CompileEval

/-!
# Boundary-closed plans

**Architectural problem:** A local proof plan may legitimately refer to
project-internal declarations, while a boundary-only certificate must not hide
such references by retrospectively calling them trusted inputs.

**Important data and indices:** `BClosed boundary derivation` compares the exact
constant-reference set with the fixed `boundary` plus presentation-declared
kernel primitives.  `BTreePlan K boundary J` stores a plan and that restriction.

**Type-enforced invariant:** `CompB` requires closure evidence for the original
derivation.  There is no total constructor that silently enlarges `boundary`
after inspecting the derivation.

**Layer boundary:** `BClosed` is local reference accounting, not the later exact
declaration closure/frontier, linked global graph, or validation receipt.

**Worked example:** The private `restrictedPlan` fixture in `Examples.lean`
admits `Project.helper` only because the example's boundary was fixed to contain
that name.  The unrestricted plan retains the same internal reference regardless.

**Used by:** A later linked-boundary layer can consume `BTreePlan` only after it
has independently certified its boundary.  M1a uses it solely for the corrected
conditional boundary result.

**Proof idea:** `constantReferences_comp` says compilation preserves the exact
reference set, so the input subset proof transports directly to the plan.

**Equality notion:** Boundary membership is `Finset` membership and subset
inclusion; recovery remains propositional equality of represented syntax.

**Boundary cases:** An empty boundary accepts only presentation primitives and
derivations with no other constants.  A boundary-only leaf is still a normal
empty-premise rule leaf, not a manufactured proof of an internal declaration.

**Validation consequence:** `eval_compB` validates conditional structural
recovery.  It does not prove that the chosen boundary is derivation-independent
or certified by a concrete Lean environment.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.ScopeIndexedStructuralReification.Variant1174a40635dc2e6f

open Atomize.Formal

universe u

/--
**Type-enforced invariant:** Every represented constant is in the caller-fixed
boundary or the presentation's primitive set.

**Boundary cases:** The predicate may be false; compilation to unrestricted
`TreePlan` remains available, but `CompB` is then unavailable.

**Architectural problem:** Boundary-only claims must not relabel internal
references after inspecting a derivation.
**Important data and indices:** `boundary`, `K`, exact root `J`, and the
derivation's finite constant set determine the proposition.
**Layer boundary:** This is local set containment, not global closure or trust.
**Worked example:** The private fixture is closed only after fixing a boundary
that contains `Project.helper`.
**Used by:** `CompB`, `BTreePlan`, and `eval_compB`.
**Proof idea:** Require every reference to occur in boundary or primitive sets.
**Equality notion:** Membership and subset use exact finite-set equality.
**Validation consequence:** A proof certifies the supplied boundary relation,
not the boundary's derivation-independent correctness.
-/
def BClosed
    {K : KernelPresentation.{u}} {J : K.Judgment}
    (boundary : Finset K.ConstantName)
    (derivation : RawDer K J) : Prop :=
  letI := K.constantNameDecidableEq
  derivation.constantReferences ⊆ boundary ∪ K.primitiveConstants

/--
**Architectural problem:** Keep boundary-only plans distinct from unrestricted
local plans.

**Important data and indices:** The subtype retains `K`, fixed `boundary`, exact
root `J`, and a subset witness over evaluated references.

**Used by:** `CompB` is the only M1a constructor from a raw derivation.

**Type-enforced invariant:** The subtype witness fixes the same boundary and
root judgment as its plan.
**Layer boundary:** This is a restricted local tree, not a linked global plan.
**Worked example:** The private restricted fixture retains its internal name
under the explicitly fixed boundary.
**Proof idea:** Pair a `TreePlan K J` with its reference-subset proof.
**Equality notion:** Values use subtype equality over exact plan syntax and the
closure proposition.
**Boundary cases:** An empty boundary permits only primitives and no other names.
**Validation consequence:** Construction exposes, but does not independently
justify, the selected boundary.
-/
def BTreePlan
    (K : KernelPresentation.{u})
    (boundary : Finset K.ConstantName)
    (J : K.Judgment) :=
  {plan : TreePlan K J //
    letI := K.constantNameDecidableEq
    plan.constantReferences ⊆ boundary ∪ K.primitiveConstants}


end GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.ScopeIndexedStructuralReification.Variant1174a40635dc2e6f
