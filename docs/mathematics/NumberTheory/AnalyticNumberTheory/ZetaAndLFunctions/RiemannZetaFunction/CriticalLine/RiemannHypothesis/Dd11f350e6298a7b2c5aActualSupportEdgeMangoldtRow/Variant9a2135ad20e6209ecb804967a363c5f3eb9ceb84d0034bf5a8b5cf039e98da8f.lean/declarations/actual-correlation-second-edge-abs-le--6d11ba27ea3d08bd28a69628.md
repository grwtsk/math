# actual_correlation_second_edge_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac5231e8-493e-4227-df39-453cbde6bccb",
  "kind": "theorem",
  "lexical_name": "actual_correlation_second_edge_abs_le",
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
  "slug": "actual-correlation-second-edge-abs-le--6d11ba27ea3d08bd28a69628",
  "source": {
    "blob": "c690e786cbd792230363408231312db64378a5a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dd11f350e6298a7b2c5aActualSupportEdgeMangoldtRow/Variant9a2135ad20e6209ecb804967a363c5f3eb9ceb84d0034bf5a8b5cf039e98da8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d11ba27ea3d08bd28a6962800a0262c268883246875da6f3d707d03436685df",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dd11f350e6298a7b2c5aActualSupportEdgeMangoldtRow/Variant9a2135ad20e6209ecb804967a363c5f3eb9ceb84d0034bf5a8b5cf039e98da8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac5231e8-493e-4227-df39-453cbde6bccb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_second_edge_abs_le {A z : ℝ} (hA : 91 ≤ A) :
    |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) z| ≤
      67 / A ^ 4 * (2 * A - z) ^ 2 / 2 := by
  have hc := actual_correlation_contDiff_four A (by linarith : 0 < A)
  have h2 := edge_jet_zero A (by linarith) 2
  have h3 := edge_jet_zero A (by linarith) 3
  simp only [iteratedDeriv_succ, iteratedDeriv_zero] at h2 h3
  have hb : ∀ t, |iteratedDeriv 2 (deriv (deriv
      (sourceCorrelation explicitSecondDerivative A))) t| ≤ 67 / A ^ 4 := by
    intro t
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      actual_correlation_iterated_fourth_abs_le_sixty_seven A t hA
  have h := global_taylor_bound 1 hc.deriv'.deriv' (67 / A ^ 4) (2 * A)
    (z - 2 * A) hb
  have he : taylorWithinEval (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))
      1 univ (2 * A) z = 0 := by
    simp [taylorWithinEval_succ, taylor_within_zero_eval, h2, h3]
  rw [show 2 * A + (z - 2 * A) = z by ring, he, sub_zero] at h
  norm_num only [Nat.reduceAdd, Nat.factorial, Nat.cast_ofNat] at h
  rw [sq_abs] at h
  simpa only [iteratedDeriv_succ, iteratedDeriv_zero,
    show (z - 2 * A) ^ 2 = (2 * A - z) ^ 2 by ring] using h

/-- Every real displacement below the genuine closed seam has its fourth-order bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dd11f350e6298a7b2c5aActualSupportEdgeMangoldtRow/Variant9a2135ad20e6209ecb804967a363c5f3eb9ceb84d0034bf5a8b5cf039e98da8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dd11f350e6298a7b2c5aActualSupportEdgeMangoldtRow/Variant9a2135ad20e6209ecb804967a363c5f3eb9ceb84d0034bf5a8b5cf039e98da8f.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c690e786cbd792230363408231312db64378a5a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
