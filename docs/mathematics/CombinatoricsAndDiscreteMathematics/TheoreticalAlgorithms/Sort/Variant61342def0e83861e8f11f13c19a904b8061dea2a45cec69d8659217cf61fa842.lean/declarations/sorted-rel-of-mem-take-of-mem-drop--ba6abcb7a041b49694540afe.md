# Sorted.rel_of_mem_take_of_mem_drop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8ee3cba-4eb3-98ea-19b2-97de25840434",
  "kind": "theorem",
  "lexical_name": "Sorted.rel_of_mem_take_of_mem_drop",
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
  "slug": "sorted-rel-of-mem-take-of-mem-drop--ba6abcb7a041b49694540afe",
  "source": {
    "blob": "88d5ca86dfe9b54fcca4288c310b1352d5d55881",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 137,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant61342def0e83861e8f11f13c19a904b8061dea2a45cec69d8659217cf61fa842.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba6abcb7a041b49694540afed0f5e088859ccd75e4b12c99f483c33fc51a886b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant61342def0e83861e8f11f13c19a904b8061dea2a45cec69d8659217cf61fa842.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8ee3cba-4eb3-98ea-19b2-97de25840434`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sorted.rel_of_mem_take_of_mem_drop {l : List α} (h : List.Sorted r l) {k : ℕ} {x y : α}
    (hx : x ∈ List.take k l) (hy : y ∈ List.drop k l) : r x y := by
  obtain ⟨⟨iy, hiy⟩, rfl⟩ := get_of_mem hy
  obtain ⟨⟨ix, hix⟩, rfl⟩ := get_of_mem hx
  rw [get_take', get_drop']
  rw [length_take] at hix
  exact h.rel_nthLe_of_lt _ _ (ix.lt_add_right _ _ (lt_min_iff.mp hix).left)
#align list.sorted.rel_of_mem_take_of_mem_drop List.Sorted.rel_of_mem_take_of_mem_drop

end Sorted

section Monotone

variable {n : ℕ} {α : Type uu} [Preorder α] {f : Fin n → α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant61342def0e83861e8f11f13c19a904b8061dea2a45cec69d8659217cf61fa842.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant61342def0e83861e8f11f13c19a904b8061dea2a45cec69d8659217cf61fa842.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88d5ca86dfe9b54fcca4288c310b1352d5d55881` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
