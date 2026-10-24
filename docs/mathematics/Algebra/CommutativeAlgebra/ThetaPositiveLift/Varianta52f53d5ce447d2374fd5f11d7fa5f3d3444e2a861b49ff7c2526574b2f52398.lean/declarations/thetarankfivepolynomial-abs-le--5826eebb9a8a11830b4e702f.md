# thetaRankFivePolynomial_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8200b143-0375-b091-b273-840dc36c3446",
  "kind": "theorem",
  "lexical_name": "thetaRankFivePolynomial_abs_le",
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
  "slug": "thetarankfivepolynomial-abs-le--5826eebb9a8a11830b4e702f",
  "source": {
    "blob": "2dbb685cec5a3ebc54a0b9e38c912fa83db15190",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 197,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ThetaPositiveLift/Varianta52f53d5ce447d2374fd5f11d7fa5f3d3444e2a861b49ff7c2526574b2f52398.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5826eebb9a8a11830b4e702ff1d25d9171a1aff5b427057943b5f818d98dea84",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ThetaPositiveLift/Varianta52f53d5ce447d2374fd5f11d7fa5f3d3444e2a861b49ff7c2526574b2f52398.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8200b143-0375-b091-b273-840dc36c3446`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaRankFivePolynomial_abs_le (n : Fin 9) {y : ℝ} (hy : 1 ≤ y) :
    |(thetaPhiDerivativePolynomial n.val).eval y| ≤
      thetaRankFiveCoefficientNorm n.val * y ^ (n.val + 1) := by
  rw [thetaRankFivePolynomial_eq]
  let x := y - 1
  have hx : 0 ≤ x := sub_nonneg.mpr hy
  have he : y = x + 1 := by dsimp [x]; ring
  rw [he]
  apply abs_le.mpr
  constructor
  · have h : 0 ≤ thetaRankFiveCoefficientNorm n.val * (x + 1) ^ (n.val + 1) +
        (thetaRankFivePolynomial n.val).eval (x + 1) := by
      fin_cases n <;> norm_num [thetaRankFiveCoefficientNorm, thetaRankFivePolynomial] <;>
        ring_nf <;> nlinarith only [hx, pow_nonneg hx 2, pow_nonneg hx 3,
          pow_nonneg hx 4, pow_nonneg hx 5, pow_nonneg hx 6, pow_nonneg hx 7,
          pow_nonneg hx 8, pow_nonneg hx 9]
    linarith
  · have h : 0 ≤ thetaRankFiveCoefficientNorm n.val * (x + 1) ^ (n.val + 1) -
        (thetaRankFivePolynomial n.val).eval (x + 1) := by
      fin_cases n <;> norm_num [thetaRankFiveCoefficientNorm, thetaRankFivePolynomial] <;>
        ring_nf <;> nlinarith only [hx, pow_nonneg hx 2, pow_nonneg hx 3,
          pow_nonneg hx 4, pow_nonneg hx 5, pow_nonneg hx 6, pow_nonneg hx 7,
          pow_nonneg hx 8, pow_nonneg hx 9]
    linarith

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ThetaPositiveLift/Varianta52f53d5ce447d2374fd5f11d7fa5f3d3444e2a861b49ff7c2526574b2f52398.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ThetaPositiveLift/Varianta52f53d5ce447d2374fd5f11d7fa5f3d3444e2a861b49ff7c2526574b2f52398.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dbb685cec5a3ebc54a0b9e38c912fa83db15190` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
