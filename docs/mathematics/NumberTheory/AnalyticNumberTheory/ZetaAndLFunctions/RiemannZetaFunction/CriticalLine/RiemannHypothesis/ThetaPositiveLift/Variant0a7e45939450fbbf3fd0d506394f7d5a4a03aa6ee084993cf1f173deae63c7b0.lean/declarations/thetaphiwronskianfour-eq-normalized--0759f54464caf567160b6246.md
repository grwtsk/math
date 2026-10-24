# thetaPhiWronskianFour_eq_normalized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b03a7cd4-8d76-b587-0634-83061c35edb5",
  "kind": "theorem",
  "lexical_name": "thetaPhiWronskianFour_eq_normalized",
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
  "slug": "thetaphiwronskianfour-eq-normalized--0759f54464caf567160b6246",
  "source": {
    "blob": "c80431aa41279e492af14e2f6a828f34e31b8055",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 104,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant0a7e45939450fbbf3fd0d506394f7d5a4a03aa6ee084993cf1f173deae63c7b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0759f54464caf567160b6246536581cd57a62ae5f0f899731cd0157db84b6d41",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant0a7e45939450fbbf3fd0d506394f7d5a4a03aa6ee084993cf1f173deae63c7b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b03a7cd4-8d76-b587-0634-83061c35edb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiWronskianFour_eq_normalized (t : ℝ) :
    thetaPhiWronskianFour t =
      (Real.pi * Real.exp (5 * t - thetaModeA t)) ^ 4 *
        thetaPhiJetDet4 (thetaPhiNormalizedJet7 t) := by
  unfold thetaPhiWronskianFour
  rw [show thetaPhiJet7 t =
      fun k => (Real.pi * Real.exp (5 * t - thetaModeA t)) *
        thetaPhiNormalizedJet7 t k by
    funext k
    exact thetaPhiJet7_eq_commonFactor_mul_normalized k t]
  simpa using (thetaPhiJetDet4_const_mul
    (Real.pi * Real.exp (5 * t - thetaModeA t)) (thetaPhiNormalizedJet7 t))

/-- The scalar removed in the normalized rank-four reduction is strictly positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant0a7e45939450fbbf3fd0d506394f7d5a4a03aa6ee084993cf1f173deae63c7b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant0a7e45939450fbbf3fd0d506394f7d5a4a03aa6ee084993cf1f173deae63c7b0.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c80431aa41279e492af14e2f6a828f34e31b8055` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
