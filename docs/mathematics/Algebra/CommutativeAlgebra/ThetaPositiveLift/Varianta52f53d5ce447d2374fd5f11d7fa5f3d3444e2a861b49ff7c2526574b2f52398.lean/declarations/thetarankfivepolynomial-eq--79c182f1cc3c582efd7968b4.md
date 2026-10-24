# thetaRankFivePolynomial_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b367a9a-a512-b66a-39da-190e2b085d11",
  "kind": "theorem",
  "lexical_name": "thetaRankFivePolynomial_eq",
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
  "slug": "thetarankfivepolynomial-eq--79c182f1cc3c582efd7968b4",
  "source": {
    "blob": "2dbb685cec5a3ebc54a0b9e38c912fa83db15190",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 163,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ThetaPositiveLift/Varianta52f53d5ce447d2374fd5f11d7fa5f3d3444e2a861b49ff7c2526574b2f52398.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79c182f1cc3c582efd7968b4a3a699f36d98f11dc0026c22231170b7a3578d4e",
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

Occurrence: `result:4b367a9a-a512-b66a-39da-190e2b085d11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaRankFivePolynomial_eq (n : Fin 9) :
    thetaPhiDerivativePolynomial n.val = thetaRankFivePolynomial n.val := by
  fin_cases n
  · exact polynomial_order_0
  · exact polynomial_order_1
  · exact polynomial_order_2
  · exact polynomial_order_3
  · exact polynomial_order_4
  · exact polynomial_order_5
  · exact polynomial_order_6
  · exact polynomial_order_7
  · exact polynomial_order_8

/-- Sum of absolute coefficient values in each derivative polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ThetaPositiveLift/Varianta52f53d5ce447d2374fd5f11d7fa5f3d3444e2a861b49ff7c2526574b2f52398.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ThetaPositiveLift/Varianta52f53d5ce447d2374fd5f11d7fa5f3d3444e2a861b49ff7c2526574b2f52398.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dbb685cec5a3ebc54a0b9e38c912fa83db15190` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
