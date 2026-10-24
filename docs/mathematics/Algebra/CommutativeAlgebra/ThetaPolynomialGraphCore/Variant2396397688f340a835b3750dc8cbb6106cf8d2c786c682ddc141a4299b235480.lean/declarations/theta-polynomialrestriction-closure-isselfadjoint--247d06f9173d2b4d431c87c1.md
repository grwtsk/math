# theta_polynomialRestriction_closure_isSelfAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e2134f3-f893-fed6-ab9e-4873c5dc6338",
  "kind": "theorem",
  "lexical_name": "theta_polynomialRestriction_closure_isSelfAdjoint",
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
  "slug": "theta-polynomialrestriction-closure-isselfadjoint--247d06f9173d2b4d431c87c1",
  "source": {
    "blob": "74d7bf292d711254a5c8355d6ebed0d742d94693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 418,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variant2396397688f340a835b3750dc8cbb6106cf8d2c786c682ddc141a4299b235480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:247d06f9173d2b4d431c87c159b515c307b7e32cb92daec8b8ae21a41bcbb7f2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variant2396397688f340a835b3750dc8cbb6106cf8d2c786c682ddc141a4299b235480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e2134f3-f893-fed6-ab9e-4873c5dc6338`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theta_polynomialRestriction_closure_isSelfAdjoint {t : ℝ} (ht : 0 ≤ t) :
    IsSelfAdjoint ((coordinateMultiplication (momentMeasure t)).domRestrict
      (polynomialCore t ht)).closure := by
  rw [(coordinateMultiplication_polynomial_hasCore ht).closure_eq]
  exact theta_coordinateMultiplication_isSelfAdjoint ht


/-- The core is exactly the complex linear span of the actual power vectors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variant2396397688f340a835b3750dc8cbb6106cf8d2c786c682ddc141a4299b235480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variant2396397688f340a835b3750dc8cbb6106cf8d2c786c682ddc141a4299b235480.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74d7bf292d711254a5c8355d6ebed0d742d94693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
