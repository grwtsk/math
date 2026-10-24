# tensorObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f9e8d09310336065a0864f70248ac38a6415bf310142f03dbaca725dbf744c6",
  "kind": "def",
  "lexical_name": "tensorObj",
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
  "slug": "tensorobj--523aef2e99e6b88379fb44fe",
  "source": {
    "blob": "246e075463981e6bc758dfe560c57e0084d2b9f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 125,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantb5c00219c2e80f2d5f4776c0aa019c46dc83dab72956938f1a1fae30a404e3f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:523aef2e99e6b88379fb44fee666ec78915f9646ab8f6668642118af2773f273",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantb5c00219c2e80f2d5f4776c0aa019c46dc83dab72956938f1a1fae30a404e3f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f9e8d09310336065a0864f70248ac38a6415bf310142f03dbaca725dbf744c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tensorObj (X Y : Center C) : Center C :=
  ⟨X.1 ⊗ Y.1,
    { β := fun U =>
        α_ _ _ _ ≪≫
          (whiskerLeftIso X.1 (Y.2.β U)) ≪≫ (α_ _ _ _).symm ≪≫
            (whiskerRightIso (X.2.β U) Y.1) ≪≫ α_ _ _ _
      monoidal := fun U U' => by
        dsimp only [Iso.trans_hom, whiskerLeftIso_hom, Iso.symm_hom, whiskerRightIso_hom]
        simp only [HalfBraiding.monoidal]
        -- We'd like to commute `X.1 ◁ U ◁ (HalfBraiding.β Y.2 U').hom`
        -- and `((HalfBraiding.β X.2 U).hom ▷ U' ▷ Y.1)` past each other.
        -- We do this with the help of the monoidal composition `⊗≫` and the `coherence` tactic.
        calc
          _ = 𝟙 _ ⊗≫
            X.1 ◁ (HalfBraiding.β Y.2 U).hom ▷ U' ⊗≫
              (_ ◁ (HalfBraiding.β Y.2 U').hom ≫
                (HalfBraiding.β X.2 U).hom ▷ _) ⊗≫
                  U ◁ (HalfBraiding.β X.2 U').hom ▷ Y.1 ⊗≫ 𝟙 _ := by monoidal
          _ = _ := by rw [whisker_exchange]; monoidal
      naturality := fun {U U'} f => by
        dsimp only [Iso.trans_hom, whiskerLeftIso_hom, Iso.symm_hom, whiskerRightIso_hom]
        calc
          _ = 𝟙 _ ⊗≫
            (X.1 ◁ (Y.1 ◁ f ≫ (HalfBraiding.β Y.2 U').hom)) ⊗≫
              (HalfBraiding.β X.2 U').hom ▷ Y.1 ⊗≫ 𝟙 _ := by monoidal
          _ = 𝟙 _ ⊗≫
            X.1 ◁ (HalfBraiding.β Y.2 U).hom ⊗≫
              (X.1 ◁ f ≫ (HalfBraiding.β X.2 U').hom) ▷ Y.1 ⊗≫ 𝟙 _ := by
            rw [HalfBraiding.naturality]; monoidal
          _ = _ := by rw [HalfBraiding.naturality]; monoidal }⟩

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantb5c00219c2e80f2d5f4776c0aa019c46dc83dab72956938f1a1fae30a404e3f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantb5c00219c2e80f2d5f4776c0aa019c46dc83dab72956938f1a1fae30a404e3f7.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `246e075463981e6bc758dfe560c57e0084d2b9f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
