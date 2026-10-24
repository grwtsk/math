# closedBall_mem_vitaliFamily_of_dist_le_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38041655206d9b599fc5f68a159c6d38394c1e79",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/952dfd69c68731d8eb5bfa89db8b47578bfebeb798e340bb443ca3bc0e3a192b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06abcf61-b11a-ccf6-573a-4ee7334c9ad3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ff4bdb4-11f6-a4e0-c72c-0b17e456f0b9",
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
  "slug": "closedball-mem-vitalifamily-of-dist-le-mul--c4cfa25b7bd26e2f37f85e72",
  "source": {
    "blob": "38041655206d9b599fc5f68a159c6d38394c1e79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 71,
    "path": "GRWTSK/Topology/GeneralTopology/DensityTheorem/Variant952dfd69c68731d8eb5bfa89db8b47578bfebeb798e340bb443ca3bc0e3a192b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4cfa25b7bd26e2f37f85e72df5c6772c57558e92494e676f62a83b1b9beba57",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DensityTheorem/Variant952dfd69c68731d8eb5bfa89db8b47578bfebeb798e340bb443ca3bc0e3a192b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ff4bdb4-11f6-a4e0-c72c-0b17e456f0b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedBall_mem_vitaliFamily_of_dist_le_mul {K : ℝ} {x y : α} {r : ℝ} (h : dist x y ≤ K * r)
    (rpos : 0 < r) : closedBall y r ∈ (vitaliFamily μ K).setsAt x := by
  let R := scalingScaleOf μ (max (4 * K + 3) 3)
  simp only [vitaliFamily, VitaliFamily.enlarge, Vitali.vitaliFamily, mem_union, mem_ofPred_eq,
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
  rcases le_or_gt r R with (hr | hr)
  · refine ⟨(K + 1) * r, ?_⟩
    constructor
    · apply closedBall_subset_closedBall'
      rw [dist_comm]
      linarith
    · have I1 : closedBall x (3 * ((K + 1) * r)) ⊆ closedBall y ((4 * K + 3) * r) := by
        apply closedBall_subset_closedBall'
        linarith
      have I2 : closedBall y ((4 * K + 3) * r) ⊆ closedBall y (max (4 * K + 3) 3 * r) := by
        gcongr
        exact le_max_left ..
      apply (measure_mono (I1.trans I2)).trans
      exact measure_mul_le_scalingConstantOf_mul _
        ⟨zero_lt_three.trans_le (le_max_right _ _), le_rfl⟩ hr
  · refine ⟨_, H, ?_⟩
    grw [scalingConstantOf, ← le_max_right, ENNReal.coe_one, one_mul,
      closedBall_subset_closedBall' (y := y)]
    have A : y ∈ closedBall y r := mem_closedBall_self rpos.le
    have B := mem_closedBall'.1 (H A)
    linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DensityTheorem/Variant952dfd69c68731d8eb5bfa89db8b47578bfebeb798e340bb443ca3bc0e3a192b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DensityTheorem/Variant952dfd69c68731d8eb5bfa89db8b47578bfebeb798e340bb443ca3bc0e3a192b.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38041655206d9b599fc5f68a159c6d38394c1e79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
