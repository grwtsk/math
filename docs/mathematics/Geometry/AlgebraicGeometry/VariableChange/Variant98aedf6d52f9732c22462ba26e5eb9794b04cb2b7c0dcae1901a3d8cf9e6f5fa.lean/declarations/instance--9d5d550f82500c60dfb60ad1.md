# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:383ffb8ee91677a04a624a9020abf04b59aa7c2a81050e93b9020892dbc5aa19",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--9d5d550f82500c60dfb60ad1",
  "source": {
    "blob": "966a35b23963e2357f57e1630d1593901ce200ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 129,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/VariableChange/Variant98aedf6d52f9732c22462ba26e5eb9794b04cb2b7c0dcae1901a3d8cf9e6f5fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d5d550f82500c60dfb60ad11fd1608cc301d2bae2de5c49db892f8bd47985ac",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/VariableChange/Variant98aedf6d52f9732c22462ba26e5eb9794b04cb2b7c0dcae1901a3d8cf9e6f5fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:383ffb8ee91677a04a624a9020abf04b59aa7c2a81050e93b9020892dbc5aa19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : SMul (VariableChange R) (WeierstrassCurve R) where
  smul C W := {
    a₁ := C.u⁻¹ * (W.a₁ + 2 * C.s)
    a₂ := C.u⁻¹ ^ 2 * (W.a₂ - C.s * W.a₁ + 3 * C.r - C.s ^ 2)
    a₃ := C.u⁻¹ ^ 3 * (W.a₃ + C.r * W.a₁ + 2 * C.t)
    a₄ := C.u⁻¹ ^ 4 * (W.a₄ - C.s * W.a₃ + 2 * C.r * W.a₂ - (C.t + C.r * C.s) * W.a₁ + 3 * C.r ^ 2
      - 2 * C.s * C.t)
    a₆ := C.u⁻¹ ^ 6 * (W.a₆ + C.r * W.a₄ + C.r ^ 2 * W.a₂ + C.r ^ 3 - C.t * W.a₃ - C.t ^ 2
      - C.r * C.t * W.a₁) }

/-- The Weierstrass curve over `R` induced by an admissible linear change of variables
`(X, Y) ↦ (u²X + r, u³Y + u²sX + t)` for some `u` in `Rˣ` and some `r, s, t` in `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/VariableChange/Variant98aedf6d52f9732c22462ba26e5eb9794b04cb2b7c0dcae1901a3d8cf9e6f5fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/VariableChange/Variant98aedf6d52f9732c22462ba26e5eb9794b04cb2b7c0dcae1901a3d8cf9e6f5fa.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `966a35b23963e2357f57e1630d1593901ce200ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
