# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GridCell.Variant3d3ba673046f258a71c551a4cd7465f130c1304eba2b43c77caffa24dcddd097

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93093bbf06df21e8f51957838240ba4cc9862c66` · SHA-256 `7ac6d0825829decd15e30a63a2e96b2cf491639b9b219aa4c1a418297e8d0a21`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.GridCell.Variant78605e4435413916362d6042bfc85e2f0572362184d19c2ed76b8ea895cb9b7c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"78605e4435413916362d6042bfc85e2f0572362184d19c2ed76b8ea895cb9b7c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.GridCell.Variant78605e4435413916362d6042bfc85e2f0572362184d19c2ed76b8ea895cb9b7c","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"78605e4435413916362d6042bfc85e2f0572362184d19c2ed76b8ea895cb9b7c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Geometry/GridCell.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Core.Basic

/-!
# Provider-neutral typed grid cells

This small geometric address type is kept below the runtime layer so exact
grid geometry does not depend on runtime integration.  Its established public
namespace is retained because JavaScript/Rust correspondence modules already
refer to `BitMatrix.Runtime.Semantics.GridCell`; the file-level ownership and
imports, rather than the namespace spelling, enforce the dependency direction.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GridCell.Variant78605e4435413916362d6042bfc85e2f0572362184d19c2ed76b8ea895cb9b7c

namespace BitMatrix.Runtime.Semantics

/-- A typed row-major cell address. -/
structure GridCell (rows columns : Nat) where
  row : Fin rows
  column : Fin columns
  deriving DecidableEq

/-- Grid cells are the finite product of their typed row and column
coordinates. -/
def gridCellEquiv (rows columns : Nat) :
    Fin rows × Fin columns ≃ GridCell rows columns where
  toFun coordinates := ⟨coordinates.1, coordinates.2⟩
  invFun cell := (cell.row, cell.column)
  left_inv coordinates := by cases coordinates; rfl
  right_inv cell := by cases cell; rfl

instance gridCellFintype (rows columns : Nat) :
    Fintype (GridCell rows columns) :=
  Fintype.ofEquiv (Fin rows × Fin columns) (gridCellEquiv rows columns)

/-- Row-major index with an intrinsic range proof. -/
def GridCell.rowMajorIndex
    {rows columns : Nat}
    (cell : GridCell rows columns) : Fin (rows * columns) :=
  BitMatrix.ArrayBacked.flatIdx cell.row cell.column

end BitMatrix.Runtime.Semantics
```
