# mahlerMeasure_le_sum_norm_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2728419ad1445bcdb12ee8096254dd55ccc58278",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 263,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/302e16fa7c42ab74f3b38a287a8f1688d111b7634f3cbdd20d6d9fdc567d60c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa7c95ec-fe27-b8a9-f213-3a594fe8b157",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1211fcde-bbda-1220-879a-24c16340a7fe",
  "kind": "theorem",
  "lexical_name": "mahlerMeasure_le_sum_norm_coeff",
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
  "slug": "mahlermeasure-le-sum-norm-coeff--23cc225192c62d2de1690dc3",
  "source": {
    "blob": "2728419ad1445bcdb12ee8096254dd55ccc58278",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 263,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant302e16fa7c42ab74f3b38a287a8f1688d111b7634f3cbdd20d6d9fdc567d60c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23cc225192c62d2de1690dc31960e67c20fd7a596bc21fe96608b134ee26ca79",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MahlerMeasure/Variant302e16fa7c42ab74f3b38a287a8f1688d111b7634f3cbdd20d6d9fdc567d60c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1211fcde-bbda-1220-879a-24c16340a7fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mahlerMeasure_le_sum_norm_coeff (p : ℂ[X]) : p.mahlerMeasure ≤ p.sum fun _ a ↦ ‖a‖ := by
  by_cases hp : p = 0
  · simp [hp]
  have : 0 < p.sum fun _ a ↦ ‖a‖ :=
    Finset.sum_pos' (fun i _ ↦ norm_nonneg (p.coeff i)) ⟨p.natDegree, by simp [hp]⟩
  rw [show (p.sum fun _ a ↦ ‖a‖) = rexp (circleAverage (fun _ ↦ log (p.sum fun _ a ↦ ‖a‖)) 0 1)
    by simp [circleAverage_def, mul_assoc, exp_log this], mahlerMeasure_def_of_ne_zero hp,
    circleAverage_def, smul_eq_mul]
  gcongr
  apply intervalIntegral.integral_mono_ae_restrict (by positivity)
    p.intervalIntegrable_mahlerMeasure (by simp)
  rw [EventuallyLE, eventually_iff_exists_mem]
  use {x : ℝ | eval (circleMap 0 1 x) p ≠ 0}
  constructor
  · rw [mem_ae_iff, compl_def, Measure.restrict_apply' (by simp)]
    apply (Finite.of_sdiff _ <| finite_singleton (2 * π)).measure_zero
    simp only [ne_eq, mem_ofPred_eq, Decidable.not_not, inter_sdiff_assoc, Icc_sdiff_right]
    rw [ofPred_inter_eq_sep]
    apply Finite.of_finite_image (f := circleMap 0 1) ((Multiset.finite_toSet p.roots).subset _)
      <| fun _ h _ k l ↦ injOn_circleMap_of_abs_sub_le' one_ne_zero (by linarith) h.1 k.1 l
    simp [hp]
  · intro _ _
    gcongr
    rw [eval_eq_sum]
    apply norm_sum_le_of_le p.support
    simp

open MeasureTheory Set in
/-- **Landau's inequality**: the Mahler measure of a polynomial is at most the ℓ² norm
of its coefficient vector, `√(∑ ‖coeff i‖²)`.

This is the classical inequality due to Landau (1905). Combined with the multiplicativity of the
Mahler measure (`mahlerMeasure_mul`), it gives the Mignotte bound on coefficients of polynomial
factors.

TODO: restate using a dedicated polynomial ℓ² norm once one is defined (see the TODO in
`Mathlib.Analysis.Polynomial.Norm`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MahlerMeasure/Variant302e16fa7c42ab74f3b38a287a8f1688d111b7634f3cbdd20d6d9fdc567d60c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant302e16fa7c42ab74f3b38a287a8f1688d111b7634f3cbdd20d6d9fdc567d60c5.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2728419ad1445bcdb12ee8096254dd55ccc58278` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
