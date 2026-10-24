# BitMatrix.Surgery.ArrayBackedRefinement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5510773f58584be1ddd051e59242e1f0cc98787999f10535f02f4e959c80c2f",
  "kind": "structure",
  "lexical_name": "BitMatrix.Surgery.ArrayBackedRefinement",
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
  "slug": "bitmatrix-surgery-arraybackedrefinement--d575f5d83478201f5c35f8b6",
  "source": {
    "blob": "d9ee3123f42a1a2955379f193b980a44fd3266e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 244,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d575f5d83478201f5c35f8b6d5c47f51d8dea3fe2750c530472ad357c793bcfa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5510773f58584be1ddd051e59242e1f0cc98787999f10535f02f4e959c80c2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BitMatrix.Surgery.ArrayBackedRefinement
    {m n : Nat} (A : BitMatrix.ArrayBacked m n) (L : MatrixLocus m n) where
  replacement : BitMatrix.ArrayBacked L.rows.card L.columns.card
  result : BitMatrix.ArrayBacked m n
  declarative : BitMatrix.Surgery.SubmatrixSurgery A.toMatrix L
  replacement_refines : replacement.toMatrix = declarative.replacement
  result_refines : result.toMatrix = declarative.result

namespace BitMatrix.Surgery.ArrayBackedRefinement

open BitMatrix.Geometry

variable {m n : Nat}

/-- Canonical executable refinement of a replacement block. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Submatrix/Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9ee3123f42a1a2955379f193b980a44fd3266e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
