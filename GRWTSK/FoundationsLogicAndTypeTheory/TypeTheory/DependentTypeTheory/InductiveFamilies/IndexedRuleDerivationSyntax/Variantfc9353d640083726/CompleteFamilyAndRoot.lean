/-
Whole exact judgment-indexed derivation and root projection
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: fc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c
Organized SHA-256: bfdca4371836affddd3e299e29c419d9b01fb429f5f5a2fcee1b0a7348c45e56
PMD: 510.0.070.020.060 inductive families (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import Atomize.Formal.IndexedAll
import Atomize.Formal.KernelPresentation

/-!
# Raw derivations

**Architectural problem:** A proof-reification layer needs a finite object whose
every child is a genuine rule premise, rather than an untyped syntax tree with
decorative or disconnected nodes.

**Important data and indices:** `RawDer K J` is indexed by presentation `K` and
exact root judgment `J`.  Each node stores a `K.Rule` indexed by its full premise
list and conclusion plus one child derivation at every premise judgment.

**Type-enforced invariant:** A child with the wrong universe context, local
context, claim, or premise position cannot inhabit the required `IndexedAll`.
Rules may retain project-internal constants; raw derivations are intentionally
not boundary-only objects.

**Layer boundary:** This is abstract represented syntax, not a recovered
historical Lean kernel trace.  Completeness and replay acceptance require a
later concrete adapter and validation pipeline.

**Worked example:** The private `derivation` fixture in `Examples.lean` has a
unary rule with one child leaf that references `Project.helper`.  That name remains visible in
`constantReferences` instead of being relabeled as a trusted boundary fact.

**Used by:** `Comp` structurally maps raw derivations to `TreePlan`; `BClosed`
checks whether their constant references fit a fixed boundary.

**Proof idea:** Size, height, and reference accounting recurse over the node and
its heterogeneous child list.

**Equality notion:** Derivation equality is propositional equality of the exact
inductive syntax, including rule payload and children; no normalization or
alpha quotient is hidden here.

**Boundary cases:** A leaf has an empty premise list, size and height one, and
may contribute a leaf origin.  An internal node cannot contribute a leaf origin
through `KernelPresentation.leafOrigin?`.

**Validation consequence:** The finite structural facts can be kernel checked,
but they validate only values already constructed in the supplied abstract
presentation.
-/

open Atomize.Formal

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.IndexedRuleDerivationSyntax.Variantfc9353d640083726

universe u

/--
**Important data and indices:** A rule tree proving exactly `J`; its child list
is indexed pointwise by the rule's exact premise judgments.

**Type-enforced invariant:** There is no constructor for an unchecked child or
for a child at a different premise judgment.

**Boundary cases:** `premises := []` constructs a leaf.

**Architectural problem:** Raw proof syntax must retain rule-premise alignment
instead of using an untyped child list.

**Layer boundary:** This is represented syntax, not a Lean kernel derivation.

**Worked example:** The private identity derivation has one lambda rule and one
binder-local leaf.

**Used by:** `Comp`, raw metrics, reference accounting, and `BClosed`.

**Proof idea:** The dependent constructor pairs every rule with `IndexedAll`
children at exactly its premise list.

**Equality notion:** Equality is structural equality of the indexed inductive
value.

**Validation consequence:** Construction proves abstract well-indexing only;
adapter completeness and historical provenance remain unproved.
-/
inductive RawDer (K : KernelPresentation.{u}) : K.Judgment → Type u
  | node {premises : List K.Judgment} {conclusion : K.Judgment} :
      K.Rule (premises := premises) conclusion →
      IndexedAll (RawDer K) premises →
      RawDer K conclusion

namespace RawDer

/--
**Architectural problem:** Root identity must not be reconstructed from lossy
printed syntax.
**Important data and indices:** `J` is the exact judgment index of the input.
**Type-enforced invariant:** The result type is precisely `K.Judgment` value `J`.
**Layer boundary:** This reads an abstract type index, not a Lean declaration.
**Worked example:** The identity derivation returns its root conclusion.
**Used by:** `root_comp` and root-sensitive diagnostics.
**Proof idea:** Return the implicit index `J` directly.
**Equality notion:** Roots compare by propositional scoped-judgment equality.
**Boundary cases:** Leaves and internal nodes use the same definition.
**Validation consequence:** The root is preserved exactly within the model.
-/
def root {K : KernelPresentation.{u}} {J : K.Judgment}
    (_ : RawDer K J) : K.Judgment := J

end RawDer

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.IndexedRuleDerivationSyntax.Variantfc9353d640083726
