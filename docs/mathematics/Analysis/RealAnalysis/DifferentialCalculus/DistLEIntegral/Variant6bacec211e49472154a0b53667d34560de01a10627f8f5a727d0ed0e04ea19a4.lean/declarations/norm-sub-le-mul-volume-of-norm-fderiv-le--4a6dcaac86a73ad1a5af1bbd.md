# norm_sub_le_mul_volume_of_norm_fderiv_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6c00a2bf7286cdf0fd7c681fa741f00670eb766",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6bacec211e49472154a0b53667d34560de01a10627f8f5a727d0ed0e04ea19a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab06e393-97d7-2fe7-4e5b-f85aa27e02fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb620edb-04ee-562d-6c29-f130b2f47e10",
  "kind": "lemma",
  "lexical_name": "norm_sub_le_mul_volume_of_norm_fderiv_le",
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
  "slug": "norm-sub-le-mul-volume-of-norm-fderiv-le--4a6dcaac86a73ad1a5af1bbd",
  "source": {
    "blob": "f6c00a2bf7286cdf0fd7c681fa741f00670eb766",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 151,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variant6bacec211e49472154a0b53667d34560de01a10627f8f5a727d0ed0e04ea19a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a6dcaac86a73ad1a5af1bbd02dffeafb459ed68a5d680c82e1470cf38d9cc85",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variant6bacec211e49472154a0b53667d34560de01a10627f8f5a727d0ed0e04ea19a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb620edb-04ee-562d-6c29-f130b2f47e10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_sub_le_mul_volume_of_norm_fderiv_le (hs : IsOpen s) (hf : DiffContOnCl ℝ f s)
    (hab : openSegment ℝ a b ⊆ s) (hC : ∀ x ∈ s, ‖fderiv ℝ f x‖ ≤ C) :
    ‖f b - f a‖ ≤
      C * ‖b - a‖ * volume.real {t ∈ Ioo (0 : ℝ) 1 | fderiv ℝ f (lineMap a b t) ≠ 0} := by
  have hmem_s : ∀ t ∈ Ioo (0 : ℝ) 1, lineMap a b t ∈ s := fun t ht ↦
    hab <| lineMap_mem_openSegment _ a b ht
  have hC₀ : 0 ≤ C := (norm_nonneg _).trans <| hC _ <| hmem_s (1 / 2) (by norm_num)
  have hfc : ContinuousOn f (segment ℝ a b) :=
    hf.continuousOn.mono <| segment_subset_closure_openSegment.trans <| closure_mono hab
  have hfd : ∀ t ∈ Ioo (0 : ℝ) 1, LineDifferentiableAt ℝ f (lineMap a b t) (b - a) := fun t ht ↦
    (hf.differentiableAt hs <| hmem_s t ht).lineDifferentiableAt
  have hfC : ∀ t ∈ Ioo (0 : ℝ) 1, ‖lineDeriv ℝ f (lineMap a b t) (b - a)‖ ≤ C * ‖b - a‖ := by
    intro t ht
    rw [DifferentiableAt.lineDeriv_eq_fderiv]
    · exact ContinuousLinearMap.le_of_opNorm_le _ (hC _ <| hmem_s t ht) _
    · exact hf.differentiableAt hs <| hmem_s t ht
  refine norm_sub_le_mul_volume_of_norm_lineDeriv_le hfc hfd (.of_forall hfC) |>.trans ?_
  gcongr
  · refine ne_top_of_le_ne_top ?_ (measure_mono inter_subset_left)
    simp
  · simp +contextual [(hf.differentiableAt hs <| hmem_s _ ‹_›).lineDeriv_eq_fderiv]

/-- Let `f : E → F` be a function differentiable in a neighborhood of `a`.
If $Df(x) = O(‖x - a‖ ^ r)$ as `x → a`, where `r ≥ 0`,
then $f(x) - f(a) = O(‖x - a‖ ^ {r + 1})$ as `x → a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variant6bacec211e49472154a0b53667d34560de01a10627f8f5a727d0ed0e04ea19a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variant6bacec211e49472154a0b53667d34560de01a10627f8f5a727d0ed0e04ea19a4.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6c00a2bf7286cdf0fd7c681fa741f00670eb766` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
