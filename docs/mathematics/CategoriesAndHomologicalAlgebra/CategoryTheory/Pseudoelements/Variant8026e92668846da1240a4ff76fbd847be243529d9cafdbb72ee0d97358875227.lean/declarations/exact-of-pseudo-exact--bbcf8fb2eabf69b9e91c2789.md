# exact_of_pseudo_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2bd508d07b5808a2aa284f679425a46b1be2f01d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 399,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39ae1eb2-1f52-d328-13c9-7e6a5b4a0c8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:330fd27f-2eff-502a-4c17-acbd64016477",
  "kind": "theorem",
  "lexical_name": "exact_of_pseudo_exact",
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
  "slug": "exact-of-pseudo-exact--bbcf8fb2eabf69b9e91c2789",
  "source": {
    "blob": "2bd508d07b5808a2aa284f679425a46b1be2f01d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 399,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbcf8fb2eabf69b9e91c27899bf2a7e62d1c124aa02f787f7edb5af920222a91",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:330fd27f-2eff-502a-4c17-acbd64016477`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_of_pseudo_exact {P Q R : C} (f : P ⟶ Q) (g : Q ⟶ R) :
    ((∀ a, g (f a) = 0) ∧ ∀ b, g b = 0 → ∃ a, f a = b) → Exact f g :=
  fun ⟨h₁, h₂⟩ => (Abelian.exact_iff _ _).2
    ⟨zero_morphism_ext _ fun a => by rw [comp_apply, h₁ a], by
      -- If we apply `g` to the pseudoelement induced by its kernel, we get 0 (of course!).
      have : g (kernel.ι g) = 0 := apply_eq_zero_of_comp_eq_zero _ _ (kernel.condition _)
      -- By pseudo-exactness, we get a preimage.
      obtain ⟨a', ha⟩ := h₂ _ this
      obtain ⟨a, ha'⟩ := Quotient.exists_rep a'
      rw [← ha'] at ha
      obtain ⟨Z, r, q, _, eq, comm⟩ := Quotient.exact ha
      -- Consider the pullback of `kernel.ι (cokernel.π f)` and `kernel.ι g`.
      -- The commutative diagram given by the pseudo-equality `f a = b` induces
      -- a cone over this pullback, so we get a factorization `z`.
      obtain ⟨z, _, hz₂⟩ := @pullback.lift' _ _ _ _ _ _ (kernel.ι (cokernel.π f)) (kernel.ι g) _
        (r ≫ a.hom ≫ Abelian.factorThruImage f) q (by
          simp only [Category.assoc, Abelian.image.fac]
          exact comm)
      -- Let's give a name to the second pullback morphism.
      let j : pullback (kernel.ι (cokernel.π f)) (kernel.ι g) ⟶ kernel g := pullback.snd
      -- Since `q` is an epimorphism, in particular this means that `j` is an epimorphism.
      haveI pe : Epi j := epi_of_epi_fac hz₂
      -- But it is also a monomorphism, because `kernel.ι (cokernel.π f)` is: A kernel is
      -- always a monomorphism and the pullback of a monomorphism is a monomorphism.
      -- But mono + epi = iso, so `j` is an isomorphism.
      haveI : IsIso j := isIso_of_mono_of_epi _
      -- But then `kernel.ι g` can be expressed using all of the maps of the pullback square, and we
      -- are done.
      rw [(Iso.eq_inv_comp (asIso j)).2 pullback.condition.symm]
      simp only [Category.assoc, kernel.condition, HasZeroMorphisms.comp_zero]⟩
#align category_theory.abelian.pseudoelement.exact_of_pseudo_exact CategoryTheory.Abelian.Pseudoelement.exact_of_pseudo_exact

end

/-- If two pseudoelements `x` and `y` have the same image under some morphism `f`, then we can form
    their "difference" `z`. This pseudoelement has the properties that `f z = 0` and for all
    morphisms `g`, if `g y = 0` then `g z = g x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variant8026e92668846da1240a4ff76fbd847be243529d9cafdbb72ee0d97358875227.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bd508d07b5808a2aa284f679425a46b1be2f01d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
