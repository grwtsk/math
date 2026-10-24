# W_inverseImage_whiskeringLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ed5d0bb-aadc-6ba9-1d07-4b537a2000ec",
  "kind": "lemma",
  "lexical_name": "W_inverseImage_whiskeringLeft",
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
  "slug": "w-inverseimage-whiskeringleft--5b6d28351b5a905e35e35586",
  "source": {
    "blob": "c4f2ec565f190313360478f5f30d021a0a8057fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 254,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantb9ef79bd9de656c6ecf601ad105e29205bcd0a0535843b2bcd2ec9e93cb9cf3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b6d28351b5a905e35e35586b78f371b077e89628c1ac7a8418c23392e713106",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantb9ef79bd9de656c6ecf601ad105e29205bcd0a0535843b2bcd2ec9e93cb9cf3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ed5d0bb-aadc-6ba9-1d07-4b537a2000ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma W_inverseImage_whiskeringLeft :
    K.W.inverseImage ((whiskeringLeft Dᵒᵖ Cᵒᵖ A).obj G.op) = J.W := by
  ext P Q f
  have h₁ : K.W (A := A) =
    ObjectProperty.isLocal (· ∈ Set.range (sheafToPresheaf J A ⋙
      ((whiskeringLeft Dᵒᵖ Cᵒᵖ A).obj G.op)).obj) := by
    rw [W_eq_isLocal_range_sheafToPresheaf_obj, ← ObjectProperty.isoClosure_isLocal]
    conv_rhs => rw [← ObjectProperty.isoClosure_isLocal]
    apply congr_arg
    ext P
    constructor
    · rintro ⟨_, ⟨R, rfl⟩, ⟨e⟩⟩
      exact ⟨_, ⟨_, rfl⟩, ⟨e.trans ((sheafToPresheaf _ _).mapIso
        ((G.sheafPushforwardContinuous A K J).objObjPreimageIso R).symm)⟩⟩
    · rintro ⟨_, ⟨R, rfl⟩, ⟨e⟩⟩
      exact ⟨G.op ⋙ R.obj, ⟨(G.sheafPushforwardContinuous A K J).obj R, rfl⟩, ⟨e⟩⟩
  have h₂ : ∀ (R : Sheaf J A),
    Function.Bijective (fun (g : G.op ⋙ Q ⟶ G.op ⋙ R.obj) ↦ whiskerLeft G.op f ≫ g) ↔
      Function.Bijective (fun (g : Q ⟶ R.obj) ↦ f ≫ g) := fun R ↦ by
    rw [← Function.Bijective.of_comp_iff _
      (Functor.whiskerLeft_obj_map_bijective_of_isCoverDense J G Q R.obj R.property)]
    exact Function.Bijective.of_comp_iff'
      (Functor.whiskerLeft_obj_map_bijective_of_isCoverDense J G P R.obj R.property)
        (fun g ↦ f ≫ g)
  rw [h₁, J.W_eq_isLocal_range_sheafToPresheaf_obj, MorphismProperty.inverseImage_iff]
  constructor
  · rintro h _ ⟨R, rfl⟩
    exact (h₂ R).1 (h _ ⟨R, rfl⟩)
  · rintro h _ ⟨R, rfl⟩
    exact (h₂ R).2 (h _ ⟨R, rfl⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantb9ef79bd9de656c6ecf601ad105e29205bcd0a0535843b2bcd2ec9e93cb9cf3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantb9ef79bd9de656c6ecf601ad105e29205bcd0a0535843b2bcd2ec9e93cb9cf3f.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4f2ec565f190313360478f5f30d021a0a8057fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
