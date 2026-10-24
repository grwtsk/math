# addX_of_Z_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d49c4fa4-4654-6a92-dfd1-4c1b65d89660",
  "kind": "lemma",
  "lexical_name": "addX_of_Z_ne_zero",
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
  "slug": "addx-of-z-ne-zero--cf67106e142e77af35d8324f",
  "source": {
    "blob": "4a8f4c270e03d36756a9c4a314108d1ece1e23f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 532,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Formula/Variant22eb1c881e94af2d17aae2a6632555bc728fef7af1e9e84b95b8ab13e87d9e68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf67106e142e77af35d8324ff639fcc8123c29ba8d628a98c67b3709b746591e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Formula/Variant22eb1c881e94af2d17aae2a6632555bc728fef7af1e9e84b95b8ab13e87d9e68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d49c4fa4-4654-6a92-dfd1-4c1b65d89660`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 532–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma addX_of_Z_ne_zero {P Q : Fin 3 → F} (hP : W.Equation P) (hQ : W.Equation Q) (hPz : P z ≠ 0)
    (hQz : Q z ≠ 0) (hx : P x * Q z ^ 2 ≠ Q x * P z ^ 2) : W.addX P Q / addZ P Q ^ 2 =
      W.toAffine.addX (P x / P z ^ 2) (Q x / Q z ^ 2)
        (W.toAffine.slope (P x / P z ^ 2) (Q x / Q z ^ 2) (P y / P z ^ 3) (Q y / Q z ^ 3)) := by
  rw [addX_eq hP hQ hPz hQz, toAffine_slope_of_ne hPz hQz hx,
    toAffine_addX_of_ne hPz hQz <| addZ_ne_zero_of_X_ne hx]

variable (W') in
/-- The `Y`-coordinate of a representative of `-(P + Q)` for two distinct Jacobian point
representatives `P` and `Q` on a Weierstrass curve.

If the representatives of `P` and `Q` are equal, then this returns the value `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Formula/Variant22eb1c881e94af2d17aae2a6632555bc728fef7af1e9e84b95b8ab13e87d9e68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Formula/Variant22eb1c881e94af2d17aae2a6632555bc728fef7af1e9e84b95b8ab13e87d9e68.lean#L532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a8f4c270e03d36756a9c4a314108d1ece1e23f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
