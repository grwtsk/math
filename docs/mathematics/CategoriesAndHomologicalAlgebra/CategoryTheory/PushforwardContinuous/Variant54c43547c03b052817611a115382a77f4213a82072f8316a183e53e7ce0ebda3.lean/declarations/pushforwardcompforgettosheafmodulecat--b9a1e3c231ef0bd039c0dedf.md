# pushforwardCompForgetToSheafModuleCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ccfcc85d5c6589b2415a0ab8bff7535e9c442c240d7913672ecc34ffaf9c82d",
  "kind": "def",
  "lexical_name": "pushforwardCompForgetToSheafModuleCat",
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
  "slug": "pushforwardcompforgettosheafmodulecat--b9a1e3c231ef0bd039c0dedf",
  "source": {
    "blob": "da5ea3495c1c6589b3f1960ad5c652e3cb52c62e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 415,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushforwardContinuous/Variant54c43547c03b052817611a115382a77f4213a82072f8316a183e53e7ce0ebda3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9a1e3c231ef0bd039c0dedf0f7576532122a2ad65308b957519226762191e6d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PushforwardContinuous/Variant54c43547c03b052817611a115382a77f4213a82072f8316a183e53e7ce0ebda3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ccfcc85d5c6589b2415a0ab8bff7535e9c442c240d7913672ecc34ffaf9c82d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pushforwardCompForgetToSheafModuleCat
    (X : Cᵒᵖ) (hX : Limits.IsInitial X) (hX' : Limits.IsInitial (F.op.obj X)) :
    SheafOfModules.pushforward φ ⋙ SheafOfModules.forgetToSheafModuleCat _ X hX ≅
    SheafOfModules.forgetToSheafModuleCat _ _ hX' ⋙
      sheafCompose K (ModuleCat.restrictScalars <| (φ.hom.app _).hom) ⋙
        F.sheafPushforwardContinuous _ J K := by
  refine NatIso.ofComponents (fun M ↦ ObjectProperty.isoMk _ ?_) ?_
  · refine NatIso.ofComponents (fun U ↦ ?_) ?_
    · refine (ModuleCat.restrictScalarsComp'App _ _ _ ?_ _).symm ≪≫
        (ModuleCat.restrictScalarsComp _ _).app _
      rw [← RingCat.hom_comp, ← RingCat.hom_comp, φ.hom.naturality]
      dsimp
      rw [hX'.hom_ext (hX'.to (Opposite.op (F.obj (Opposite.unop U)))) _]
    · cat_disch
  · cat_disch

end SheafOfModules
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PushforwardContinuous/Variant54c43547c03b052817611a115382a77f4213a82072f8316a183e53e7ce0ebda3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushforwardContinuous/Variant54c43547c03b052817611a115382a77f4213a82072f8316a183e53e7ce0ebda3.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da5ea3495c1c6589b3f1960ad5c652e3cb52c62e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
