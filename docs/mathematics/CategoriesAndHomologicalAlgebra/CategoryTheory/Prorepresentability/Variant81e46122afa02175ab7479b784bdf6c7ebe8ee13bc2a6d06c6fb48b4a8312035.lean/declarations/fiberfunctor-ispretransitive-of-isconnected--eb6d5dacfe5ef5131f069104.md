# FiberFunctor.isPretransitive_of_isConnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e26fffe92a61cf5c672db694670be2d49b1b1548e2d641b8fa29afb53bf5531",
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
  "slug": "fiberfunctor-ispretransitive-of-isconnected--eb6d5dacfe5ef5131f069104",
  "source": {
    "blob": "210b20e927863cf538bf946d6b2335cf803e0a7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 455,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant81e46122afa02175ab7479b784bdf6c7ebe8ee13bc2a6d06c6fb48b4a8312035.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb6d5dacfe5ef5131f0691045cbcfcd135153aa93dc375617f0bf2875e95429b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant81e46122afa02175ab7479b784bdf6c7ebe8ee13bc2a6d06c6fb48b4a8312035.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e26fffe92a61cf5c672db694670be2d49b1b1548e2d641b8fa29afb53bf5531`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance FiberFunctor.isPretransitive_of_isConnected (X : C) [IsConnected X] :
    MulAction.IsPretransitive (Aut F) (F.obj X) where
  exists_smul_eq x y := by
    let F' : C ⥤ FintypeCat.{u₂} := F ⋙ FintypeCat.uSwitch.{w, u₂}
    let : FiberFunctor F' := FiberFunctor.comp_right _
    let e (Y : C) : F'.obj Y ≃ F.obj Y := (F.obj Y).uSwitchEquiv
    set x' : F'.obj X := (e X).symm x with hx'
    set y' : F'.obj X := (e X).symm y with hy'
    obtain ⟨g', (hg' : g'.hom.app X x' = y')⟩ := MulAction.exists_smul_eq (Aut F') x' y'
    let gapp (Y : C) : F.obj Y ≅ F.obj Y := FintypeCat.equivEquivIso <|
      (e Y).symm.trans <| (FintypeCat.equivEquivIso.symm (g'.app Y)).trans (e Y)
    let g : F ≅ F := NatIso.ofComponents gapp <| fun {X Y} f ↦ by
      ext x
      dsimp [gapp, e]
      erw [FintypeCat.uSwitchEquiv_naturality (F.map f)]
      rw [← Functor.comp_map]
      erw [← NatTrans.naturality_apply, FintypeCat.uSwitchEquiv_symm_naturality (F.map f)]
      rfl
    refine ⟨g, show (gapp X).hom x = y from ?_⟩
    simp [gapp, ← hx', hg', hy', Equiv.apply_symm_apply]

end General

end PreGaloisCategory

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant81e46122afa02175ab7479b784bdf6c7ebe8ee13bc2a6d06c6fb48b4a8312035.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant81e46122afa02175ab7479b784bdf6c7ebe8ee13bc2a6d06c6fb48b4a8312035.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `210b20e927863cf538bf946d6b2335cf803e0a7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
