# matrixActionEuclideanVector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be2ee7c462c8535c6923f7788894fcf3fba0eee4f17bdbda8d11d71c98adf588",
  "kind": "def",
  "lexical_name": "matrixActionEuclideanVector",
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
  "slug": "matrixactioneuclideanvector--f2b714f8d7090c1000be6f8b",
  "source": {
    "blob": "e7c557ab06a0b1907ee3858c065c56e20fa142dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 120,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2b714f8d7090c1000be6f8b5d0e8a6764b29f5859e9f2414696ae1af7e9c558",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be2ee7c462c8535c6923f7788894fcf3fba0eee4f17bdbda8d11d71c98adf588`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def matrixActionEuclideanVector {Left Right : Type*}
    [Fintype Left] [Fintype Right]
    (matrix : Matrix Left Right ℂ) (right : Right → ℂ) :
    EuclideanSpace ℂ Left :=
  WithLp.toLp 2 (Matrix.mulVec matrix right)

/-- The bilinear arithmetic form is represented by a Hilbert inner product
only after explicitly conjugating the left input.

The theorem prevents accidental replacement of
`sum a_l M_lr b_r` by `sum conj(a_l) M_lr b_r`. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7c557ab06a0b1907ee3858c065c56e20fa142dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
