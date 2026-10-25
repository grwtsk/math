# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.ScopedRuleTrees.Variant3796440d528d629e.Height

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3d5c2f6ff9d4e85c828a4dc44c2c6f6eb6bd90a` · SHA-256 `260d73866f6962796799954a8c08ea7ca95028a7a810a0b7f96faa1d3e621979`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Whole mutual height fold over exact indexed rule trees
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e
Organized SHA-256: e9a9e7497fb17d71508da508199c2104fb4751b9a26d65e8ad66ec18fb0ed40d
PMD: 510.0.070.020.060 inductive families (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Entire original mutual height/heightAll pair, with all indexed constructors and1/max/zero cases. No source/runtime depth, DAG compression or height-preservation theorem is added. -/

import Atomize.Formal.RawDerivation

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.ScopedRuleTrees.Variant3796440d528d629e.IndexedTreeAndRoot

/-!
# Local tree plans

**Architectural problem:** Planning needs a representation distinct from the
raw derivation so later releases can attach source links, costs, and sharing
without changing the meaning of `RawDer`.

**Important data and indices:** `TreePlan K J` uses the same exact judgment and
premise indices as `RawDer K J`, but has its own inductive constructors.

**Type-enforced invariant:** Every plan child inhabits the exact judgment named
by the corresponding rule premise.  Binder scope and universe context therefore
remain part of node identity.

**Layer boundary:** This M1a object is a local tree, not the finite shared DAG
required by later M1 work.  It neither hash-conses equal subplans nor claims a
concrete Lean replay trace.

**Worked example:** `Comp Examples.derivation` retains the unary root and its
`Project.helper` leaf.  Two textually similar subplans in different local
contexts remain different because their full judgment indices differ.

**Used by:** `Eval` recovers raw syntax; later DAG compression may use this tree
only after exact scoped equality and structural equality checks.

**Proof idea:** Plan metrics recurse over the same indexed child structure as
raw-derivation metrics, enabling structural preservation proofs.

**Equality notion:** Equality is propositional equality of this inductive tree,
not graph bisimulation, alpha-equivalence, or normalized Lean expression
equality.

**Boundary cases:** A plan can be a one-node leaf.  It may still reference an
internal project constant; only the separate `BTreePlan` subtype is boundary
restricted.

**Validation consequence:** Constructing a `TreePlan` proves only structural
well-indexing relative to `K`; it does not establish that a Lean declaration
was historically elaborated this way.
-/

open Atomize.Formal

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.ScopedRuleTrees.Variant3796440d528d629e

universe u

namespace TreePlan

mutual
  /--
  **Architectural problem:** Plan diagnostics need exact depth.
  **Important data and indices:** The plan remains indexed by `K` and `J`.
  **Type-enforced invariant:** Height follows only well-indexed children.
  **Layer boundary:** This is tree height, not source or execution depth.
  **Worked example:** A plan leaf has height one.
  **Used by:** `height_comp` and depth diagnostics.
  **Proof idea:** Add one to the maximum child height.
  **Equality notion:** Heights use natural-number equality.
  **Boundary cases:** Empty children have auxiliary height zero.
  **Validation consequence:** Compilation can be checked for depth preservation.
  -/
  def height {K : KernelPresentation.{u}} {J : K.Judgment} :
      TreePlan K J → Nat
    | .node _ children => 1 + heightAll children

  /--
  **Architectural problem:** Node height needs a maximum over heterogeneous plans.
  **Important data and indices:** `js` fixes the ordered child judgments.
  **Type-enforced invariant:** The fold cannot admit an unindexed child.
  **Layer boundary:** This is an auxiliary syntax metric.
  **Worked example:** `.nil` has maximum height zero.
  **Used by:** `TreePlan.height` and height-preservation induction.
  **Proof idea:** Take the maximum of head and tail heights.
  **Equality notion:** Results use natural-number equality.
  **Boundary cases:** Empty input returns zero.
  **Validation consequence:** All plan branches contribute to the depth bound.
  -/
  def heightAll {K : KernelPresentation.{u}} {js : List K.Judgment} :
      IndexedAll (TreePlan K) js → Nat
    | .nil => 0
    | .cons head tail => max (height head) (heightAll tail)
end

end TreePlan

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.ScopedRuleTrees.Variant3796440d528d629e
```
