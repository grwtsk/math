# conjTranspose_permMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a6d0868-fc09-e01e-a509-78c0d652dee7",
  "kind": "lemma",
  "lexical_name": "conjTranspose_permMatrix",
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
  "slug": "conjtranspose-permmatrix--1c18431a9f4b2afc242374e2",
  "source": {
    "blob": "18ba1debfc75428d36699ea0b55b345f262d6fff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 52,
    "path": "GRWTSK/Algebra/LinearAlgebra/Permutation/Variant0001cac8612da6630b57fe9a4bc0b13355db879d823c2fe6a52fd93cccf3f81a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c18431a9f4b2afc242374e25870a1f9dcefecb0390e4d5be6e1725e3f249d66",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Permutation/Variant0001cac8612da6630b57fe9a4bc0b13355db879d823c2fe6a52fd93cccf3f81a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a6d0868-fc09-e01e-a509-78c0d652dee7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma conjTranspose_permMatrix [NonAssocSemiring R] [StarRing R] :
    (σ.permMatrix R).conjTranspose = (σ⁻¹).permMatrix R := by
  simp only [conjTranspose, transpose_permMatrix, map]
  aesop

variable [Fintype n]

/-- The determinant of a permutation matrix equals its sign. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Permutation/Variant0001cac8612da6630b57fe9a4bc0b13355db879d823c2fe6a52fd93cccf3f81a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Permutation/Variant0001cac8612da6630b57fe9a4bc0b13355db879d823c2fe6a52fd93cccf3f81a.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18ba1debfc75428d36699ea0b55b345f262d6fff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
