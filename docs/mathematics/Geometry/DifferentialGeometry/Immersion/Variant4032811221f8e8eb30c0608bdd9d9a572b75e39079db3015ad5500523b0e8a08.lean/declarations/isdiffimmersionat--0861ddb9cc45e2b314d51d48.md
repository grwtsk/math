# isDiffImmersionAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c7789456c476b7e65495bc8ecaecf076cf0d9d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 537,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee609a58-1f5d-2425-2ceb-74a9b5b624c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b9b9f8d-ecf0-ea0c-d595-600e0cd57694",
  "kind": "lemma",
  "lexical_name": "isDiffImmersionAt",
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
  "slug": "isdiffimmersionat--0861ddb9cc45e2b314d51d48",
  "source": {
    "blob": "3c7789456c476b7e65495bc8ecaecf076cf0d9d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 563,
    "line": 537,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0861ddb9cc45e2b314d51d487a979fddeec207cf7b1d1a73f64040a0eb0cfae6",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b9b9f8d-ecf0-ea0c-d595-600e0cd57694`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 537–563.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isDiffImmersionAt (h : IsImmersionAtOfComplement F I J n f x) (hn : n ≠ 0) :
    IsDiffImmersionAt I J f x := by
  have hn' : 1 ≤ n := ENat.one_le_iff_ne_zero_withTop.mpr hn
  suffices IsDiffImmersionAt I 𝓘(𝕜, E'') ((h.codChart.extend J) ∘ f) x by
    apply IsDiffImmersionAt.of_comp (h.contMDiffAt.mdifferentiableAt hn) ?_ this
    exact h.codChart.mdifferentiableAt_extend
      (IsManifold.maximalAtlas_subset_of_le hn' h.codChart_mem_maximalAtlas) h.mem_codChart_source
  -- The local representative of f in the nice charts at x, as a continuous linear map.
  let rhs : E →L[𝕜] E'' := h.equiv.toContinuousLinearMap.comp ((ContinuousLinearMap.id _ _).prod 0)
  have heq : EqOn ((h.codChart.extend J) ∘ f) (rhs ∘ (h.domChart.extend I)) h.domChart.source := by
    intro x' hx'
    trans ((h.codChart.extend J) ∘ f ∘ (h.domChart.extend I).symm ∘ (h.domChart.extend I)) x'
    · simp [h.domChart.left_inv hx']
    · exact h.writtenInCharts ((h.domChart.extend I).map_source' (by simpa))
  suffices IsDiffImmersionAt I 𝓘(𝕜, E'') (rhs ∘ (h.domChart.extend I)) x from
    this.congr
      (Filter.eventually_of_mem (h.domChart.open_source.mem_nhds h.mem_domChart_source) heq)
  apply IsDiffImmersionAt.comp (I' := 𝓘(𝕜, E))
  · apply h.equiv.isDiffImmersionAt.comp
    dsimp
    rw [isDiffImmersionAt_iff, mfderiv_eq_fderiv, ContinuousLinearMap.fderiv]
    exact ContinuousLinearMap.HasLeftInverse.inl
  · exact IsDiffImmersionAt.of_mfderiv_isInvertible <| isInvertible_mfderiv_extend
      (IsManifold.maximalAtlas_subset_of_le hn' h.domChart_mem_maximalAtlas)
      (by simp [h.mem_domChart_source])

/-- An immersion at `x` has injective differential. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean#L537).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c7789456c476b7e65495bc8ecaecf076cf0d9d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
