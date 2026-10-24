# DifferentiableOn.hausdorffMeasure_image_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0debe7389202882364767b89aecfa1f8a72fad9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 549,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/2831b1fc40fcc93cc35bfa56732d954b914e0a2db27331fcbc0b0533259c2967.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c83ff97a-26bd-3da7-36c2-9b6ca64337eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92619441-60cc-6cef-b4e5-a795a03075a6",
  "kind": "theorem",
  "lexical_name": "DifferentiableOn.hausdorffMeasure_image_eq_zero",
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
  "slug": "differentiableon-hausdorffmeasure-image-eq-zero--6a16f030cc399e7873196739",
  "source": {
    "blob": "b0debe7389202882364767b89aecfa1f8a72fad9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 578,
    "line": 549,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant2831b1fc40fcc93cc35bfa56732d954b914e0a2db27331fcbc0b0533259c2967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a16f030cc399e787319673944468e89faee7ecead08da97e9ea3bec0d4abe5e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant2831b1fc40fcc93cc35bfa56732d954b914e0a2db27331fcbc0b0533259c2967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92619441-60cc-6cef-b4e5-a795a03075a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 549–578.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DifferentiableOn.hausdorffMeasure_image_eq_zero [MeasurableSpace E] [BorelSpace E]
    [MeasurableSpace F] [BorelSpace F] (hf : DifferentiableOn 𝕜 f t) {d : ℝ} (hd : 0 ≤ d)
    (ht : μH[d] t = 0) : μH[d] (f '' t) = 0 := by
  obtain ⟨c, hcc, htc⟩ := isSeparable_of_hausdorffMeasure_ne_top (ht.trans_ne ENNReal.zero_ne_top)
  let P (n : ℕ) (y : E) : Set E :=
    {x ∈ t | ∀ z ∈ t, dist z x ≤ (n + 1 : ℝ)⁻¹ → dist (f z) (f x) ≤ n * dist z x} ∩
      Metric.ball y ((n + 1 : ℝ)⁻¹ / 2)
  have hcover : t ⊆ ⋃ n, ⋃ y ∈ c, P n y := by
    intro x hx
    obtain ⟨C, hC⟩ := (hf x hx).isBigO_sub.bound
    simp only [← dist_eq_norm, Metric.nhdsWithin_basis_ball.eventually_iff] at hC
    obtain ⟨δ, hδ₀, hδ⟩ := hC
    obtain ⟨n, hn⟩ := exists_nat_gt (max C δ⁻¹)
    have hnδ : (n + 1 : ℝ)⁻¹ < δ := by rw [inv_lt_comm₀ (by positivity) hδ₀]; grind
    obtain ⟨y, hyc, hy⟩ := Metric.mem_closure_iff.1 (htc hx) _
      (by positivity : (0 : ℝ) < (n + 1 : ℝ)⁻¹ / 2)
    refine mem_iUnion_of_mem n (mem_biUnion hyc ⟨⟨hx, fun z hz hzx ↦ ?_⟩, Metric.mem_ball.2 hy⟩)
    calc
      dist (f z) (f x) ≤ C * dist z x := hδ ⟨Metric.mem_ball.2 (hzx.trans_lt hnδ), hz⟩
      _ ≤ n * dist z x := by grw [((le_max_left _ _).trans_lt hn).le]
  have hlip (n : ℕ) (y : E) : LipschitzOnWith n f (P n y) :=
    .of_dist_le_mul fun z ⟨⟨hzt, _⟩, hzb⟩ w ⟨⟨_, hwP⟩, hwb⟩ ↦ hwP z hzt <| by
      linarith [dist_triangle_right z w y, Metric.mem_ball.1 hzb, Metric.mem_ball.1 hwb]
  refine measure_mono_null (image_mono hcover) ?_
  simp only [image_iUnion, measure_iUnion_null_iff, measure_biUnion_null_iff hcc]
  intro n y _
  have hP : μH[d] (P n y) = 0 := measure_mono_null (fun x hx ↦ hx.1.1) ht
  simpa [hP] using (hlip n y).hausdorffMeasure_image_le hd

/-- If `f` is differentiable on a set `t`, then `dimH (f '' t) ≤ dimH t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant2831b1fc40fcc93cc35bfa56732d954b914e0a2db27331fcbc0b0533259c2967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant2831b1fc40fcc93cc35bfa56732d954b914e0a2db27331fcbc0b0533259c2967.lean#L549).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0debe7389202882364767b89aecfa1f8a72fad9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
