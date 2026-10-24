# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.KarnaughMap.Variantc8f601b18a894e457a976b39118c60eed9b52505abd2436553098e710d978b4d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef96c0b2525286d9e24b31760433f6764b0e7fa1` · SHA-256 `eff876caafebff56ec3b2dcfb2af56f109f72f0c7b1b826a75e36cbd4a3b95e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.KarnaughMapKMap.Variante94f43863d0904e65d0c1bb7dc5a874a8b6222fde2641c8d646faaf76b2a1eae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e94f43863d0904e65d0c1bb7dc5a874a8b6222fde2641c8d646faaf76b2a1eae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.KarnaughMapKMap.Variante94f43863d0904e65d0c1bb7dc5a874a8b6222fde2641c8d646faaf76b2a1eae","mathematical_subject":"Computation.DataStructures","original_sha256":"e94f43863d0904e65d0c1bb7dc5a874a8b6222fde2641c8d646faaf76b2a1eae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Boolean/Cube/KarnaughMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Boolean.Cube.TruthTable


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.KarnaughMapKMap.Variante94f43863d0904e65d0c1bb7dc5a874a8b6222fde2641c8d646faaf76b2a1eae

namespace Surface.Boolean.Cube

/--
A Karnaugh map with row and column axes in Gray-code order.

The total number of Boolean variables is `rowBits + colBits`.
-/
abbrev KarnaughMap.KMap (rowBits colBits : Nat) :=
  BoolMatrix (2 ^ rowBits) (2 ^ colBits)

/-- Gray bit for a row coordinate in a K-map. -/
def KarnaughMap.rowBit
    (rowBits : Nat)
    (r : Fin (2 ^ rowBits))
    (i : Nat) :
    Bool :=
  Hypercube.grayBit r.val (rowBits - 1 - i)

/-- Gray bit for a column coordinate in a K-map. -/
def KarnaughMap.colBit
    (colBits : Nat)
    (c : Fin (2 ^ colBits))
    (j : Nat) :
    Bool :=
  Hypercube.grayBit c.val (colBits - 1 - j)

/--
Input vertex addressed by a Karnaugh map cell.

The first `rowBits` coordinates come from the Gray-coded row index. The remaining
coordinates come from the Gray-coded column index.
-/
def KarnaughMap.input
    (rowBits colBits : Nat)
    (r : Fin (2 ^ rowBits))
    (c : Fin (2 ^ colBits)) :
    Hypercube.Point (rowBits + colBits) :=
  fun i =>
    if i.val < rowBits then
      KarnaughMap.rowBit rowBits r i.val
    else
      KarnaughMap.colBit colBits c (i.val - rowBits)

/-- Convert a truth table into a Karnaugh map. -/
def KarnaughMap.fromTruthTable {rowBits colBits : Nat}
    (T : TruthTable (rowBits + colBits)) :
    KarnaughMap.KMap rowBits colBits :=
  fun r c => T (KarnaughMap.input rowBits colBits r c)

/-- The Gray-ordered row axis used by a K-map. -/
def KarnaughMap.rowAxis (rowBits : Nat) :
    List (Hypercube.Point rowBits) :=
  Hypercube.grayAxis rowBits

/-- The Gray-ordered column axis used by a K-map. -/
def KarnaughMap.colAxis (colBits : Nat) :
    List (Hypercube.Point colBits) :=
  Hypercube.grayAxis colBits

end Surface.Boolean.Cube
```
