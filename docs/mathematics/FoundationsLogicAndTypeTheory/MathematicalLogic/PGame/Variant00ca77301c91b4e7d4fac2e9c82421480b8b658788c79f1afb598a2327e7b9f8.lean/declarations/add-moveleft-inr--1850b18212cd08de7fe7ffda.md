# add_moveLeft_inr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c586cfcc673384611c1256aa8fcc234322ca2517",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1570,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00ca77301c91b4e7d4fac2e9c82421480b8b658788c79f1afb598a2327e7b9f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16afeeb7-42fb-76ac-8c83-fa044456facd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03fd20b6-7356-cb55-765a-315c0953c99f",
  "kind": "theorem",
  "lexical_name": "add_moveLeft_inr",
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
  "slug": "add-moveleft-inr--1850b18212cd08de7fe7ffda",
  "source": {
    "blob": "c586cfcc673384611c1256aa8fcc234322ca2517",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1577,
    "line": 1570,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PGame/Variant00ca77301c91b4e7d4fac2e9c82421480b8b658788c79f1afb598a2327e7b9f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1850b18212cd08de7fe7ffdab89e8bf5267b4c044978b6721837135291a97dab",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PGame/Variant00ca77301c91b4e7d4fac2e9c82421480b8b658788c79f1afb598a2327e7b9f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03fd20b6-7356-cb55-765a-315c0953c99f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1570–1577.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_moveLeft_inr (x : PGame) {y : PGame} (i) :
    (x + y).moveLeft (toLeftMovesAdd (Sum.inr i)) = x + y.moveLeft i := by
  cases x
  cases y
  rfl
#align pgame.add_move_left_inr SetTheory.PGame.add_moveLeft_inr

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PGame/Variant00ca77301c91b4e7d4fac2e9c82421480b8b658788c79f1afb598a2327e7b9f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PGame/Variant00ca77301c91b4e7d4fac2e9c82421480b8b658788c79f1afb598a2327e7b9f8.lean#L1570).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c586cfcc673384611c1256aa8fcc234322ca2517` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
