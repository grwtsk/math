# nerveFunctor₂.full

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16bd68b61cea426c596fd53a00db9e6e5d10130a5c454364c45ac9949af2c547",
  "kind": "instance",
  "lexical_name": "nerveFunctor₂.full",
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
  "slug": "nervefunctor-full--3cc1c2ac71cdd3eaa4f0d9e5",
  "source": {
    "blob": "e824dadfad76cb70459b8b482c37ad831d1edadc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 414,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cc1c2ac71cdd3eaa4f0d9e55c81e5ef53f6d25b734d874847d65282aded8bd6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16bd68b61cea426c596fd53a00db9e6e5d10130a5c454364c45ac9949af2c547`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nerveFunctor₂.full : nerveFunctor₂.{u, u}.Full where
  map_surjective := by
    intro X Y F
    let uF := SSet.oneTruncation₂.map F
    let uF' : X ⥤rq Y :=
      OneTruncation₂.ofNerve₂.natIso.inv.app X ≫ uF ≫ OneTruncation₂.ofNerve₂.natIso.hom.app Y
    have {a b c : X} (h : a ⟶ b) (k : b ⟶ c) :
        uF'.map (h ≫ k) = uF'.map h ≫ uF'.map k := by
      let hk := ComposableArrows.mk₂ h k
      let Fh : ComposableArrows Y 1 := F.app (op ⦋1⦌₂) (.mk₁ h)
      let Fk : ComposableArrows Y 1 := F.app (op ⦋1⦌₂) (.mk₁ k)
      let Fhk' : ComposableArrows Y 1 := F.app (op ⦋1⦌₂) (.mk₁ (h ≫ k))
      let Fhk : ComposableArrows Y 2 := F.app (op ⦋2⦌₂) hk
      have lem0 := congr_arg_heq (·.map' 0 1) (congr_fun (F.naturality δ0₂.op) hk)
      have lem1 := congr_arg_heq (·.map' 0 1) (congr_fun (F.naturality δ1₂.op) hk)
      have lem2 := congr_arg_heq (·.map' 0 1) (congr_fun (F.naturality δ2₂.op) hk)
      have eq0 : (nerveFunctor₂.obj X).map δ0₂.op hk = .mk₁ k := by
        apply ComposableArrows.ext₁ rfl rfl
        simp [nerveFunctor₂, SSet.truncation, forget₂, HasForget₂.forget₂]
      have eq2 : (nerveFunctor₂.obj X).map δ2₂.op hk = .mk₁ h := by
        apply ComposableArrows.ext₁ (by rfl) (by rfl)
        simp [nerveFunctor₂, SSet.truncation, forget₂, HasForget₂.forget₂]; rfl
      have eq1 : (nerveFunctor₂.obj X).map δ1₂.op hk = .mk₁ (h ≫ k) := by
        apply ComposableArrows.ext₁ (by rfl) (by rfl)
        simp [nerveFunctor₂, SSet.truncation, forget₂, HasForget₂.forget₂]; rfl
      dsimp at lem0 lem1 lem2
      rw [eq0] at lem0
      rw [eq1] at lem1
      rw [eq2] at lem2
      replace lem0 : HEq (uF'.map k) (Fhk.map' 1 2) := by
        refine HEq.trans (b := Fk.map' 0 1) ?_ lem0
        simp [uF', nerveFunctor₂, SSet.truncation, forget₂, HasForget₂.forget₂,
          ReflQuiv.comp_eq_comp, OneTruncation₂.nerveHomEquiv, Fk, uF]
      replace lem2 : HEq (uF'.map h) (Fhk.map' 0 1) := by
        refine HEq.trans (b := Fh.map' 0 1) ?_ lem2
        simp [uF', nerveFunctor₂, SSet.truncation, forget₂, HasForget₂.forget₂,
          ReflQuiv.comp_eq_comp, OneTruncation₂.nerveHomEquiv, Fk, uF, ComposableArrows.hom, Fh]
      replace lem1 : HEq (uF'.map (h ≫ k)) (Fhk.map' 0 2) := by
        refine HEq.trans (b := Fhk'.map' 0 1) ?_ lem1
        simp only [Nat.reduceAdd, id_eq, Int.reduceNeg, Int.cast_ofNat_Int, Int.reduceSub,
          Int.reduceAdd, Nat.cast_ofNat, Fin.zero_eta, Fin.isValue, Fin.mk_one,
          ComposableArrows.map', homOfLE_leOfHom, Fk, uF, Fh, uF']
        dsimp
        simp [uF', nerveFunctor₂, SSet.truncation, forget₂, HasForget₂.forget₂,
          ReflQuiv.comp_eq_comp, OneTruncation₂.nerveHomEquiv, Fk, uF, ComposableArrows.hom, Fhk']
      rw [Fhk.map'_comp 0 1 2] at lem1
      refine eq_of_heq (lem1.trans (heq_comp ?_ ?_ ?_ lem2.symm lem0.symm)) <;>
        simp [uF', nerveFunctor₂, SSet.truncation, forget₂, HasForget₂.forget₂,
          ReflQuiv.comp_eq_comp, OneTruncation₂.nerveHomEquiv, Fk, uF, Fhk] <;>
        [let ι := ι0₂; let ι := ι1₂; let ι := ι2₂] <;>
      · replace := congr_arg (·.obj 0) (congr_fun (F.naturality ι.op) hk)
        dsimp [oneTruncation₂, ComposableArrows.left, SimplicialObject.truncation,
          nerveFunctor₂, SSet.truncation, forget₂, HasForget₂.forget₂] at this ⊢
        convert this.symm
        apply ComposableArrows.ext₀; rfl
    let fF : X ⥤ Y := ReflPrefunctor.toFunctor uF' this
    have eq : fF.toReflPrefunctor = uF' := rfl
    refine ⟨fF, toNerve₂.ext (nerveFunctor₂.{u,u}.map fF) F ?_⟩
    · have nat := OneTruncation₂.ofNerve₂.natIso.hom.naturality fF
      simp at nat
      rw [eq] at nat
      simp [uF', uF] at nat
      exact (Iso.cancel_iso_hom_right (oneTruncation₂.map (nerveFunctor₂.map fF))
        (oneTruncation₂.map F) (OneTruncation₂.ofNerve₂.natIso.app Y)).mp nat

/-- The 2-truncated nerve functor is both full and faithful and thus is fully faithful. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e824dadfad76cb70459b8b482c37ad831d1edadc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
