# exact_of_pseudo_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c00ede07-11b1-cc02-e373-44d5a0568127",
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
  "slug": "exact-of-pseudo-exact--f1ae9a11ad0531ab8ebdb2a4",
  "source": {
    "blob": "886a8b44b3642ed400ae61d91a94e51fc82a6c80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 369,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variantcda8e85624bb7fda93cfd338aee86dd49481a7fc39f97e5965e859a5a57191c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1ae9a11ad0531ab8ebdb2a4081d47508d83ad46bf5ac4befc98a5dfa011dbdc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variantcda8e85624bb7fda93cfd338aee86dd49481a7fc39f97e5965e859a5a57191c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c00ede07-11b1-cc02-e373-44d5a0568127`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_of_pseudo_exact (S : ShortComplex C)
    (hS : ∀ b, S.g b = 0 → ∃ a, S.f a = b) : S.Exact :=
  (S.exact_iff_kernel_ι_comp_cokernel_π_zero).2 (by
      -- If we apply `g` to the pseudoelement induced by its kernel, we get 0 (of course!).
      have : S.g (kernel.ι S.g) = 0 := apply_eq_zero_of_comp_eq_zero _ _ (kernel.condition _)
      -- By pseudo-exactness, we get a preimage.
      obtain ⟨a', ha⟩ := hS _ this
      obtain ⟨a, ha'⟩ := Quotient.exists_rep a'
      rw [← ha'] at ha
      obtain ⟨Z, r, q, _, eq, comm⟩ := Quotient.exact ha
      -- Consider the pullback of `kernel.ι (cokernel.π f)` and `kernel.ι g`.
      -- The commutative diagram given by the pseudo-equality `f a = b` induces
      -- a cone over this pullback, so we get a factorization `z`.
      obtain ⟨z, _, hz₂⟩ := @pullback.lift' _ _ _ _ _ _ (kernel.ι (cokernel.π S.f))
        (kernel.ι S.g) _ (r ≫ a.hom ≫ Abelian.factorThruImage S.f) q (by
          simp only [Category.assoc, Abelian.image.fac]
          exact comm)
      -- Let's give a name to the second pullback morphism.
      let j : pullback (kernel.ι (cokernel.π S.f)) (kernel.ι S.g) ⟶ kernel S.g := pullback.snd _ _
      -- Since `q` is an epimorphism, in particular this means that `j` is an epimorphism.
      have pe : Epi j := epi_of_epi_fac hz₂
      -- But it is also a monomorphism, because `kernel.ι (cokernel.π f)` is: A kernel is
      -- always a monomorphism and the pullback of a monomorphism is a monomorphism.
      -- But mono + epi = iso, so `j` is an isomorphism.
      have : IsIso j := isIso_of_mono_of_epi _
      -- But then `kernel.ι g` can be expressed using all of the maps of the pullback square, and we
      -- are done.
      rw [(Iso.eq_inv_comp (asIso j)).2 pullback.condition.symm]
      simp only [Category.assoc, kernel.condition, HasZeroMorphisms.comp_zero])

end

set_option backward.isDefEq.respectTransparency false in
/-- If two pseudoelements `x` and `y` have the same image under some morphism `f`, then we can form
their "difference" `z`. This pseudoelement has the properties that `f z = 0` and for all
morphisms `g`, if `g y = 0` then `g z = g x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variantcda8e85624bb7fda93cfd338aee86dd49481a7fc39f97e5965e859a5a57191c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variantcda8e85624bb7fda93cfd338aee86dd49481a7fc39f97e5965e859a5a57191c4.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `886a8b44b3642ed400ae61d91a94e51fc82a6c80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
