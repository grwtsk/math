# Quot.desc_quotQuotUliftAddEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d58be64998b8f0c021bb1fb08f32725998a4994f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c4d1118-0056-4ea7-a812-0c19ff0aab21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8320a122-cdbb-0bf4-da7c-2470ac9adb9a",
  "kind": "lemma",
  "lexical_name": "Quot.desc_quotQuotUliftAddEquiv",
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
  "slug": "quot-desc-quotquotuliftaddequiv--4ad1b8f180990cc0396a20cb",
  "source": {
    "blob": "d58be64998b8f0c021bb1fb08f32725998a4994f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 167,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ad1b8f180990cc0396a20cbe49087f0b3d7e0c374d940138b1374232daa9cc7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8320a122-cdbb-0bf4-da7c-2470ac9adb9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Quot.desc_quotQuotUliftAddEquiv [DecidableEq J] (c : Cocone F) :
    (Quot.desc (F ⋙ uliftFunctor.{u'}) (uliftFunctor.{u'}.mapCocone c)).comp
    (quotQuotUliftAddEquiv F).toAddMonoidHom =
    AddEquiv.ulift.symm.toAddMonoidHom.comp (Quot.desc F c) := by
  refine Quot.addMonoidHom_ext _ (fun j a ↦ ?_)
  dsimp
  simp only [quotToQuotUlift_ι, Functor.comp_obj, uliftFunctor_obj, ι_desc,
    Functor.const_obj_obj, AddMonoidHom.coe_comp, AddMonoidHom.coe_coe, Function.comp_apply, ι_desc]
  erw [Quot.ι_desc]
  rfl

/-- (implementation detail) A morphism of commutative additive groups `Quot F →+ A`
induces a cocone on `F` as long as the universes work out.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d58be64998b8f0c021bb1fb08f32725998a4994f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
