# polynomial_order_2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c45feb67-0589-025e-3198-773d07600dc6",
  "kind": "theorem",
  "lexical_name": "polynomial_order_2",
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
  "slug": "polynomial-order-2--2b7a1dc7b73ea2faa575c313",
  "source": {
    "blob": "2dbb685cec5a3ebc54a0b9e38c912fa83db15190",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 91,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ThetaPositiveLift/Varianta52f53d5ce447d2374fd5f11d7fa5f3d3444e2a861b49ff7c2526574b2f52398.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b7a1dc7b73ea2faa575c31379cf5acd91fc05d3a295e45ee45011b0b9e5a378",
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

Occurrence: `result:c45feb67-0589-025e-3198-773d07600dc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem polynomial_order_2 :
    thetaPhiDerivativePolynomial 2 = thetaRankFivePolynomial 2 := by
  change thetaPhiDerivativeStep (thetaPhiDerivativePolynomial 1) = _
  rw [polynomial_order_1]
  simp only [thetaRankFivePolynomial, thetaPhiDerivativeStep_add,
    thetaPhiDerivativeStep_monomial]
  simp only [← Polynomial.C_mul_X_pow_eq_monomial]
  norm_num [Polynomial.C_ofNat]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ThetaPositiveLift/Varianta52f53d5ce447d2374fd5f11d7fa5f3d3444e2a861b49ff7c2526574b2f52398.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ThetaPositiveLift/Varianta52f53d5ce447d2374fd5f11d7fa5f3d3444e2a861b49ff7c2526574b2f52398.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dbb685cec5a3ebc54a0b9e38c912fa83db15190` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
