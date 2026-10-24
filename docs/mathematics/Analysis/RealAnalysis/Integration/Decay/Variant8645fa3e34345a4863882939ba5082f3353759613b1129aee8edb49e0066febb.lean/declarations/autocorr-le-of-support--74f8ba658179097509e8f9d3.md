# autocorr_le_of_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67c96e7c3575ca2a9acaf1f66e4172a190ed7a42",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d565642-d6ea-8ea6-43e1-74a6f9e10f3f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6dcf68c1-ad48-93ad-2e52-3babd15b5e32",
  "kind": "theorem",
  "lexical_name": "autocorr_le_of_support",
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
  "slug": "autocorr-le-of-support--74f8ba658179097509e8f9d3",
  "source": {
    "blob": "67c96e7c3575ca2a9acaf1f66e4172a190ed7a42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74f8ba658179097509e8f9d3b43b5b399c713302f0c4cd50d62d1b9f8ec3ce92",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dcf68c1-ad48-93ad-2e52-3babd15b5e32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem autocorr_le_of_support (v : ℝ → ℝ) {M : ℝ} (h0 : ∀ u, 0 ≤ v u) (h1 : ∀ u, v u ≤ 1)
    (hz : ∀ u, M ≤ |u| → v u = 0) (y : ℝ) :
    Params.autocorr v y ≤ max (2 * M - |y|) 0 := by
  unfold Params.autocorr
  set S := Icc (-M) M ∩ Icc (-M - y) (M - y) with hS
  have hSm : MeasurableSet S := measurableSet_Icc.inter measurableSet_Icc
  have hle : ∀ u, v u * v (u + y) ≤ S.indicator 1 u := by
    intro u
    by_cases hu : u ∈ S
    · rw [indicator_of_mem hu, Pi.one_apply]
      exact mul_le_one₀ (h1 u) (h0 _) (h1 _)
    · rw [indicator_of_notMem hu]
      simp only [hS, mem_inter_iff, mem_Icc, not_and_or, not_le] at hu
      rcases hu with (hu | hu) | (hu | hu)
      · rw [hz u (by linarith [neg_le_abs u]), zero_mul]
      · rw [hz u (by linarith [le_abs_self u]), zero_mul]
      · rw [hz (u + y) (by linarith [neg_le_abs (u + y)]), mul_zero]
      · rw [hz (u + y) (by linarith [le_abs_self (u + y)]), mul_zero]
  calc ∫ u, v u * v (u + y) ≤ ∫ u, S.indicator 1 u :=
        integral_mono_of_nonneg (ae_of_all _ fun u => mul_nonneg (h0 _) (h0 _))
          (integrable_indicator_Icc_inter M y) (ae_of_all _ hle)
    _ = (volume S).toReal := integral_indicator_one hSm
    _ = max (2 * M - |y|) 0 := volume_Icc_inter_shift M y

/-- Lower comparison: `0 ≤ v`, `v = 1` on `[−M, M]`, integrand integrable ⟹ `(2M − |y|)₊ ≤ (v⋆v)(y)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67c96e7c3575ca2a9acaf1f66e4172a190ed7a42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
