# partialFunEquivPointed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8db42b6042cad72060048d7b51a21ce1eaccd430f95cdc11fdcb18c8f654963",
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
  "slug": "partialfunequivpointed--c6ee6eff109a5eafb32c6350",
  "source": {
    "blob": "c5d65f076306ab3bdf4f784d61d53f7f0df65522",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 119,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6ee6eff109a5eafb32c63500c1aa8159b588d6f38494e9ab2df9741a3a92cef",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8db42b6042cad72060048d7b51a21ce1eaccd430f95cdc11fdcb18c8f654963`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–162.

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
          -- Porting note: the proof below has changed a lot because
          -- `Part.mem_bind_iff` means that `b ∈ Part.bind f g` is equivalent
          -- to `∃ (a : α), a ∈ f ∧ b ∈ g a`, while in mathlib3 it was equivalent
          -- to `∃ (a : α) (H : a ∈ f), b ∈ g a`
          refine (Part.mem_bind_iff.trans ?_).trans PFun.mem_toSubtype_iff.symm
          obtain ⟨b | b, hb⟩ := b
          · exact (hb rfl).elim
          · dsimp [Part.toOption]
            simp_rw [Part.mem_some_iff, Subtype.mk_eq_mk]
            constructor
            · rintro ⟨_, ⟨h₁, h₂⟩, h₃⟩
              rw [h₃, ← h₂, dif_pos h₁]
            · intro h
              split_ifs at h with ha
              rw [some_inj] at h
              exact ⟨b, ⟨ha, h.symm⟩, rfl⟩
  counitIso :=
    NatIso.ofComponents
      (fun X ↦ Pointed.Iso.mk (by classical exact Equiv.optionSubtypeNe X.point) (by rfl))
      fun {X Y} f ↦ Pointed.Hom.ext <| funext fun a ↦ by
        obtain _ | ⟨a, ha⟩ := a
        · exact f.map_point.symm
        simp_all [Option.casesOn'_eq_elim, Part.elim_toOption]
  functor_unitIso_comp X := by
    ext (_ | x)
    · rfl
    · simp
      rfl

/-- Forgetting that maps are total and making them total again by adding a point is the same as just
adding a point. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartialFun/Variant3d35bbb3af46f9f1f3118ccee9344912c2bf72cb1508003d94ecacd44dd97f3f.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5d65f076306ab3bdf4f784d61d53f7f0df65522` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
