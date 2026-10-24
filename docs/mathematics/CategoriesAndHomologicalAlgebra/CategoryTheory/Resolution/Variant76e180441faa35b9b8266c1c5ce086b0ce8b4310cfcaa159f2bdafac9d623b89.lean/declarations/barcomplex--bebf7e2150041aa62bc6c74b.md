# barComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b05a36226f389259c3ff2f04aea1051e15a6d910c932b8624dfd9029cac53e4f",
  "kind": "abbrev",
  "lexical_name": "barComplex",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "barcomplex--bebf7e2150041aa62bc6c74b",
  "source": {
    "blob": "e434666d906e19735d3f51c8d78a6b6720cdbaa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 412,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant76e180441faa35b9b8266c1c5ce086b0ce8b4310cfcaa159f2bdafac9d623b89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bebf7e2150041aa62bc6c74bc00d160ea02968f69694f61332a52962f5c30b1a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant76e180441faa35b9b8266c1c5ce086b0ce8b4310cfcaa159f2bdafac9d623b89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b05a36226f389259c3ff2f04aea1051e15a6d910c932b8624dfd9029cac53e4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev barComplex : ChainComplex (Rep k G) ℕ :=
  ChainComplex.of (fun n => free k G (Fin n → G)) (fun n => d k G n) fun m => by
    have key : (d k G (m + 1) ≫ d k G m) ≫ (diagonalSuccIsoFree k G m).inv = 0 := by
      rw [Category.assoc, d_comp_diagonalSuccIsoFree_inv_eq, ← Category.assoc,
        d_comp_diagonalSuccIsoFree_inv_eq, Category.assoc, HomologicalComplex.d_comp_d,
        Limits.comp_zero]
    exact (cancel_mono (diagonalSuccIsoFree k G m).inv).mp (by simpa using key)

namespace barComplex

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant76e180441faa35b9b8266c1c5ce086b0ce8b4310cfcaa159f2bdafac9d623b89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant76e180441faa35b9b8266c1c5ce086b0ce8b4310cfcaa159f2bdafac9d623b89.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e434666d906e19735d3f51c8d78a6b6720cdbaa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
