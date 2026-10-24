# isCardinalPresentable_of_isColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6bae0766b4de6f194f1a43789929cfed51ead3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b23cad95e4a95f116a71d746fe5fba2bb2c3dbd00225355121cdd50e59fd26e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77501da6-3053-c106-4968-336df25d7453",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7bf56ae7-2784-3da6-7a0d-1dbd5b1b65a5",
  "kind": "lemma",
  "lexical_name": "isCardinalPresentable_of_isColimit",
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
  "slug": "iscardinalpresentable-of-iscolimit--e19b22caf304d33befa64d71",
  "source": {
    "blob": "a6bae0766b4de6f194f1a43789929cfed51ead3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 175,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb23cad95e4a95f116a71d746fe5fba2bb2c3dbd00225355121cdd50e59fd26e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e19b22caf304d33befa64d714bd4457cbc3a61d10eb8bc3cab0f7a2e2e82a2cd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb23cad95e4a95f116a71d746fe5fba2bb2c3dbd00225355121cdd50e59fd26e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bf56ae7-2784-3da6-7a0d-1dbd5b1b65a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCardinalPresentable_of_isColimit [LocallySmall.{w} C]
    {K : Type u'} [Category.{v'} K] [HasLimitsOfShape Kᵒᵖ (Type w)] {Y : K ⥤ C}
    (c : Cocone Y) (hc : IsColimit c) (κ : Cardinal.{w}) [Fact κ.IsRegular]
    (hK : HasCardinalLT (Arrow K) κ)
    [∀ k, IsCardinalPresentable (Y.obj k) κ] :
    IsCardinalPresentable c.pt κ := by
  let e := ShrinkHoms.equivalence.{w} C
  have (k : K) : IsCardinalPresentable ((Y ⋙ e.functor).obj k) κ := by
    dsimp; infer_instance
  rw [← isCardinalPresentable_iff_of_isEquivalence c.pt κ e.functor]
  exact isCardinalPresentable_of_isColimit' _
    (isColimitOfPreserves e.functor hc) κ hK

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb23cad95e4a95f116a71d746fe5fba2bb2c3dbd00225355121cdd50e59fd26e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb23cad95e4a95f116a71d746fe5fba2bb2c3dbd00225355121cdd50e59fd26e1.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6bae0766b4de6f194f1a43789929cfed51ead3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
