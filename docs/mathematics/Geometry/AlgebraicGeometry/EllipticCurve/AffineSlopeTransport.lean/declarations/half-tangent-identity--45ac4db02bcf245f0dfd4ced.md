# half_tangent_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7bea51e-eaf6-2b41-7d7c-d0bedd2ca3f7",
  "kind": "theorem",
  "lexical_name": "half_tangent_identity",
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
  "slug": "half-tangent-identity--45ac4db02bcf245f0dfd4ced",
  "source": {
    "blob": "a7b70c96e61ea747859079415d529279e2d15c68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 98,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45ac4db02bcf245f0dfd4ced7eebe9b7a578be8e4a717485c2ac7c01495b6ae3",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7bea51e-eaf6-2b41-7d7c-d0bedd2ca3f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem half_tangent_identity (W : WeierstrassCurve ℚ) (r t : ℚ) :
    C (64 : ℚ) * tangentPolynomial (halfSlopeChange r t • W) =
      (tangentPolynomial W).comp (slopePolynomial 2 1) := by
  let V := halfSlopeChange r t • W
  have h4 : 64*V.c₄ = 4*W.c₄ := by
    dsimp only [V]
    norm_num [halfSlopeChange, WeierstrassCurve.variableChange_c₄] <;> ring
  have h1 : 64*(V.a₁*V.c₄) = 2*(W.a₁+2)*W.c₄ := by
    dsimp only [V]
    norm_num [halfSlopeChange, WeierstrassCurve.variableChange_a₁,
      WeierstrassCurve.variableChange_c₄] <;> ring
  have h0 : 64*(54*V.b₆-3*V.b₂*V.b₄+V.a₂*V.c₄) =
      (54*W.b₆-3*W.b₂*W.b₄+W.a₂*W.c₄)-(1+W.a₁)*W.c₄ := by
    dsimp only [V]
    norm_num [halfSlopeChange, WeierstrassCurve.variableChange_b₆,
      WeierstrassCurve.variableChange_b₂, WeierstrassCurve.variableChange_b₄,
      WeierstrassCurve.variableChange_a₂, WeierstrassCurve.variableChange_c₄] <;>
      (simp only [WeierstrassCurve.c₄] <;> ring)
  change C (64 : ℚ)*tangentPolynomial V = _
  calc
    _ = C (64*V.c₄)*X^2 + C (64*(V.a₁*V.c₄))*X -
        C (64*(54*V.b₆-3*V.b₂*V.b₄+V.a₂*V.c₄)) := by
      simp only [tangentPolynomial, map_mul]
      ring
    _ = _ := by
      rw [h4,h1,h0]
      simp only [tangentPolynomial, slopePolynomial, add_comp, sub_comp,
        mul_comp, pow_comp, C_comp, X_comp, map_add, map_sub, map_mul,
        map_pow, map_ofNat, map_one]
      ring

/-- The characteristic-two selected shape, derived from the SAME invariant polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7b70c96e61ea747859079415d529279e2d15c68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
