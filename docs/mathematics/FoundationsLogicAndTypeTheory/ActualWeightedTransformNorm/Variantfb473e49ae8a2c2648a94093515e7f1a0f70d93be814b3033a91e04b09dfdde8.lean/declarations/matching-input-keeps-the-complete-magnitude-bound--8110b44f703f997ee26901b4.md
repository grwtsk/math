# matching_input_keeps_the_complete_magnitude_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d0c97a2-c591-b4e9-8f4e-131c038b9ff6",
  "kind": "theorem",
  "lexical_name": "matching_input_keeps_the_complete_magnitude_bound",
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
  "slug": "matching-input-keeps-the-complete-magnitude-bound--8110b44f703f997ee26901b4",
  "source": {
    "blob": "88b53c79d3ee91a33ab1693471b161d9e3b68977",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ActualWeightedTransformNorm/Variantfb473e49ae8a2c2648a94093515e7f1a0f70d93be814b3033a91e04b09dfdde8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8110b44f703f997ee26901b41e9fa14af81b404cebc8d09a986c7318b9aa2505",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ActualWeightedTransformNorm/Variantfb473e49ae8a2c2648a94093515e7f1a0f70d93be814b3033a91e04b09dfdde8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d0c97a2-c591-b4e9-8f4e-131c038b9ff6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matching_input_keeps_the_complete_magnitude_bound (A a : ℝ) {x : ℝ}
    (hx : 0 < x) : |matchedInput A a x| ≤ x ^ a := by
  have hp := Real.rpow_pos_of_pos hx a
  rcases Real.sign_apply_eq (C A (Real.log x)) with h | h | h
  · simp [matchedInput, h, abs_of_pos hp]
  · simpa [matchedInput, h] using hp.le
  · simp [matchedInput, h, abs_of_pos hp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/ActualWeightedTransformNorm/Variantfb473e49ae8a2c2648a94093515e7f1a0f70d93be814b3033a91e04b09dfdde8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ActualWeightedTransformNorm/Variantfb473e49ae8a2c2648a94093515e7f1a0f70d93be814b3033a91e04b09dfdde8.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88b53c79d3ee91a33ab1693471b161d9e3b68977` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
