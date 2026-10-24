# diagSum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c60e8d08effd98dcb500b7a5c4ae72c83888fac1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa09620d-c84a-f3cf-9a12-f2dc2538ef02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ccbf9ad2-ec0b-7db5-6c69-d6c2c706fdf5",
  "kind": "theorem",
  "lexical_name": "diagSum_le",
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
  "slug": "diagsum-le--52eeb8bdaa23fbe19a8b3e0d",
  "source": {
    "blob": "c60e8d08effd98dcb500b7a5c4ae72c83888fac1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 231,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52eeb8bdaa23fbe19a8b3e0dbaeec3e5c00ede60bb8700e7a4c5acedf6538561",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccbf9ad2-ec0b-7db5-6c69-d6c2c706fdf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagSum_le {Λs : ℂ} {u : ℝ} (hu : 0 ≤ u) (hxu : ‖Λs‖⁻¹ * u ≤ 4)
    (hbig : 32 * Real.exp 1 * KM ≤ ‖Λs‖) :
    ∑ N ∈ Ioc 0 ⌊Real.exp u⌋₊, ‖xiCoeff Λs N‖ ^ 2 / N ≤ CS * (1 + u) ^ 2 := by
  have hΛpos : 0 < ‖Λs‖ := lt_of_lt_of_le (mul_pos (by positivity) KM_pos) hbig
  have hx : 0 ≤ ‖Λs‖⁻¹ := by positivity
  have hxK : 32 * Real.exp 1 * KM * ‖Λs‖⁻¹ ≤ 1 := by
    rw [← div_eq_mul_inv, div_le_one hΛpos]; exact hbig
  have hF := sum_Fmaj_sq_div_le hx hu hxu hxK
  have hΛ2 := sum_vonMangoldt_sq_div_le hu
  calc ∑ N ∈ Ioc 0 ⌊Real.exp u⌋₊, ‖xiCoeff Λs N‖ ^ 2 / N
      ≤ ∑ N ∈ Ioc 0 ⌊Real.exp u⌋₊, (2 * (Λ N ^ 2 / N) + 2 * u ^ 2 * (Fmaj ‖Λs‖⁻¹ N ^ 2 / N)) := by
        refine sum_le_sum fun N hN => ?_
        have hlogN : Real.log N ≤ u := log_le_of_mem_Ioc_floor_exp hN
        have hlog0 : 0 ≤ Real.log N := Real.log_natCast_nonneg N
        have hN0 : (0:ℝ) ≤ (N:ℝ)⁻¹ := by positivity
        have h := norm_xiCoeff_sq_le Λs N
        have hlog2 : Real.log N ^ 2 ≤ u ^ 2 := pow_le_pow_left₀ hlog0 hlogN 2
        have hF0 : 0 ≤ Fmaj ‖Λs‖⁻¹ N ^ 2 := sq_nonneg _
        calc ‖xiCoeff Λs N‖ ^ 2 / N = ‖xiCoeff Λs N‖ ^ 2 * (N:ℝ)⁻¹ := div_eq_mul_inv _ _
          _ ≤ (2 * Λ N ^ 2 + 2 * Real.log N ^ 2 * Fmaj ‖Λs‖⁻¹ N ^ 2) * (N:ℝ)⁻¹ :=
              mul_le_mul_of_nonneg_right h hN0
          _ ≤ (2 * Λ N ^ 2 + 2 * u ^ 2 * Fmaj ‖Λs‖⁻¹ N ^ 2) * (N:ℝ)⁻¹ := by gcongr
          _ = 2 * (Λ N ^ 2 / N) + 2 * u ^ 2 * (Fmaj ‖Λs‖⁻¹ N ^ 2 / N) := by ring
    _ = 2 * ∑ N ∈ Ioc 0 ⌊Real.exp u⌋₊, Λ N ^ 2 / N
        + 2 * u ^ 2 * ∑ N ∈ Ioc 0 ⌊Real.exp u⌋₊, Fmaj ‖Λs‖⁻¹ N ^ 2 / N := by
        rw [sum_add_distrib, mul_sum, mul_sum]
    _ ≤ 2 * (u * (u + KM)) + 2 * u ^ 2 * CF := by gcongr
    _ ≤ CS * (1 + u) ^ 2 := by
        unfold CS
        nlinarith [KM_nonneg, CF_pos.le, sq_nonneg u, mul_nonneg hu KM_nonneg, mul_nonneg (sq_nonneg u) CF_pos.le]

/-! ### (H2) and (H1) for a T-indexed parameter with ‖Λ⋆(T)‖ ≥ l(T)/2 -/

/-- the height threshold: l(T) ≥ 64eK (so ‖Λ⋆‖ ≥ l/2 ≥ 32eK) and l(T) ≥ 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Upper/Variantb8dee2a56510638fc7eefc63752380e1ca18fc346748c0f664bdc6fa3a33c4bf.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c60e8d08effd98dcb500b7a5c4ae72c83888fac1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
