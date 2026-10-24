# bsd_algorithm_bitmatrix_padding_bits_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fa6ea90-244f-d3c9-f675-396fcdea6fbc",
  "kind": "theorem",
  "lexical_name": "bsd_algorithm_bitmatrix_padding_bits_eq",
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
  "slug": "bsd-algorithm-bitmatrix-padding-bits-eq--da2e7759d072f5d0e6cd2b72",
  "source": {
    "blob": "081e5f0de612ccd2d7aedea0da412e1c6718c72c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 169,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BSDAlgorithmBitMatrixCarrier/Variante4952be6099adb16229cd8b718c5eb94ba5c2af2781de2cc39435cb3323992cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da2e7759d072f5d0e6cd2b72ce90ddb27623e5ce627cb63204d3fe3271e58476",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BSDAlgorithmBitMatrixCarrier/Variante4952be6099adb16229cd8b718c5eb94ba5c2af2781de2cc39435cb3323992cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fa6ea90-244f-d3c9-f675-396fcdea6fbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bsd_algorithm_bitmatrix_padding_bits_eq
    {Curve : Type u} {n : Nat}
    (B : BSDAlgorithmBitMatrixCarrier Curve n) :
    B.paddingBits = carrierPaddingDelta n :=
  B.paddingBits_eq

/-- The BSD bitmatrix carrier records square side `n + 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BSDAlgorithmBitMatrixCarrier/Variante4952be6099adb16229cd8b718c5eb94ba5c2af2781de2cc39435cb3323992cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BSDAlgorithmBitMatrixCarrier/Variante4952be6099adb16229cd8b718c5eb94ba5c2af2781de2cc39435cb3323992cc.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `081e5f0de612ccd2d7aedea0da412e1c6718c72c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
