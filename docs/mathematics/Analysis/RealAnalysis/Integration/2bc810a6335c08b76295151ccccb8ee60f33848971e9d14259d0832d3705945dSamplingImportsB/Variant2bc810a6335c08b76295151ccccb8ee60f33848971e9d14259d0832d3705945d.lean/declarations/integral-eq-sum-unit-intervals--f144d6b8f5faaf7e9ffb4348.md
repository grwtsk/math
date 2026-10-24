# integral_eq_sum_unit_intervals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ebc993228cfd9787e16bfd1655f59a818188d22",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f2e2f44-85ae-0a15-8b2f-9aa01af2fe4e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc0d2f63-b551-594b-15e7-477cc6d376d1",
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
  "slug": "integral-eq-sum-unit-intervals--f144d6b8f5faaf7e9ffb4348",
  "source": {
    "blob": "9ebc993228cfd9787e16bfd1655f59a818188d22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f144d6b8f5faaf7e9ffb43482f39f516dd897cc1e3796cd9c69f214e27bbbd3b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc0d2f63-b551-594b-15e7-477cc6d376d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–131.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945d.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ebc993228cfd9787e16bfd1655f59a818188d22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
