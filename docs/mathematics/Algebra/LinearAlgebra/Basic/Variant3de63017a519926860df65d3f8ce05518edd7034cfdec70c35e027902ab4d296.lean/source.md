# Complete source: GRWTSK.Algebra.LinearAlgebra.Basic.Variant3de63017a519926860df65d3f8ce05518edd7034cfdec70c35e027902ab4d296

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9857a4274b6f5f6dc5b8ac429c4d023dc324cc08` · SHA-256 `d522df888e2bbf65350ef5de16047c707b018ea47d827b8cb233e5f917030d2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.BoolMatrix.Variant0c3a21672a3bbb1c8d60eed32067768a9da02ee7993b147c7ce962e4d83ca813","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c3a21672a3bbb1c8d60eed32067768a9da02ee7993b147c7ce962e4d83ca813","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BoolMatrix.Variant0c3a21672a3bbb1c8d60eed32067768a9da02ee7993b147c7ce962e4d83ca813","mathematical_subject":"Foundations.Unclassified","original_sha256":"0c3a21672a3bbb1c8d60eed32067768a9da02ee7993b147c7ce962e4d83ca813","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Boolean/Matrix/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Boolean.Algebra


namespace GRWTSK.Algebra.LinearAlgebra.BoolMatrix.Variant0c3a21672a3bbb1c8d60eed32067768a9da02ee7993b147c7ce962e4d83ca813

namespace Surface.Boolean

/--
A Boolean matrix is a two-dimensional grid with `rows` rows and `cols` columns.

An entry is addressed by a row index `Fin rows` and a column index `Fin cols`,
and every entry is exactly a `Bool`, equivalently `false`/`true` or `0`/`1`.
-/
abbrev BoolMatrix (rows cols : Nat) :=
  Fin rows → Fin cols → Bool

/-- Read the entry in row `i` and column `j`. -/
def BoolMatrix.entry
    (A : BoolMatrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    Bool :=
  A i j

/-- The row indexed by `i`. -/
def BoolMatrix.row
    (A : BoolMatrix rows cols)
    (i : Fin rows) :
    Fin cols → Bool :=
  fun j => A i j

/-- The column indexed by `j`. -/
def BoolMatrix.col
    (A : BoolMatrix rows cols)
    (j : Fin cols) :
    Fin rows → Bool :=
  fun i => A i j

/-- Every matrix entry is one of the two Boolean values. -/
theorem BoolMatrix.entry_eq_false_or_true
    (A : BoolMatrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    BoolMatrix.entry A i j = false ∨
      BoolMatrix.entry A i j = true := by
  cases BoolMatrix.entry A i j <;> simp

end Surface.Boolean
```
