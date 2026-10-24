# whiskerRight_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "246e075463981e6bc758dfe560c57e0084d2b9f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5c00219c2e80f2d5f4776c0aa019c46dc83dab72956938f1a1fae30a404e3f7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47ed1206-8193-e698-3bc0-e21bb634364a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af2941bb-b77b-a133-f9ba-9aa05aa00cb0",
  "kind": "theorem",
  "lexical_name": "whiskerRight_comm",
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
  "slug": "whiskerright-comm--fc73f78ebfecf5cb0e1d21b2",
  "source": {
    "blob": "246e075463981e6bc758dfe560c57e0084d2b9f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 185,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantb5c00219c2e80f2d5f4776c0aa019c46dc83dab72956938f1a1fae30a404e3f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc73f78ebfecf5cb0e1d21b2fbadaa8c9be6963641e9b708d18a1c9e035a650f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantb5c00219c2e80f2d5f4776c0aa019c46dc83dab72956938f1a1fae30a404e3f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af2941bb-b77b-a133-f9ba-9aa05aa00cb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem whiskerRight_comm {X₁ X₂ : Center C} (f : X₁ ⟶ X₂) (Y : Center C) (U : C) :
    f.f ▷ Y.1 ▷ U ≫ ((tensorObj X₂ Y).2.β U).hom =
      ((tensorObj X₁ Y).2.β U).hom ≫ U ◁ f.f ▷ Y.1 := by
  dsimp only [tensorObj_fst, tensorObj_snd_β, Iso.trans_hom, whiskerLeftIso_hom,
    Iso.symm_hom, whiskerRightIso_hom]
  calc
    _ = 𝟙 _ ⊗≫
      (f.f ▷ (Y.fst ⊗ U) ≫ X₂.fst ◁ (HalfBraiding.β Y.snd U).hom) ⊗≫
        (HalfBraiding.β X₂.snd U).hom ▷ Y.fst ⊗≫ 𝟙 _ := by monoidal
    _ = 𝟙 _ ⊗≫
      X₁.fst ◁ (HalfBraiding.β Y.snd U).hom ⊗≫
        (f.f ▷ U ≫ (HalfBraiding.β X₂.snd U).hom) ▷ Y.fst ⊗≫ 𝟙 _ := by
      rw [← whisker_exchange]; monoidal
    _ = _ := by rw [f.comm]; monoidal

/-- Auxiliary definition for the `MonoidalCategory` instance on `Center C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantb5c00219c2e80f2d5f4776c0aa019c46dc83dab72956938f1a1fae30a404e3f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantb5c00219c2e80f2d5f4776c0aa019c46dc83dab72956938f1a1fae30a404e3f7.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `246e075463981e6bc758dfe560c57e0084d2b9f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
