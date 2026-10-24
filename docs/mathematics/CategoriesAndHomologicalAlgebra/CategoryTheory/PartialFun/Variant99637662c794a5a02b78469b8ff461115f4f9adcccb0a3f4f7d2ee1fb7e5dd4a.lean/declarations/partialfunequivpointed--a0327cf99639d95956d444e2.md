# partialFunEquivPointed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e8afc65602310cddf1a901d46b229174b9061ee2e317bb1fc2f5754624ca7a1",
  "kind": "def",
  "lexical_name": "partialFunEquivPointed",
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
  "slug": "partialfunequivpointed--a0327cf99639d95956d444e2",
  "source": {
    "blob": "3623e67b4784ffabb89412164300666b164be75d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 132,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant99637662c794a5a02b78469b8ff461115f4f9adcccb0a3f4f7d2ee1fb7e5dd4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0327cf99639d95956d444e2a6ca667891a5c4bacf7c9a399d44bf0a4b31e1ea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant99637662c794a5a02b78469b8ff461115f4f9adcccb0a3f4f7d2ee1fb7e5dd4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e8afc65602310cddf1a901d46b229174b9061ee2e317bb1fc2f5754624ca7a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def partialFunEquivPointed : PartialFun.{u} ≌ Pointed where
  functor := partialFunToPointed
  inverse := pointedToPartialFun
  unitIso := NatIso.ofComponents (fun X => PartialFun.Iso.mk
      { toFun := fun a => ⟨some a, some_ne_none a⟩
        invFun := fun a => Option.get _ (Option.ne_none_iff_isSome.1 a.2)
        left_inv := fun _ => Option.get_some _ _
        right_inv := fun a => by simp only [some_get, Subtype.coe_eta] })
      fun f =>
        PFun.ext fun a b => by
          dsimp [PartialFun.Iso.mk, CategoryStruct.comp, pointedToPartialFun]
          rw [Part.bind_some]
          refine (Part.mem_bind_iff.trans ?_).trans PFun.mem_toSubtype_iff.symm
          obtain ⟨b | b, hb⟩ := b
          · exact (hb rfl).elim
          · simp only [ne_eq, Part.mem_some_iff]
            classical
            refine ⟨fun ⟨w, hw, h⟩ ↦ ?_, fun h ↦ ⟨b, Part.mem_toOption.mp h.symm, rfl⟩⟩
            rw [Subtype.ext_iff] at h
            dsimp at h
            rw [h]
            rw [← Part.mem_toOption, mem_def] at hw
            exact hw.symm
  counitIso :=
    NatIso.ofComponents
      (fun X ↦ Pointed.Iso.mk (by classical exact Equiv.optionSubtypeNe X.point) rfl)
      fun {X Y} f ↦ Pointed.Hom.ext <| funext fun a ↦ by
        obtain _ | ⟨a, ha⟩ := a
        · exact f.map_point.symm
        simp_all [Equiv.optionSubtypeNe, Equiv.optionSubtype,
          Option.casesOn'_eq_elim, Part.elim_toOption]
  functor_unitIso_comp X := by
    ext (_ | x)
    · rfl
    · simp
      rfl

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Forgetting that maps are total and making them total again by adding a point is the same as just
adding a point. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant99637662c794a5a02b78469b8ff461115f4f9adcccb0a3f4f7d2ee1fb7e5dd4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant99637662c794a5a02b78469b8ff461115f4f9adcccb0a3f4f7d2ee1fb7e5dd4a.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3623e67b4784ffabb89412164300666b164be75d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
