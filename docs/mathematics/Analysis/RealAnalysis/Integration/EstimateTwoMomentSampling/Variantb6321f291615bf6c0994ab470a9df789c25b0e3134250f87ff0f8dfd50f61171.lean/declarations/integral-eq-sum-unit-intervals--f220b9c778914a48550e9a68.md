# integral_eq_sum_unit_intervals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93f49c2e7ac4c1a69ca0412abde2f442aa6c5d2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d06f4b65-9413-a3a9-c34d-c68b13d25a3a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ecf1317-3181-bf1d-b19e-e59ff55a6fdd",
  "kind": "theorem",
  "lexical_name": "integral_eq_sum_unit_intervals",
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
  "slug": "integral-eq-sum-unit-intervals--f220b9c778914a48550e9a68",
  "source": {
    "blob": "93f49c2e7ac4c1a69ca0412abde2f442aa6c5d2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantb6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f220b9c778914a48550e9a683793ef6aa7c0cb61b185ea80bfd1824dfe0eca18",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantb6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ecf1317-3181-bf1d-b19e-e59ff55a6fdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_eq_sum_unit_intervals
    (g : ℝ → ℝ)
    (hg : Continuous g)
    (N : ℕ) :
    (∫ u in (1 : ℝ)..(N + 1 : ℝ), g u) =
      ∑ k ∈ Finset.Icc 1 N,
        ∫ u in (k : ℝ)..(k + 1 : ℝ), g u := by
  induction N with
  | zero =>
      norm_num
  | succ N ih =>
      by_cases hN : N = 0
      · subst N
        norm_num
      · have h1N : 1 ≤ N := Nat.one_le_iff_ne_zero.mpr hN
        have hsplit :=
          intervalIntegral.integral_add_adjacent_intervals
            (μ := volume)
            (a := (1 : ℝ))
            (b := (N + 1 : ℝ))
            (c := (N + 2 : ℝ))
            (hg.intervalIntegrable _ _)
            (hg.intervalIntegrable _ _)
        rw [ih] at hsplit
        rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]
        have hstep : (N : ℝ) + 1 + 1 = N + 2 := by ring
        simpa only [Nat.cast_add, Nat.cast_one, hstep] using hsplit.symm

/-- The finite left-endpoint rule differs from the integral by at most the
integral of |g'| over the same union of unit intervals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantb6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantb6321f291615bf6c0994ab470a9df789c25b0e3134250f87ff0f8dfd50f61171.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93f49c2e7ac4c1a69ca0412abde2f442aa6c5d2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
