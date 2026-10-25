# IntrosResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91ca26bba28f37beaa8733e5733a9791dc998c3abcb60690194cfdf0b345c0bc",
  "kind": "inductive",
  "lexical_name": "IntrosResult",
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
  "slug": "introsresult--1e795b8620019ff5cb1a7713",
  "source": {
    "blob": "e17e9ea3fde890f95db98f74e2f31d1cde5d00d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant6b5ebeb0b3f8c1b757711b452d7f5ba38725a52314499d5d56d1f56659e78490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e795b8620019ff5cb1a7713c486ce5e132a1e7cfff1d4915422850146392d17",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant6b5ebeb0b3f8c1b757711b452d7f5ba38725a52314499d5d56d1f56659e78490.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91ca26bba28f37beaa8733e5733a9791dc998c3abcb60690194cfdf0b345c0bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public inductive IntrosResult where
  | failed
  | goal (newDecls : Array FVarId) (mvarId : MVarId)

/--
Introduces leading binders (universal quantifiers and let-expressions) from the goal's target type.

If `names` is non-empty, introduces (at most) `names.size` binders using the provided names.
If `names` is empty, introduces all leading binders using names derived from the binder names;
`hygienic` then controls whether those names are inaccessible (see `introCore`).

Returns `.goal newDecls mvarId` with new introduced free variable Ids and the updated goal.
Returns `.failed` if no new declaration was introduced.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant6b5ebeb0b3f8c1b757711b452d7f5ba38725a52314499d5d56d1f56659e78490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant6b5ebeb0b3f8c1b757711b452d7f5ba38725a52314499d5d56d1f56659e78490.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e17e9ea3fde890f95db98f74e2f31d1cde5d00d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
