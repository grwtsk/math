# pullbackShiftFunctorAdd'_hom_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "677561904d108a2da2ed944f2ddaed335d0a9d28",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58ca9c3f-83cb-f1c5-30ab-9eac06ffb999",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbf0df8f-8937-590c-92de-0b38f820f069",
  "kind": "lemma",
  "lexical_name": "pullbackShiftFunctorAdd'_hom_app",
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
  "slug": "pullbackshiftfunctoradd-hom-app--3845d34568dc69343962f4e2",
  "source": {
    "blob": "677561904d108a2da2ed944f2ddaed335d0a9d28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 126,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3845d34568dc69343962f4e242897c95512e6d55a405b0419d7a16c6cb4a1feb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbf0df8f-8937-590c-92de-0b38f820f069`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pullbackShiftFunctorAdd'_hom_app :
    (shiftFunctorAdd' _ a₁ a₂ a₃ h).hom.app X =
      (pullbackShiftIso C φ a₃ b₃ h₃).hom.app X ≫
      (shiftFunctorAdd' C b₁ b₂ b₃ (by rw [h₁, h₂, h₃, ← h, φ.map_add])).hom.app X ≫
      (pullbackShiftIso C φ a₂ b₂ h₂).inv.app _ ≫
      (shiftFunctor (PullbackShift C φ) a₂).map ((pullbackShiftIso C φ a₁ b₁ h₁).inv.app X) := by
  rw [← cancel_epi ((shiftFunctorAdd' _ a₁ a₂ a₃ h).inv.app X), Iso.inv_hom_id_app,
    pullbackShiftFunctorAdd'_inv_app φ X a₁ a₂ a₃ h b₁ b₂ b₃ h₁ h₂ h₃, assoc, assoc, assoc,
    Iso.inv_hom_id_app_assoc, Iso.inv_hom_id_app_assoc, Iso.hom_inv_id_app_assoc,
    ← Functor.map_comp, Iso.hom_inv_id_app, Functor.map_id]
  rfl

variable {D : Type*} [Category D] [HasShift D B] (F : C ⥤ D) [F.CommShift B]

/--
The functor `F`, seen as a functor from `PullbackShift C φ` to `PullbackShift D φ`.
Then a `CommShift B` instance on `F` will define a `CommShift A` instance on
`PullbackShift.functor F φ`, and we won't have to juggle with two `CommShift` instances
on `F`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `677561904d108a2da2ed944f2ddaed335d0a9d28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
