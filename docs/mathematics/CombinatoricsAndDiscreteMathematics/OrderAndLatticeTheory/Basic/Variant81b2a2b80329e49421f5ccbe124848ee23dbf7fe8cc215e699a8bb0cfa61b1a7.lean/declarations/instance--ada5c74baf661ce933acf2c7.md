# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c173468331f696fc012a321cbb841eedb3c52ccfc6d02e61d080543d9b22d52e",
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
  "slug": "instance--ada5c74baf661ce933acf2c7",
  "source": {
    "blob": "563edfb5af3114a069000ba20e86c0c08868533a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1206,
    "line": 1180,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant81b2a2b80329e49421f5ccbe124848ee23dbf7fe8cc215e699a8bb0cfa61b1a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ada5c74baf661ce933acf2c75dadb090b0cc0f7c3e29db8f76eb49ddf11ced68",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant81b2a2b80329e49421f5ccbe124848ee23dbf7fe8cc215e699a8bb0cfa61b1a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c173468331f696fc012a321cbb841eedb3c52ccfc6d02e61d080543d9b22d52e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1180–1206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : SuccOrder (WithBot α) where
  succ a :=
    match a with
    | ⊥ => some ⊥
    | Option.some a => some (succ a)
  le_succ a :=
    match a with
    | ⊥ => bot_le
    | Option.some a => some_le_some.2 (le_succ a)
  max_of_succ_le {a} ha := by
    cases a
    · exact ((none_lt_some (⊥ : α)).not_le ha).elim
    · exact (max_of_succ_le <| some_le_some.1 ha).withBot
  succ_le_of_lt {a b} h := by
    cases b
    · exact (not_lt_bot h).elim
    cases a
    · exact some_le_some.2 bot_le
    · exact some_le_some.2 (succ_le_of_lt <| some_lt_some.1 h)
  le_of_lt_succ {a b} h := by
    cases a
    · exact bot_le
    cases b
    · exact (not_lt_bot <| some_lt_some.1 h).elim
    · exact some_le_some.2 (le_of_lt_succ <| some_lt_some.1 h)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant81b2a2b80329e49421f5ccbe124848ee23dbf7fe8cc215e699a8bb0cfa61b1a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant81b2a2b80329e49421f5ccbe124848ee23dbf7fe8cc215e699a8bb0cfa61b1a7.lean#L1180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `563edfb5af3114a069000ba20e86c0c08868533a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
