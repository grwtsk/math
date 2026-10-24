# Function.Injective.map_atTop_finset_prod_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82a4ec212388bd1f51132e1cd21f05b2bec4b6e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2067,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/231c59fd8debdecc18f7adcd9c3e47c8ce8e157fd7a6210e9d1932a9c6954358.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2914a45-9080-8f86-7924-d77024a0ff8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a10a8343-1324-1735-2066-c75d03871c05",
  "kind": "theorem",
  "lexical_name": "Function.Injective.map_atTop_finset_prod_eq",
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
  "slug": "function-injective-map-attop-finset-prod-eq--0671688e74379808c5ab5d6b",
  "source": {
    "blob": "82a4ec212388bd1f51132e1cd21f05b2bec4b6e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2092,
    "line": 2067,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant231c59fd8debdecc18f7adcd9c3e47c8ce8e157fd7a6210e9d1932a9c6954358.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0671688e74379808c5ab5d6bc507bd274eff6f67bd725e372a49c5097ad0cc48",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant231c59fd8debdecc18f7adcd9c3e47c8ce8e157fd7a6210e9d1932a9c6954358.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a10a8343-1324-1735-2066-c75d03871c05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2067–2092.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Function.Injective.map_atTop_finset_prod_eq [CommMonoid α] {g : γ → β}
    (hg : Function.Injective g) {f : β → α} (hf : ∀ x, x ∉ Set.range g → f x = 1) :
    map (fun s => ∏ i in s, f (g i)) atTop = map (fun s => ∏ i in s, f i) atTop := by
  haveI := Classical.decEq β
  apply le_antisymm <;> refine' map_atTop_finset_prod_le_of_prod_eq fun s => _
  · refine' ⟨s.preimage g (hg.injOn _), fun t ht => _⟩
    refine' ⟨t.image g ∪ s, Finset.subset_union_right _ _, _⟩
    rw [← Finset.prod_image (hg.injOn _)]
    refine' (prod_subset (subset_union_left _ _) _).symm
    simp only [Finset.mem_union, Finset.mem_image]
    refine' fun y hy hyt => hf y (mt _ hyt)
    rintro ⟨x, rfl⟩
    exact ⟨x, ht (Finset.mem_preimage.2 <| hy.resolve_left hyt), rfl⟩
  · refine' ⟨s.image g, fun t ht => _⟩
    simp only [← prod_preimage _ _ (hg.injOn _) _ fun x _ => hf x]
    exact ⟨_, (image_subset_iff_subset_preimage _).1 ht, rfl⟩
#align function.injective.map_at_top_finset_prod_eq Function.Injective.map_atTop_finset_prod_eq
#align function.injective.map_at_top_finset_sum_eq Function.Injective.map_atTop_finset_sum_eq

/-- Let `g : γ → β` be an injective function and `f : β → α` be a function from the codomain of `g`
to an additive commutative monoid. Suppose that `f x = 0` outside of the range of `g`. Then the
filters `atTop.map (fun s ↦ ∑ i in s, f (g i))` and `atTop.map (fun s ↦ ∑ i in s, f i)` coincide.

This lemma is used to prove the equality `∑' x, f (g x) = ∑' y, f y` under
the same assumptions.-/
add_decl_doc Function.Injective.map_atTop_finset_sum_eq
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant231c59fd8debdecc18f7adcd9c3e47c8ce8e157fd7a6210e9d1932a9c6954358.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant231c59fd8debdecc18f7adcd9c3e47c8ce8e157fd7a6210e9d1932a9c6954358.lean#L2067).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82a4ec212388bd1f51132e1cd21f05b2bec4b6e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
