# thetaPhiGeneralizedTouchardChristoffelSeven_eq_affine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0230b10-879c-a8c5-a71b-ecfb896db84a",
  "kind": "theorem",
  "lexical_name": "thetaPhiGeneralizedTouchardChristoffelSeven_eq_affine",
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
  "slug": "thetaphigeneralizedtouchardchristoffelseven-eq-affine--87a7752ec9dc1c41882f0abd",
  "source": {
    "blob": "492426ccd9ec94cf2ec19f1f52ffc7088f039d9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87a7752ec9dc1c41882f0abd6872628f250a263b55b7a5d3c18b05f124e6b6b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0230b10-879c-a8c5-a71b-ecfb896db84a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiGeneralizedTouchardChristoffelSeven_eq_affine
    (y : ℝ) :
    thetaPhiChristoffelHankel 7
        (fun n =>
          thetaPhiGeneralizedSignedTouchardValue n y) =
      (2 : ℝ) •
        (thetaPhiAffinePascalSeven *
          thetaPhiSignedTouchardChristoffelHankelSeven y *
            thetaPhiAffinePascalSeven.transpose) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [thetaPhiChristoffelHankel,
      thetaPhiAffinePascalSeven,
      thetaPhiSignedTouchardChristoffelHankelSeven,
      thetaPhiSignedTouchardChristoffelMoment,
      thetaPhiGeneralizedSignedTouchardValue,
      Matrix.mul_apply, Fin.sum_univ_succ,
      Finset.sum_range_succ, Nat.choose] <;>
    ring

/-- The derivative-polynomial Hankel matrix is `-1/2` times the generalized
Touchard Christoffel-Hankel matrix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `492426ccd9ec94cf2ec19f1f52ffc7088f039d9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
