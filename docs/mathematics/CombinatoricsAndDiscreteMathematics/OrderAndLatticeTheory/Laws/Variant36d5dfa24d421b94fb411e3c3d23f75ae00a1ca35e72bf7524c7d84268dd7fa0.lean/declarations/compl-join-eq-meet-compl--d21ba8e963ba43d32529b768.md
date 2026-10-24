# compl_join_eq_meet_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c3b6050-92c0-a29e-115c-c0d0b9dd1507",
  "kind": "theorem",
  "lexical_name": "compl_join_eq_meet_compl",
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
  "slug": "compl-join-eq-meet-compl--d21ba8e963ba43d32529b768",
  "source": {
    "blob": "18211feb5123687caf1cb3da6bc56234f444e856",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 182,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant36d5dfa24d421b94fb411e3c3d23f75ae00a1ca35e72bf7524c7d84268dd7fa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d21ba8e963ba43d32529b768c05177ec4f93d28616dd7af83173b82ac2e03fa5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant36d5dfa24d421b94fb411e3c3d23f75ae00a1ca35e72bf7524c7d84268dd7fa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c3b6050-92c0-a29e-115c-c0d0b9dd1507`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compl_join_eq_meet_compl (a b : B) :
    compl (join a b) = meet (compl a) (compl b) := by
  symm
  apply compl_unique (join a b) (meet (compl a) (compl b))
  · have hLeft : join (join a b) (compl a) = top := by
      calc
        join (join a b) (compl a)
            = join a (join b (compl a)) :=
          (join_assoc a b (compl a)).symm
        _ = join a (join (compl a) b) := by
          rw [join_comm b (compl a)]
        _ = join (join a (compl a)) b :=
          join_assoc a (compl a) b
        _ = join top b := by
          rw [join_compl a]
        _ = top :=
          top_join b
    have hRight : join (join a b) (compl b) = top := by
      calc
        join (join a b) (compl b)
            = join a (join b (compl b)) :=
          (join_assoc a b (compl b)).symm
        _ = join a top := by
          rw [join_compl b]
        _ = top :=
          join_top a
    calc
      join (join a b) (meet (compl a) (compl b))
          = meet (join (join a b) (compl a))
              (join (join a b) (compl b)) :=
        join_meet_distrib (join a b) (compl a) (compl b)
      _ = meet top top := by
        rw [hLeft, hRight]
      _ = top :=
        meet_top top
  · have hLeft :
        meet (meet (compl a) (compl b)) a = bot := by
      calc
        meet (meet (compl a) (compl b)) a
            = meet (compl a) (meet (compl b) a) :=
          (meet_assoc (compl a) (compl b) a).symm
        _ = meet (compl b) (meet (compl a) a) :=
          meet_left_comm (compl a) (compl b) a
        _ = meet (compl b) bot := by
          rw [compl_meet a]
        _ = bot :=
          meet_bot (compl b)
    have hRight :
        meet (meet (compl a) (compl b)) b = bot := by
      calc
        meet (meet (compl a) (compl b)) b
            = meet (compl a) (meet (compl b) b) :=
          (meet_assoc (compl a) (compl b) b).symm
        _ = meet (compl a) bot := by
          rw [compl_meet b]
        _ = bot :=
          meet_bot (compl a)
    calc
      meet (join a b) (meet (compl a) (compl b))
          = meet (meet (compl a) (compl b)) (join a b) :=
        meet_comm (join a b) (meet (compl a) (compl b))
      _ = join
            (meet (meet (compl a) (compl b)) a)
            (meet (meet (compl a) (compl b)) b) :=
        meet_join_distrib (meet (compl a) (compl b)) a b
      _ = join bot bot := by
        rw [hLeft, hRight]
      _ = bot :=
        join_bot bot

/-- De Morgan for meets: `¬(a ∧ b) = ¬a ∨ ¬b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant36d5dfa24d421b94fb411e3c3d23f75ae00a1ca35e72bf7524c7d84268dd7fa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant36d5dfa24d421b94fb411e3c3d23f75ae00a1ca35e72bf7524c7d84268dd7fa0.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18211feb5123687caf1cb3da6bc56234f444e856` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
