# compl_join_eq_meet_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "399a3509b0f1f7d3dbe36af351d4dbcbb3a5bb96",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/627c5063923894d27c4b30c14016e82d1a4963292a38cdfdb7d7ffda9da9ce8b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4db3d50a-c256-031e-0293-4b11643a45b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f67f624d-c279-1036-f1c1-86ac1897dfe5",
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
  "slug": "compl-join-eq-meet-compl--02e195f11926d8cba6ac7243",
  "source": {
    "blob": "399a3509b0f1f7d3dbe36af351d4dbcbb3a5bb96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 174,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant627c5063923894d27c4b30c14016e82d1a4963292a38cdfdb7d7ffda9da9ce8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02e195f11926d8cba6ac72432e9553e519818e4aca07c59b76bf7124b5276137",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant627c5063923894d27c4b30c14016e82d1a4963292a38cdfdb7d7ffda9da9ce8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f67f624d-c279-1036-f1c1-86ac1897dfe5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–244.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant627c5063923894d27c4b30c14016e82d1a4963292a38cdfdb7d7ffda9da9ce8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant627c5063923894d27c4b30c14016e82d1a4963292a38cdfdb7d7ffda9da9ce8b.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `399a3509b0f1f7d3dbe36af351d4dbcbb3a5bb96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
