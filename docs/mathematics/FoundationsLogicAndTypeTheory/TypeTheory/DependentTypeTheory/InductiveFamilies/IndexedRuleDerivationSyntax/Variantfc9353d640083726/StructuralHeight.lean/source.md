# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.IndexedRuleDerivationSyntax.Variantfc9353d640083726.StructuralHeight

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f7ee1917c3695682409c0e185e60003addec2b0` · SHA-256 `3c0344782ce54b2296606e537af9a8c915d0683dbf0da61da19407535e66e993`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Exact structural height and heterogeneous child maximum
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

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.IndexedRuleDerivationSyntax.Variantfc9353d640083726.CompleteFamilyAndRoot

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

namespace RawDer

mutual
  /--
  **Architectural problem:** Diagnostics need exact structural depth.
  **Important data and indices:** The derivation remains indexed by `K` and `J`.
  **Type-enforced invariant:** Height follows only well-indexed premise children.
  **Layer boundary:** This is tree height, not source nesting or runtime stack.
  **Worked example:** A leaf is height one.
  **Used by:** `height_comp` and depth diagnostics.
  **Proof idea:** Add one to the maximum child height.
  **Equality notion:** Heights compare as natural numbers.
  **Boundary cases:** Empty children have auxiliary height zero.
  **Validation consequence:** Compilation can be checked for depth preservation.
  -/
  def height {K : KernelPresentation.{u}} {J : K.Judgment} :
      RawDer K J → Nat
    | .node _ children => 1 + heightAll children

  /--
  **Architectural problem:** Node height needs a maximum over heterogeneous premises.
  **Important data and indices:** `js` fixes the ordered child judgments.
  **Type-enforced invariant:** The fold cannot inspect an unindexed child.
  **Layer boundary:** This is an auxiliary syntax metric.
  **Worked example:** `.nil` has maximum height zero.
  **Used by:** `height` and height-preservation induction.
  **Proof idea:** Take `max` of the head and recursive tail heights.
  **Equality notion:** Results use natural-number equality.
  **Boundary cases:** Empty input returns zero.
  **Validation consequence:** All branches contribute to the depth bound.
  -/
  def heightAll {K : KernelPresentation.{u}} {js : List K.Judgment} :
      IndexedAll (RawDer K) js → Nat
    | .nil => 0
    | .cons head tail => max (height head) (heightAll tail)
end

end RawDer

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.IndexedRuleDerivationSyntax.Variantfc9353d640083726
```
