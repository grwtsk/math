# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Fixtures.Variant87014257fbe67bd1e6177020c47956a0716035227219c09ed816707980b75581

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8bbe709b41315fabfe7ce239a1da6e4e7f9599e` · SHA-256 `87014257fbe67bd1e6177020c47956a0716035227219c09ed816707980b75581`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Ledger

/-!
# Model profile 1: positive and hostile finite certificates

These fixtures are exact semantic Lean data, not kernel wire certificates or
publication records. The pair fixture realizes the source ledger's `(aa)`
example with dense topological node IDs and distinct occurrence IDs 10--13.
Every rejection below is failure to admit that candidate, never a theorem's
negation. The final overflow fixture conserves its natural counts exactly but
exceeds the supported 64-bit domain, so it receives no checked ledger.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Fixtures

/-- Semantic record, depth and work limits shared by the ordered-pair fixtures. -/
def limits : Limits :=
  ⟨64, 256, 4, 16, 8, 100, 1000000⟩

/-- Nullary atom constructor that contributes one use of primitive zero. -/
def atom : Constructor :=
  ⟨⟨0⟩, [], ⟨0⟩, [⟨1⟩], [.terminal 0], [1, 0]⟩

/-- Binary constructor with ordered children inside two terminal delimiters. -/
def pair : Constructor :=
  ⟨⟨1⟩, [⟨0⟩, ⟨0⟩], ⟨0⟩, [⟨0⟩, ⟨2⟩],
    [.terminal 0, .child 0, .child 1, .terminal 1], [0, 1]⟩

/-- Unary surface-preserving constructor with zero primitive contribution. -/
def tag : Constructor :=
  ⟨⟨2⟩, [⟨0⟩], ⟨0⟩, [], [.child 0], [0, 0]⟩

/-- Exact ordered `(aa)` snapshot with distinct occurrence IDs and an explicit assumption. -/
def snapshot : Snapshot where
  profileVersion := 1
  source := ⟨"formal-research/model-fixture",
    "b88f24d826cafbd245a559230d006b0f5c07f1df",
    "612d7e72edf7a6db68fcfffcca687c716cc633f1", "ordered-pair-fixture", 1⟩
  assumptions := [⟨0, "Tag(Tag(x)) = x; declaration only, not an admitted equation"⟩]
  limits := limits
  sorts := [⟨0⟩]
  symbols := [⟨⟨0⟩, "("⟩, ⟨⟨1⟩, "a"⟩, ⟨⟨2⟩, ")"⟩]
  constructors := [atom, pair, tag]
  primitives := [⟨0⟩, ⟨1⟩]
  occurrences := [⟨⟨10⟩, ⟨0⟩⟩, ⟨⟨11⟩, ⟨1⟩⟩, ⟨⟨12⟩, ⟨1⟩⟩, ⟨⟨13⟩, ⟨2⟩⟩]

/-- The complete positive snapshot satisfies the finite K1 admission predicate. -/
theorem snapshot_accepted : checkSnapshot snapshot = true := by decide

/-- K1 proof operand obtained from the positive snapshot admission check. -/
def checkedSnapshot : CheckedSnapshot :=
  ⟨snapshot, checkSnapshot_sound snapshot snapshot_accepted⟩

/-- Left atom node owning occurrence 11 at source span [1,2). -/
def leftAtom : SyntaxNode := ⟨⟨0⟩, ⟨0⟩, ⟨0⟩, [], [⟨11⟩], 1, 2, 1, [⟨11⟩]⟩
/-- Right atom node owning occurrence 12 at source span [2,3). -/
def rightAtom : SyntaxNode := ⟨⟨1⟩, ⟨0⟩, ⟨0⟩, [], [⟨12⟩], 2, 3, 1, [⟨12⟩]⟩
/-- Root node preserving delimiter ownership and left-to-right child order. -/
def pairRoot : SyntaxNode :=
  ⟨⟨2⟩, ⟨1⟩, ⟨0⟩, [⟨0⟩, ⟨1⟩], [⟨10⟩, ⟨13⟩], 0, 4, 2,
    [⟨10⟩, ⟨11⟩, ⟨12⟩, ⟨13⟩]⟩

/-- Topological three-node certificate for the exact four-occurrence source. -/
def tree : SyntaxCertificate := ⟨snapshot, [leftAtom, rightAtom, pairRoot], ⟨2⟩⟩

/-- The ordered-pair tree passes K2 against its checked snapshot. -/
theorem syntax_accepted : checkSyntax checkedSnapshot tree = true := by decide

/-- K2 proof operand bound to the exact positive snapshot and tree certificate. -/
def checkedTree : CheckedSyntax checkedSnapshot :=
  ⟨tree, checkSyntax_sound checkedSnapshot tree syntax_accepted⟩

/-- Independent valuation, support and parity witnesses for the left atom. -/
def leftRow : LedgerRow := ⟨⟨0⟩, [1, 0], [⟨0⟩], [⟨0⟩]⟩
/-- Independent valuation, support and parity witnesses for the right atom. -/
def rightRow : LedgerRow := ⟨⟨1⟩, [1, 0], [⟨0⟩], [⟨0⟩]⟩
/-- Root witnesses count two atom resources and one pair resource without conflating parity. -/
def rootRow : LedgerRow := ⟨⟨2⟩, [2, 1], [⟨0⟩, ⟨1⟩], [⟨1⟩]⟩
/-- Dense node-indexed primitive ledger for the positive ordered-pair tree. -/
def ledger : LedgerCertificate := ⟨tree, [leftRow, rightRow, rootRow]⟩

/-- The positive ledger passes K3 with its exact checked tree operand. -/
theorem ledger_accepted : checkLedger checkedSnapshot checkedTree ledger = true := by decide

/-- K3 proof operand preserving the admitted snapshot and syntax predecessors. -/
def checkedLedger : CheckedLedger checkedSnapshot checkedTree :=
  ⟨ledger, checkLedger_sound checkedSnapshot checkedTree ledger ledger_accepted⟩

/-- The chain has actual proof operands at all three stages. -/
theorem k1_k2_k3_positive :
    SnapshotValid snapshot ∧ SyntaxValid checkedSnapshot tree ∧
      LedgerValid checkedSnapshot checkedTree ledger :=
  ⟨checkedSnapshot.valid, checkedTree.valid, checkedLedger.valid⟩

/-- K1 rejects a source table that repeats an occurrence identity. -/
theorem duplicate_occurrence_rejected :
    checkSnapshot { snapshot with occurrences :=
      [⟨⟨10⟩, ⟨0⟩⟩, ⟨⟨11⟩, ⟨1⟩⟩, ⟨⟨11⟩, ⟨1⟩⟩, ⟨⟨13⟩, ⟨2⟩⟩] } = false := by decide

/-- K1 rejects constructor rows whose order disagrees with dense IDs. -/
theorem noncanonical_constructor_table_rejected :
    checkSnapshot { snapshot with constructors := [pair, atom, tag] } = false := by decide

/-- A constructor cannot name an output sort outside the snapshot signature. -/
theorem wrong_sort_rejected :
    checkSnapshot { snapshot with constructors :=
      [atom, { pair with outputSort := ⟨9⟩ }, tag] } = false := by decide

/-- A surface template cannot duplicate one child while omitting another. -/
theorem duplicated_template_child_rejected :
    checkSnapshot { snapshot with constructors :=
      [atom, { pair with surface :=
        [.terminal 0, .child 0, .child 0, .terminal 1] }, tag] } = false := by decide

/-- A zero semantic work allowance cannot admit the positive snapshot. -/
theorem exhausted_snapshot_work_rejected :
    checkSnapshot { snapshot with limits := { limits with maxWork := 0 } } = false := by decide

/-- K2 rejects the same tree payload when its bound source revision changes. -/
theorem snapshot_drift_rejected :
    checkSyntax checkedSnapshot { tree with snapshot :=
      { snapshot with source := { snapshot.source with revision := 2 } } } = false := by decide

/-- The profile-1 checker rejects a different declared snapshot version. -/
theorem unsupported_snapshot_profile_rejected :
    checkSnapshot { snapshot with profileVersion := 2 } = false := by decide

/-- K1 rejects a source commit spelling containing nonhexadecimal characters. -/
theorem malformed_source_identity_rejected :
    checkSnapshot { snapshot with source :=
      { snapshot.source with commit := "gggggggggggggggggggggggggggggggggggggggg" } } =
        false := by decide

/-- Deleting declared assumptions changes the K2 operand and prevents admission. -/
theorem assumptions_erased_rejected :
    checkSyntax checkedSnapshot { tree with snapshot :=
      { snapshot with assumptions := [] } } = false := by decide

/-- Equal symbol values do not permit two atom nodes to reuse one occurrence ID. -/
theorem occurrence_aliasing_rejected :
    checkSyntax checkedSnapshot { tree with nodes :=
      [leftAtom, { rightAtom with localOccurrences := [⟨11⟩] }, pairRoot] } = false := by decide

/-- Reversing the root children fails the exact ordered-yield check. -/
theorem child_order_loss_rejected :
    checkSyntax checkedSnapshot { tree with nodes :=
      [leftAtom, rightAtom, { pairRoot with children := [⟨1⟩, ⟨0⟩] }] } = false := by decide

/-- An atom cannot claim a source span beginning before its actual occurrence. -/
theorem incorrect_span_rejected :
    checkSyntax checkedSnapshot { tree with nodes :=
      [{ leftAtom with spanBegin := 0 }, rightAtom, pairRoot] } = false := by decide

/-- A root self-reference fails the strictly preceding-child requirement. -/
theorem cycle_rejected :
    checkSyntax checkedSnapshot { tree with nodes :=
      [leftAtom, rightAtom, { pairRoot with children := [⟨2⟩, ⟨1⟩] }] } = false := by decide

/-- A tree cannot use the same child twice in place of two distinct nodes. -/
theorem shared_node_rejected :
    checkSyntax checkedSnapshot { tree with nodes :=
      [leftAtom, rightAtom, { pairRoot with children := [⟨0⟩, ⟨0⟩] }] } = false := by decide

/-- A child reference outside the submitted node table prevents K2 admission. -/
theorem unknown_node_rejected :
    checkSyntax checkedSnapshot { tree with nodes :=
      [leftAtom, rightAtom, { pairRoot with children := [⟨0⟩, ⟨99⟩] }] } = false := by decide

/-- A binary constructor cannot be witnessed by a one-child application. -/
theorem wrong_arity_rejected :
    checkSyntax checkedSnapshot { tree with nodes :=
      [leftAtom, rightAtom, { pairRoot with children := [⟨0⟩] }] } = false := by decide

/-- Terminal ownership must refer to an actual occurrence in the source snapshot. -/
theorem invented_delimiter_rejected :
    checkSyntax checkedSnapshot { tree with nodes :=
      [leftAtom, rightAtom, { pairRoot with localOccurrences := [⟨99⟩, ⟨13⟩] }] } =
        false := by decide

/-- A node sort must equal its checked constructor output sort. -/
theorem wrong_node_sort_rejected :
    checkSyntax checkedSnapshot { tree with nodes :=
      [leftAtom, { rightAtom with sort := ⟨1⟩ }, pairRoot] } = false := by decide

/-- The claimed root depth must agree with its concrete child depths. -/
theorem incorrect_depth_rejected :
    checkSyntax checkedSnapshot { tree with nodes :=
      [leftAtom, rightAtom, { pairRoot with depth := 1 }] } = false := by decide

/-- K3 rejects a root valuation that omits a certified atom contribution. -/
theorem valuation_conservation_failure_rejected :
    checkLedger checkedSnapshot checkedTree { ledger with rows :=
      [leftRow, rightRow, { rootRow with valuation := [1, 1] }] } = false := by decide

/-- Positive valuation coordinates must all appear in the independent support list. -/
theorem support_omission_rejected :
    checkLedger checkedSnapshot checkedTree { ledger with rows :=
      [leftRow, rightRow, { rootRow with support := [⟨0⟩] }] } = false := by decide

/-- Even positive valuations belong to support but not to the odd-parity list. -/
theorem parity_confusion_rejected :
    checkLedger checkedSnapshot checkedTree { ledger with rows :=
      [leftRow, rightRow, { rootRow with parity := [⟨0⟩, ⟨1⟩] }] } = false := by decide

/-- K3 requires one canonical ledger row for every checked syntax node. -/
theorem missing_ledger_row_rejected :
    checkLedger checkedSnapshot checkedTree { ledger with rows :=
      [leftRow, rootRow] } = false := by decide

/-- Changing only the ledger tree root invalidates its exact K2 binding. -/
theorem ledger_wrong_operand_rejected :
    checkLedger checkedSnapshot checkedTree { ledger with tree :=
      { tree with root := ⟨0⟩ } } = false := by decide

/-- This extra constructor admits an empty-yield node, making an isolated orphan possible. -/
def orphanSnapshot : Snapshot :=
  { snapshot with constructors :=
      [atom, pair, tag, ⟨⟨3⟩, [], ⟨0⟩, [], [], [0, 0]⟩] }

/-- K1 admits the signature extension that permits an empty-yield constructor. -/
theorem orphan_snapshot_accepted : checkSnapshot orphanSnapshot = true := by decide

/-- Checked signature operand for the disconnected-node regression. -/
def checkedOrphanSnapshot : CheckedSnapshot :=
  ⟨orphanSnapshot, checkSnapshot_sound orphanSnapshot orphan_snapshot_accepted⟩

/-- Empty-yield node with no parent in the submitted orphan-tree candidate. -/
def orphanNode : SyntaxNode := ⟨⟨2⟩, ⟨3⟩, ⟨0⟩, [], [], 0, 0, 1, []⟩

/-- Locally valid node table containing an extra disconnected empty-yield node. -/
def orphanTree : SyntaxCertificate :=
  ⟨orphanSnapshot, [leftAtom, rightAtom, orphanNode, { pairRoot with id := ⟨3⟩ }], ⟨3⟩⟩

/-- Each local equation passes; the extra disconnected node still prevents a tree. -/
theorem orphan_nodes_locally_valid :
    ∀ node ∈ orphanTree.nodes, NodeValid orphanSnapshot orphanTree.nodes node := by decide

/-- Global K2 reachability rejects the disconnected node despite local validity. -/
theorem unreachable_node_rejected :
    checkSyntax checkedOrphanSnapshot orphanTree = false := by decide

/-- Signature with an empty child followed by two explicit source terminals. -/
def epsilonSnapshot : Snapshot :=
  { snapshot with
    constructors :=
      [⟨⟨0⟩, [], ⟨0⟩, [], [], [0, 0]⟩,
       ⟨⟨1⟩, [⟨0⟩], ⟨0⟩, [⟨1⟩, ⟨1⟩],
         [.child 0, .terminal 0, .terminal 1], [0, 0]⟩]
    occurrences := [⟨⟨10⟩, ⟨1⟩⟩, ⟨⟨11⟩, ⟨1⟩⟩] }

/-- The empty-child regression snapshot is structurally valid under K1. -/
theorem epsilon_snapshot_accepted : checkSnapshot epsilonSnapshot = true := by decide

/-- Checked K1 operand used by the exact empty-span cursor regressions. -/
def checkedEpsilonSnapshot : CheckedSnapshot :=
  ⟨epsilonSnapshot, checkSnapshot_sound epsilonSnapshot epsilon_snapshot_accepted⟩

/-- Empty-yield child correctly located at source cursor zero. -/
def epsilonChild : SyntaxNode := ⟨⟨0⟩, ⟨0⟩, ⟨0⟩, [], [], 0, 0, 1, []⟩

/-- Parent placing its empty child before two owned terminal occurrences. -/
def epsilonParent : SyntaxNode :=
  ⟨⟨1⟩, ⟨1⟩, ⟨0⟩, [⟨0⟩], [⟨10⟩, ⟨11⟩], 0, 2, 2, [⟨10⟩, ⟨11⟩]⟩

/-- Positive empty-child tree whose spans agree with the ordered surface cursor. -/
def epsilonTree : SyntaxCertificate :=
  ⟨epsilonSnapshot, [epsilonChild, epsilonParent], ⟨1⟩⟩

/-- K2 accepts the empty child when its source position matches the parent template. -/
theorem correctly_positioned_empty_child_accepted :
    checkSyntax checkedEpsilonSnapshot epsilonTree = true := by decide

/-- Empty lists alone cannot distinguish [0,0) from the wrongly claimed [2,2). -/
theorem displaced_empty_child_rejected :
    checkSyntax checkedEpsilonSnapshot { epsilonTree with nodes :=
      [{ epsilonChild with spanBegin := 2, spanEnd := 2 }, epsilonParent] } = false := by decide

/-- Valid signature whose two atom contributions overflow 64-bit range when summed. -/
def overflowSnapshot : Snapshot :=
  { snapshot with limits := { limits with maxValue := 2 ^ 64 - 1 }
                  constructors := [{ atom with primitiveContribution := [2 ^ 63, 0] }, pair, tag] }

/-- Each declared constructor contribution individually fits the supported value range. -/
theorem overflow_snapshot_accepted : checkSnapshot overflowSnapshot = true := by decide

/-- Checked K1 operand for the conserved-but-oversized valuation regression. -/
def checkedOverflowSnapshot : CheckedSnapshot :=
  ⟨overflowSnapshot, checkSnapshot_sound overflowSnapshot overflow_snapshot_accepted⟩

/-- The positive ordered tree rebound to the large-contribution snapshot. -/
def overflowTree : SyntaxCertificate := { tree with snapshot := overflowSnapshot }

/-- Large primitive contributions do not alter the exact syntax validity of the tree. -/
theorem overflow_syntax_accepted :
    checkSyntax checkedOverflowSnapshot overflowTree = true := by decide

/-- Checked syntax predecessor for testing exact arithmetic overflow rejection. -/
def checkedOverflowTree : CheckedSyntax checkedOverflowSnapshot :=
  ⟨overflowTree, checkSyntax_sound checkedOverflowSnapshot overflowTree overflow_syntax_accepted⟩

/-- Exact natural-number ledger whose root atom count is 2^64. -/
def overflowLedger : LedgerCertificate :=
  ⟨overflowTree,
    [⟨⟨0⟩, [2 ^ 63, 0], [⟨0⟩], []⟩,
     ⟨⟨1⟩, [2 ^ 63, 0], [⟨0⟩], []⟩,
     ⟨⟨2⟩, [2 ^ 64, 1], [⟨0⟩, ⟨1⟩], [⟨1⟩]⟩]⟩

/-- K3 rejects an exactly conserved valuation that exceeds the supported integer domain. -/
theorem conserved_overflow_rejected :
    checkLedger checkedOverflowSnapshot checkedOverflowTree overflowLedger = false := by decide

/-- The oversized root valuation satisfies the natural-number conservation equation. -/
theorem overflow_really_conserves_naturals :
    (ledgerRowAt overflowLedger.rows ⟨2⟩).valuation =
      expectedValuation overflowSnapshot overflowTree.nodes overflowLedger.rows ⟨2⟩ := by decide

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Fixtures
```
