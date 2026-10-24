# closedBall_mem_vitaliFamily_of_dist_le_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c0659594eeb745d08bdacc4a3f18e800ef4b93e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/5534995f4d35f4b920f207a33486e8f27401328413d9efd784079e560d44bfdc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:779154d4-a2ab-29fd-b160-702bc4fd82ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b77a7601-2331-726f-1dab-993b6b8cfc22",
  "kind": "theorem",
  "lexical_name": "closedBall_mem_vitaliFamily_of_dist_le_mul",
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
  "slug": "closedball-mem-vitalifamily-of-dist-le-mul--ebad054386b9c86f6a0ebef5",
  "source": {
    "blob": "4c0659594eeb745d08bdacc4a3f18e800ef4b93e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 68,
    "path": "GRWTSK/Topology/GeneralTopology/DensityTheorem/Variant5534995f4d35f4b920f207a33486e8f27401328413d9efd784079e560d44bfdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebad054386b9c86f6a0ebef58a232cf599580c655e1d5efec178376d3e1496a9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DensityTheorem/Variant5534995f4d35f4b920f207a33486e8f27401328413d9efd784079e560d44bfdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b77a7601-2331-726f-1dab-993b6b8cfc22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedBall_mem_vitaliFamily_of_dist_le_mul {K : ℝ} {x y : α} {r : ℝ} (h : dist x y ≤ K * r)
    (rpos : 0 < r) : closedBall y r ∈ (vitaliFamily μ K).setsAt x := by
  let R := scalingScaleOf μ (max (4 * K + 3) 3)
  simp only [vitaliFamily, VitaliFamily.enlarge, Vitali.vitaliFamily, mem_union, mem_setOf_eq,
    isClosed_closedBall, true_and, (nonempty_ball.2 rpos).mono ball_subset_interior_closedBall,
    measurableSet_closedBall]
  /- The measure is doubling on scales smaller than `R`. Therefore, we treat differently small
    and large balls. For large balls, this follows directly from the enlargement we used in the
    definition. -/
  by_cases H : closedBall y r ⊆ closedBall x (R / 4)
  swap; · exact Or.inr H
  left
  /- For small balls, there is the difficulty that `r` could be large but still the ball could be
    small, if the annulus `{y | ε ≤ dist y x ≤ R/4}` is empty. We split between the cases `r ≤ R`
    and `r > R`, and use the doubling for the former and rough estimates for the latter. -/
  rcases le_or_lt r R with (hr | hr)
  · refine ⟨(K + 1) * r, ?_⟩
    constructor
    · apply closedBall_subset_closedBall'
      rw [dist_comm]
      linarith
    · have I1 : closedBall x (3 * ((K + 1) * r)) ⊆ closedBall y ((4 * K + 3) * r) := by
        apply closedBall_subset_closedBall'
        linarith
      have I2 : closedBall y ((4 * K + 3) * r) ⊆ closedBall y (max (4 * K + 3) 3 * r) := by
        apply closedBall_subset_closedBall
        exact mul_le_mul_of_nonneg_right (le_max_left _ _) rpos.le
      apply (measure_mono (I1.trans I2)).trans
      exact measure_mul_le_scalingConstantOf_mul _
        ⟨zero_lt_three.trans_le (le_max_right _ _), le_rfl⟩ hr
  · refine ⟨R / 4, H, ?_⟩
    have : closedBall x (3 * (R / 4)) ⊆ closedBall y r := by
      apply closedBall_subset_closedBall'
      have A : y ∈ closedBall y r := mem_closedBall_self rpos.le
      have B := mem_closedBall'.1 (H A)
      linarith
    apply (measure_mono this).trans _
    refine le_mul_of_one_le_left (zero_le _) ?_
    exact ENNReal.one_le_coe_iff.2 (le_max_right _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DensityTheorem/Variant5534995f4d35f4b920f207a33486e8f27401328413d9efd784079e560d44bfdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DensityTheorem/Variant5534995f4d35f4b920f207a33486e8f27401328413d9efd784079e560d44bfdc.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c0659594eeb745d08bdacc4a3f18e800ef4b93e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
