# comp_mem_coverings

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "006d42d664f1b2fda3af3bc1ea764f08518641d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57bb87403beefa41312187339dfebe5aa80c039935adfab6c67e410eb3da51ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f8da3c7b-5973-fec4-16d7-4d0a2f585c33",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0023507d-5ce4-da55-83b1-3edaa3810dac",
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
  "slug": "comp-mem-coverings--32eebf6df4036b47a3ffb09e",
  "source": {
    "blob": "006d42d664f1b2fda3af3bc1ea764f08518641d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 154,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant57bb87403beefa41312187339dfebe5aa80c039935adfab6c67e410eb3da51ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32eebf6df4036b47a3ffb09e78451ab4e8b84a270bec8c1427f67592bbce4c16",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant57bb87403beefa41312187339dfebe5aa80c039935adfab6c67e410eb3da51ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0023507d-5ce4-da55-83b1-3edaa3810dac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–185.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant57bb87403beefa41312187339dfebe5aa80c039935adfab6c67e410eb3da51ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant57bb87403beefa41312187339dfebe5aa80c039935adfab6c67e410eb3da51ec.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `006d42d664f1b2fda3af3bc1ea764f08518641d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
