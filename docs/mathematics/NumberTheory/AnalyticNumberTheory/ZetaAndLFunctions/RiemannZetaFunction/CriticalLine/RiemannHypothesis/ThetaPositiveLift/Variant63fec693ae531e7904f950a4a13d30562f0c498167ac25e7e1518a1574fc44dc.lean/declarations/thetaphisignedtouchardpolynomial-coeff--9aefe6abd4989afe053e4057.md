# thetaPhiSignedTouchardPolynomial_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6504c68b-de14-71f7-d6ac-ec066ac0922f",
  "kind": "theorem",
  "lexical_name": "thetaPhiSignedTouchardPolynomial_coeff",
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
  "slug": "thetaphisignedtouchardpolynomial-coeff--9aefe6abd4989afe053e4057",
  "source": {
    "blob": "181e8809db9e06af15d220fbf0197318f5778f14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9aefe6abd4989afe053e4057cee71dc9c3d4740009477088ed4556977b667578",
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

Occurrence: `result:6504c68b-de14-71f7-d6ac-ec066ac0922f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiSignedTouchardPolynomial_coeff
    (n k : ℕ) :
    (thetaPhiSignedTouchardPolynomial n).coeff k =
      (Nat.stirlingSecond n k : ℝ) * (-1 : ℝ) ^ k := by
  by_cases hk : k < n + 1
  · simp [thetaPhiSignedTouchardPolynomial,
      Polynomial.finsetSum_coeff, Polynomial.coeff_monomial,
      hk, eq_comm]
  · have hkn : n < k := by omega
    rw [Nat.stirlingSecond_eq_zero_of_lt hkn]
    simp [thetaPhiSignedTouchardPolynomial,
      Polynomial.finsetSum_coeff, Polynomial.coeff_monomial,
      hk, eq_comm]

/-- Evaluation of the signed Touchard polynomial is the maintained signed
Touchard value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `181e8809db9e06af15d220fbf0197318f5778f14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
