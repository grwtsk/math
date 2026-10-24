# AnalyticAt.exists_eq_sum_add_pow_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5dd01cf403100219545c2c7c5c81cacfbf634460",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 402,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1ddcb725d6b05d11b582d7f62a9650131edf4a1324e65c81081aae20ca982246.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33e00905-d185-9638-7d09-5cb6cef5de5d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46940e3a-4e97-9bac-2fdc-36706b535a83",
  "kind": "lemma",
  "lexical_name": "AnalyticAt.exists_eq_sum_add_pow_mul",
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
  "slug": "analyticat-exists-eq-sum-add-pow-mul--6280ecbbfb99fa3d120d50e4",
  "source": {
    "blob": "5dd01cf403100219545c2c7c5c81cacfbf634460",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 402,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Order/Variant1ddcb725d6b05d11b582d7f62a9650131edf4a1324e65c81081aae20ca982246.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6280ecbbfb99fa3d120d50e49618f3fa79917fa14ca8636db7409a095d456df1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Order/Variant1ddcb725d6b05d11b582d7f62a9650131edf4a1324e65c81081aae20ca982246.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46940e3a-4e97-9bac-2fdc-36706b535a83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AnalyticAt.exists_eq_sum_add_pow_mul [CharZero 𝕜] [CompleteSpace E]
    {f : 𝕜 → E} (hf : AnalyticAt 𝕜 f 0) (n : ℕ) :
    ∃ F : 𝕜 → E, AnalyticAt 𝕜 F 0 ∧ ∀ z,
      f z = (∑ i ∈ .range n, (z ^ i / i.factorial) • iteratedDeriv i f 0) + z ^ n • F z := by
  classical
  obtain ⟨F, hFa, hF⟩ := hf.exists_eventuallyEq_sum_add_pow_mul n
  obtain ⟨U, hU0, hU'⟩ := by rwa [eventually_iff_exists_mem] at hF
  refine ⟨fun z ↦ if z ∈ U then F z else (z ^ n)⁻¹ • (f z
      - (∑ i ∈ .range n, (z ^ i / i.factorial) • iteratedDeriv i f 0)), ?_, fun z ↦ ?_⟩
  · exact hFa.congr (by filter_upwards [hU0] using by simp +contextual)
  · by_cases hz : z ∈ U
    · simpa [hz] using hU' z hz
    · simp only [ite_eq_right hz]
      rw [smul_inv_smul₀]
      · module
      · contrapose hz
        exact (pow_eq_zero_iff'.mp hz).1 ▸ mem_of_mem_nhds hU0

variable [CharZero 𝕜] [CompleteSpace E] {z₀ : 𝕜} {f : 𝕜 → E}
  (hf : AnalyticAt 𝕜 f z₀) (hzero : f z₀ = 0)

include hf hzero

/-- If an analytic function `f` vanishes at `z₀`, then the analytic order of its derivative
at `z₀` is at least `n` if and only if the analytic order of `f` at `z₀` is at least `n + 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Order/Variant1ddcb725d6b05d11b582d7f62a9650131edf4a1324e65c81081aae20ca982246.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Order/Variant1ddcb725d6b05d11b582d7f62a9650131edf4a1324e65c81081aae20ca982246.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dd01cf403100219545c2c7c5c81cacfbf634460` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
