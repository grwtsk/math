# prod_lt_prod_of_subset_erase_union_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbe2b1b6-b42b-9074-8d8d-fc1d65292640",
  "kind": "lemma",
  "lexical_name": "prod_lt_prod_of_subset_erase_union_singleton",
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
  "slug": "prod-lt-prod-of-subset-erase-union-singleton--103f39d8996a62a07fd1085d",
  "source": {
    "blob": "2bc3e3149f5ca39613936ebd060708d589e28c51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 545,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant728b8f36b2e634b939216c2a1738a499946c0e7ef1023efc362d8d0ab10e7e4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:103f39d8996a62a07fd1085d25b3a2346ae71bf7b86b66cb80fcc1e97a2e698d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variant728b8f36b2e634b939216c2a1738a499946c0e7ef1023efc362d8d0ab10e7e4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbe2b1b6-b42b-9074-8d8d-fc1d65292640`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_lt_prod_of_subset_erase_union_singleton {ι M : Type*} [DecidableEq ι] [CommMonoid M]
    [PartialOrder M] [CanonicallyOrderedMul M] [MulLeftStrictMono M] {S S' : Finset ι} {f : ι → M}
    {d d' : ι} (hd_mem : d ∈ S) (hS' : S' ⊆ S.erase d ∪ {d'}) (hlt : f d' < f d) :
    ∏ x ∈ S', f x < ∏ x ∈ S, f x := by
  have hd_not : d ∉ S' := fun hd ↦ (Finset.mem_union.mp (hS' hd)).elim
    (fun h ↦ (Finset.mem_erase.mp h).1 rfl)
    (fun h ↦ hlt.ne' (congrArg f (Finset.mem_singleton.mp h)))
  by_cases hd'S : d' ∈ S
  · calc ∏ x ∈ S', f x
        ≤ ∏ x ∈ S.erase d, f x := Finset.prod_le_prod_of_subset (fun x hx ↦
          Finset.mem_erase.mpr ⟨fun h ↦ hd_not (h ▸ hx),
            match Finset.mem_union.mp (hS' hx) with
            | .inl h => Finset.mem_of_mem_erase h
            | .inr h => Finset.mem_singleton.mp h ▸ hd'S⟩)
      _ < (∏ x ∈ S.erase d, f x) * f d :=
          lt_mul_of_one_lt_right' _ (one_le.trans_lt hlt)
      _ = ∏ x ∈ S, f x := Finset.prod_erase_mul S f hd_mem
  · calc ∏ x ∈ S', f x
        ≤ ∏ x ∈ S.erase d ∪ {d'}, f x := Finset.prod_le_prod_of_subset hS'
      _ = (∏ x ∈ S.erase d, f x) * f d' := by
          rw [Finset.prod_union (Finset.disjoint_singleton_right.mpr
            (fun h ↦ hd'S (Finset.mem_of_mem_erase h))), Finset.prod_singleton]
      _ < (∏ x ∈ S.erase d, f x) * f d := mul_lt_mul_right hlt _
      _ = ∏ x ∈ S, f x := Finset.prod_erase_mul S f hd_mem

end CanonicallyOrderedMul

section OrderedCancelCommMonoid

variable [CommMonoid M] [Preorder M] [IsOrderedCancelMonoid M] {f g : ι → M} {s t : Finset ι}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variant728b8f36b2e634b939216c2a1738a499946c0e7ef1023efc362d8d0ab10e7e4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant728b8f36b2e634b939216c2a1738a499946c0e7ef1023efc362d8d0ab10e7e4d.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bc3e3149f5ca39613936ebd060708d589e28c51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
