# unitsFstOne_mulEquiv_quasiregular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e0b562f5aefdc152d72498ed4d1417be9ee0993bdec31f6385abf57f9aae2d1",
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
  "slug": "unitsfstone-mulequiv-quasiregular--6de987daadc6d475eb54052e",
  "source": {
    "blob": "aa728c7bb744630304861ea4b9dfea67cd4e01bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 145,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variant23148c069db0ee6312e40fd05ac620dbc2ce187f15366b4382fc0d209fd41394.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6de987daadc6d475eb54052e127c7c55278f50ea1089cddb228fb8010131ef63",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variant23148c069db0ee6312e40fd05ac620dbc2ce187f15366b4382fc0d209fd41394.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e0b562f5aefdc152d72498ed4d1417be9ee0993bdec31f6385abf57f9aae2d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitsFstOne_mulEquiv_quasiregular : unitsFstOne R A ≃* (PreQuasiregular A)ˣ where
  toFun x :=
    { val := equiv x.val.val.snd
      inv := equiv x⁻¹.val.val.snd
      val_inv := equiv.symm.injective <| by
        simpa [-Units.mul_inv] using congr(snd $(x.val.mul_inv))
      inv_val := equiv.symm.injective <| by
        simpa [-Units.inv_mul] using congr(snd $(x.val.inv_mul)) }
  invFun x :=
    { val :=
      { val := 1 + equiv.symm x.val
        inv := 1 + equiv.symm x⁻¹.val
        val_inv := by
          convert congr((1 + $(inv_add_add_mul_eq_zero x) : Unitization R A)) using 1
          · simp only [mul_one, equiv_symm_apply, one_mul, inr_zero, add_zero, mul_add, add_mul,
              inr_add, inr_mul]
            abel
          · simp only [inr_zero, add_zero]
        inv_val := by
          convert congr((1 + $(add_inv_add_mul_eq_zero x) : Unitization R A)) using 1
          · simp only [mul_one, equiv_symm_apply, one_mul, inr_zero, add_zero, mul_add, add_mul,
              inr_add, inr_mul]
            abel
          · simp only [inr_zero, add_zero] }
      property := by simp }
  left_inv x := Subtype.ext <| Units.ext <| by simpa using x.val.val.inl_fst_add_inr_snd_eq
  right_inv x := Units.ext <| by simp [-equiv_symm_apply]
  map_mul' x y := Units.ext <| equiv.symm.injective <| by simp

end Unitization

section PreQuasiregular

open PreQuasiregular

variable {R : Type*} [NonUnitalSemiring R]

/-- In a non-unital semiring `R`, an element `x : R` satisfies `IsQuasiregular` if it is a unit
under the monoid operation `fun x y ↦ y + x + x * y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variant23148c069db0ee6312e40fd05ac620dbc2ce187f15366b4382fc0d209fd41394.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variant23148c069db0ee6312e40fd05ac620dbc2ce187f15366b4382fc0d209fd41394.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa728c7bb744630304861ea4b9dfea67cd4e01bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
