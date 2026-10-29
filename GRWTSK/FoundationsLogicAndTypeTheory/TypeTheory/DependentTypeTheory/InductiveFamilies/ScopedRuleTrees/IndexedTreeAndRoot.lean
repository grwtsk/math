/-
Exact judgment-indexed rule trees and their root-index projection
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


/- Whole K.Rule/IndexedAll indexed tree and exact root J only; no concrete Lean rule trace, finite shared DAG, kernel adapter, source history or semantic proof/replay acceptance. -/

import Atomize.Formal.RawDerivation

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

/--
**Important data and indices:** A scope-indexed local proof plan at exact root
judgment `J`, with one indexed child for every rule premise.

**Type-enforced invariant:** Wrong-premise and wrong-scope children are rejected
by the constructor type.

**Layer boundary:** This is deliberately a tree rather than a shared DAG.

**Architectural problem:** Planning needs its own typed syntax without losing
the raw derivation's premise alignment.

**Worked example:** Compiling the private identity derivation yields a lambda
node with its binder-local leaf.

**Used by:** `Eval`, plan metrics, reference accounting, and `BTreePlan`.

**Proof idea:** The dependent constructor mirrors `RawDer.node` over
`IndexedAll` children.

**Equality notion:** Equality is structural equality of the indexed tree.

**Boundary cases:** Empty premises construct a one-node plan leaf.

**Validation consequence:** Construction proves abstract well-indexing but not
DAG sharing, Lean replay, or source provenance.
-/
inductive TreePlan (K : KernelPresentation.{u}) : K.Judgment → Type u
  | node {premises : List K.Judgment} {conclusion : K.Judgment} :
      K.Rule (premises := premises) conclusion →
      IndexedAll (TreePlan K) premises →
      TreePlan K conclusion

namespace TreePlan

/--
**Architectural problem:** Plan roots must not be reconstructed from text.
**Important data and indices:** `J` is the exact plan judgment index.
**Type-enforced invariant:** The returned judgment is precisely the input index.
**Layer boundary:** This reads abstract plan metadata only.
**Worked example:** A compiled identity plan returns its root conclusion.
**Used by:** `root_comp` and root diagnostics.
**Proof idea:** Return the implicit type index directly.
**Equality notion:** Roots use scoped-judgment propositional equality.
**Boundary cases:** Leaves and non-leaves share the definition.
**Validation consequence:** Root retention is exact inside the tree model.
-/
def root {K : KernelPresentation.{u}} {J : K.Judgment}
    (_ : TreePlan K J) : K.Judgment := J

end TreePlan

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.ScopedRuleTrees.Variant3796440d528d629e
