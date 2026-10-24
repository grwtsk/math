# primitiveDensity_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c559063-78c9-8960-d0ff-1b1940ee7e95",
  "kind": "theorem",
  "lexical_name": "primitiveDensity_intervalIntegrable",
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
  "slug": "primitivedensity-intervalintegrable--63407317a5ae9752684a30cf",
  "source": {
    "blob": "082465cdacd9f19269a78b63fd9be13e5488cf0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalPrimitive/Variantbe668a4b3d9d818521463876c0788990aaa2114b9ebefdea20e0a15f8a2916cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63407317a5ae9752684a30cfccda6076f6938f591d301bb97fa9a32fb16d22d3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalPrimitive/Variantbe668a4b3d9d818521463876c0788990aaa2114b9ebefdea20e0a15f8a2916cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c559063-78c9-8960-d0ff-1b1940ee7e95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitiveDensity_intervalIntegrable (T : ℝ) (hT : 0 ≤ T) :
    IntervalIntegrable primitiveDensity volume 0 T := by
  have hexp : ContDiff ℝ 1 (fun t : ℝ ↦ 2 * Real.exp (t / 2)) := by fun_prop
  have hd (t : ℝ) : deriv (fun t : ℝ ↦ 2 * Real.exp (t / 2)) t = Real.exp (t / 2) := by
    have h : HasDerivAt (fun t : ℝ ↦ 2 * Real.exp (t / 2)) (Real.exp (t / 2)) t := by
      exact (((hasDerivAt_id t).div_const 2).exp.const_mul 2).congr_deriv (by simp only [id_eq]; ring)
    exact h.deriv
  have he := mangoldtLogError_mul_deriv_intervalIntegrable 0 T hT _ hexp
  simp_rw [hd] at he
  have hc : IntervalIntegrable (fun t : ℝ ↦
      Real.eulerMascheroniConstant * Real.exp (t / 2)) volume 0 T :=
    (show Continuous (fun t : ℝ ↦
    Real.eulerMascheroniConstant * Real.exp (t / 2)) by fun_prop).intervalIntegrable 0 T
  convert he.add hc using 1
  ext t
  simp only [primitiveDensity]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalPrimitive/Variantbe668a4b3d9d818521463876c0788990aaa2114b9ebefdea20e0a15f8a2916cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalPrimitive/Variantbe668a4b3d9d818521463876c0788990aaa2114b9ebefdea20e0a15f8a2916cb.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `082465cdacd9f19269a78b63fd9be13e5488cf0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
