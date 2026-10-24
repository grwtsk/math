# Subpresheaf.sheafify_isSheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "117af275faa0934952fb1cd28e0bf3b1fade2e1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7030fc44-688b-4e30-94a6-2194cbb92393",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5986dfe5-1827-b985-939b-5c3c8ce88458",
  "kind": "theorem",
  "lexical_name": "Subpresheaf.sheafify_isSheaf",
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
  "slug": "subpresheaf-sheafify-issheaf--35a32acee2cf81298fa5753c",
  "source": {
    "blob": "117af275faa0934952fb1cd28e0bf3b1fade2e1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 215,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35a32acee2cf81298fa5753cbb9c4dd3a189214535feebe0641e07c8ef3a75df",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5986dfe5-1827-b985-939b-5c3c8ce88458`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subpresheaf.sheafify_isSheaf (hF : Presieve.IsSheaf J F) :
    Presieve.IsSheaf J (G.sheafify J).toPresheaf := by
  intro U S hS x hx
  let S' := Sieve.bind S fun Y f hf => G.sieveOfSection (x f hf).1
  have := fun (V) (i : V ⟶ U) (hi : S' i) => hi
  -- porting note: change to explicit variable so that `choose` can find the correct
  -- dependent functions. Thus everything follows need two additional explicit variables.
  choose W i₁ i₂ hi₂ h₁ h₂ using this
  dsimp [-Sieve.bind_apply] at *
  let x'' : Presieve.FamilyOfElements F S' := fun V i hi => F.map (i₁ V i hi).op (x _ (hi₂ V i hi))
  have H : ∀ s, x.IsAmalgamation s ↔ x''.IsAmalgamation s.1 := by
    intro s
    constructor
    · intro H V i hi
      dsimp only [show x'' = fun V i hi => F.map (i₁ V i hi).op (x _ (hi₂ V i hi)) from rfl]
      conv_lhs => rw [← h₂ _ _ hi]
      rw [← H _ (hi₂ _ _ hi)]
      exact FunctorToTypes.map_comp_apply F (i₂ _ _ hi).op (i₁ _ _ hi).op _
    · intro H V i hi
      refine Subtype.ext ?_
      apply (hF _ (x i hi).2).isSeparatedFor.ext
      intro V' i' hi'
      have hi'' : S' (i' ≫ i) := ⟨_, _, _, hi, hi', rfl⟩
      have := H _ hi''
      rw [op_comp, F.map_comp] at this
      refine' this.trans (congr_arg Subtype.val (hx _ _ (hi₂ _ _ hi'') hi (h₂ _ _ hi'')))
  have : x''.Compatible := by
    intro V₁ V₂ V₃ g₁ g₂ g₃ g₄ S₁ S₂ e
    rw [← FunctorToTypes.map_comp_apply, ← FunctorToTypes.map_comp_apply]
    exact
      congr_arg Subtype.val
        (hx (g₁ ≫ i₁ _ _ S₁) (g₂ ≫ i₁ _ _ S₂) (hi₂ _ _ S₁) (hi₂ _ _ S₂)
        (by simp only [Category.assoc, h₂, e]))
  obtain ⟨t, ht, ht'⟩ := hF _ (J.bind_covering hS fun V i hi => (x i hi).2) _ this
  refine' ⟨⟨t, _⟩, (H ⟨t, _⟩).mpr ht, fun y hy => Subtype.ext (ht' _ ((H _).mp hy))⟩
  refine' J.superset_covering _ (J.bind_covering hS fun V i hi => (x i hi).2)
  intro V i hi
  dsimp
  rw [ht _ hi]
  exact h₁ _ _ hi
#align category_theory.grothendieck_topology.subpresheaf.sheafify_is_sheaf CategoryTheory.GrothendieckTopology.Subpresheaf.sheafify_isSheaf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant284721d92cedc4f5d2b8bb52805ee69165e36a47b9b2741023d8d60747204f53.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `117af275faa0934952fb1cd28e0bf3b1fade2e1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
