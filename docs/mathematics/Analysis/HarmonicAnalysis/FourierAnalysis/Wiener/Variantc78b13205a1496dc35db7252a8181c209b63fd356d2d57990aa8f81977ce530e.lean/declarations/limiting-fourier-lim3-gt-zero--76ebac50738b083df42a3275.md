# limiting_fourier_lim3_gt_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9370551bc7997162edb079ae02fa6dcc5d185f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2540,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c78b13205a1496dc35db7252a8181c209b63fd356d2d57990aa8f81977ce530e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8adba11-b037-978d-4ce6-36656cf3846e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44ced31c-c53b-7e61-dae3-4859f22eab21",
  "kind": "theorem",
  "lexical_name": "limiting_fourier_lim3_gt_zero",
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
  "slug": "limiting-fourier-lim3-gt-zero--76ebac50738b083df42a3275",
  "source": {
    "blob": "f9370551bc7997162edb079ae02fa6dcc5d185f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2569,
    "line": 2540,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variantc78b13205a1496dc35db7252a8181c209b63fd356d2d57990aa8f81977ce530e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76ebac50738b083df42a32759c7d3340fb57cca88a549494df5273330b9954eb",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variantc78b13205a1496dc35db7252a8181c209b63fd356d2d57990aa8f81977ce530e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44ced31c-c53b-7e61-dae3-4859f22eab21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2540–2569.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem limiting_fourier_lim3_gt_zero
    (hG : ContinuousOn G {s | 1 ≤ s.re}) (ψ : CS 2 ℂ) (hx : 0 < x) :
    Tendsto (fun σ' : ℝ ↦ ∫ t : ℝ, G (σ' + t * I) * ψ t * x ^ (t * I)) (𝓝[>] 1)
      (𝓝 (∫ t : ℝ, G (1 + t * I) * ψ t * x ^ (t * I))) := by
  by_cases hh : tsupport ψ = ∅
  · simp [tsupport_eq_empty_iff.mp hh]
  obtain ⟨a₀, ha₀⟩ := Set.nonempty_iff_ne_empty.mpr hh
  let S : Set ℂ := reProdIm (Icc 1 2) (tsupport ψ)
  have l1 : IsCompact S := Metric.isCompact_iff_isClosed_bounded.mpr
    ⟨isClosed_Icc.reProdIm (isClosed_tsupport ψ), (Metric.isBounded_Icc 1 2).reProdIm ψ.h2.isBounded⟩
  have l2 : S ⊆ {s : ℂ | 1 ≤ s.re} := fun z hz => (mem_reProdIm.mp hz).1.1
  obtain ⟨z, -, hmax⟩ := l1.exists_isMaxOn ⟨1 + a₀ * I, by simp [S, mem_reProdIm, ha₀]⟩ (hG.mono l2).norm
  have hxC : (x : ℂ) ≠ 0 := ofReal_ne_zero.mpr hx.ne'
  refine tendsto_integral_filter_of_dominated_convergence (bound := fun a ↦ ‖G z‖ * ‖ψ a‖)
    (eventually_of_mem (Icc_mem_nhdsGT_of_mem (by norm_num : (1 : ℝ) ∈ Set.Ico 1 2)) fun u hu ↦
      ((hG.comp_continuous (by fun_prop) (by simp [hu.1])).mul ψ.h1.continuous).mul
        (by simpa using Continuous.const_cpow (by fun_prop) (Or.inl hxC)) |>.aestronglyMeasurable)
    (eventually_of_mem (Icc_mem_nhdsGT_of_mem (by norm_num : (1 : ℝ) ∈ Set.Ico 1 2)) fun u hu ↦
      .of_forall fun v ↦ ?_)
    ((continuous_const.mul ψ.h1.continuous.norm).integrable_of_hasCompactSupport ψ.h2.norm.mul_left)
    (.of_forall fun t ↦ ?_)
  · by_cases h : v ∈ tsupport ψ
    · simp_rw [norm_mul, norm_x_cpow_it x v hx, mul_one]
      exact mul_le_mul_of_nonneg_right (isMaxOn_iff.mp hmax _ (by simp [S, mem_reProdIm, hu.1, hu.2, h])) (norm_nonneg _)
    · have : v ∉ Function.support ψ := fun a ↦ h (subset_tsupport ψ a)
      simp [Function.notMem_support.mp this]
  · exact ((hG (1 + t * I) (by simp)).tendsto.comp <| tendsto_nhdsWithin_iff.mpr
      ⟨((continuous_ofReal.tendsto _).add tendsto_const_nhds).mono_left nhdsWithin_le_nhds,
       eventually_nhdsWithin_of_forall fun _ hx' ↦ by simp [(Set.mem_Ioi.mp hx').le]⟩).mul_const _ |>.mul_const _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variantc78b13205a1496dc35db7252a8181c209b63fd356d2d57990aa8f81977ce530e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variantc78b13205a1496dc35db7252a8181c209b63fd356d2d57990aa8f81977ce530e.lean#L2540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9370551bc7997162edb079ae02fa6dcc5d185f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
