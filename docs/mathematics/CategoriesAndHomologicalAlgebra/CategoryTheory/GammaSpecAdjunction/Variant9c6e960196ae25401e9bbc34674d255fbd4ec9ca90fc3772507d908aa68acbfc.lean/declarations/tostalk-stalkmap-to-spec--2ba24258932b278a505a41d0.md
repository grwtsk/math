# toStalk_stalkMap_toΓSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "908077ae0972c2673a4aa99d92b073bf48a23785",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e54cc7e2-d539-d758-6ddb-fa2a19a43929",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fea599b-9df7-a3b1-df4f-cfe1ff07fb6a",
  "kind": "theorem",
  "lexical_name": "toStalk_stalkMap_toΓSpec",
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
  "slug": "tostalk-stalkmap-to-spec--2ba24258932b278a505a41d0",
  "source": {
    "blob": "908077ae0972c2673a4aa99d92b073bf48a23785",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 213,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ba24258932b278a505a41d02aa2305c882b084d2921a9b9a3bc321f218ef8e2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fea599b-9df7-a3b1-df4f-cfe1ff07fb6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toStalk_stalkMap_toΓSpec (x : X) :
    toStalk _ _ ≫ PresheafedSpace.stalkMap X.toΓSpecSheafedSpace x = X.ΓToStalk x := by
  rw [PresheafedSpace.stalkMap]
  erw [← toOpen_germ _ (basicOpen (1 : Γ.obj (op X)))
      ⟨X.toΓSpecFun x, by rw [basicOpen_one]; trivial⟩]
  rw [← Category.assoc, Category.assoc (toOpen _ _)]
  erw [stalkFunctor_map_germ]
  -- Porting note : was `rw [←assoc, toΓSpecSheafedSpace_app_spec]`, but Lean did not like it.
  rw [toΓSpecSheafedSpace_app_spec_assoc]
  unfold ΓToStalk
  rw [← stalkPushforward_germ _ X.toΓSpecBase X.presheaf ⊤]
  congr 1
  change (X.toΓSpecBase _* X.presheaf).map le_top.hom.op ≫ _ = _
  apply germ_res
#align algebraic_geometry.LocallyRingedSpace.to_stalk_stalk_map_to_Γ_Spec AlgebraicGeometry.LocallyRingedSpace.toStalk_stalkMap_toΓSpec

/-- The canonical morphism from `X` to the spectrum of its global sections. -/
@[simps! val_base]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant9c6e960196ae25401e9bbc34674d255fbd4ec9ca90fc3772507d908aa68acbfc.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `908077ae0972c2673a4aa99d92b073bf48a23785` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
