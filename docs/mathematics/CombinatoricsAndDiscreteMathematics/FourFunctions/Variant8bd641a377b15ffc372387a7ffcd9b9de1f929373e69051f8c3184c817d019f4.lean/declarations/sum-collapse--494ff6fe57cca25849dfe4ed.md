# sum_collapse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0557ca01-b760-7ba8-9ee9-1b36581c3dfa",
  "kind": "lemma",
  "lexical_name": "sum_collapse",
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
  "slug": "sum-collapse--494ff6fe57cca25849dfe4ed",
  "source": {
    "blob": "d70ac023dfa0f195a30dfa804cfa393718d1b143",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 248,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant8bd641a377b15ffc372387a7ffcd9b9de1f929373e69051f8c3184c817d019f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:494ff6fe57cca25849dfe4edef6c2042d9fc40c03cc248851db47a955ace9c58",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant8bd641a377b15ffc372387a7ffcd9b9de1f929373e69051f8c3184c817d019f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0557ca01-b760-7ba8-9ee9-1b36581c3dfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_collapse (h𝒜 : 𝒜 ⊆ (insert a u).powerset) (hu : a ∉ u) :
    ∑ s ∈ u.powerset, collapse 𝒜 a f s = ∑ s ∈ 𝒜, f s := by
  calc
    _ = ∑ s ∈ u.powerset ∩ 𝒜, f s + ∑ s ∈ u.powerset.image (insert a) ∩ 𝒜, f s := ?_
    _ = ∑ s ∈ u.powerset ∩ 𝒜, f s + ∑ s ∈ ((insert a u).powerset \ u.powerset) ∩ 𝒜, f s := ?_
    _ = ∑ s ∈ 𝒜, f s := ?_
  · rw [← Finset.sum_ite_mem, ← Finset.sum_ite_mem, sum_image, ← sum_add_distrib]
    · exact sum_congr rfl fun s hs ↦ collapse_eq (notMem_mono (mem_powerset.1 hs) hu) _ _
    · exact (insert_erase_invOn.2.injOn).mono fun s hs ↦ notMem_mono (mem_powerset.1 hs) hu
  · congr with s
    simp only [mem_image, mem_powerset, mem_sdiff, subset_insert_iff]
    refine ⟨?_, fun h ↦ ⟨_, h.1, ?_⟩⟩
    · rintro ⟨s, hs, rfl⟩
      exact ⟨subset_insert_iff.1 <| insert_subset_insert _ hs, fun h ↦
        hu <| h <| mem_insert_self _ _⟩
    · rw [insert_erase (erase_ne_self.1 fun hs ↦ ?_)]
      rw [hs] at h
      exact h.2 h.1
  · rw [← sum_union (disjoint_sdiff_self_right.mono inf_le_left inf_le_left),
      ← union_inter_distrib_right, union_sdiff_of_subset (powerset_mono.2 <| subset_insert _ _),
      inter_eq_right.2 h𝒜]

variable [ExistsAddOfLE β]

/-- The **Four Functions Theorem** on a powerset algebra. See `four_functions_theorem` for the
finite distributive lattice generalisation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant8bd641a377b15ffc372387a7ffcd9b9de1f929373e69051f8c3184c817d019f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant8bd641a377b15ffc372387a7ffcd9b9de1f929373e69051f8c3184c817d019f4.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d70ac023dfa0f195a30dfa804cfa393718d1b143` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
