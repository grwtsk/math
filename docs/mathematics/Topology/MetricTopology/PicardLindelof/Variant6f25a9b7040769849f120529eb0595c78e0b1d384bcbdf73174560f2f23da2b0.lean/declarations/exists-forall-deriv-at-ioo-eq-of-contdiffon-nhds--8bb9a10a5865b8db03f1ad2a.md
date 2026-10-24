# exists_forall_deriv_at_Ioo_eq_of_contDiffOn_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "57187c188cb8d0269da55fb0ac05a6e8e581dcb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 437,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62452763-5568-9faf-251b-f4b0d6b2c03c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:726665d6-4811-56ce-bf0f-ae15a072c421",
  "kind": "theorem",
  "lexical_name": "exists_forall_deriv_at_Ioo_eq_of_contDiffOn_nhds",
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
  "slug": "exists-forall-deriv-at-ioo-eq-of-contdiffon-nhds--8bb9a10a5865b8db03f1ad2a",
  "source": {
    "blob": "57187c188cb8d0269da55fb0ac05a6e8e581dcb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 437,
    "path": "GRWTSK/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bb9a10a5865b8db03f1ad2a0c07c38d0a7bf836e77dbd81414d58d385063837",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:726665d6-4811-56ce-bf0f-ae15a072c421`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_forall_deriv_at_Ioo_eq_of_contDiffOn_nhds {s : Set E} (hv : ContDiffOn ℝ 1 v s)
    (hs : s ∈ 𝓝 x₀) :
    ∃ ε > (0 : ℝ),
      ∃ f : ℝ → E, f t₀ = x₀ ∧ ∀ t ∈ Ioo (t₀ - ε) (t₀ + ε), f t ∈ s ∧ HasDerivAt f (v (f t)) t := by
  obtain ⟨ε, hε, L, R, C, hpl⟩ := exists_isPicardLindelof_const_of_contDiffOn_nhds t₀ x₀ hv hs
  obtain ⟨f, hf1, hf2⟩ := hpl.exists_forall_hasDerivWithinAt_Icc_eq x₀
  have hf2' : ∀ t ∈ Ioo (t₀ - ε) (t₀ + ε), HasDerivAt f (v (f t)) t := fun t ht =>
    (hf2 t (Ioo_subset_Icc_self ht)).hasDerivAt (Icc_mem_nhds ht.1 ht.2)
  have h : f ⁻¹' s ∈ 𝓝 t₀ := by
    have := hf2' t₀ (mem_Ioo.mpr ⟨sub_lt_self _ hε, lt_add_of_pos_right _ hε⟩)
    apply ContinuousAt.preimage_mem_nhds this.continuousAt
    rw [hf1]
    exact hs
  rw [Metric.mem_nhds_iff] at h
  obtain ⟨r, hr1, hr2⟩ := h
  refine ⟨min r ε, lt_min hr1 hε, f, hf1, fun t ht => ⟨?_,
    hf2' t (mem_of_mem_of_subset ht (Ioo_subset_Ioo (sub_le_sub_left (min_le_right _ _) _)
      (add_le_add_left (min_le_right _ _) _)))⟩⟩
  rw [← Set.mem_preimage]
  apply Set.mem_of_mem_of_subset _ hr2
  apply Set.mem_of_mem_of_subset ht
  rw [← Real.ball_eq_Ioo]
  exact Metric.ball_subset_ball (min_le_left _ _)
#align exists_forall_deriv_at_Ioo_eq_of_cont_diff_on_nhds exists_forall_deriv_at_Ioo_eq_of_contDiffOn_nhds

/-- A time-independent, continuously differentiable ODE admits a solution in some open interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57187c188cb8d0269da55fb0ac05a6e8e581dcb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
