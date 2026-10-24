# compl_meet_eq_join_compl

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
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/627c5063923894d27c4b30c14016e82d1a4963292a38cdfdb7d7ffda9da9ce8b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b3c122c-13b5-dffb-6928-f5140ba655f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e43d7e0d-3ce9-602d-d6b4-4b67f139a96d",
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
  "slug": "compl-meet-eq-join-compl--39188bd1b4ce7b6c31bb037d",
  "source": {
    "blob": "399a3509b0f1f7d3dbe36af351d4dbcbb3a5bb96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 245,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant627c5063923894d27c4b30c14016e82d1a4963292a38cdfdb7d7ffda9da9ce8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39188bd1b4ce7b6c31bb037d09405a78e5a0a71a46779fa649179508ecdcd787",
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

Occurrence: `result:e43d7e0d-3ce9-602d-d6b4-4b67f139a96d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–306.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant627c5063923894d27c4b30c14016e82d1a4963292a38cdfdb7d7ffda9da9ce8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Laws/Variant627c5063923894d27c4b30c14016e82d1a4963292a38cdfdb7d7ffda9da9ce8b.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `399a3509b0f1f7d3dbe36af351d4dbcbb3a5bb96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
