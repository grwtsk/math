# hammingNorm_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:582a2073-dc0c-1ed6-4888-6a05964c0e26",
  "kind": "theorem",
  "lexical_name": "hammingNorm_smul",
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
  "slug": "hammingnorm-smul--17fbf9ad60ca9346f37eb3ef",
  "source": {
    "blob": "755742fae16b41e35914628c51ec6e5a02325f4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 235,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Hamming/Variant734c02abb274adc687802d359088f0e954dde3c404a6ca1c03e947568655bb19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17fbf9ad60ca9346f37eb3efe0900d9f7fa6f5d049408db78ed64b8f52306e66",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Hamming/Variant734c02abb274adc687802d359088f0e954dde3c404a6ca1c03e947568655bb19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:582a2073-dc0c-1ed6-4888-6a05964c0e26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hammingNorm_smul [Zero α] [∀ i, SMulWithZero α (β i)] {k : α}
    (hk : ∀ i, IsSMulRegular (β i) k) (x : ∀ i, β i) : hammingNorm (k • x) = hammingNorm x :=
  hammingNorm_comp (fun i (c : β i) => k • c) hk fun i => by simp_rw [smul_zero]
#align hamming_norm_smul hammingNorm_smul

end Zero

/-- Corresponds to `dist_eq_norm`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Hamming/Variant734c02abb274adc687802d359088f0e954dde3c404a6ca1c03e947568655bb19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Hamming/Variant734c02abb274adc687802d359088f0e954dde3c404a6ca1c03e947568655bb19.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `755742fae16b41e35914628c51ec6e5a02325f4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
