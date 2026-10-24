# GrothendieckTopology.preservesSheafification_iff_of_adjunctions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15874438-7550-6c83-4e7c-cdcbe8199d27",
  "kind": "lemma",
  "lexical_name": "GrothendieckTopology.preservesSheafification_iff_of_adjunctions",
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
  "slug": "grothendiecktopology-preservessheafification-iff-of-adjunctions--ddf1940fc5bfd38ae9d671ab",
  "source": {
    "blob": "0283d1cb01872acb30d15281a2530fa893d9ed7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 142,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant805d512eb8ecb6b759bc603329b8bd204464a5fc6d609d0ce3fc23315c166524.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddf1940fc5bfd38ae9d671ab0edd8d1845a77873f9e60ca2394aa8f2cb35a63d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant805d512eb8ecb6b759bc603329b8bd204464a5fc6d609d0ce3fc23315c166524.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15874438-7550-6c83-4e7c-cdcbe8199d27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma GrothendieckTopology.preservesSheafification_iff_of_adjunctions
    (adj₂ : G₂ ⊣ sheafToPresheaf J B) :
    J.PreservesSheafification F ↔ ∀ (P : Cᵒᵖ ⥤ A),
      IsIso (G₂.map (whiskerRight (adj₁.unit.app P) F)) := by
  simp only [← J.W_iff_isIso_map_of_adjunction adj₂]
  constructor
  · intro _ P
    apply W_of_preservesSheafification
    rw [J.W_iff_isIso_map_of_adjunction adj₁]
    infer_instance
  · intro h
    constructor
    intro P₁ P₂ f hf
    rw [J.W_iff_isIso_map_of_adjunction adj₁] at hf
    dsimp [MorphismProperty.inverseImage]
    rw [← (W _).postcomp_iff _ _ (h P₂), ← whiskerRight_comp]
    erw [adj₁.unit.naturality f]
    dsimp only [Functor.comp_map]
    rw [whiskerRight_comp, (W _).precomp_iff _ _ (h P₁)]
    apply ObjectProperty.isLocal_of_isIso

section HasSheafCompose

variable (adj₂ : G₂ ⊣ sheafToPresheaf J B) [J.HasSheafCompose F]

set_option backward.defeqAttrib.useBackward true in
/-- The canonical natural transformation
`(whiskeringRight Cᵒᵖ A B).obj F ⋙ G₂ ⟶ G₁ ⋙ sheafCompose J F`
when `F : A ⥤ B` is such that `J.HasSheafCompose F`, and that `G₁` and `G₂` are
left adjoints to the forget functors `sheafToPresheaf`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant805d512eb8ecb6b759bc603329b8bd204464a5fc6d609d0ce3fc23315c166524.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant805d512eb8ecb6b759bc603329b8bd204464a5fc6d609d0ce3fc23315c166524.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0283d1cb01872acb30d15281a2530fa893d9ed7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
