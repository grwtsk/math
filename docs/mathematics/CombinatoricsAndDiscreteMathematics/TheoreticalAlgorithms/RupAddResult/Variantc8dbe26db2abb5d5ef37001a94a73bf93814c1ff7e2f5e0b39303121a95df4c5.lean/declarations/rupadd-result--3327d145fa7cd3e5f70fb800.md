# rupAdd_result

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff89d5cd-a909-0f83-c46e-3569b6eb0c63",
  "kind": "theorem",
  "lexical_name": "rupAdd_result",
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
  "slug": "rupadd-result--3327d145fa7cd3e5f70fb800",
  "source": {
    "blob": "63a5c9bb7a4843b13273def96e793449214a2634",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1166,
    "line": 1139,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3327d145fa7cd3e5f70fb80044521f2489ac5bcd65068317cd6d96887ee80fea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff89d5cd-a909-0f83-c46e-3569b6eb0c63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1139–1166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rupAdd_result {n : Nat} (f : DefaultFormula n) (c : DefaultClause n) (rupHints : Array Nat) (f' : DefaultFormula n)
    (f_readyForRupAdd : ReadyForRupAdd f) (rupAddSuccess : performRupAdd f c rupHints = (f', true)) :
    f' = insert f c := by
  rw [performRupAdd] at rupAddSuccess
  simp only [Bool.not_eq_true'] at rupAddSuccess
  split at rupAddSuccess
  · simp only [clear_insertRup f f_readyForRupAdd (negate c), Prod.mk.injEq, and_true] at rupAddSuccess
    exact rupAddSuccess.symm
  · split at rupAddSuccess
    · grind
    · split at rupAddSuccess
      · grind
      · let fc := (insertRupUnits f (negate c)).1
        have fc_assignments_size : (insertRupUnits f (negate c)).1.assignments.size = n := by
          rw [size_assignments_insertRupUnits f (negate c)]
          exact f_readyForRupAdd.2.1
        simp +zetaDelta only [clauses_performRupCheck, rupUnits_performRupCheck, ratUnits_performRupCheck,
          restoreAssignments_performRupCheck fc fc_assignments_size, Prod.mk.injEq, and_true] at rupAddSuccess
        have rupAddSuccess : DefaultFormula.insert (clearRupUnits (insertRupUnits f (negate c)).fst) c = f' := by
          rw [rupAddSuccess]
        rw [clear_insertRup f f_readyForRupAdd (negate c)] at rupAddSuccess
        exact rupAddSuccess.symm

end DefaultFormula

end Internal
end LRAT
end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean#L1139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63a5c9bb7a4843b13273def96e793449214a2634` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
