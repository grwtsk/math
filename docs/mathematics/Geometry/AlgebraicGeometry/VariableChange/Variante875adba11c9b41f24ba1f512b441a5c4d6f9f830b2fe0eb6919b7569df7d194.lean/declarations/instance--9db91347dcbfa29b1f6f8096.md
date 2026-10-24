# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b3197008cf4a03058ab658ef22feb372f83dbadf2a7359ba034f6d6dd19dd51",
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
  "slug": "instance--9db91347dcbfa29b1f6f8096",
  "source": {
    "blob": "4bb7d3dff5a90740c56357bf01353fa67adc82c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 142,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/VariableChange/Variante875adba11c9b41f24ba1f512b441a5c4d6f9f830b2fe0eb6919b7569df7d194.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9db91347dcbfa29b1f6f80966d993297d22244bf3c5ee7abb7d4a6e270398643",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/VariableChange/Variante875adba11c9b41f24ba1f512b441a5c4d6f9f830b2fe0eb6919b7569df7d194.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b3197008cf4a03058ab658ef22feb372f83dbadf2a7359ba034f6d6dd19dd51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : MulAction (VariableChange R) (WeierstrassCurve R) where
  one_smul W := by
    rw [VariableChange.one_def, variableChange_def, inv_one, Units.val_one]
    ext <;> dsimp only <;> ring1
  mul_smul C C' W := by
    simp only [VariableChange.mul_def, variableChange_def]
    ext <;> simp only [mul_inv, Units.val_mul]
    · linear_combination ↑C.u⁻¹ * C.s * 2 * C'.u.inv_mul
    · linear_combination
        C.s * (-C'.s * 2 - W.a₁) * C.u⁻¹ ^ 2 * ↑C'.u⁻¹ * C'.u.inv_mul
          + (C.r * 3 - C.s ^ 2) * C.u⁻¹ ^ 2 * pow_mul_pow_eq_one 2 C'.u.inv_mul
    · linear_combination
        C.r * (C'.s * 2 + W.a₁) * C.u⁻¹ ^ 3 * ↑C'.u⁻¹ * pow_mul_pow_eq_one 2 C'.u.inv_mul
          + C.t * 2 * C.u⁻¹ ^ 3 * pow_mul_pow_eq_one 3 C'.u.inv_mul
    · linear_combination
        C.s * (-W.a₃ - C'.r * W.a₁ - C'.t * 2) * C.u⁻¹ ^ 4 * C'.u⁻¹ ^ 3 * C'.u.inv_mul
          + C.u⁻¹ ^ 4 * C'.u⁻¹ ^ 2 * (C.r * C'.r * 6 + C.r * W.a₂ * 2 - C'.s * C.r * W.a₁ * 2
            - C'.s ^ 2 * C.r * 2) * pow_mul_pow_eq_one 2 C'.u.inv_mul
          - C.u⁻¹ ^ 4 * ↑C'.u⁻¹ * (C.s * C'.s * C.r * 2 + C.s * C.r * W.a₁ + C'.s * C.t * 2
            + C.t * W.a₁) * pow_mul_pow_eq_one 3 C'.u.inv_mul
          + C.u⁻¹ ^ 4 * (C.r ^ 2 * 3 - C.s * C.t * 2) * pow_mul_pow_eq_one 4 C'.u.inv_mul
    · linear_combination
        C.r * C.u⁻¹ ^ 6 * C'.u⁻¹ ^ 4 * (C'.r * W.a₂ * 2 - C'.r * C'.s * W.a₁ + C'.r ^ 2 * 3 + W.a₄
            - C'.s * C'.t * 2 - C'.s * W.a₃ - C'.t * W.a₁) * pow_mul_pow_eq_one 2 C'.u.inv_mul
          - C.u⁻¹ ^ 6 * C'.u⁻¹ ^ 3 * C.t * (C'.r * W.a₁ + C'.t * 2 + W.a₃)
            * pow_mul_pow_eq_one 3 C'.u.inv_mul
          + C.r ^ 2 * C.u⁻¹ ^ 6 * C'.u⁻¹ ^ 2 * (C'.r * 3 + W.a₂ - C'.s * W.a₁ - C'.s ^ 2)
            * pow_mul_pow_eq_one 4 C'.u.inv_mul
          - C.r * C.t * C.u⁻¹ ^ 6 * ↑C'.u⁻¹ * (C'.s * 2 + W.a₁) * pow_mul_pow_eq_one 5 C'.u.inv_mul
          + C.u⁻¹ ^ 6 * (C.r ^ 3 - C.t ^ 2) * pow_mul_pow_eq_one 6 C'.u.inv_mul

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/VariableChange/Variante875adba11c9b41f24ba1f512b441a5c4d6f9f830b2fe0eb6919b7569df7d194.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/VariableChange/Variante875adba11c9b41f24ba1f512b441a5c4d6f9f830b2fe0eb6919b7569df7d194.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bb7d3dff5a90740c56357bf01353fa67adc82c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
