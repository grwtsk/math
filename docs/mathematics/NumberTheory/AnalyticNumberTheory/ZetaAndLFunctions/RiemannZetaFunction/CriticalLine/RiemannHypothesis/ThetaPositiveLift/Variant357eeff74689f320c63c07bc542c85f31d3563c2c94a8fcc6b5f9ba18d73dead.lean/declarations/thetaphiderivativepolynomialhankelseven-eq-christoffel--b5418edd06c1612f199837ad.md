# thetaPhiDerivativePolynomialHankelSeven_eq_christoffel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e60cdb56-849e-b57d-f069-8a7a8c7bfe7f",
  "kind": "theorem",
  "lexical_name": "thetaPhiDerivativePolynomialHankelSeven_eq_christoffel",
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
  "slug": "thetaphiderivativepolynomialhankelseven-eq-christoffel--b5418edd06c1612f199837ad",
  "source": {
    "blob": "492426ccd9ec94cf2ec19f1f52ffc7088f039d9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 116,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5418edd06c1612f199837ad06d1de78fac99f5b8f8c91e562b6dd1f51ade969",
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

Occurrence: `result:e60cdb56-849e-b57d-f069-8a7a8c7bfe7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiDerivativePolynomialHankelSeven_eq_christoffel
    (y : ℝ) :
    (Matrix.of fun i j : Fin 7 =>
        (thetaPhiDerivativePolynomial
          (i.val + j.val)).eval y) =
      (-1 / 2 : ℝ) •
        thetaPhiChristoffelHankel 7
          (fun n =>
            thetaPhiGeneralizedSignedTouchardValue n y) := by
  ext i j
  simp only [Matrix.of_apply, Matrix.smul_apply,
    smul_eq_mul, thetaPhiChristoffelHankel]
  rw [thetaPhiDerivativePolynomial_eval_christoffel]
  rw [thetaPhiBaseGeneralizedTouchardIdentification,
    thetaPhiBaseGeneralizedTouchardIdentification]

/-- The oriented rank-seven derivative determinant is exactly `4^42` times
the reduced Touchard--Christoffel Hankel determinant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant357eeff74689f320c63c07bc542c85f31d3563c2c94a8fcc6b5f9ba18d73dead.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `492426ccd9ec94cf2ec19f1f52ffc7088f039d9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
