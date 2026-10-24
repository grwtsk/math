# freeGroupUnitEquivInt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6dbf9e28f4b5b7817afeb93a7e12d345e95b8ad2828caeed64ac4d7d5850099d",
  "kind": "def",
  "lexical_name": "freeGroupUnitEquivInt",
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
  "slug": "freegroupunitequivint--ce58e8b7071a1eb827a86c4f",
  "source": {
    "blob": "a9de5450bdc3246e690578d0c0fab4ad0a22a2ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1021,
    "line": 993,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FreeGroup/Variant717f3aff88ea59a9775c70f5516a426460584bc227e4a395d92a0730534a47af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce58e8b7071a1eb827a86c4f0da597d2ee3ad1a21bb63c02541c9ec73f073fb9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FreeGroup/Variant717f3aff88ea59a9775c70f5516a426460584bc227e4a395d92a0730534a47af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6dbf9e28f4b5b7817afeb93a7e12d345e95b8ad2828caeed64ac4d7d5850099d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 993–1021.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def freeGroupUnitEquivInt : FreeGroup Unit ≃ ℤ
    where
  toFun x := sum (by
    revert x
    change (FreeGroup Unit →* FreeGroup ℤ)
    apply map fun _ => (1 : ℤ))
  invFun x := of () ^ x
  left_inv := by
    rintro ⟨L⟩
    simp only [quot_mk_eq_mk, map.mk, sum_mk, List.map_map]
    exact List.recOn L
     (by rfl)
     (fun ⟨⟨⟩, b⟩ tl ih => by
        cases b <;> simp [zpow_add] at ih ⊢ <;> rw [ih] <;> rfl)
  right_inv x :=
    Int.induction_on x (by simp)
      (fun i ih => by
        simp only [zpow_coe_nat, map_pow, map.of] at ih
        simp [zpow_add, ih])
      (fun i ih => by
        simp only [zpow_neg, zpow_coe_nat, map_inv, map_pow, map.of, sum.map_inv, neg_inj] at ih
        simp [zpow_add, ih, sub_eq_add_neg])
#align free_group.free_group_unit_equiv_int FreeGroup.freeGroupUnitEquivInt

section Category

variable {β : Type u}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FreeGroup/Variant717f3aff88ea59a9775c70f5516a426460584bc227e4a395d92a0730534a47af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FreeGroup/Variant717f3aff88ea59a9775c70f5516a426460584bc227e4a395d92a0730534a47af.lean#L993).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9de5450bdc3246e690578d0c0fab4ad0a22a2ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
