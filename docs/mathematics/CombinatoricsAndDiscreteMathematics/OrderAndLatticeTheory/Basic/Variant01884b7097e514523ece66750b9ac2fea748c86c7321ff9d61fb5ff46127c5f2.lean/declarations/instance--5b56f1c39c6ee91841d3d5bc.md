# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a89ea54ae0c0b55dccce83f7731d2ce8227b550ebc0f252e423ea47c801b613b",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--5b56f1c39c6ee91841d3d5bc",
  "source": {
    "blob": "f84bf1acfeaf8625fc0ff6a0dd212c2412d22491",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1204,
    "line": 1171,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant01884b7097e514523ece66750b9ac2fea748c86c7321ff9d61fb5ff46127c5f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b56f1c39c6ee91841d3d5bc2a5cdc4ca496c64950f70f3963a4d2b84651d276",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant01884b7097e514523ece66750b9ac2fea748c86c7321ff9d61fb5ff46127c5f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a89ea54ae0c0b55dccce83f7731d2ce8227b550ebc0f252e423ea47c801b613b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1171–1204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : PredOrder (WithBot α) where
  pred a :=
    match a with
    | ⊥ => ⊥
    | Option.some a => ite (pred a = a) ⊥ (some (pred a))
  pred_le a := by
    obtain - | a := a
    · exact bot_le
    change ite _ _ _ ≤ _
    split_ifs
    · exact bot_le
    · exact coe_le_coe.2 (pred_le a)
  min_of_le_pred {a} ha := by
    cases a with
    | bot => exact isMin_bot
    | coe a =>
      dsimp only at ha
      split_ifs at ha with ha'
      · exact (not_coe_le_bot _ ha).elim
      · rw [coe_le_coe, le_pred_iff_isMin, ← pred_eq_iff_isMin] at ha
        exact (ha' ha).elim
  le_pred_of_lt {a b} h := by
    cases a
    · exact bot_le
    cases b
    · exact (not_lt_bot h).elim
    rw [coe_lt_coe] at h
    change _ ≤ ite _ _ _
    split_ifs with hb
    · rw [pred_eq_iff_isMin] at hb
      exact (hb.not_lt h).elim
    · exact coe_le_coe.2 (le_pred_of_lt h)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant01884b7097e514523ece66750b9ac2fea748c86c7321ff9d61fb5ff46127c5f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant01884b7097e514523ece66750b9ac2fea748c86c7321ff9d61fb5ff46127c5f2.lean#L1171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f84bf1acfeaf8625fc0ff6a0dd212c2412d22491` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
