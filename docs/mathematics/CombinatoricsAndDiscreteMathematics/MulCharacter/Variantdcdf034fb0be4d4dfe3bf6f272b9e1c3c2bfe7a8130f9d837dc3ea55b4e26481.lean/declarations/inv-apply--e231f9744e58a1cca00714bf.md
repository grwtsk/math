# inv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ebedf57b-065c-c69b-3de4-a95a1ad3967b",
  "kind": "theorem",
  "lexical_name": "inv_apply",
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
  "slug": "inv-apply--e231f9744e58a1cca00714bf",
  "source": {
    "blob": "44c24736cb73bfb179e93247f6f130dd15bf26ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 336,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e231f9744e58a1cca00714bfb7ac66cb24612e685a8e582d74a0ad1195469a90",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebedf57b-065c-c69b-3de4-a95a1ad3967b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_apply {R : Type u} [CommMonoidWithZero R] (χ : MulChar R R') (a : R) :
    χ⁻¹ a = χ (Ring.inverse a) := by
  by_cases ha : IsUnit a
  · rw [inv_apply_eq_inv]
    have h := IsUnit.map χ ha
    apply_fun (χ a * ·) using IsUnit.mul_right_injective h
    dsimp only
    -- Porting note: was
    -- rw [Ring.mul_inverse_cancel _ h, ← map_mul, Ring.mul_inverse_cancel _ ha, MulChar.map_one]
    erw [Ring.mul_inverse_cancel _ h, ← map_mul, Ring.mul_inverse_cancel _ ha]
    exact (MulChar.map_one χ).symm
  · revert ha
    nontriviality R
    intro ha
    -- `nontriviality R` by itself doesn't do it
    rw [map_nonunit _ ha, Ring.inverse_non_unit a ha, MulChar.map_zero χ]
#align mul_char.inv_apply MulChar.inv_apply

/-- When the domain has a zero, then the inverse of a multiplicative character `χ`,
applied to `a`, is `χ` applied to the inverse of `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44c24736cb73bfb179e93247f6f130dd15bf26ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
