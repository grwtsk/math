# image2_lowerBounds_upperBounds_subset_lowerBounds_image2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7decd4a8-4804-f35d-a841-88f24a6c646a",
  "kind": "theorem",
  "lexical_name": "image2_lowerBounds_upperBounds_subset_lowerBounds_image2",
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
  "slug": "image2-lowerbounds-upperbounds-subset-lowerbounds-image2--a1a851d09ef093b19b6f8c3b",
  "source": {
    "blob": "0cfee0812aeaf4064b64566f52f540f497021241",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1442,
    "line": 1437,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantdab3ec99951d639f55c64b0d67d441bf9f85b75f5fe4ca8368fe699a6c6a4f8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1a851d09ef093b19b6f8c3b6c24495d0e9daf8e2a7b2d7124a5ec616e75c392",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantdab3ec99951d639f55c64b0d67d441bf9f85b75f5fe4ca8368fe699a6c6a4f8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7decd4a8-4804-f35d-a841-88f24a6c646a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1437–1442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image2_lowerBounds_upperBounds_subset_lowerBounds_image2 :
    image2 f (lowerBounds s) (upperBounds t) ⊆ lowerBounds (image2 f s t) := by
  rintro _ ⟨a, b, ha, hb, rfl⟩
  exact mem_lowerBounds_image2_of_mem_lowerBounds_of_mem_upperBounds h₀ h₁ ha hb
#align image2_lower_bounds_upper_bounds_subset_lower_bounds_image2 image2_lowerBounds_upperBounds_subset_lowerBounds_image2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantdab3ec99951d639f55c64b0d67d441bf9f85b75f5fe4ca8368fe699a6c6a4f8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantdab3ec99951d639f55c64b0d67d441bf9f85b75f5fe4ca8368fe699a6c6a4f8e.lean#L1437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cfee0812aeaf4064b64566f52f540f497021241` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
