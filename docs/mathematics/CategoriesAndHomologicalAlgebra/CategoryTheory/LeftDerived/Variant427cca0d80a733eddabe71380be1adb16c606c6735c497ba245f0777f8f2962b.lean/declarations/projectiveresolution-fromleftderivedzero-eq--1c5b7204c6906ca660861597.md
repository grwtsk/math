# ProjectiveResolution.fromLeftDerivedZero_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80c1f00954be8e4313fa1b99c729bccf1cf1d1f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 315,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/427cca0d80a733eddabe71380be1adb16c606c6735c497ba245f0777f8f2962b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:42aa9426-91be-f8d6-8a61-234712671813",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55c0fdb9-64f2-12be-0cbd-c1d450b92761",
  "kind": "lemma",
  "lexical_name": "ProjectiveResolution.fromLeftDerivedZero_eq",
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
  "slug": "projectiveresolution-fromleftderivedzero-eq--1c5b7204c6906ca660861597",
  "source": {
    "blob": "80c1f00954be8e4313fa1b99c729bccf1cf1d1f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 315,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant427cca0d80a733eddabe71380be1adb16c606c6735c497ba245f0777f8f2962b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c5b7204c6906ca660861597f0b9a19dcfc58899865bfddc6fbfddd649f402ed",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant427cca0d80a733eddabe71380be1adb16c606c6735c497ba245f0777f8f2962b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55c0fdb9-64f2-12be-0cbd-c1d450b92761`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ProjectiveResolution.fromLeftDerivedZero_eq
    {X : C} (P : ProjectiveResolution X) (F : C ⥤ D) [F.Additive] :
    F.fromLeftDerivedZero.app X = (P.isoLeftDerivedObj F 0).hom ≫
      (ChainComplex.isoHomologyι₀ _).hom ≫
        P.fromLeftDerivedZero' F := by
  dsimp [Functor.fromLeftDerivedZero, isoLeftDerivedObj]
  have h₁ := ProjectiveResolution.fromLeftDerivedZero'_naturality
    (𝟙 X) P (projectiveResolution X) (lift (𝟙 X) _ _) (by simp) F
  have h₂ : (P.isoLeftDerivedToHomotopyCategoryObj F).inv =
    (F.mapHomologicalComplex _ ⋙ HomotopyCategory.quotient _ _).map (lift (𝟙 X) _ _) :=
      id_comp _
  simp only [Functor.map_id, comp_id] at h₁
  rw [assoc, ← cancel_epi ((HomotopyCategory.homologyFunctor _ _ 0).map
      (P.isoLeftDerivedToHomotopyCategoryObj F).inv), ← Functor.map_comp_assoc,
      Iso.inv_hom_id, Functor.map_id, id_comp, ← h₁, h₂,
      ← HomologicalComplex.homologyι_naturality_assoc]
  erw [← NatTrans.naturality_assoc]
  rfl

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant427cca0d80a733eddabe71380be1adb16c606c6735c497ba245f0777f8f2962b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant427cca0d80a733eddabe71380be1adb16c606c6735c497ba245f0777f8f2962b.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80c1f00954be8e4313fa1b99c729bccf1cf1d1f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
