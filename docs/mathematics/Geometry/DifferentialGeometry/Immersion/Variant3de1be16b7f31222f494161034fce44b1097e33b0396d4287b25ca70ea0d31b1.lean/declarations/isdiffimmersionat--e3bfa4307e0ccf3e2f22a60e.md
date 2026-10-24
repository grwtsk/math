# isDiffImmersionAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8045ee0d-562e-fb3d-dd58-e313b757bba6",
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
  "slug": "isdiffimmersionat--e3bfa4307e0ccf3e2f22a60e",
  "source": {
    "blob": "23c6443c76265e8edb72ffe0f16497aae96eaf1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 545,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Immersion/Variant3de1be16b7f31222f494161034fce44b1097e33b0396d4287b25ca70ea0d31b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3bfa4307e0ccf3e2f22a60ebfbdd6f2907afed154eefcc525d89f78c9097773",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Immersion/Variant3de1be16b7f31222f494161034fce44b1097e33b0396d4287b25ca70ea0d31b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8045ee0d-562e-fb3d-dd58-e313b757bba6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–571.

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

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Immersion/Variant3de1be16b7f31222f494161034fce44b1097e33b0396d4287b25ca70ea0d31b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Immersion/Variant3de1be16b7f31222f494161034fce44b1097e33b0396d4287b25ca70ea0d31b1.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23c6443c76265e8edb72ffe0f16497aae96eaf1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
