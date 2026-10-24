# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TreePlan.Variantab478e1aedcdde5bab8d49b12b22d85ec73ea1d00744bbd31c8f94ac519d20c0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd5719be3f0e9033aa90c789a3aa70f62c86870b` · SHA-256 `5d514fa5e795e054439e86f225b64f202c14b987ae268a7ec86d5a232dd75945`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TreePlan.Variant3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TreePlan.Variant3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e","mathematical_subject":"Computation.DataStructures","original_sha256":"3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Atomize/Formal/TreePlan.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TreePlan.Variant3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e

namespace Atomize.Formal

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

mutual
  /--
  **Architectural problem:** Plan cost needs an exact structural node count.
  **Important data and indices:** The input is indexed by presentation and root.
  **Type-enforced invariant:** Every indexed child is counted.
  **Layer boundary:** This is tree size, not shared-DAG or build cost.
  **Worked example:** A plan leaf has size one.
  **Used by:** `size_comp` and structural diagnostics.
  **Proof idea:** Count the root and sum child sizes.
  **Equality notion:** Results compare as natural numbers.
  **Boundary cases:** Empty children contribute zero to the sum.
  **Validation consequence:** M1a compilation can be checked for node loss.
  -/
  def size {K : KernelPresentation.{u}} {J : K.Judgment} :
      TreePlan K J → Nat
    | .node _ children => 1 + sizeAll children

  /--
  **Architectural problem:** Heterogeneous plan children need an indexed size fold.
  **Important data and indices:** `js` fixes every child judgment.
  **Type-enforced invariant:** Only the indexed child list contributes.
  **Layer boundary:** This is an auxiliary tree metric.
  **Worked example:** `.nil` sums to zero.
  **Used by:** `TreePlan.size` and its preservation induction.
  **Proof idea:** Add head size and recursive tail size.
  **Equality notion:** Values use natural-number equality.
  **Boundary cases:** Empty input returns zero.
  **Validation consequence:** Each premise plan is counted once.
  -/
  def sizeAll {K : KernelPresentation.{u}} {js : List K.Judgment} :
      IndexedAll (TreePlan K) js → Nat
    | .nil => 0
    | .cons head tail => size head + sizeAll tail
end

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

end Atomize.Formal
```
