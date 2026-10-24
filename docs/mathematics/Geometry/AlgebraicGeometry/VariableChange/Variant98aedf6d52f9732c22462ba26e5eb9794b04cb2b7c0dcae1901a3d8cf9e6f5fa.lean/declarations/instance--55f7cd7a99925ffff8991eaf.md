# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d6ef603bd717dc1a59e946050c7ea7192b87955d2a923c037b1aa5015f88fb6",
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
  "slug": "instance--55f7cd7a99925ffff8991eaf",
  "source": {
    "blob": "966a35b23963e2357f57e1630d1593901ce200ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 109,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/VariableChange/Variant98aedf6d52f9732c22462ba26e5eb9794b04cb2b7c0dcae1901a3d8cf9e6f5fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55f7cd7a99925ffff8991eaf9312a672d5aa571943dd276c01d39662c14a465a",
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

Occurrence: `declaration:4d6ef603bd717dc1a59e946050c7ea7192b87955d2a923c037b1aa5015f88fb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Group (VariableChange R) where
  one_mul C := by
    simp only [mul_def, one_def, zero_add, zero_mul, mul_zero, one_mul]
  mul_one C := by
    simp only [mul_def, one_def, add_zero, mul_zero, one_mul, mul_one, one_pow, Units.val_one]
  inv_mul_cancel C := by
    rw [mul_def, one_def, inv_def]
    ext <;> dsimp only
    · exact C.u.inv_mul
    · linear_combination -C.r * pow_mul_pow_eq_one 2 C.u.inv_mul
    · linear_combination -C.s * C.u.inv_mul
    · linear_combination (C.r * C.s - C.t) * pow_mul_pow_eq_one 3 C.u.inv_mul
        + -C.r * C.s * pow_mul_pow_eq_one 2 C.u.inv_mul
  mul_assoc _ _ _ := by
    ext <;> simp only [mul_def, Units.val_mul] <;> ring1

end VariableChange

variable (C : VariableChange R)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/VariableChange/Variant98aedf6d52f9732c22462ba26e5eb9794b04cb2b7c0dcae1901a3d8cf9e6f5fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/VariableChange/Variant98aedf6d52f9732c22462ba26e5eb9794b04cb2b7c0dcae1901a3d8cf9e6f5fa.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `966a35b23963e2357f57e1630d1593901ce200ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
