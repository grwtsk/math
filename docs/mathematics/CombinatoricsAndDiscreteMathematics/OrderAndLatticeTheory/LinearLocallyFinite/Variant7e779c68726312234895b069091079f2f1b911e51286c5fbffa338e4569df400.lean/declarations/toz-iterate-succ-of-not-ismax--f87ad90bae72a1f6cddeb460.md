# toZ_iterate_succ_of_not_isMax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71d85910-a22b-42ae-835b-03077a5f34ea",
  "kind": "theorem",
  "lexical_name": "toZ_iterate_succ_of_not_isMax",
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
  "slug": "toz-iterate-succ-of-not-ismax--f87ad90bae72a1f6cddeb460",
  "source": {
    "blob": "06205b18fd676a36811ea3165dd7b9c346f9fa41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 262,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f87ad90bae72a1f6cddeb460a4d0df662f6b8e63f8ed2a65f20ba94bb2c98d6b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71d85910-a22b-42ae-835b-03077a5f34ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toZ_iterate_succ_of_not_isMax (n : ℕ) (hn : ¬IsMax (succ^[n] i0)) :
    toZ i0 (succ^[n] i0) = n := by
  let m := (toZ i0 (succ^[n] i0)).toNat
  have h_eq : succ^[m] i0 = succ^[n] i0 := iterate_succ_toZ _ (le_succ_iterate _ _)
  by_cases hmn : m = n
  · nth_rw 2 [← hmn]
    rw [Int.toNat_eq_max, toZ_of_ge (le_succ_iterate _ _), max_eq_left]
    exact Nat.cast_nonneg _
  suffices : IsMax (succ^[n] i0); exact absurd this hn
  exact isMax_iterate_succ_of_eq_of_ne h_eq.symm (Ne.symm hmn)
#align to_Z_iterate_succ_of_not_is_max toZ_iterate_succ_of_not_isMax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant7e779c68726312234895b069091079f2f1b911e51286c5fbffa338e4569df400.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06205b18fd676a36811ea3165dd7b9c346f9fa41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
