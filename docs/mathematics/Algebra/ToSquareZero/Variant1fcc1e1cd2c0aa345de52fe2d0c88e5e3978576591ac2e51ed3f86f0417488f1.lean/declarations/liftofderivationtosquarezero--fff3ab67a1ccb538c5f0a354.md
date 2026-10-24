# liftOfDerivationToSquareZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c525793d8260d14b7baea6cecaeb1f0f5da75191bb5238ad3a3043b6aa612c74",
  "kind": "def",
  "lexical_name": "liftOfDerivationToSquareZero",
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
  "slug": "liftofderivationtosquarezero--fff3ab67a1ccb538c5f0a354",
  "source": {
    "blob": "e163ab58bb8f3344af03b1cbf12520410f212159",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 84,
    "path": "GRWTSK/Algebra/ToSquareZero/Variant1fcc1e1cd2c0aa345de52fe2d0c88e5e3978576591ac2e51ed3f86f0417488f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fff3ab67a1ccb538c5f0a35471d4e5f438914089317cc741fff60b065b4200ee",
  "verification": {
    "reference": "docs/verification/Algebra/ToSquareZero/Variant1fcc1e1cd2c0aa345de52fe2d0c88e5e3978576591ac2e51ed3f86f0417488f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c525793d8260d14b7baea6cecaeb1f0f5da75191bb5238ad3a3043b6aa612c74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftOfDerivationToSquareZero (f : Derivation R A I) : A →ₐ[R] B :=
  { ((I.restrictScalars R).subtype.comp f.toLinearMap + (IsScalarTower.toAlgHom R A B).toLinearMap :
      A →ₗ[R] B) with
    toFun := fun x => f x + algebraMap A B x
    map_one' := by dsimp; rw [map_one, f.map_one_eq_zero, Submodule.coe_zero, zero_add]
    map_mul' := fun x y => by
      have : (f x : B) * f y = 0 := by
        rw [← Ideal.mem_bot, ← hI, pow_two]
        convert Ideal.mul_mem_mul (f x).2 (f y).2 using 1
      simp only [map_mul, f.leibniz, add_mul, mul_add, Submodule.coe_add,
        Submodule.coe_smul_of_tower, Algebra.smul_def, this]
      ring
    commutes' := fun r => by
      simp only [Derivation.map_algebraMap, eq_self_iff_true, zero_add, Submodule.coe_zero, ←
        IsScalarTower.algebraMap_apply R A B r]
    map_zero' := ((I.restrictScalars R).subtype.comp f.toLinearMap +
      (IsScalarTower.toAlgHom R A B).toLinearMap).map_zero }
#align lift_of_derivation_to_square_zero liftOfDerivationToSquareZero

-- @[simp] -- Porting note: simp normal form is `liftOfDerivationToSquareZero_mk_apply'`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ToSquareZero/Variant1fcc1e1cd2c0aa345de52fe2d0c88e5e3978576591ac2e51ed3f86f0417488f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ToSquareZero/Variant1fcc1e1cd2c0aa345de52fe2d0c88e5e3978576591ac2e51ed3f86f0417488f1.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e163ab58bb8f3344af03b1cbf12520410f212159` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
