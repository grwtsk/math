# mangoldtInteraction_pointed_bochner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61d6a751-7f57-f704-859d-0f86bd528e82",
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
  "slug": "mangoldtinteraction-pointed-bochner--932b09463a2fe5ed46ae62be",
  "source": {
    "blob": "1cb2f396506778bf40a4631085f6df5b7249c0bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 204,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceV3Prebytes/Variantaf2d813f909335223e5acfd3d64b06fe2500fe95b1d8e2b9971249793c3c3e5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:932b09463a2fe5ed46ae62bef5e3501000f0a7f074f2e139a5cfee135f556020",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceV3Prebytes/Variantaf2d813f909335223e5acfd3d64b06fe2500fe95b1d8e2b9971249793c3c3e5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61d6a751-7f57-f704-859d-0f86bd528e82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–213.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceV3Prebytes/Variantaf2d813f909335223e5acfd3d64b06fe2500fe95b1d8e2b9971249793c3c3e5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceV3Prebytes/Variantaf2d813f909335223e5acfd3d64b06fe2500fe95b1d8e2b9971249793c3c3e5a.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cb2f396506778bf40a4631085f6df5b7249c0bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
