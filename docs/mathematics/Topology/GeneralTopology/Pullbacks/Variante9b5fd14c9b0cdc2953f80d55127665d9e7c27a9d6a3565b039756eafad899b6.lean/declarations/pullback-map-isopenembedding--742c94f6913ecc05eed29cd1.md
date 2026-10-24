# pullback_map_isOpenEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6046e580c381b8b72dfed57006c09fb974a994b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 267,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76cd28a5-ed5a-81dd-7a35-4db3607c5a06",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64c4c2c9-bf8f-c1a7-b6d3-f3d60a117913",
  "kind": "theorem",
  "lexical_name": "pullback_map_isOpenEmbedding",
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
  "slug": "pullback-map-isopenembedding--742c94f6913ecc05eed29cd1",
  "source": {
    "blob": "6046e580c381b8b72dfed57006c09fb974a994b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 267,
    "path": "GRWTSK/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:742c94f6913ecc05eed29cd1d881f050aa2602e7110c37ff7d048876c0f75a92",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64c4c2c9-bf8f-c1a7-b6d3-f3d60a117913`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullback_map_isOpenEmbedding {W X Y Z S T : TopCat.{u}} (f₁ : W ⟶ S)
    (f₂ : X ⟶ S) (g₁ : Y ⟶ T) (g₂ : Z ⟶ T) {i₁ : W ⟶ Y} {i₂ : X ⟶ Z} (H₁ : IsOpenEmbedding i₁)
    (H₂ : IsOpenEmbedding i₂) (i₃ : S ⟶ T) [H₃ : Mono i₃] (eq₁ : f₁ ≫ i₃ = i₁ ≫ g₁)
    (eq₂ : f₂ ≫ i₃ = i₂ ≫ g₂) : IsOpenEmbedding (pullback.map f₁ f₂ g₁ g₂ i₁ i₂ i₃ eq₁ eq₂) := by
  constructor
  · apply
      pullback_map_isEmbedding f₁ f₂ g₁ g₂ H₁.isEmbedding H₂.isEmbedding i₃ eq₁ eq₂
  · rw [range_pullback_map]
    apply IsOpen.inter <;> apply Continuous.isOpen_preimage
    · apply ContinuousMap.continuous_toFun
    · exact H₁.isOpen_range
    · apply ContinuousMap.continuous_toFun
    · exact H₂.isOpen_range


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pullbacks/Variante9b5fd14c9b0cdc2953f80d55127665d9e7c27a9d6a3565b039756eafad899b6.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6046e580c381b8b72dfed57006c09fb974a994b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
