-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SyntaxNode.Variant08b6956ef9667ace520e29d73ad577cdbbbf452bc68185740c5c1f54bea8a5a1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"08b6956ef9667ace520e29d73ad577cdbbbf452bc68185740c5c1f54bea8a5a1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SyntaxNode.Variant08b6956ef9667ace520e29d73ad577cdbbbf452bc68185740c5c1f54bea8a5a1","mathematical_subject":"Computation.DataStructures","original_sha256":"08b6956ef9667ace520e29d73ad577cdbbbf452bc68185740c5c1f54bea8a5a1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Model/Syntax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Snapshot

/-!
# Model profile 1: checked ordered tree

The external candidate is a dense topological node table: children must precede
their parent. The checker does not assume a typed tree as input. It checks each
local terminal's actual occurrence identity, every ordered template expansion,
each half-open source span, unique node parentage, explicit root reachability,
and exactly one owner for every source occurrence. Node yields are redundant
witness data and are compared independently with both expansion and source.
Symbols of equal value never substitute for occurrence identity.

The finite predicates are mathematical semantic checks. No wire parser, native
stack/allocation quota or C++ capability is implemented by this Lean module.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SyntaxNode.Variant08b6956ef9667ace520e29d73ad577cdbbbf452bc68185740c5c1f54bea8a5a1

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model

/-- An untrusted node record carrying independently checked structure, span and yield witnesses. -/
structure SyntaxNode where
  /-- Canonical node-table position; child references must point to earlier positions. -/
  id : NodeId
  /-- Declared signature constructor applied at this node. -/
  constructor : ConstructorId
  /-- Claimed result sort, checked against the constructor's output sort. -/
  sort : SortId
  /-- Ordered child identities corresponding exactly to the constructor's input slots. -/
  children : List NodeId
  /-- Occurrence identities owned here, in the constructor's local terminal order. -/
  localOccurrences : List OccurrenceId
  /-- Inclusive start of the exact source span, including the cursor of an empty yield. -/
  spanBegin : ℕ
  /-- Exclusive end of the exact source span. -/
  spanEnd : ℕ
  /-- Claimed depth, checked as one plus the maximum child depth. -/
  depth : ℕ
  /-- Redundant ordered occurrence yield, checked against expansion and the source slice. -/
  yielded : List OccurrenceId
  deriving DecidableEq, Repr, Inhabited

/-- Complete snapshot repetition models exact operand binding, never digest-only scope. -/
structure SyntaxCertificate where
  /-- Complete repeated source projection required to equal the checked K1 operand. -/
  snapshot : Snapshot
  /-- Dense topological node table; every node must belong to the one rooted tree. -/
  nodes : List SyntaxNode
  /-- Claimed root identity, required to identify the final node and cover the whole source. -/
  root : NodeId
  deriving DecidableEq, Repr, Inhabited

/-- Total node lookup for computation; validity predicates reject out-of-range references. -/
def nodeAt (nodes : List SyntaxNode) (id : NodeId) : SyntaxNode :=
  (nodes[id.value]?).getD default

/-- Total signature lookup whose default never substitutes for a checked constructor reference. -/
def constructorAt (snapshot : Snapshot) (id : ConstructorId) : Constructor :=
  (snapshot.constructors[id.value]?).getD default

/-- Defaults are never authority: `NodeValid` separately checks every referenced index. -/
def expandNode (snapshot : Snapshot) (nodes : List SyntaxNode)
    (node : SyntaxNode) : List OccurrenceId :=
  (constructorAt snapshot node.constructor).surface.flatMap fun slot =>
    match slot with
    | .child index => (nodeAt nodes ((node.children[index]?).getD default)).yielded
    | .terminal index => [((node.localOccurrences[index]?).getD default)]

/-- Exact ordered occurrence slice for a separately checked half-open source span. -/
def sourceSlice (snapshot : Snapshot) (beginPos endPos : ℕ) : List OccurrenceId :=
  ((snapshot.occurrences.map Occurrence.id).drop beginPos).take (endPos - beginPos)

/-- Check positions as well as lists: an empty child's span still has an exact cursor. -/
def walkSurface (snapshot : Snapshot) (nodes : List SyntaxNode) (node : SyntaxNode)
    (cursor : ℕ) : List SurfaceSlot → Option ℕ
  | [] => some cursor
  | .child index :: rest =>
    match node.children[index]? with
    | none => none
    | some id =>
      match nodes[id.value]? with
      | none => none
      | some child =>
        if child.spanBegin = cursor then
          walkSurface snapshot nodes node child.spanEnd rest
        else none
  | .terminal index :: rest =>
    match node.localOccurrences[index]?, snapshot.occurrences[cursor]? with
    | some id, some occurrence =>
      if id = occurrence.id then walkSurface snapshot nodes node (cursor + 1) rest else none
    | _, _ => none

/-- Breadth closure uses exactly the declared node count of finite rounds. -/
def reachableNodes (nodes : List SyntaxNode) (root : NodeId) : List NodeId :=
  (List.range nodes.length).foldl (fun seen _ =>
    seen ++ (nodes.filter fun node => decide (node.id ∈ seen)).flatMap SyntaxNode.children)
    [root]

/-- Check one node's signature, references, ownership symbols, positioned yield and depth. -/
def NodeValid (snapshot : Snapshot) (nodes : List SyntaxNode)
    (node : SyntaxNode) : Prop :=
  node.constructor.value < snapshot.constructors.length ∧
  node.sort = (constructorAt snapshot node.constructor).outputSort ∧
  node.children.length = (constructorAt snapshot node.constructor).inputSorts.length ∧
  node.localOccurrences.length =
    (constructorAt snapshot node.constructor).terminalSymbols.length ∧
  (∀ child ∈ node.children, child.value < node.id.value ∧ child.value < nodes.length) ∧
  (∀ index ∈ List.range node.children.length,
    (nodeAt nodes ((node.children[index]?).getD default)).sort =
      (((constructorAt snapshot node.constructor).inputSorts[index]?).getD default)) ∧
  (∀ index ∈ List.range node.localOccurrences.length,
    ∃ occurrence ∈ snapshot.occurrences,
      occurrence.id = ((node.localOccurrences[index]?).getD default) ∧
      occurrence.symbol =
        (((constructorAt snapshot node.constructor).terminalSymbols[index]?).getD default)) ∧
  node.spanBegin ≤ node.spanEnd ∧ node.spanEnd ≤ snapshot.occurrences.length ∧
  node.yielded = expandNode snapshot nodes node ∧
  node.yielded = sourceSlice snapshot node.spanBegin node.spanEnd ∧
  walkSurface snapshot nodes node node.spanBegin
    (constructorAt snapshot node.constructor).surface = some node.spanEnd ∧
  node.depth = 1 + (node.children.map fun child => (nodeAt nodes child).depth).foldr max 0 ∧
  node.depth ≤ snapshot.limits.maxDepth

/-- Finite semantic work charge for global node/source checks and redundant witness lengths. -/
def syntaxWork (certificate : SyntaxCertificate) : ℕ :=
  (certificate.nodes.length + certificate.snapshot.occurrences.length + 1) ^ 4 +
    (certificate.nodes.map fun node =>
      node.children.length + node.localOccurrences.length + node.yielded.length).sum

/-- Whole-stage K2 specification over this exact previously checked K1 object. -/
def SyntaxValid (snapshot : CheckedSnapshot) (certificate : SyntaxCertificate) : Prop :=
  certificate.snapshot = snapshot.value ∧
  certificate.nodes ≠ [] ∧
  certificate.nodes.map SyntaxNode.id =
    (List.range certificate.nodes.length).map NodeId.mk ∧
  certificate.root.value + 1 = certificate.nodes.length ∧
  certificate.nodes.length ≤ snapshot.value.limits.maxNodes ∧
  syntaxWork certificate ≤ snapshot.value.limits.maxWork ∧
  (∀ node ∈ certificate.nodes, NodeValid snapshot.value certificate.nodes node) ∧
  (∀ node ∈ certificate.nodes,
    (certificate.nodes.flatMap SyntaxNode.children).count node.id =
      if node.id = certificate.root then 0 else 1) ∧
  (∀ node ∈ certificate.nodes,
    node.id ∈ reachableNodes certificate.nodes certificate.root) ∧
  (∀ occurrence ∈ snapshot.value.occurrences,
    (certificate.nodes.flatMap SyntaxNode.localOccurrences).count occurrence.id = 1) ∧
  (nodeAt certificate.nodes certificate.root).spanBegin = 0 ∧
  (nodeAt certificate.nodes certificate.root).spanEnd = snapshot.value.occurrences.length ∧
  (nodeAt certificate.nodes certificate.root).yielded =
    snapshot.value.occurrences.map Occurrence.id

instance (snapshot : Snapshot) (nodes : List SyntaxNode) (node : SyntaxNode) :
    Decidable (NodeValid snapshot nodes node) := by
  unfold NodeValid
  infer_instance

instance (snapshot : CheckedSnapshot) (certificate : SyntaxCertificate) :
    Decidable (SyntaxValid snapshot certificate) := by
  unfold SyntaxValid
  infer_instance

/-- Execute the whole K2 predicate against the exact previously admitted snapshot. -/
def checkSyntax (snapshot : CheckedSnapshot) (certificate : SyntaxCertificate) : Bool :=
  decide (SyntaxValid snapshot certificate)

theorem checkSyntax_eq_true_iff (snapshot : CheckedSnapshot)
    (certificate : SyntaxCertificate) :
    checkSyntax snapshot certificate = true ↔ SyntaxValid snapshot certificate := by
  simp [checkSyntax]

theorem checkSyntax_sound (snapshot : CheckedSnapshot) (certificate : SyntaxCertificate)
    (accepted : checkSyntax snapshot certificate = true) : SyntaxValid snapshot certificate :=
  (checkSyntax_eq_true_iff snapshot certificate).mp accepted

/-- Source-indexed proof state: changing the snapshot changes the dependent type. -/
structure CheckedSyntax (snapshot : CheckedSnapshot) where
  /-- Exact node table, root and repeated source to which the K2 proof applies. -/
  certificate : SyntaxCertificate
  /-- Whole-tree validity, including unique parentage, occurrence ownership and root coverage. -/
  valid : SyntaxValid snapshot certificate

/-- Issue source-indexed checked syntax only after every K2 condition succeeds. -/
def admitSyntax (snapshot : CheckedSnapshot) (certificate : SyntaxCertificate) :
    Option (CheckedSyntax snapshot) :=
  if valid : SyntaxValid snapshot certificate then some ⟨certificate, valid⟩ else none

/-- The complete source record, including assumptions, remains the checked operand. -/
theorem checkedSyntax_snapshot (snapshot : CheckedSnapshot)
    (tree : CheckedSyntax snapshot) : tree.certificate.snapshot = snapshot.value :=
  tree.valid.1

/-- Acceptance proves every concrete source occurrence has exactly one owner. -/
theorem checkedSyntax_unique_ownership (snapshot : CheckedSnapshot)
    (tree : CheckedSyntax snapshot) (occurrence : Occurrence)
    (member : occurrence ∈ snapshot.value.occurrences) :
    (tree.certificate.nodes.flatMap SyntaxNode.localOccurrences).count occurrence.id = 1 :=
  tree.valid.2.2.2.2.2.2.2.2.2.1 occurrence member

/-- Ordered equality is stronger than symbol-count or reordering equality. -/
theorem checkedSyntax_exact_root_yield (snapshot : CheckedSnapshot)
    (tree : CheckedSyntax snapshot) :
    (nodeAt tree.certificate.nodes tree.certificate.root).yielded =
      snapshot.value.occurrences.map Occurrence.id :=
  tree.valid.2.2.2.2.2.2.2.2.2.2.2.2

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model
