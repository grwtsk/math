# whiskerRight_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b36bc0a-4d5d-1a1c-a32e-5e5f06b1496d",
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
  "slug": "whiskerright-comm--06c31e0c77673bb2b5186d31",
  "source": {
    "blob": "ac159189e24deed784565090bd55945365544d8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 182,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06c31e0c77673bb2b5186d31dfed19982a68b923faa27e71d36c48a081154000",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b36bc0a-4d5d-1a1c-a32e-5e5f06b1496d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–197.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac159189e24deed784565090bd55945365544d8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
