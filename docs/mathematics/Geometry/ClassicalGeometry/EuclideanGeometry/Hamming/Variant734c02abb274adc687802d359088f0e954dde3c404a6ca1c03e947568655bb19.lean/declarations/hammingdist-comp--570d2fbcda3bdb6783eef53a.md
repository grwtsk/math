# hammingDist_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:474a1fcc-52b7-476e-b8ff-264d56d8e0bb",
  "kind": "theorem",
  "lexical_name": "hammingDist_comp",
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
  "slug": "hammingdist-comp--570d2fbcda3bdb6783eef53a",
  "source": {
    "blob": "755742fae16b41e35914628c51ec6e5a02325f4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 144,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Hamming/Variant734c02abb274adc687802d359088f0e954dde3c404a6ca1c03e947568655bb19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:570d2fbcda3bdb6783eef53afbdc6da4ae23f5fe6eb35d4384e6195d11030677",
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

Occurrence: `result:474a1fcc-52b7-476e-b8ff-264d56d8e0bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hammingDist_comp (f : ∀ i, γ i → β i) {x y : ∀ i, γ i} (hf : ∀ i, Injective (f i)) :
    (hammingDist (fun i => f i (x i)) fun i => f i (y i)) = hammingDist x y :=
  le_antisymm (hammingDist_comp_le_hammingDist _) <|
    card_mono (monotone_filter_right _ fun i H1 H2 => H1 <| hf i H2)
#align hamming_dist_comp hammingDist_comp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Hamming/Variant734c02abb274adc687802d359088f0e954dde3c404a6ca1c03e947568655bb19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Hamming/Variant734c02abb274adc687802d359088f0e954dde3c404a6ca1c03e947568655bb19.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `755742fae16b41e35914628c51ec6e5a02325f4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
