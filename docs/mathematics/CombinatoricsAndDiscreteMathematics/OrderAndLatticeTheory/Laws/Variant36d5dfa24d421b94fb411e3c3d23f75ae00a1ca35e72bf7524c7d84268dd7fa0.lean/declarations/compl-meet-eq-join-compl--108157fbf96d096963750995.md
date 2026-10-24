# compl_meet_eq_join_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24d6bb29-c4c9-2bb5-62c3-0ca3df4229e6",
  "kind": "theorem",
  "lexical_name": "compl_meet_eq_join_compl",
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
  "slug": "compl-meet-eq-join-compl--108157fbf96d096963750995",
  "source": {
    "blob": "18211feb5123687caf1cb3da6bc56234f444e856",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 253,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant36d5dfa24d421b94fb411e3c3d23f75ae00a1ca35e72bf7524c7d84268dd7fa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:108157fbf96d096963750995c0377e05791e8535d2d7c48b2d4e87dc72ed2c1b",
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

Occurrence: `result:24d6bb29-c4c9-2bb5-62c3-0ca3df4229e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compl_meet_eq_join_compl (a b : B) :
    compl (meet a b) = join (compl a) (compl b) := by
  symm
  apply compl_unique (meet a b) (join (compl a) (compl b))
  · have hRight :
        join (meet a b) (compl b) = join a (compl b) := by
      calc
        join (meet a b) (compl b)
            = join (compl b) (meet a b) :=
          join_comm (meet a b) (compl b)
        _ = meet (join (compl b) a) (join (compl b) b) :=
          join_meet_distrib (compl b) a b
        _ = meet (join a (compl b)) top := by
          rw [join_comm (compl b) a, compl_join b]
        _ = join a (compl b) :=
          meet_top (join a (compl b))
    calc
      join (meet a b) (join (compl a) (compl b))
          = join (compl a) (join (meet a b) (compl b)) :=
        join_left_comm (meet a b) (compl a) (compl b)
      _ = join (compl a) (join a (compl b)) := by
        rw [hRight]
      _ = join (join (compl a) a) (compl b) :=
        join_assoc (compl a) a (compl b)
      _ = join top (compl b) := by
        rw [compl_join a]
      _ = top :=
        top_join (compl b)
  · have hLeft :
        meet (meet a b) (compl a) = bot := by
      calc
        meet (meet a b) (compl a)
            = meet a (meet b (compl a)) :=
          (meet_assoc a b (compl a)).symm
        _ = meet b (meet a (compl a)) :=
          meet_left_comm a b (compl a)
        _ = meet b bot := by
          rw [meet_compl a]
        _ = bot :=
          meet_bot b
    have hRight :
        meet (meet a b) (compl b) = bot := by
      calc
        meet (meet a b) (compl b)
            = meet a (meet b (compl b)) :=
          (meet_assoc a b (compl b)).symm
        _ = meet a bot := by
          rw [meet_compl b]
        _ = bot :=
          meet_bot a
    calc
      meet (meet a b) (join (compl a) (compl b))
          = join
              (meet (meet a b) (compl a))
              (meet (meet a b) (compl b)) :=
        meet_join_distrib (meet a b) (compl a) (compl b)
      _ = join bot bot := by
        rw [hLeft, hRight]
      _ = bot :=
        join_bot bot

end Surface.Boolean.BooleanAlgebraCore
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant36d5dfa24d421b94fb411e3c3d23f75ae00a1ca35e72bf7524c7d84268dd7fa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant36d5dfa24d421b94fb411e3c3d23f75ae00a1ca35e72bf7524c7d84268dd7fa0.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18211feb5123687caf1cb3da6bc56234f444e856` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
