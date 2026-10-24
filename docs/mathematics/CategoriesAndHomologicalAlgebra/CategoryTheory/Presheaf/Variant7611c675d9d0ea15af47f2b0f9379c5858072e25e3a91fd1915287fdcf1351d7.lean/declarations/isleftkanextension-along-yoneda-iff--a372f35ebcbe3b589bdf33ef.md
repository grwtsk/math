# isLeftKanExtension_along_yoneda_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb4ee338-05fa-78c1-beb3-2b7cfcad582d",
  "kind": "lemma",
  "lexical_name": "isLeftKanExtension_along_yoneda_iff",
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
  "slug": "isleftkanextension-along-yoneda-iff--a372f35ebcbe3b589bdf33ef",
  "source": {
    "blob": "accfc3d8296025cbdf3c5b552bc5329b8e5e2e6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 267,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a372f35ebcbe3b589bdf33efc2bc9353592b80504ccf95f0cf23225b4230346e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb4ee338-05fa-78c1-beb3-2b7cfcad582d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLeftKanExtension_along_yoneda_iff :
    L.IsLeftKanExtension α ↔
      (IsIso α ∧ PreservesColimitsOfSize.{v₁, max u₁ v₁} L) := by
  constructor
  · intro
    exact ⟨inferInstance, preservesColimits_of_natIso
      (Functor.leftKanExtensionUnique _ (yoneda.leftKanExtensionUnit A) _ α)⟩
  · rintro ⟨_, _⟩
    apply Functor.LeftExtension.IsPointwiseLeftKanExtension.isLeftKanExtension
      (E := Functor.LeftExtension.mk _ α)
    intro P
    dsimp [Functor.LeftExtension.IsPointwiseLeftKanExtensionAt]
    apply IsColimit.ofWhiskerEquivalence (CategoryOfElements.costructuredArrowYonedaEquivalence _)
    let e : CategoryOfElements.toCostructuredArrow P ⋙ CostructuredArrow.proj yoneda P ⋙ A ≅
        functorToRepresentables P ⋙ L :=
      isoWhiskerLeft _ (isoWhiskerLeft _ (asIso α)) ≪≫
        isoWhiskerLeft _ (Functor.associator _ _ _).symm ≪≫
        (Functor.associator _ _ _).symm ≪≫ isoWhiskerRight (Iso.refl _) L
    apply (IsColimit.precomposeHomEquiv e.symm _).1
    exact IsColimit.ofIsoColimit (isColimitOfPreserves L (colimitOfRepresentable P))
      (Cocones.ext (Iso.refl _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `accfc3d8296025cbdf3c5b552bc5329b8e5e2e6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
