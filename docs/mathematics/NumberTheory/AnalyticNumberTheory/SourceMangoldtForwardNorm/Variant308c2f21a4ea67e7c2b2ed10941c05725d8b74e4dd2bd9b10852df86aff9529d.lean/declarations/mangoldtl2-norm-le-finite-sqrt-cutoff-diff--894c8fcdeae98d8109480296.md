# mangoldtL2_norm_le_finite_sqrt_cutoff_diff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f607483b9fd9a8ccb14d46a0ae50b97582130190",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/308c2f21a4ea67e7c2b2ed10941c05725d8b74e4dd2bd9b10852df86aff9529d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20713837-3f41-92e5-5c7e-c9c7c665bab4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f3e7d566-a50c-6a63-7e91-b40c468c900c",
  "kind": "theorem",
  "lexical_name": "mangoldtL2_norm_le_finite_sqrt_cutoff_diff",
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
  "slug": "mangoldtl2-norm-le-finite-sqrt-cutoff-diff--894c8fcdeae98d8109480296",
  "source": {
    "blob": "f607483b9fd9a8ccb14d46a0ae50b97582130190",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 120,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant308c2f21a4ea67e7c2b2ed10941c05725d8b74e4dd2bd9b10852df86aff9529d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:894c8fcdeae98d810948029640274cc2e10077b39dbe451007337f8a000b17a3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant308c2f21a4ea67e7c2b2ed10941c05725d8b74e4dd2bd9b10852df86aff9529d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3e7d566-a50c-6a63-7e91-b40c468c900c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtL2_norm_le_finite_sqrt_cutoff_diff (A : ℝ) (hA : 1 ≤ A) :
    ‖FormalResearch.RiemannHypothesis.SourceVaughanHankel.mangoldtL2 A hA‖ ≤
      4 * A * (Real.sqrt (sourceKernelCutoff A : ℝ) -
        Real.sqrt (vaughanCutoff A : ℝ)) := by
  classical
  have hp : 0 < A := by linarith
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  have hUN : U ≤ N := vaughanCutoff_le_sourceKernelCutoff A hA
  have hF : mangoldtL2 A hA = ∑ m ∈ Finset.Ioc U N,
      (vonMangoldt m / Real.sqrt (m : ℝ)) • shift A hp (-Real.log (m : ℝ)) :=
    mangoldtL2_eq_sum A hA hp
  calc
    ‖mangoldtL2 A hA‖ ≤ ∑ m ∈ Finset.Ioc U N,
        ‖(vonMangoldt m / Real.sqrt (m : ℝ)) • shift A hp (-Real.log (m : ℝ))‖ := by
      rw [hF]
      exact norm_sum_le _ _
    _ = ∑ m ∈ Finset.Ioc U N, vonMangoldt m / Real.sqrt (m : ℝ) := by
      apply Finset.sum_congr rfl
      intro m _
      rw [norm_smul, Real.norm_eq_abs,
        abs_of_nonneg (div_nonneg vonMangoldt_nonneg (Real.sqrt_nonneg _)),
        shift_norm hA hp, mul_one]
    _ ≤ 2 * A * (∑ m ∈ Finset.Ioc U N, 1 / Real.sqrt (m : ℝ)) := by
      rw [Finset.mul_sum]
      apply Finset.sum_le_sum
      intro m hm
      have hl := actual_mangoldt_le_two_scale A m hm
      have hc := mul_le_mul_of_nonneg_right hl
        (by positivity : 0 ≤ 1 / Real.sqrt (m : ℝ))
      simpa only [div_eq_mul_inv, one_mul] using hc
    _ ≤ 2 * A * (2 * (Real.sqrt (N : ℝ) - Real.sqrt (U : ℝ))) :=
      mul_le_mul_of_nonneg_left (inverse_sqrt_sum_le U N hUN) (by linarith)
    _ = 4 * A * (Real.sqrt (sourceKernelCutoff A : ℝ) -
        Real.sqrt (vaughanCutoff A : ℝ)) := by ring

/-- A source-specific envelope; this is not a bound on the signed joint residual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant308c2f21a4ea67e7c2b2ed10941c05725d8b74e4dd2bd9b10852df86aff9529d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant308c2f21a4ea67e7c2b2ed10941c05725d8b74e4dd2bd9b10852df86aff9529d.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f607483b9fd9a8ccb14d46a0ae50b97582130190` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
