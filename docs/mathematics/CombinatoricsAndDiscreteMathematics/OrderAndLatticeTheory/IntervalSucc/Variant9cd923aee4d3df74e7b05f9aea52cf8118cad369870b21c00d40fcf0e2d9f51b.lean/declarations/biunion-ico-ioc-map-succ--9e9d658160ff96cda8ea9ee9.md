# biUnion_Ico_Ioc_map_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24887955-e3c3-9340-6435-caa5e2e22eae",
  "kind": "theorem",
  "lexical_name": "biUnion_Ico_Ioc_map_succ",
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
  "slug": "biunion-ico-ioc-map-succ--9e9d658160ff96cda8ea9ee9",
  "source": {
    "blob": "5cdfe287b0952d0f4c2f885ddf0bf83b49e9b96a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 84,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant9cd923aee4d3df74e7b05f9aea52cf8118cad369870b21c00d40fcf0e2d9f51b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e9d658160ff96cda8ea9ee955bb8ac6b6033b1ac574102aa75a7ce50cadaf5a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant9cd923aee4d3df74e7b05f9aea52cf8118cad369870b21c00d40fcf0e2d9f51b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24887955-e3c3-9340-6435-caa5e2e22eae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem biUnion_Ico_Ioc_map_succ [SuccOrder α] [IsSuccArchimedean α] [LinearOrder β] {f : α → β}
    (hf : Monotone f) (m n : α) : ⋃ i ∈ Ico m n, Ioc (f i) (f (succ i)) = Ioc (f m) (f n) := by
  rcases le_total n m with hnm | hmn
  · rw [Ico_eq_empty_of_le hnm, Ioc_eq_empty_of_le (hf hnm), biUnion_empty]
  · refine Succ.rec ?_ ?_ hmn
    · simp
    · intro k hmk ihk
      rw [← Ioc_union_Ioc_eq_Ioc (hf hmk) (hf <| le_succ _), union_comm, ← ihk]
      by_cases hk : IsMax k
      · rw [hk.succ_eq, Ioc_self, empty_union]
      · rw [Ico_succ_right_eq_insert_of_not_isMax hmk hk, biUnion_insert]

open scoped Function -- required for scoped `on` notation

/-- If `α` is a linear succ order, `β` is a preorder, and `f : α → β` is a monotone function, then
the intervals `Set.Ioc (f n) (f (Order.succ n))` are pairwise disjoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant9cd923aee4d3df74e7b05f9aea52cf8118cad369870b21c00d40fcf0e2d9f51b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IntervalSucc/Variant9cd923aee4d3df74e7b05f9aea52cf8118cad369870b21c00d40fcf0e2d9f51b.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cdfe287b0952d0f4c2f885ddf0bf83b49e9b96a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
