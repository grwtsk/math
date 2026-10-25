# unitsFstOne_mulEquiv_quasiregular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d12177ca52f17356642373aec4991de9116152064367c8c2f84de4eb530f11b8",
  "kind": "def",
  "lexical_name": "unitsFstOne_mulEquiv_quasiregular",
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
  "slug": "unitsfstone-mulequiv-quasiregular--1dfd3895883bd02ce3706974",
  "source": {
    "blob": "c1b273bbf8cfa7d1e182fa2f861877a5452b05dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 146,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variante5da416f74d701c6970a0d6872d95a4ebe58d10a5fb6cd0ac0711a6586bdf4aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1dfd3895883bd02ce37069746180a356b9ebef7cc703c14edb3d33494631a252",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variante5da416f74d701c6970a0d6872d95a4ebe58d10a5fb6cd0ac0711a6586bdf4aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d12177ca52f17356642373aec4991de9116152064367c8c2f84de4eb530f11b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitsFstOne_mulEquiv_quasiregular : unitsFstOne R A ≃* (PreQuasiregular A)ˣ where
  toFun x :=
    { val := PreQuasiregular.equiv x.val.val.snd
      inv := PreQuasiregular.equiv x⁻¹.val.val.snd
      val_inv := PreQuasiregular.equiv.symm.injective <| by
        simpa [-Units.mul_inv] using congr($(x.val.mul_inv).snd)
      inv_val := PreQuasiregular.equiv.symm.injective <| by
        simpa [-Units.inv_mul] using congr($(x.val.inv_mul).snd) }
  invFun x :=
    { val :=
      { val := 1 + PreQuasiregular.equiv.symm x.val
        inv := 1 + PreQuasiregular.equiv.symm x⁻¹.val
        val_inv := by
          convert congr((1 + $(inv_add_add_mul_eq_zero x) : Unitization R A))
          · simp only [mul_one, PreQuasiregular.equiv_symm_apply, one_mul, mul_add,
              add_mul, inr_add, inr_mul]
            abel
          · simp only [inr_zero, add_zero]
        inv_val := by
          convert congr((1 + $(add_inv_add_mul_eq_zero x) : Unitization R A))
          · simp only [mul_one, PreQuasiregular.equiv_symm_apply, one_mul, mul_add,
              add_mul, inr_add, inr_mul]
            abel
          · simp only [inr_zero, add_zero] }
      property := by simp }
  left_inv x := Subtype.ext <| Units.ext <| by simpa using x.val.val.inl_fst_add_inr_snd_eq
  right_inv x := Units.ext <| by simp [-PreQuasiregular.equiv_symm_apply]
  map_mul' x y := Units.ext <| PreQuasiregular.equiv.symm.injective <| by simp

end Unitization

section PreQuasiregular

open PreQuasiregular

variable {R : Type*} [NonUnitalSemiring R]

/-- In a non-unital semiring `R`, an element `x : R` satisfies `IsQuasiregular` if it is a unit
under the monoid operation `fun x y ↦ y + x + x * y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variante5da416f74d701c6970a0d6872d95a4ebe58d10a5fb6cd0ac0711a6586bdf4aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variante5da416f74d701c6970a0d6872d95a4ebe58d10a5fb6cd0ac0711a6586bdf4aa.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1b273bbf8cfa7d1e182fa2f861877a5452b05dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
