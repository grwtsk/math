# primitiveDensity_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95e39e1fce2a0e50a7d3b9a4c07a56de52db05bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/748befcd8b65cbd8cb31571b1a1b7eb6d11f33ac8379335bc3c0e0c1314a0a84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2cdc92f-d35e-f5da-e9d8-c27851f786ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d3e5eb9-3420-6d38-672b-58132725a9af",
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
  "slug": "primitivedensity-intervalintegrable--bf3536afdd93eaf17e86b3f5",
  "source": {
    "blob": "95e39e1fce2a0e50a7d3b9a4c07a56de52db05bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalPrimitive/Variant748befcd8b65cbd8cb31571b1a1b7eb6d11f33ac8379335bc3c0e0c1314a0a84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf3536afdd93eaf17e86b3f5c8df7b2ed2f7e2656331ce3a7957af9876535e80",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalPrimitive/Variant748befcd8b65cbd8cb31571b1a1b7eb6d11f33ac8379335bc3c0e0c1314a0a84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d3e5eb9-3420-6d38-672b-58132725a9af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–52.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalPrimitive/Variant748befcd8b65cbd8cb31571b1a1b7eb6d11f33ac8379335bc3c0e0c1314a0a84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalPrimitive/Variant748befcd8b65cbd8cb31571b1a1b7eb6d11f33ac8379335bc3c0e0c1314a0a84.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95e39e1fce2a0e50a7d3b9a4c07a56de52db05bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
