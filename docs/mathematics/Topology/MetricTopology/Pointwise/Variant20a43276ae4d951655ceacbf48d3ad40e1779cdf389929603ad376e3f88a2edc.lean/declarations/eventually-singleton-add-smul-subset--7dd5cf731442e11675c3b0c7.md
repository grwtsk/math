# eventually_singleton_add_smul_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4dded1b56b521e54f1f90bcc6f550b2d4602112c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7fb0807-431c-b811-d3f2-ceceb29038c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f18bfbda-96db-e6c6-64b9-e5a6c5da3969",
  "kind": "theorem",
  "lexical_name": "eventually_singleton_add_smul_subset",
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
  "slug": "eventually-singleton-add-smul-subset--7dd5cf731442e11675c3b0c7",
  "source": {
    "blob": "4dded1b56b521e54f1f90bcc6f550b2d4602112c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 113,
    "path": "GRWTSK/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dd5cf731442e11675c3b0c73f10248949d8783bca352434b1dbcdd96384f768",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f18bfbda-96db-e6c6-64b9-e5a6c5da3969`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_singleton_add_smul_subset {x : E} {s : Set E} (hs : Bornology.IsBounded s)
    {u : Set E} (hu : u ∈ 𝓝 x) : ∀ᶠ r in 𝓝 (0 : 𝕜), {x} + r • s ⊆ u := by
  obtain ⟨ε, εpos, hε⟩ : ∃ ε : ℝ, 0 < ε ∧ closedBall x ε ⊆ u := nhds_basis_closedBall.mem_iff.1 hu
  obtain ⟨R, Rpos, hR⟩ : ∃ R : ℝ, 0 < R ∧ s ⊆ closedBall 0 R := hs.subset_closedBall_lt 0 0
  have : Metric.closedBall (0 : 𝕜) (ε / R) ∈ 𝓝 (0 : 𝕜) := closedBall_mem_nhds _ (div_pos εpos Rpos)
  filter_upwards [this] with r hr
  simp only [image_add_left, singleton_add]
  intro y hy
  obtain ⟨z, zs, hz⟩ : ∃ z : E, z ∈ s ∧ r • z = -x + y := by simpa [mem_smul_set] using hy
  have I : ‖r • z‖ ≤ ε :=
    calc
      ‖r • z‖ = ‖r‖ * ‖z‖ := norm_smul _ _
      _ ≤ ε / R * R :=
        (mul_le_mul (mem_closedBall_zero_iff.1 hr) (mem_closedBall_zero_iff.1 (hR zs))
          (norm_nonneg _) (div_pos εpos Rpos).le)
      _ = ε := by field_simp
  have : y = x + r • z := by simp only [hz, add_neg_cancel_left]
  apply hε
  simpa only [this, dist_eq_norm, add_sub_cancel_left, mem_closedBall] using I

variable [NormedSpace ℝ E] {x y z : E} {δ ε : ℝ}

/-- In a real normed space, the image of the unit ball under scalar multiplication by a positive
constant `r` is the ball of radius `r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Pointwise/Variant20a43276ae4d951655ceacbf48d3ad40e1779cdf389929603ad376e3f88a2edc.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dded1b56b521e54f1f90bcc6f550b2d4602112c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
