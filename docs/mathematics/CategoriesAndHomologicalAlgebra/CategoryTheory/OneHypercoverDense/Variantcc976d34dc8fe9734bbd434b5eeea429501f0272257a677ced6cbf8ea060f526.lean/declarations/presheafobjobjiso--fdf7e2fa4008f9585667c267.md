# presheafObjObjIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b05ecd37537c890e0ed7454017fc436080471ee9de534ed0ed11f5e60a48a57",
  "kind": "def",
  "lexical_name": "presheafObjObjIso",
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
  "slug": "presheafobjobjiso--fdf7e2fa4008f9585667c267",
  "source": {
    "blob": "a9f8492e8ed9e9124305f00df1c3a3d867337147",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 780,
    "line": 765,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantcc976d34dc8fe9734bbd434b5eeea429501f0272257a677ced6cbf8ea060f526.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fdf7e2fa4008f9585667c267f56f36ac888438f5595575478a1784f6a1c32c33",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantcc976d34dc8fe9734bbd434b5eeea429501f0272257a677ced6cbf8ea060f526.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b05ecd37537c890e0ed7454017fc436080471ee9de534ed0ed11f5e60a48a57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 765–780.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def presheafObjObjIso (X₀ : C₀) :
    (presheaf data G₀).obj (op (F.obj X₀)) ≅ G₀.obj.obj (op X₀) where
  hom := presheafObjObjIso.hom data G₀ X₀
  inv := presheafObjObjIso.inv data G₀ X₀
  hom_inv_id := presheafObj_hom_ext fun i ↦ by
    rw [assoc, presheafObjObjIso.inv_π, id_comp,
      presheafObjObjIso.hom_mapPreimage data G₀ _ (𝟙 _) (fac := by simp),
      IsDenseSubsite.mapPreimage_id, comp_id]
  inv_hom_id := by
    refine Presheaf.IsSheaf.hom_ext G₀.property
      ⟨_, cover_lift F J₀ _ (data (F.obj X₀)).mem₀⟩ _ _ ?_
    rintro ⟨Y₀, a, X, b, c, ⟨i⟩, fac⟩
    dsimp at i b fac ⊢
    simp [presheafObjObjIso.hom_map data G₀ _ b fac, ← IsDenseSubsite.mapPreimage_comp, fac]

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantcc976d34dc8fe9734bbd434b5eeea429501f0272257a677ced6cbf8ea060f526.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantcc976d34dc8fe9734bbd434b5eeea429501f0272257a677ced6cbf8ea060f526.lean#L765).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9f8492e8ed9e9124305f00df1c3a3d867337147` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
