# Subpresheaf.sheafify_isSheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e973cc1676dbcf324f097fd0e9c1d41c34ed9476",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f37e0457-0edf-44c3-318c-a464ce81d8e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:334630ea-9999-44c5-e791-ac6e9b20fb70",
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
  "slug": "subpresheaf-sheafify-issheaf--d54dd513d3935b9079a39a13",
  "source": {
    "blob": "e973cc1676dbcf324f097fd0e9c1d41c34ed9476",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d54dd513d3935b9079a39a131afac4fb00cbc7ef21d3bc5b37e4b055726836f2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:334630ea-9999-44c5-e791-ac6e9b20fb70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subpresheaf.sheafify_isSheaf (hF : Presieve.IsSheaf J F) :
    Presieve.IsSheaf J (G.sheafify J).toPresheaf := by
  intro U S hS x hx
  let S' := Sieve.bind S fun Y f hf => G.sieveOfSection (x f hf).1
  have := fun (V) (i : V ⟶ U) (hi : S' i) => hi
  -- Porting note: change to explicit variable so that `choose` can find the correct
  -- dependent functions. Thus everything follows need two additional explicit variables.
  choose W i₁ i₂ hi₂ h₁ h₂ using this
  dsimp [-Sieve.bind_apply] at *
  let x'' : Presieve.FamilyOfElements F S' := fun V i hi => F.map (i₁ V i hi).op (x _ (hi₂ V i hi))
  have H : ∀ s, x.IsAmalgamation s ↔ x''.IsAmalgamation s.1 := by
    intro s
    constructor
    · intro H V i hi
      dsimp only [x'']
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
      exact this.trans (congr_arg Subtype.val (hx _ _ (hi₂ _ _ hi'') hi (h₂ _ _ hi'')))
  have : x''.Compatible := by
    intro V₁ V₂ V₃ g₁ g₂ g₃ g₄ S₁ S₂ e
    rw [← FunctorToTypes.map_comp_apply, ← FunctorToTypes.map_comp_apply]
    exact
      congr_arg Subtype.val
        (hx (g₁ ≫ i₁ _ _ S₁) (g₂ ≫ i₁ _ _ S₂) (hi₂ _ _ S₁) (hi₂ _ _ S₂)
        (by simp only [Category.assoc, h₂, e]))
  obtain ⟨t, ht, ht'⟩ := hF _ (J.bind_covering hS fun V i hi => (x i hi).2) _ this
  refine ⟨⟨t, _⟩, (H ⟨t, ?_⟩).mpr ht, fun y hy => Subtype.ext (ht' _ ((H _).mp hy))⟩
  refine J.superset_covering ?_ (J.bind_covering hS fun V i hi => (x i hi).2)
  intro V i hi
  dsimp
  rw [ht _ hi]
  exact h₁ _ _ hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variantc363abc7e286938854b3507b72da6e75dc934afaffda9273f6f409d68ff98f13.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e973cc1676dbcf324f097fd0e9c1d41c34ed9476` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
