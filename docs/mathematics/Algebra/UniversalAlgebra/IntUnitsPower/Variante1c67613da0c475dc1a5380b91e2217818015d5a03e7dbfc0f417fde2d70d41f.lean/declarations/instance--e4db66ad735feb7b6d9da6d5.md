# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e78ed297c8ce0e3145760e486b36079d24f7f0bb6661dbecb808ea89b0ce0cc4",
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
  "slug": "instance--e4db66ad735feb7b6d9da6d5",
  "source": {
    "blob": "a52ba95fb1707b7a9c9f8254686656104946f76a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 42,
    "path": "GRWTSK/Algebra/UniversalAlgebra/IntUnitsPower/Variante1c67613da0c475dc1a5380b91e2217818015d5a03e7dbfc0f417fde2d70d41f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4db66ad735feb7b6d9da6d56281d86f0266da96f441f1b71013d141665e65ad",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/IntUnitsPower/Variante1c67613da0c475dc1a5380b91e2217818015d5a03e7dbfc0f417fde2d70d41f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e78ed297c8ce0e3145760e486b36079d24f7f0bb6661dbecb808ea89b0ce0cc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Module (ZMod 2) (Additive ℤˣ) where
  smul z au := .ofMul <| au.toMul ^ z.val
  one_smul _ := Additive.toMul.injective <| pow_one _
  mul_smul z₁ z₂ au := Additive.toMul.injective <| by
    dsimp only [ZMod.smul_units_def, toMul_nsmul]
    rw [← pow_mul, ZMod.val_mul, ← Int.units_pow_eq_pow_mod_two, mul_comm]
  smul_zero _ := Additive.toMul.injective <| one_pow _
  smul_add _ _ _ := Additive.toMul.injective <| mul_pow _ _ _
  add_smul z₁ z₂ au := Additive.toMul.injective <| by
    dsimp only [ZMod.smul_units_def, toMul_nsmul, toMul_add]
    rw [← pow_add, ZMod.val_add, ← Int.units_pow_eq_pow_mod_two]
  zero_smul au := Additive.toMul.injective <| pow_zero au.toMul

section CommSemiring
variable {R : Type*} [CommSemiring R] [Module R (Additive ℤˣ)]

/-- There is a canonical power operation on `ℤˣ` by `R` if `Additive ℤˣ` is an `R`-module.

In lemma names, this operation is called `uzpow` to match `zpow`.

Notably this is satisfied by `R ∈ {ℕ, ℤ, ZMod 2}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/IntUnitsPower/Variante1c67613da0c475dc1a5380b91e2217818015d5a03e7dbfc0f417fde2d70d41f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/IntUnitsPower/Variante1c67613da0c475dc1a5380b91e2217818015d5a03e7dbfc0f417fde2d70d41f.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a52ba95fb1707b7a9c9f8254686656104946f76a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
