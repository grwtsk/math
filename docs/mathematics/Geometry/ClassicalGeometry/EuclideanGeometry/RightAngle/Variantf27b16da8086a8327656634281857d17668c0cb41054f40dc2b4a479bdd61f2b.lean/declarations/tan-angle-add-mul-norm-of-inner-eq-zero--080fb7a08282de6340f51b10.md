# tan_angle_add_mul_norm_of_inner_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46015a0e-1a6b-9392-8d2b-a84295032133",
  "kind": "theorem",
  "lexical_name": "tan_angle_add_mul_norm_of_inner_eq_zero",
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
  "slug": "tan-angle-add-mul-norm-of-inner-eq-zero--080fb7a08282de6340f51b10",
  "source": {
    "blob": "1e2b00d098ab35e4d71f4f517217f1acc91a573d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 180,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variantf27b16da8086a8327656634281857d17668c0cb41054f40dc2b4a479bdd61f2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:080fb7a08282de6340f51b10b14581b9df8a29c2fc0ef1b73c514bb526330d2d",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variantf27b16da8086a8327656634281857d17668c0cb41054f40dc2b4a479bdd61f2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46015a0e-1a6b-9392-8d2b-a84295032133`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tan_angle_add_mul_norm_of_inner_eq_zero {x y : V} (h : ⟪x, y⟫ = 0) (h0 : x ≠ 0 ∨ y = 0) :
    Real.tan (angle x (x + y)) * ‖x‖ = ‖y‖ := by
  rw [tan_angle_add_of_inner_eq_zero h]
  rcases h0 with (h0 | h0) <;> simp [h0]

/-- A side of a right-angled triangle divided by the cosine of the adjacent angle equals the
hypotenuse. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variantf27b16da8086a8327656634281857d17668c0cb41054f40dc2b4a479bdd61f2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variantf27b16da8086a8327656634281857d17668c0cb41054f40dc2b4a479bdd61f2b.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e2b00d098ab35e4d71f4f517217f1acc91a573d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
