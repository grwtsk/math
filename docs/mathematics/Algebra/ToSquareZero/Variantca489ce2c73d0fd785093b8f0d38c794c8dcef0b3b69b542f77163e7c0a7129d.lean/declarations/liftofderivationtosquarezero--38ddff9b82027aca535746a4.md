# liftOfDerivationToSquareZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b08e0a6021b4bb2c0a5ce185fcdbc40532c63942a98a86e7d107216c741c1af6",
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
  "slug": "liftofderivationtosquarezero--38ddff9b82027aca535746a4",
  "source": {
    "blob": "7f28115e7a629394b43967bb846692e8a59f2107",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 79,
    "path": "GRWTSK/Algebra/ToSquareZero/Variantca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38ddff9b82027aca535746a43c10a6dad7e4d68f780e8e4f6067c19934e6d9ae",
  "verification": {
    "reference": "docs/verification/Algebra/ToSquareZero/Variantca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b08e0a6021b4bb2c0a5ce185fcdbc40532c63942a98a86e7d107216c741c1af6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftOfDerivationToSquareZero [IsScalarTower R A B] (hI : I ^ 2 = ⊥) (f : Derivation R A I) :
    A →ₐ[R] B :=
  { ((I.restrictScalars R).subtype.comp f.toLinearMap + (IsScalarTower.toAlgHom R A B).toLinearMap :
      A →ₗ[R] B) with
    toFun := fun x => f x + algebraMap A B x
    map_one' := by
      -- Note: added the `(algebraMap _ _)` hint because otherwise it would match `f 1`
      rw [map_one (algebraMap _ _), f.map_one_eq_zero, Submodule.coe_zero, zero_add]
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

-- @[simp] -- Porting note: simp normal form is `liftOfDerivationToSquareZero_mk_apply'`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ToSquareZero/Variantca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ToSquareZero/Variantca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f28115e7a629394b43967bb846692e8a59f2107` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
