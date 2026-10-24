# exists_mem_interior_convexHull_affineBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50965681-6eec-d24b-90a1-0c7710ec7ca5",
  "kind": "lemma",
  "lexical_name": "exists_mem_interior_convexHull_affineBasis",
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
  "slug": "exists-mem-interior-convexhull-affinebasis--37357c4d37ea94263ed85bdd",
  "source": {
    "blob": "0dc4aee3d64c296674e3faca1684655599fa2fb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 57,
    "path": "GRWTSK/Topology/MetricTopology/Convex/Variant7867bb1e5fa66309d5e01c18c35e8961464b57cea1152bc41d91b29005f1ae98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37357c4d37ea94263ed85bdd44c006315ad9ba37fdb699a887224c2d9da806df",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Convex/Variant7867bb1e5fa66309d5e01c18c35e8961464b57cea1152bc41d91b29005f1ae98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50965681-6eec-d24b-90a1-0c7710ec7ca5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_mem_interior_convexHull_affineBasis (hs : s ∈ 𝓝 x) :
    ∃ b : AffineBasis (Fin (finrank ℝ E + 1)) ℝ E,
      x ∈ interior (convexHull ℝ (range b)) ∧ convexHull ℝ (range b) ⊆ s := by
  -- By translating, WLOG `x` is the origin.
  wlog hx : x = 0
  · obtain ⟨b, hb⟩ := this (s := -x +ᵥ s) (by simpa using vadd_mem_nhds_vadd (-x) hs) rfl
    use x +ᵥ b
    simpa [subset_vadd_set_iff, mem_vadd_set_iff_neg_vadd_mem, convexHull_vadd, interior_vadd,
      Pi.vadd_def, -vadd_eq_add, vadd_eq_add (a := -x), ← Set.vadd_set_range] using hb
  subst hx
  -- The strategy is now to find an arbitrary maximal spanning simplex (aka an affine basis)...
  obtain ⟨b⟩ := exists_affineBasis_of_finiteDimensional
    (ι := Fin (finrank ℝ E + 1)) (k := ℝ) (P := E) (by simp)
  -- ... translate it to contain the origin...
  set c : AffineBasis (Fin (finrank ℝ E + 1)) ℝ E := -Finset.univ.centroid ℝ b +ᵥ b
  have hc₀ : 0 ∈ interior (convexHull ℝ (range c) : Set E) := by
    simpa [c, convexHull_vadd, interior_vadd, range_add, Pi.vadd_def, mem_vadd_set_iff_neg_vadd_mem]
      using b.centroid_mem_interior_convexHull
  set cnorm := Finset.univ.sup' Finset.univ_nonempty (fun i ↦ ‖c i‖)
  have hcnorm : range c ⊆ closedBall 0 (cnorm + 1) := by
    simpa only [cnorm, subset_def, Finset.mem_coe, mem_closedBall, dist_zero_right,
      ← sub_le_iff_le_add, Finset.le_sup'_iff, forall_mem_range] using fun i ↦ ⟨i, by simp⟩
  -- ... and finally scale it to fit inside the neighborhood `s`.
  obtain ⟨ε, hε, hεs⟩ := Metric.mem_nhds_iff.1 hs
  set ε' : ℝ := ε / 2 / (cnorm + 1)
  have hc' : 0 < cnorm + 1 := by
    have : 0 ≤ cnorm := Finset.le_sup'_of_le _ (Finset.mem_univ 0) (norm_nonneg _)
    positivity
  have hε' : 0 < ε' := by positivity
  set d : AffineBasis (Fin (finrank ℝ E + 1)) ℝ E := Units.mk0 ε' hε'.ne' • c
  have hε₀ : 0 < ε / 2 := by positivity
  have hdnorm : (range d : Set E) ⊆ closedBall 0 (ε / 2) := by
    simp [d, abs_of_nonneg hε'.le, range_subset_iff, norm_smul]
    simpa [ε', hε₀.ne', range_subset_iff, ← mul_div_right_comm (ε / 2), div_le_iff₀ hc', hε₀]
      using hcnorm
  refine ⟨d, ?_, ?_⟩
  · simpa [d, Pi.smul_def, range_smul, interior_smul₀, convexHull_smul, zero_mem_smul_set_iff,
      hε'.ne']
  · calc
      convexHull ℝ (range d) ⊆ closedBall 0 (ε / 2) := convexHull_min hdnorm (convex_closedBall ..)
      _ ⊆ ball 0 ε := closedBall_subset_ball (by linarith)
      _ ⊆ s := hεs

/-- We can intercalate a convex polytope between a compact convex set and one of its neighborhoods.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Convex/Variant7867bb1e5fa66309d5e01c18c35e8961464b57cea1152bc41d91b29005f1ae98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Convex/Variant7867bb1e5fa66309d5e01c18c35e8961464b57cea1152bc41d91b29005f1ae98.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dc4aee3d64c296674e3faca1684655599fa2fb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
