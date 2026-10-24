-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.RawDer.Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.RawDer.Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"fc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Atomize/Formal/RawDerivation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.RawDer.Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c

namespace Atomize.Formal

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

mutual
  /--
  **Architectural problem:** Structural cost needs an exact node count.
  **Important data and indices:** The input is a `RawDer K J` at arbitrary `J`.
  **Type-enforced invariant:** Every indexed child is counted recursively.
  **Layer boundary:** This is syntax size, not source bytes or build cost.
  **Worked example:** An empty-premise leaf has size one.
  **Used by:** `size_comp` and later cost diagnostics.
  **Proof idea:** Count the root and sum all child sizes.
  **Equality notion:** The result is ordinary natural-number equality.
  **Boundary cases:** A leaf contributes one through the empty auxiliary sum.
  **Validation consequence:** Compilation can be checked for node-count loss.
  -/
  def size {K : KernelPresentation.{u}} {J : K.Judgment} :
      RawDer K J → Nat
    | .node _ children => 1 + sizeAll children

  /--
  **Architectural problem:** Heterogeneous children require a scoped size fold.
  **Important data and indices:** `js` fixes every child's judgment.
  **Type-enforced invariant:** Only children from the indexed premise list enter.
  **Layer boundary:** This is the private recursion shape exposed for proofs.
  **Worked example:** `.nil` sums to zero.
  **Used by:** `size` and simultaneous size-preservation induction.
  **Proof idea:** Add the head size to the recursive tail sum.
  **Equality notion:** Values compare as natural numbers.
  **Boundary cases:** The empty indexed list returns zero.
  **Validation consequence:** Every premise subtree is accounted for once.
  -/
  def sizeAll {K : KernelPresentation.{u}} {js : List K.Judgment} :
      IndexedAll (RawDer K) js → Nat
    | .nil => 0
    | .cons head tail => size head + sizeAll tail
end

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

mutual
  /--
  **Architectural problem:** Internal constants must remain observable.
  **Important data and indices:** References are names selected by `K` at every node.
  **Type-enforced invariant:** Only rule-declared references in the indexed tree enter.
  **Layer boundary:** This is local reference accounting, not global closure.
  **Worked example:** The private unary fixture reports `Project.helper`.
  **Used by:** `BClosed`, plan accounting, and preservation proofs.
  **Proof idea:** Union root references with references from all children.
  **Equality notion:** Results use exact finite-set equality.
  **Boundary cases:** A reference-free leaf yields the empty set.
  **Validation consequence:** Hidden or invented abstract references are detectable.
  -/
  def constantReferences {K : KernelPresentation.{u}} {J : K.Judgment} :
      RawDer K J → Finset K.ConstantName
    | .node rule children =>
        letI := K.constantNameDecidableEq
        K.ruleConstantReferences rule ∪ constantReferencesAll children

  /--
  **Architectural problem:** Reference accounting must traverse heterogeneous children.
  **Important data and indices:** `js` fixes the child judgments and `K` the name type.
  **Type-enforced invariant:** Every indexed child contributes exactly its references.
  **Layer boundary:** This auxiliary union is not declaration-linking closure.
  **Worked example:** An empty premise list contributes no constants.
  **Used by:** `constantReferences` and its structural preservation proof.
  **Proof idea:** Union the head set with the recursive tail set.
  **Equality notion:** Results are `Finset` values under `K`'s decidable equality.
  **Boundary cases:** `.nil` returns `∅`.
  **Validation consequence:** Reference aggregation covers the complete child list.
  -/
  def constantReferencesAll
      {K : KernelPresentation.{u}} {js : List K.Judgment} :
      IndexedAll (RawDer K) js → Finset K.ConstantName
    | .nil => ∅
    | .cons head tail =>
        letI := K.constantNameDecidableEq
        constantReferences head ∪ constantReferencesAll tail
end

mutual
  /--
  **Architectural problem:** Root parameters must be separated from local binders.
  **Important data and indices:** Names and classifications are supplied by `K`.
  **Type-enforced invariant:** Only `ruleRootVariables` from indexed nodes enter.
  **Layer boundary:** Classification is presentation metadata, not free-variable analysis.
  **Worked example:** The identity binder leaf contributes no root variable.
  **Used by:** Boundary diagnostics and `rootVariables_comp`.
  **Proof idea:** Union node classifications with all child classifications.
  **Equality notion:** Results use exact finite-set equality.
  **Boundary cases:** A local-only or reference-free tree may return `∅`.
  **Validation consequence:** Compilation cannot silently reclassify root variables.
  -/
  def rootVariables {K : KernelPresentation.{u}} {J : K.Judgment} :
      RawDer K J → Finset K.RootVariable
    | .node rule children =>
        letI := K.rootVariableDecidableEq
        K.ruleRootVariables rule ∪ rootVariablesAll children

  /--
  **Architectural problem:** Root-variable accounting must cover every premise.
  **Important data and indices:** `js` fixes the heterogeneous child list.
  **Type-enforced invariant:** Only indexed children are folded.
  **Layer boundary:** This is an auxiliary metadata union.
  **Worked example:** Empty premises contribute no root variables.
  **Used by:** `rootVariables` and its compilation theorem.
  **Proof idea:** Union the head result with the recursive tail result.
  **Equality notion:** Results are exact finite sets.
  **Boundary cases:** `.nil` returns `∅`.
  **Validation consequence:** No indexed child is skipped in root accounting.
  -/
  def rootVariablesAll
      {K : KernelPresentation.{u}} {js : List K.Judgment} :
      IndexedAll (RawDer K) js → Finset K.RootVariable
    | .nil => ∅
    | .cons head tail =>
        letI := K.rootVariableDecidableEq
        rootVariables head ∪ rootVariablesAll tail
end

mutual
  /--
  **Architectural problem:** Leaf provenance must survive structural planning.
  **Important data and indices:** Origins are selected by `K` and attached only to leaves.
  **Type-enforced invariant:** Internal rules cannot directly manufacture origins.
  **Layer boundary:** Provenance labels are metadata, not proof authority.
  **Worked example:** The identity body reports `.introducedLocal`.
  **Used by:** Provenance audits and `leafOrigins_comp`.
  **Proof idea:** Union the current rule's leaf set with child origins.
  **Equality notion:** Results use exact finite-set equality.
  **Boundary cases:** Missing leaf provenance contributes `∅`.
  **Validation consequence:** Structural compilation can be checked not to lose origins.
  -/
  def leafOrigins {K : KernelPresentation.{u}} {J : K.Judgment} :
      RawDer K J → Finset K.LeafOrigin
    | .node rule children =>
        letI := K.leafOriginDecidableEq
        K.ruleLeafOrigins rule ∪ leafOriginsAll children

  /--
  **Architectural problem:** Provenance aggregation must traverse all premises.
  **Important data and indices:** `js` fixes each child's scoped judgment.
  **Type-enforced invariant:** The fold accepts only the indexed child sequence.
  **Layer boundary:** This auxiliary union does not validate provenance sources.
  **Worked example:** An empty child list contributes no origins.
  **Used by:** `leafOrigins` and its compilation-preservation proof.
  **Proof idea:** Union head and recursively accumulated tail origins.
  **Equality notion:** Results are exact finite sets.
  **Boundary cases:** `.nil` returns `∅`.
  **Validation consequence:** Every child origin remains represented.
  -/
  def leafOriginsAll
      {K : KernelPresentation.{u}} {js : List K.Judgment} :
      IndexedAll (RawDer K) js → Finset K.LeafOrigin
    | .nil => ∅
    | .cons head tail =>
        letI := K.leafOriginDecidableEq
        leafOrigins head ∪ leafOriginsAll tail
end

end RawDer

end Atomize.Formal
