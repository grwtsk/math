# union_insert_right_equiv_insert_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32ef3dce-b74c-d76b-edea-e50094324eca",
  "kind": "theorem",
  "lexical_name": "union_insert_right_equiv_insert_union",
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
  "slug": "union-insert-right-equiv-insert-union--0180040b03066b13e63d5af8",
  "source": {
    "blob": "88edaba28e5ebf2aa594debeac940d2e56bf11ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2744,
    "line": 2715,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantc83eb1e2c595ebe46e350cdc2a272dc1d4839d7f6b0de0ce6c8d30c4b204139b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0180040b03066b13e63d5af823be5d3ed87404ea72a1ba19bcbea425a4c1a0b5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantc83eb1e2c595ebe46e350cdc2a272dc1d4839d7f6b0de0ce6c8d30c4b204139b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32ef3dce-b74c-d76b-edea-e50094324eca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2715–2744.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem union_insert_right_equiv_insert_union [EquivBEq α] [LawfulHashable α] {p : (a : α) × β a}
    (h₁ : m₁.val.WF) (h₂ : m₂.val.WF) :
    (m₁.union (m₂.insert p.fst p.snd)).1.Equiv ((m₁.union m₂).insert p.fst p.snd).1 := by
  simp_to_model [Equiv, union, insert]
  apply List.Perm.trans
  . apply insertList_perm_of_perm_second
    simp_to_model [Equiv, insert]
    . apply insertEntry_of_perm
      . wf_trivial
      . apply List.Perm.refl
    . constructor
      rw [← Raw.keys_eq_keys_toListModel]
      exact m₁.distinct_keys h₁
    . apply List.DistinctKeys.perm
      . apply toListModel_insert
        . wf_trivial
      . apply List.DistinctKeys.insertEntry
        . constructor
          rw [← Raw.keys_eq_keys_toListModel]
          exact m₂.distinct_keys h₂
  . apply List.Perm.trans
    . apply insertList_insertEntry_right_equiv_insertEntry_insertList
      any_goals wf_trivial
    . apply insertEntry_of_perm
      . apply List.DistinctKeys.insertList
        . wf_trivial
      . apply List.Perm.symm
        . apply toListModel_union (by wf_trivial) (by wf_trivial)

/- get? -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantc83eb1e2c595ebe46e350cdc2a272dc1d4839d7f6b0de0ce6c8d30c4b204139b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantc83eb1e2c595ebe46e350cdc2a272dc1d4839d7f6b0de0ce6c8d30c4b204139b.lean#L2715).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88edaba28e5ebf2aa594debeac940d2e56bf11ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
