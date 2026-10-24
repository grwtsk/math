# Function.Injective.map_atTop_finset_prod_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0770c2c9-19f3-4e62-ece4-42485ca114ba",
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
  "slug": "function-injective-map-attop-finset-prod-eq--e7ce6e8e3db96761fd6857a3",
  "source": {
    "blob": "618e7a2b892dcfc3be9448bde804a549852cb80d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantadbdadab4add36ce726e284950e02ede90bcf0e0c095ecbb091ae508dabbe007.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7ce6e8e3db96761fd6857a37be03365230e88a38c6ee327675e3cb8f467781e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variantadbdadab4add36ce726e284950e02ede90bcf0e0c095ecbb091ae508dabbe007.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0770c2c9-19f3-4e62-ece4-42485ca114ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Function.Injective.map_atTop_finset_prod_eq {g : α → β}
    (hg : Function.Injective g) {f : β → M} (hf : ∀ x, x ∉ Set.range g → f x = 1) :
    map (fun s => ∏ i ∈ s, f (g i)) atTop = map (fun s => ∏ i ∈ s, f i) atTop := by
  haveI := Classical.decEq β
  apply le_antisymm <;> refine map_atTop_finset_prod_le_of_prod_eq fun s => ?_
  · refine ⟨s.preimage g hg.injOn, fun t ht => ?_⟩
    refine ⟨t.image g ∪ s, Finset.subset_union_right, ?_⟩
    rw [← Finset.prod_image hg.injOn]
    refine (prod_subset subset_union_left ?_).symm
    simp only [Finset.mem_union, Finset.mem_image]
    refine fun y hy hyt => hf y (mt ?_ hyt)
    rintro ⟨x, rfl⟩
    exact ⟨x, ht (Finset.mem_preimage.2 <| hy.resolve_left hyt), rfl⟩
  · refine ⟨s.image g, fun t ht => ?_⟩
    simp only [← prod_preimage _ _ hg.injOn _ fun x _ => hf x]
    exact ⟨_, (image_subset_iff_subset_preimage _).1 ht, rfl⟩

/-- Let `g : γ → β` be an injective function and `f : β → α` be a function from the codomain of `g`
to an additive commutative monoid. Suppose that `f x = 0` outside of the range of `g`. Then the
filters `atTop.map (fun s ↦ ∑ i ∈ s, f (g i))` and `atTop.map (fun s ↦ ∑ i ∈ s, f i)` coincide.

This lemma is used to prove the equality `∑' x, f (g x) = ∑' y, f y` under
the same assumptions. -/
add_decl_doc Function.Injective.map_atTop_finset_sum_eq
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variantadbdadab4add36ce726e284950e02ede90bcf0e0c095ecbb091ae508dabbe007.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantadbdadab4add36ce726e284950e02ede90bcf0e0c095ecbb091ae508dabbe007.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `618e7a2b892dcfc3be9448bde804a549852cb80d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
