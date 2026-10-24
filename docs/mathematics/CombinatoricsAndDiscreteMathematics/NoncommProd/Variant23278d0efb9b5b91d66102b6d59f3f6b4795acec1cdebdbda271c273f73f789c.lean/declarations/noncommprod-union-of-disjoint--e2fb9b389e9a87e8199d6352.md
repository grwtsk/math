# noncommProd_union_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18b64dac-82c5-09a5-92aa-b45be3b10a53",
  "kind": "theorem",
  "lexical_name": "noncommProd_union_of_disjoint",
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
  "slug": "noncommprod-union-of-disjoint--e2fb9b389e9a87e8199d6352",
  "source": {
    "blob": "f04d5a35fc941e8c2530c248032a9199e3d1789a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 365,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2fb9b389e9a87e8199d635232df30a462fcbfbb0bfcc64d2e3da0512aa1d224",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18b64dac-82c5-09a5-92aa-b45be3b10a53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noncommProd_union_of_disjoint [DecidableEq α] {s t : Finset α} (h : Disjoint s t)
    (f : α → β) (comm : { x | x ∈ s ∪ t }.Pairwise fun a b => Commute (f a) (f b)) :
    noncommProd (s ∪ t) f comm =
      noncommProd s f (comm.mono <| coe_subset.2 <| subset_union_left _ _) *
        noncommProd t f (comm.mono <| coe_subset.2 <| subset_union_right _ _) := by
  obtain ⟨sl, sl', rfl⟩ := exists_list_nodup_eq s
  obtain ⟨tl, tl', rfl⟩ := exists_list_nodup_eq t
  rw [List.disjoint_toFinset_iff_disjoint] at h
  calc noncommProd (List.toFinset sl ∪ List.toFinset tl) f comm
     = noncommProd ⟨↑(sl ++ tl), Multiset.coe_nodup.2 (sl'.append tl' h)⟩ f
         (by convert comm; simp [Set.ext_iff]) := noncommProd_congr (by ext; simp) (by simp) _
   _ = noncommProd (List.toFinset sl) f (comm.mono <| coe_subset.2 <| subset_union_left _ _) *
         noncommProd (List.toFinset tl) f (comm.mono <| coe_subset.2 <| subset_union_right _ _) :=
    by simp [noncommProd, List.dedup_eq_self.2 sl', List.dedup_eq_self.2 tl', h]
#align finset.noncomm_prod_union_of_disjoint Finset.noncommProd_union_of_disjoint
#align finset.noncomm_sum_union_of_disjoint Finset.noncommSum_union_of_disjoint

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant23278d0efb9b5b91d66102b6d59f3f6b4795acec1cdebdbda271c273f73f789c.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f04d5a35fc941e8c2530c248032a9199e3d1789a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
