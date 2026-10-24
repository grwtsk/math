# actual_muntz_mellin_regularized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cec344df-751d-8f8d-7802-6525bfcaf541",
  "kind": "theorem",
  "lexical_name": "actual_muntz_mellin_regularized",
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
  "slug": "actual-muntz-mellin-regularized--31b017ca2f7c0fc2ed4fef60",
  "source": {
    "blob": "da52e52fa999a7a1406570e12c0dfc6a42f78240",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 35,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31b017ca2f7c0fc2ed4fef60501cfe87b1d5e7170ea98fd2559c30180132e520",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cec344df-751d-8f8d-7802-6525bfcaf541`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_muntz_mellin_regularized {A : ℝ} (hA : 1 ≤ A) {s : ℂ} (hs : 0 < s.re) :
    (s-1)*mellin (complexMuntz A) s = riemannZeta₁ s * mellin (complexSource A) s := by
  have hf := regularized_left_analytic hA
  have hg : AnalyticOnNhd ℂ (fun s => riemannZeta₁ s * mellin (complexSource A) s)
      {s : ℂ | 0 < s.re} :=
    fun z _ => (regularized_right_differentiable (by linarith : 0 < A)).analyticAt z
  have he : (fun s => (s-1)*mellin (complexMuntz A) s) =ᶠ[𝓝 (2 : ℂ)]
      (fun s => riemannZeta₁ s * mellin (complexSource A) s) := by
    have hh : ∀ᶠ s : ℂ in 𝓝 (2 : ℂ), 1 < s.re :=
      (isOpen_lt continuous_const Complex.continuous_re).mem_nhds (by norm_num)
    exact hh.mono fun z hz => regularized_product_in_dirichlet hA hz
  exact (hf.eqOn_of_preconnected_of_eventuallyEq hg positiveHalfplane_isPreconnected
    (by norm_num : (2 : ℂ) ∈ {s : ℂ | 0 < s.re}) he) hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da52e52fa999a7a1406570e12c0dfc6a42f78240` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
