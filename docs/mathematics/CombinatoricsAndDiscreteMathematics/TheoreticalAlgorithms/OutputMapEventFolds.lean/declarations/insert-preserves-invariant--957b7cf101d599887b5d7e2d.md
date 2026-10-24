# insert_preserves_invariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f259c2b2c6c62c0b7b012c54e3f9bc84ec55110d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OutputMapEventFolds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e19968ce-e400-b3e5-c494-175f7eb8685e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84ea3e55-feed-3cf8-d354-07e7d5a471ca",
  "kind": "theorem",
  "lexical_name": "insert_preserves_invariant",
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
  "slug": "insert-preserves-invariant--957b7cf101d599887b5d7e2d",
  "source": {
    "blob": "f259c2b2c6c62c0b7b012c54e3f9bc84ec55110d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 84,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OutputMapEventFolds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:957b7cf101d599887b5d7e2d1d55e12b0eb47c656e24d1b2d1f9b021315eb871",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OutputMapEventFolds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84ea3e55-feed-3cf8-d354-07e7d5a471ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem insert_preserves_invariant {state next : Outputs} {key : TargetKey} {object : Nat}
    {metadata : Option Occurrence} (valid : Invariant state)
    (step : insert state key object metadata = some next) : Invariant next := by
  obtain ⟨_, targets, slot, changed, rfl⟩ := (insert_spec _ _ _ _ _).mp step
  refine ⟨targetInsert_unique valid.1 changed,
    lowerRoute_flags_exact _ _ _ _ valid.2.1, ?_, ?_⟩
  · intro query index value found
    by_cases same : query = key
    · subst query
      have samePair := Option.some.inj ((targetInsert_lookup changed).symm.trans found)
      have fields := Prod.mk.inj samePair
      exact ⟨⟨slot, object, metadata.isSome⟩, by simp [lowerRoute], fields.1, fields.2⟩
    · have old : targetLookup query state.targets = some (index, value) := by
        rw [← targetInsert_other_lookup changed same]
        exact found
      obtain ⟨route, member, equalSlot, equalObject⟩ := valid.2.2.1 query index value old
      exact ⟨route, by simp [lowerRoute, member], equalSlot, equalObject⟩
  · intro route member
    simp only [lowerRoute, List.mem_append, List.mem_singleton] at member
    rcases member with old | same
    · obtain ⟨prior, found⟩ := valid.2.2.2 route old
      exact ⟨prior, targetInsert_stable_slots changed prior _ _ found⟩
    · subst route
      exact ⟨key, targetInsert_lookup changed⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OutputMapEventFolds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OutputMapEventFolds.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f259c2b2c6c62c0b7b012c54e3f9bc84ec55110d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
