# mangoldtInteraction_pointed_bochner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3283ad1159b5b804affd47ddadd17323efbacd95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 196,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/efaa0134e9cd9d4209e4e67c54db8e154d2e59057f584bd97d3da1910a1dc6fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0ea3e5f-f20f-e260-e5ee-69a4a2e7e517",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72fdb042-25c6-605c-7f7d-db799be5dca2",
  "kind": "theorem",
  "lexical_name": "mangoldtInteraction_pointed_bochner",
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
  "slug": "mangoldtinteraction-pointed-bochner--1325cb191673db1e8a2b4e20",
  "source": {
    "blob": "3283ad1159b5b804affd47ddadd17323efbacd95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 196,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceV3Prebytes/Variantefaa0134e9cd9d4209e4e67c54db8e154d2e59057f584bd97d3da1910a1dc6fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1325cb191673db1e8a2b4e2012f18da371b3d969fde143a553454361ae33b109",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceV3Prebytes/Variantefaa0134e9cd9d4209e4e67c54db8e154d2e59057f584bd97d3da1910a1dc6fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72fdb042-25c6-605c-7f7d-db799be5dca2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtInteraction_pointed_bochner (A : ℝ) (f : ComplexL2)
    (hf : Integrable (f : ℝ → ℂ)) :
    (⟪f, mangoldtInteraction A f⟫_ℂ).re =
      ∫ ξ : ℝ, mangoldtFourierSymbol A ξ * Complex.normSq (𝓕 (f : ℝ → ℂ) ξ) := by
  rw [mangoldtInteraction_pointed_parseval]
  apply integral_congr_ae
  filter_upwards [SourceL2FourierCompatibility.fourier_coe_ae f hf] with ξ hξ
  rw [hξ]

/-- The actual original source representative is integrable at every positive scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceV3Prebytes/Variantefaa0134e9cd9d4209e4e67c54db8e154d2e59057f584bd97d3da1910a1dc6fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceV3Prebytes/Variantefaa0134e9cd9d4209e4e67c54db8e154d2e59057f584bd97d3da1910a1dc6fe.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3283ad1159b5b804affd47ddadd17323efbacd95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
