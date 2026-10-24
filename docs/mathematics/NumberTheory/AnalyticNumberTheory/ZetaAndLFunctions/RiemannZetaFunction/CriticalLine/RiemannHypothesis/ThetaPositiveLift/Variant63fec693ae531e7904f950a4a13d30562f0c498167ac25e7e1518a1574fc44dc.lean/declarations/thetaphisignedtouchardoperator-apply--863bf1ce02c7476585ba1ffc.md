# thetaPhiSignedTouchardOperator_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e43cadb9-7edd-16aa-2ac5-35c5ce2bc594",
  "kind": "theorem",
  "lexical_name": "thetaPhiSignedTouchardOperator_apply",
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
  "slug": "thetaphisignedtouchardoperator-apply--863bf1ce02c7476585ba1ffc",
  "source": {
    "blob": "181e8809db9e06af15d220fbf0197318f5778f14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 95,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:863bf1ce02c7476585ba1ffc4dc4cbf1a7fc4589087d7fcc2d18dc196009b295",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e43cadb9-7edd-16aa-2ac5-35c5ce2bc594`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiSignedTouchardOperator_apply
    (n : ℕ) :
    thetaPhiSignedTouchardOperator
        (thetaPhiSignedTouchardPolynomial n) =
      thetaPhiSignedTouchardPolynomial (n + 1) := by
  ext k
  cases k with
  | zero =>
      simp [thetaPhiSignedTouchardOperator,
        thetaPhiSignedTouchardPolynomial_coeff]
  | succ k =>
      simp only [thetaPhiSignedTouchardOperator,
        LinearMap.coe_mk, AddHom.coe_mk,
        Polynomial.coeff_add, Polynomial.coeff_neg,
        Polynomial.coeff_X_mul,
        Polynomial.coeff_derivative,
        thetaPhiSignedTouchardPolynomial_coeff]
      rw [Nat.stirlingSecond_succ_succ]
      simp only [Nat.cast_add, Nat.cast_mul, pow_succ]
      ring

/-- The zeroth signed Touchard polynomial is one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `181e8809db9e06af15d220fbf0197318f5778f14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
