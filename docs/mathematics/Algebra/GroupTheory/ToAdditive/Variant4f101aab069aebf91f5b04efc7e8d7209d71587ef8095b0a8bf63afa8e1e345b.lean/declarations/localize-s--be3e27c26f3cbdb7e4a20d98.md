# localize.s

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84b2e683a09f3f2ae48f2f024d3139275758dcc97333a8241f53c6175526a8cd",
  "kind": "def",
  "lexical_name": "localize.s",
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
  "slug": "localize-s--be3e27c26f3cbdb7e4a20d98",
  "source": {
    "blob": "0d9e826b545f1e31f126f4c43fc73eeec2fea1b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 407,
    "path": "GRWTSK/Algebra/GroupTheory/ToAdditive/Variant4f101aab069aebf91f5b04efc7e8d7209d71587ef8095b0a8bf63afa8e1e345b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be3e27c26f3cbdb7e4a20d9893a61b19c4f6eaae26808d115dba6d34797aaf76",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ToAdditive/Variant4f101aab069aebf91f5b04efc7e8d7209d71587ef8095b0a8bf63afa8e1e345b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84b2e683a09f3f2ae48f2f024d3139275758dcc97333a8241f53c6175526a8cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] def localize.s := Nat

run_cmd do
  unless findTranslation? (← getEnv) `localize.r == some `add_localize.r do throwError "1"
  unless findTranslation? (← getEnv) `localize   == some `add_localize   do throwError "2"
  unless findTranslation? (← getEnv) `localize.s == some `add_localize.s do throwError "3"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ToAdditive/Variant4f101aab069aebf91f5b04efc7e8d7209d71587ef8095b0a8bf63afa8e1e345b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ToAdditive/Variant4f101aab069aebf91f5b04efc7e8d7209d71587ef8095b0a8bf63afa8e1e345b.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d9e826b545f1e31f126f4c43fc73eeec2fea1b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
