# abs_le_eVariationOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fb4a317-0acb-33a1-e033-bbe3c4ed0629",
  "kind": "theorem",
  "lexical_name": "abs_le_eVariationOn",
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
  "slug": "abs-le-evariationon--d03d2e0de46b6187521140a5",
  "source": {
    "blob": "3b6fcc1488eb89f563380a91eb64f578780d3815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/VariationOnFromTo/Variant819bbde2e18d443fab77e96073ef92446a3d459d9fe3a1630044a00699f87a59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d03d2e0de46b6187521140a58ff6cd9a557e290047dbd4e0f5bc928274e3513b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/VariationOnFromTo/Variant819bbde2e18d443fab77e96073ef92446a3d459d9fe3a1630044a00699f87a59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fb4a317-0acb-33a1-e033-bbe3c4ed0629`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_le_eVariationOn (hf : BoundedVariationOn f s) {a b : α} :
    |variationOnFromTo f s a b| ≤ (eVariationOn f s).toReal := by
  by_cases hab : a ≤ b
  · simp only [variationOnFromTo, hab, ↓reduceIte, ENNReal.abs_toReal]
    exact ENNReal.toReal_mono hf (eVariationOn.mono _ inter_subset_left)
  · simp only [variationOnFromTo, hab, ↓reduceIte, abs_neg, ENNReal.abs_toReal]
    exact ENNReal.toReal_mono hf (eVariationOn.mono _ inter_subset_left)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/VariationOnFromTo/Variant819bbde2e18d443fab77e96073ef92446a3d459d9fe3a1630044a00699f87a59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/VariationOnFromTo/Variant819bbde2e18d443fab77e96073ef92446a3d459d9fe3a1630044a00699f87a59.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b6fcc1488eb89f563380a91eb64f578780d3815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
