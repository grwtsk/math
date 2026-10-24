# preservesLeftKanExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90d2744260d8e19f7cf578bf7b7f7f8e314ff1cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e45feb0a8d9ab34481ed58a38dbb842271f0cb55deed8ab0f763af51b300414.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13c77a1d-9dfd-c8c9-ab79-2f6fe9eb12a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10bb107c-63fe-62da-35d9-51cc87bb9360",
  "kind": "lemma",
  "lexical_name": "preservesLeftKanExtension",
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
  "slug": "preservesleftkanextension--0419835ce66bde031e7f100d",
  "source": {
    "blob": "90d2744260d8e19f7cf578bf7b7f7f8e314ff1cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 57,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjunctionPreserves/Variant3e45feb0a8d9ab34481ed58a38dbb842271f0cb55deed8ab0f763af51b300414.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0419835ce66bde031e7f100ddd4c2d50fd73ae1116827b4cc58585ccdf93837b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjunctionPreserves/Variant3e45feb0a8d9ab34481ed58a38dbb842271f0cb55deed8ab0f763af51b300414.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10bb107c-63fe-62da-35d9-51cc87bb9360`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesLeftKanExtension : G₁.PreservesLeftKanExtension F L where
  preserves F' α hα := by
    have := (adj.leftExtensionPostcompose₂ F L).isLeftAdjoint
    rw [Functor.isLeftKanExtension_iff] at hα ⊢
    refine ⟨(IsInitial.equivOfIso ?_).1
      (IsInitial.isInitialObj (LeftExtension.postcompose₂ L F G₁) _ hα.some)⟩
    exact StructuredArrow.isoMk (Iso.refl _)

end

section

variable (F : C ⥤ H₂) (L : C ⥤ D)

set_option backward.defeqAttrib.useBackward true in
/-- The left adjoint of `RightExtension.postcompose₂ L F G₂` when `G₂` is
part of an adjunction `adj : G₁ ⊣ G₂`. -/
@[simps! +dsimpLhs obj_left_obj obj_left_map obj_hom_app map_left_app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjunctionPreserves/Variant3e45feb0a8d9ab34481ed58a38dbb842271f0cb55deed8ab0f763af51b300414.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjunctionPreserves/Variant3e45feb0a8d9ab34481ed58a38dbb842271f0cb55deed8ab0f763af51b300414.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90d2744260d8e19f7cf578bf7b7f7f8e314ff1cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
