# productTriangle_distinguished

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67873869-52ec-a868-7ea0-1d7a20dc333a",
  "kind": "lemma",
  "lexical_name": "productTriangle_distinguished",
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
  "slug": "producttriangle-distinguished--4cf018571a475531587609eb",
  "source": {
    "blob": "efe56e8b52c44287b1216f437286d31488e0f58d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 626,
    "line": 558,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantf03e8c64a2b9ac80f2a767fa91ae7f238b92606b9d41d6079b0976cd81058055.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cf018571a475531587609eb1f48b5e71c5c7babb50042b752cf19a21ecdc40b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantf03e8c64a2b9ac80f2a767fa91ae7f238b92606b9d41d6079b0976cd81058055.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67873869-52ec-a868-7ea0-1d7a20dc333a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 558–626.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma productTriangle_distinguished {J : Type*} (T : J → Triangle C)
    (hT : ∀ j, T j ∈ distTriang C)
    [HasProduct (fun j => (T j).obj₁)] [HasProduct (fun j => (T j).obj₂)]
    [HasProduct (fun j => (T j).obj₃)] [HasProduct (fun j => (T j).obj₁⟦(1 : ℤ)⟧)] :
    productTriangle T ∈ distTriang C := by
  /- The proof proceeds by constructing a morphism of triangles
    `φ' : T' ⟶ productTriangle T` with `T'` distinguished, and such that
    `φ'.hom₁` and `φ'.hom₂` are identities. Then, it suffices to show that
    `φ'.hom₃` is an isomorphism, which is achieved by using Yoneda's lemma
    and diagram chases. -/
  let f₁ := Limits.Pi.map (fun j => (T j).mor₁)
  obtain ⟨Z, f₂, f₃, hT'⟩ := distinguished_cocone_triangle f₁
  let T' := Triangle.mk f₁ f₂ f₃
  change T' ∈ distTriang C at hT'
  let φ : ∀ j, T' ⟶ T j := fun j => completeDistinguishedTriangleMorphism _ _
    hT' (hT j) (Pi.π _ j) (Pi.π _ j) (by simp [f₁, T'])
  let φ' := productTriangle.lift _ φ
  have h₁ : φ'.hom₁ = 𝟙 _ := by aesop_cat
  have h₂ : φ'.hom₂ = 𝟙 _ := by aesop_cat
  have : IsIso φ'.hom₁ := by rw [h₁]; infer_instance
  have : IsIso φ'.hom₂ := by rw [h₂]; infer_instance
  suffices IsIso φ'.hom₃ by
    have : IsIso φ' := by
      apply Triangle.isIso_of_isIsos
      all_goals infer_instance
    exact isomorphic_distinguished _ hT' _ (asIso φ').symm
  refine isIso_of_yoneda_map_bijective _ (fun A => ⟨?_, ?_⟩)
  /- the proofs by diagram chase start here -/
  · suffices Mono φ'.hom₃ by
      intro a₁ a₂ ha
      simpa only [← cancel_mono φ'.hom₃] using ha
    rw [mono_iff_cancel_zero]
    intro A f hf
    have hf' : f ≫ T'.mor₃ = 0 := by
      rw [← cancel_mono (φ'.hom₁⟦1⟧'), zero_comp, assoc, φ'.comm₃, reassoc_of% hf, zero_comp]
    obtain ⟨g, hg⟩ := T'.coyoneda_exact₃ hT' f hf'
    have hg' : ∀ j, (g ≫ Pi.π _ j) ≫ (T j).mor₂ = 0 := fun j => by
      have : g ≫ T'.mor₂ ≫ φ'.hom₃ ≫ Pi.π _ j = 0 := by
        rw [← reassoc_of% hg, reassoc_of% hf, zero_comp]
      rw [φ'.comm₂_assoc, h₂, id_comp] at this
      simpa using this
    have hg'' := fun j => (T j).coyoneda_exact₂ (hT j) _ (hg' j)
    let α := fun j => (hg'' j).choose
    have hα : ∀ j, _ = α j ≫ _ := fun j => (hg'' j).choose_spec
    have hg''' : g = Pi.lift α ≫ T'.mor₁ := by dsimp [f₁, T']; ext j; rw [hα]; simp
    rw [hg, hg''', assoc, comp_distTriang_mor_zero₁₂ _ hT', comp_zero]
  · intro a
    obtain ⟨a', ha'⟩ : ∃ (a' : A ⟶ Z), a' ≫ T'.mor₃ = a ≫ (productTriangle T).mor₃ := by
      have zero : ((productTriangle T).mor₃) ≫ (shiftFunctor C 1).map T'.mor₁ = 0 := by
        rw [← cancel_mono (φ'.hom₂⟦1⟧'), zero_comp, assoc, ← Functor.map_comp, φ'.comm₁, h₁,
          id_comp, productTriangle.zero₃₁]
        intro j
        exact comp_distTriang_mor_zero₃₁ _ (hT j)
      have ⟨g, hg⟩ := T'.coyoneda_exact₁ hT' (a ≫ (productTriangle T).mor₃) (by
        rw [assoc, zero, comp_zero])
      exact ⟨g, hg.symm⟩
    have ha'' := fun (j : J) => (T j).coyoneda_exact₃ (hT j) ((a - a' ≫ φ'.hom₃) ≫ Pi.π _ j) (by
      simp only [sub_comp, assoc]
      erw [← (productTriangle.π T j).comm₃]
      rw [← φ'.comm₃_assoc]
      rw [reassoc_of% ha', sub_eq_zero, h₁, Functor.map_id, id_comp])
    let b := fun j => (ha'' j).choose
    have hb : ∀ j, _  = b j ≫ _ := fun j => (ha'' j).choose_spec
    have hb' : a - a' ≫ φ'.hom₃ = Pi.lift b ≫ (productTriangle T).mor₂ :=
      Limits.Pi.hom_ext _ _ (fun j => by rw [hb]; simp)
    have : (a' + (by exact Pi.lift b) ≫ T'.mor₂) ≫ φ'.hom₃ = a := by
      rw [add_comp, assoc, φ'.comm₂, h₂, id_comp, ← hb', add_sub_cancel]
    exact ⟨_, this⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantf03e8c64a2b9ac80f2a767fa91ae7f238b92606b9d41d6079b0976cd81058055.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantf03e8c64a2b9ac80f2a767fa91ae7f238b92606b9d41d6079b0976cd81058055.lean#L558).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efe56e8b52c44287b1216f437286d31488e0f58d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
