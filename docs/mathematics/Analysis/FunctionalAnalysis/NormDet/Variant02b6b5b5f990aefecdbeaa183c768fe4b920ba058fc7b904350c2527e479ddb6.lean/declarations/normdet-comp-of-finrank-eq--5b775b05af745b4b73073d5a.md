# normDet_comp_of_finrank_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d36eca716e7bc840f48ca04b30c9a3461d3c0b96",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 349,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dca87502-8ca1-1b78-d09c-77d8c1e17449",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2946ab70-a1d8-142f-a050-e7307f48005f",
  "kind": "theorem",
  "lexical_name": "normDet_comp_of_finrank_eq",
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
  "slug": "normdet-comp-of-finrank-eq--5b775b05af745b4b73073d5a",
  "source": {
    "blob": "d36eca716e7bc840f48ca04b30c9a3461d3c0b96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 349,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b775b05af745b4b73073d5a3477e30cd8565c5f19fa2e7d777da31e2ce728d5",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2946ab70-a1d8-142f-a050-e7307f48005f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normDet_comp_of_finrank_eq [FiniteDimensional 𝕜 V] (f : U →ₗ[𝕜] V) (g : V →ₗ[𝕜] W)
    (h : finrank 𝕜 U = finrank 𝕜 V) :
    (g ∘ₗ f).normDet = g.normDet * f.normDet := by
  by_cases htop : f.range = ⊤
  · rw [normDet_comp]
    congrm ?_ * _
    suffices (g.domRestrict f.range).normDet * (id : V →ₗ[𝕜] V).normDet = g.normDet by simpa
    have : f.range = id.range := by simp [htop]
    convert! (normDet_comp LinearMap.id g).symm
  · have hker : f.ker ≠ ⊥ := by
      simpa [ker_eq_bot_iff_range_eq_top_of_finrank_eq_finrank h] using htop
    have hker' : (g ∘ₗ f).ker ≠ ⊥ := by
      contrapose hker with hbot
      simpa [hbot] using ker_le_ker_comp f g
    simp [normDet_eq_zero_iff_ker_ne_bot.mpr hker, normDet_eq_zero_iff_ker_ne_bot.mpr hker']

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d36eca716e7bc840f48ca04b30c9a3461d3c0b96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
