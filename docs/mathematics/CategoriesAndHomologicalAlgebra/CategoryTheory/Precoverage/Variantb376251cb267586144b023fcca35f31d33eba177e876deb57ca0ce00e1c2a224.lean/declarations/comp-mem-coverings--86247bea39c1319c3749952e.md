# comp_mem_coverings

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f418845-fd0f-bb05-00b3-eab2ed03af2a",
  "kind": "lemma",
  "lexical_name": "comp_mem_coverings",
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
  "slug": "comp-mem-coverings--86247bea39c1319c3749952e",
  "source": {
    "blob": "3679f4b06394eb980af94ff06b8bc1425d062b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 162,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variantb376251cb267586144b023fcca35f31d33eba177e876deb57ca0ce00e1c2a224.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86247bea39c1319c3749952e63bcd156566a8794897fd625ad97f89dba3485ce",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variantb376251cb267586144b023fcca35f31d33eba177e876deb57ca0ce00e1c2a224.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f418845-fd0f-bb05-00b3-eab2ed03af2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comp_mem_coverings {J : Precoverage C} [IsStableUnderComposition J] {ι : Type w}
    {S : C} {X : ι → C} (f : ∀ i, X i ⟶ S) (hf : Presieve.ofArrows X f ∈ J S)
    {σ : ι → Type w'} {Y : ∀ (i : ι), σ i → C}
    (g : ∀ i j, Y i j ⟶ X i) (hg : ∀ i, Presieve.ofArrows (Y i) (g i) ∈ J (X i)) :
    .ofArrows (fun p : Σ i, σ i ↦ Y _ p.2) (fun _ ↦ g _ _ ≫ f _) ∈ J S := by
  -- We need to construct `max u v`-indexed families with the same presieves.
  -- Because `f` and `g` need not be injective, the indexing type is a sigma of sums.
  let ι' : Type (max u v) := (Presieve.ofArrows X f).uncurry
  let σ' (i : ι') : Type (max u v) := (Presieve.ofArrows (Y i.2.idx) (g i.2.idx)).uncurry
  let α : Type (max u v) :=
    (Presieve.ofArrows (fun p : Σ i, σ i ↦ Y _ p.2) (fun _ ↦ g _ _ ≫ f _)).uncurry
  let τ' (a : α) : Type (max u v) := (Presieve.ofArrows (Y a.2.idx.1) (g a.2.idx.1)).uncurry
  let fib (i : ι' ⊕ α) := i.elim (fun i ↦ σ' i) (fun i ↦ Unit ⊕ τ' i)
  let incl (p : ι' ⊕ α) : ι := p.elim (fun i ↦ i.2.idx) (fun i ↦ i.2.idx.1)
  let fibincl (i : ι' ⊕ α) (j : fib i) : σ (incl i) := match i with
    | .inl i => j.2.idx
    | .inr i => j.elim (fun _ ↦ i.2.idx.2) (fun i ↦ i.2.idx)
  convert_to Presieve.ofArrows _
      (fun p : Σ (i : ι' ⊕ α), fib i ↦ g (incl p.1) (fibincl _ p.2) ≫ f (incl p.1)) ∈ J.coverings S
  · refine le_antisymm (fun T u hu ↦ ?_) fun T u ⟨p⟩ ↦ .mk (Sigma.mk (incl p.1) (fibincl p.1 p.2))
    exact .mk' ⟨Sum.inr ⟨⟨_, _⟩, hu⟩, .inl ⟨⟩⟩ hu.obj_idx.symm hu.eq_eqToHom_comp_hom_idx
  · refine IsStableUnderComposition.comp_mem_coverings (f := fun i ↦ f (incl i))
        (g := fun i j ↦ g (incl i) (fibincl i j)) ?_ fun i ↦ ?_
    · convert! hf
      refine le_antisymm (fun T u ⟨p⟩ ↦ .mk _) fun T u hu ↦ ?_
      exact .mk' (Sum.inl ⟨⟨_, _⟩, hu⟩) (by cat_disch) (by cat_disch)
    · convert! hg (incl i)
      refine le_antisymm (fun T u ⟨p⟩ ↦ .mk _) fun T u hu ↦ ?_
      match i with
      | .inl i => exact .mk' ⟨⟨_, _⟩, hu⟩ (by cat_disch) (by cat_disch)
      | .inr i => exact .mk' (.inr ⟨⟨_, _⟩, hu⟩) (by cat_disch) (by cat_disch)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variantb376251cb267586144b023fcca35f31d33eba177e876deb57ca0ce00e1c2a224.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variantb376251cb267586144b023fcca35f31d33eba177e876deb57ca0ce00e1c2a224.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3679f4b06394eb980af94ff06b8bc1425d062b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
