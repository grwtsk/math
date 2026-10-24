# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ledger.Variant26223fb54f6eb1e6d3944160c4bdc8b3476057a5a2044bde32fb0bdeaddc90ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1988ec7f9d2b31ba840ce80c0880d8932df3141` · SHA-256 `4a815b8e5fe401b435e0e2ed07af7ecd32564d4645d6e26ddca05ee7ca03ce4e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LedgerRow.Varianta44e3720db5529dad3dc39d96d0e7281b095e30643ec2e51ee83964b7e4c0db9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a44e3720db5529dad3dc39d96d0e7281b095e30643ec2e51ee83964b7e4c0db9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.LedgerRow.Varianta44e3720db5529dad3dc39d96d0e7281b095e30643ec2e51ee83964b7e4c0db9","mathematical_subject":"Computation.DataStructures","original_sha256":"a44e3720db5529dad3dc39d96d0e7281b095e30643ec2e51ee83964b7e4c0db9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Model/Ledger.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Syntax

/-!
# Model profile 1: separate primitive count, support and parity witnesses

Natural-number addition is exact. The finite predicate requires every supplied
and recomputed coordinate to fit both the declared bound and NatBelow(2^64).
It never wraps or saturates. A false Boolean is only failed admission; this
module has no negative-theorem constructor and does not classify native runtime
failures. Future native rejection taxonomy remains a separate implementation.

Each node row supplies all three representations independently. Canonical support
and parity lists contain exactly the primitive IDs selected by positivity and
oddness. Constructor conservation uses the exact checked tree's children;
matching counts on a different tree certificate never suffice.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LedgerRow.Varianta44e3720db5529dad3dc39d96d0e7281b095e30643ec2e51ee83964b7e4c0db9

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model

/-- Three independently supplied primitive-resource representations for one syntax node. -/
structure LedgerRow where
  /-- Exact node identity whose constructor and children determine the expected valuation. -/
  node : NodeId
  /-- Dense natural-use counts in the snapshot's canonical primitive order. -/
  valuation : List ℕ
  /-- Claimed ordered primitive IDs with positive valuation, checked independently. -/
  support : List PrimitiveId
  /-- Claimed ordered primitive IDs with odd valuation; support is not substituted for parity. -/
  parity : List PrimitiveId
  deriving DecidableEq, Repr, Inhabited

/-- A complete per-node ledger bound by equality to one exact syntax certificate. -/
structure LedgerCertificate where
  /-- Repeated syntax operand, including its complete source projection. -/
  tree : SyntaxCertificate
  /-- Dense canonical rows supplying all three resource witnesses for every tree node. -/
  rows : List LedgerRow
  deriving DecidableEq, Repr, Inhabited

/-- Total row lookup; admitted dense row and node tables make the default unreachable. -/
def ledgerRowAt (rows : List LedgerRow) (node : NodeId) : LedgerRow :=
  (rows[node.value]?).getD default

/-- Canonically ordered coordinates whose exact natural valuation is positive. -/
def supportOf (valuation : List ℕ) : List PrimitiveId :=
  ((List.range valuation.length).filter fun index =>
    decide (0 < ((valuation[index]?).getD 0))).map PrimitiveId.mk

/-- Canonically ordered coordinates whose exact natural valuation is odd. -/
def parityOf (valuation : List ℕ) : List PrimitiveId :=
  ((List.range valuation.length).filter fun index =>
    decide (((valuation[index]?).getD 0) % 2 = 1)).map PrimitiveId.mk

/-- Exact dense constructor-plus-child sum, without a prime product. -/
def expectedValuation (snapshot : Snapshot) (nodes : List SyntaxNode)
    (rows : List LedgerRow) (node : NodeId) : List ℕ :=
  let syntaxNode := nodeAt nodes node
  let contribution := (constructorAt snapshot syntaxNode.constructor).primitiveContribution
  (List.range snapshot.primitives.length).map fun index =>
    ((contribution[index]?).getD 0) +
      (syntaxNode.children.map fun child =>
        (((ledgerRowAt rows child).valuation[index]?).getD 0)).sum

/-- Require exact constructor conservation, bounded coordinates and both independent projections. -/
def LedgerRowValid (snapshot : Snapshot) (nodes : List SyntaxNode)
    (rows : List LedgerRow) (row : LedgerRow) : Prop :=
  row.valuation.length = snapshot.primitives.length ∧
  row.valuation = expectedValuation snapshot nodes rows row.node ∧
  (∀ value ∈ row.valuation, value ≤ snapshot.limits.maxValue ∧ value < 2 ^ 64) ∧
  row.support = supportOf row.valuation ∧
  row.parity = parityOf row.valuation

/-- Declared semantic charge for node/coordinate conservation and supplied witness lengths. -/
def ledgerWork (certificate : LedgerCertificate) : ℕ :=
  let nodes := certificate.tree.nodes.length
  let primitives := certificate.tree.snapshot.primitives.length
  (nodes + 1) ^ 2 * (primitives + 1) *
    (certificate.tree.snapshot.limits.maxArity + 1) +
    (certificate.rows.map fun row =>
      row.valuation.length + row.support.length + row.parity.length).sum

/-- Whole-stage K3 specification retains the exact K2 and K1 proof operands. -/
def LedgerValid (snapshot : CheckedSnapshot) (tree : CheckedSyntax snapshot)
    (certificate : LedgerCertificate) : Prop :=
  certificate.tree = tree.certificate ∧
  certificate.rows.map LedgerRow.node =
    (List.range tree.certificate.nodes.length).map NodeId.mk ∧
  ledgerWork certificate ≤ snapshot.value.limits.maxWork ∧
  (∀ row ∈ certificate.rows,
    LedgerRowValid snapshot.value tree.certificate.nodes certificate.rows row)

instance (snapshot : Snapshot) (nodes : List SyntaxNode) (rows : List LedgerRow)
    (row : LedgerRow) : Decidable (LedgerRowValid snapshot nodes rows row) := by
  unfold LedgerRowValid
  infer_instance

instance (snapshot : CheckedSnapshot) (tree : CheckedSyntax snapshot)
    (certificate : LedgerCertificate) : Decidable (LedgerValid snapshot tree certificate) := by
  unfold LedgerValid
  infer_instance

/-- Execute the complete K3 predicate against the exact checked K1 and K2 operands. -/
def checkLedger (snapshot : CheckedSnapshot) (tree : CheckedSyntax snapshot)
    (certificate : LedgerCertificate) : Bool :=
  decide (LedgerValid snapshot tree certificate)

theorem checkLedger_eq_true_iff (snapshot : CheckedSnapshot)
    (tree : CheckedSyntax snapshot) (certificate : LedgerCertificate) :
    checkLedger snapshot tree certificate = true ↔ LedgerValid snapshot tree certificate := by
  simp [checkLedger]

theorem checkLedger_sound (snapshot : CheckedSnapshot) (tree : CheckedSyntax snapshot)
    (certificate : LedgerCertificate)
    (accepted : checkLedger snapshot tree certificate = true) :
    LedgerValid snapshot tree certificate :=
  (checkLedger_eq_true_iff snapshot tree certificate).mp accepted

/-- Proof-bearing ledger state whose dependent type retains both source and syntax scope. -/
structure CheckedLedger (snapshot : CheckedSnapshot) (tree : CheckedSyntax snapshot) where
  /-- Exact supplied rows and repeated syntax operand to which the proof applies. -/
  certificate : LedgerCertificate
  /-- Whole K3 validity for these rows, including canonical coverage and resource bounds. -/
  valid : LedgerValid snapshot tree certificate

/-- Return a source-and-tree-indexed ledger proof only if every row passes K3 admission. -/
def admitLedger (snapshot : CheckedSnapshot) (tree : CheckedSyntax snapshot)
    (certificate : LedgerCertificate) : Option (CheckedLedger snapshot tree) :=
  if valid : LedgerValid snapshot tree certificate then some ⟨certificate, valid⟩ else none

theorem checkedLedger_exact_operand (snapshot : CheckedSnapshot)
    (tree : CheckedSyntax snapshot) (ledger : CheckedLedger snapshot tree) :
    ledger.certificate.tree = tree.certificate :=
  ledger.valid.1

theorem checkedLedger_snapshot (snapshot : CheckedSnapshot)
    (tree : CheckedSyntax snapshot) (ledger : CheckedLedger snapshot tree) :
    ledger.certificate.tree.snapshot = snapshot.value := by
  rw [ledger.valid.1]
  exact tree.valid.1

/-- Every accepted row satisfies exact constructor conservation. -/
theorem checkedLedger_conservation (snapshot : CheckedSnapshot) (tree : CheckedSyntax snapshot)
    (ledger : CheckedLedger snapshot tree) (row : LedgerRow)
    (member : row ∈ ledger.certificate.rows) :
    row.valuation = expectedValuation snapshot.value tree.certificate.nodes
      ledger.certificate.rows row.node :=
  (ledger.valid.2.2.2 row member).2.1

/-- Independent support and parity fields are both checked, rather than identified. -/
theorem checkedLedger_support_parity (snapshot : CheckedSnapshot)
    (tree : CheckedSyntax snapshot) (ledger : CheckedLedger snapshot tree)
    (row : LedgerRow) (member : row ∈ ledger.certificate.rows) :
    row.support = supportOf row.valuation ∧ row.parity = parityOf row.valuation :=
  (ledger.valid.2.2.2 row member).2.2.2

theorem checkedLedger_values_bounded (snapshot : CheckedSnapshot)
    (tree : CheckedSyntax snapshot) (ledger : CheckedLedger snapshot tree)
    (row : LedgerRow) (member : row ∈ ledger.certificate.rows) :
    ∀ value ∈ row.valuation, value ≤ snapshot.value.limits.maxValue ∧ value < 2 ^ 64 :=
  (ledger.valid.2.2.2 row member).2.2.1

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model
```
