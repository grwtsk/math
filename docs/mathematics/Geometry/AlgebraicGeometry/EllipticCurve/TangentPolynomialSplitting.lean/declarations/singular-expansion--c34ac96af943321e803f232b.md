# singular_expansion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f64737f-089a-3a0d-60de-95ae539fb7b3",
  "kind": "theorem",
  "lexical_name": "singular_expansion",
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
  "slug": "singular-expansion--c34ac96af943321e803f232b",
  "source": {
    "blob": "6e49c3699cdd3abaaf11337514b080c92bc7e38f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 51,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c34ac96af943321e803f232bb6083b190b020b86bb8c3f5962346db8b458b080",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f64737f-089a-3a0d-60de-95ae539fb7b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem singular_expansion (W : WeierstrassCurve R) (x y : R)
    (he : W.toAffine.Equation x y)
    (hx : W.toAffine.polynomialX.evalEval x y = 0)
    (hy : W.toAffine.polynomialY.evalEval x y = 0) (u v : R) :
    W.toAffine.polynomial.evalEval (x+u) (y+v) = tangentForm W x u v - u^3 := by
  rw [affine_expansion]
  change W.toAffine.polynomial.evalEval x y = 0 at he
  simp only [he, hx, hy, zero_mul, zero_add]

end Algebra

section Field
variable {F K : Type*} [Field F] [Field K]

/-- Splitting is invariant under an actual coefficient-field equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e49c3699cdd3abaaf11337514b080c92bc7e38f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
