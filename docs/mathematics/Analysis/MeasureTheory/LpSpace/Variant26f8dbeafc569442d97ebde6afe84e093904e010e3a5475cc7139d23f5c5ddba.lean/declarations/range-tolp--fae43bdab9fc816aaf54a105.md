# range_toLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "086920a13e481303d1474b03c12442c2af516c1c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1834,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/26f8dbeafc569442d97ebde6afe84e093904e010e3a5475cc7139d23f5c5ddba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76b98955-96bc-7eea-bd57-ea935ece4998",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85992935-e26d-6758-5322-e1000b03e859",
  "kind": "theorem",
  "lexical_name": "range_toLp",
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
  "slug": "range-tolp--fae43bdab9fc816aaf54a105",
  "source": {
    "blob": "086920a13e481303d1474b03c12442c2af516c1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1845,
    "line": 1834,
    "path": "GRWTSK/Analysis/MeasureTheory/LpSpace/Variant26f8dbeafc569442d97ebde6afe84e093904e010e3a5475cc7139d23f5c5ddba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fae43bdab9fc816aaf54a1054160395e566fdf2340f814fb22bcf10af8189358",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/LpSpace/Variant26f8dbeafc569442d97ebde6afe84e093904e010e3a5475cc7139d23f5c5ddba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85992935-e26d-6758-5322-e1000b03e859`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1834–1845.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_toLp [NormedField 𝕜] [NormedSpace 𝕜 E] :
    (LinearMap.range (toLp p μ 𝕜 : C(α, E) →L[𝕜] Lp E p μ)).toAddSubgroup =
      MeasureTheory.Lp.boundedContinuousFunction E p μ := by
  refine' SetLike.ext' _
  have := (linearIsometryBoundedOfCompact α E 𝕜).surjective
  convert Function.Surjective.range_comp this (BoundedContinuousFunction.toLp (E := E) p μ 𝕜)
  rw [← BoundedContinuousFunction.range_toLp p μ (𝕜 := 𝕜)]
  rfl
#align continuous_map.range_to_Lp ContinuousMap.range_toLp

variable {p}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/LpSpace/Variant26f8dbeafc569442d97ebde6afe84e093904e010e3a5475cc7139d23f5c5ddba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/LpSpace/Variant26f8dbeafc569442d97ebde6afe84e093904e010e3a5475cc7139d23f5c5ddba.lean#L1834).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `086920a13e481303d1474b03c12442c2af516c1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
