# count_equiv_one_or_two_mod3_of_derivable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16df4e4d-9cf5-764c-9a31-1447876b7ed5",
  "kind": "theorem",
  "lexical_name": "count_equiv_one_or_two_mod3_of_derivable",
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
  "slug": "count-equiv-one-or-two-mod3-of-derivable--1b6e25f748505cb7b449ff00",
  "source": {
    "blob": "ad8e61492ae9b19455fdab1bc3d0b7851e213364",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b6e25f748505cb7b449ff0093f6a079b0ba338826a76bd923f697ec0d7d25b0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16df4e4d-9cf5-764c-9a31-1447876b7ed5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_equiv_one_or_two_mod3_of_derivable (en : Miustr) :
    Derivable en → count I en % 3 = 1 ∨ count I en % 3 = 2 := by
  intro h
  induction' h with _ _ h_ih _ _ h_ih _ _ _ h_ih _ _ _ h_ih
  · left; rfl
  any_goals apply mod3_eq_1_or_mod3_eq_2 h_ih
  -- Porting note: `simp_rw [count_append]` usually doesn't work
  · left; rw [count_append, count_append]; rfl
  · right; simp_rw [count_append, count_cons, if_false, two_mul]; simp
  · left; rw [count_append, count_append, count_append]
    simp_rw [count_cons_self, count_nil, count_cons, ite_false, add_right_comm, add_mod_right]
    simp
  · left; rw [count_append, count_append, count_append]
    simp only [ne_eq, count_cons_of_ne, count_nil, add_zero]
#align miu.count_equiv_one_or_two_mod3_of_derivable Miu.count_equiv_one_or_two_mod3_of_derivable

/-- Using the above theorem, we solve the MU puzzle, showing that `"MU"` is not derivable.
Once we have proved that `Derivable` is an instance of `DecidablePred`, this will follow
immediately from `dec_trivial`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variant238403d26328b21ff23ee0eacab3f542fc33c638baf8735012e701fa40332dd9.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad8e61492ae9b19455fdab1bc3d0b7851e213364` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
