# FiberFunctor.isPretransitive_of_isConnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b74b403f98f2faee4fa35061eca8ce9ded04d6edafe935f0bd5470ec5bafd22",
  "kind": "instance",
  "lexical_name": "FiberFunctor.isPretransitive_of_isConnected",
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
  "slug": "fiberfunctor-ispretransitive-of-isconnected--9fe871451d0a9ee9528250d7",
  "source": {
    "blob": "fc500c5bbe4e11feef5890e4426dadac24d6a056",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 442,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fe871451d0a9ee9528250d7dfd800013877ae9b1fd010f2ffd2055faa374f86",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b74b403f98f2faee4fa35061eca8ce9ded04d6edafe935f0bd5470ec5bafd22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance FiberFunctor.isPretransitive_of_isConnected (X : C) [IsConnected X] :
    MulAction.IsPretransitive (Aut F) (F.obj X) where
  exists_smul_eq x y := by
    let F' : C ⥤ FintypeCat.{u₂} := F ⋙ FintypeCat.uSwitch.{w, u₂}
    letI : FiberFunctor F' := FiberFunctor.comp_right _
    let e (Y : C) : F'.obj Y ≃ F.obj Y := (F.obj Y).uSwitchEquiv
    set x' : F'.obj X := (e X).symm x with hx'
    set y' : F'.obj X := (e X).symm y with hy'
    obtain ⟨g', (hg' : g'.hom.app X x' = y')⟩ := MulAction.exists_smul_eq (Aut F') x' y'
    let gapp (Y : C) : F.obj Y ≅ F.obj Y := FintypeCat.equivEquivIso <|
      (e Y).symm.trans <| (FintypeCat.equivEquivIso.symm (g'.app Y)).trans (e Y)
    let g : F ≅ F := NatIso.ofComponents gapp <| fun {X Y} f ↦ by
      ext x
      simp only [FintypeCat.comp_apply, FintypeCat.equivEquivIso_apply_hom,
        Equiv.trans_apply, FintypeCat.equivEquivIso_symm_apply_apply, Iso.app_hom, gapp, e]
      erw [FintypeCat.uSwitchEquiv_naturality (F.map f)]
      rw [← Functor.comp_map, ← FunctorToFintypeCat.naturality]
      simp only [comp_obj, Functor.comp_map, F']
      rw [FintypeCat.uSwitchEquiv_symm_naturality (F.map f)]
    refine ⟨g, show (gapp X).hom x = y from ?_⟩
    simp only [FintypeCat.equivEquivIso_apply_hom, Equiv.trans_apply,
      FintypeCat.equivEquivIso_symm_apply_apply, Iso.app_hom, gapp]
    rw [← hx', hg', hy', Equiv.apply_symm_apply]

end General

end PreGaloisCategory

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variantddfb81b33378c4ccb6233a9e691d15dc3b92d9b370f31f700037c2e72237d6ac.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc500c5bbe4e11feef5890e4426dadac24d6a056` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
