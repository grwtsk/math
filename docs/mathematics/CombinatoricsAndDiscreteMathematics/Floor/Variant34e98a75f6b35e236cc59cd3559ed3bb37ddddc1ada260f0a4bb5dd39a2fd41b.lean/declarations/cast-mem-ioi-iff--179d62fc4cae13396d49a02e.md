# cast_mem_Ioi_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a2b0f02-7645-3cf0-ecb1-15b675733935",
  "kind": "lemma",
  "lexical_name": "cast_mem_Ioi_iff",
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
  "slug": "cast-mem-ioi-iff--179d62fc4cae13396d49a02e",
  "source": {
    "blob": "2e426189f7d524f9803ce651efa57101c1d57be2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 50,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Floor/Variant34e98a75f6b35e236cc59cd3559ed3bb37ddddc1ada260f0a4bb5dd39a2fd41b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:179d62fc4cae13396d49a02ecc570771b86e314eaf80d69ef0e34dbcbf864430",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Floor/Variant34e98a75f6b35e236cc59cd3559ed3bb37ddddc1ada260f0a4bb5dd39a2fd41b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a2b0f02-7645-3cf0-ecb1-15b675733935`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cast_mem_Ioi_iff : ↑n ∈ Set.Ioi a ↔ n ∈ Set.Ioi ⌊a⌋ := by simp [floor_lt]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Floor/Variant34e98a75f6b35e236cc59cd3559ed3bb37ddddc1ada260f0a4bb5dd39a2fd41b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Floor/Variant34e98a75f6b35e236cc59cd3559ed3bb37ddddc1ada260f0a4bb5dd39a2fd41b.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e426189f7d524f9803ce651efa57101c1d57be2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
