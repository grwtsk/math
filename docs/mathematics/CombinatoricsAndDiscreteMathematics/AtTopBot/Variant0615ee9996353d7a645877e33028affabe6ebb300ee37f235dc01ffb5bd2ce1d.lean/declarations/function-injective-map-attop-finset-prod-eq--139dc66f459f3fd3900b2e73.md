# Function.Injective.map_atTop_finset_prod_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de2f5ac0-9f71-aa29-70d3-a2c2f96461af",
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
  "slug": "function-injective-map-attop-finset-prod-eq--139dc66f459f3fd3900b2e73",
  "source": {
    "blob": "7f615d8a1455f8dcca79ade0cd848c1c560026c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2100,
    "line": 2075,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:139dc66f459f3fd3900b2e730290be8c621a72927cb2a2f4911f462a3b4e3cd2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de2f5ac0-9f71-aa29-70d3-a2c2f96461af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2075–2100.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean#L2075).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f615d8a1455f8dcca79ade0cd848c1c560026c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
