# runAndFailIfNoProgress

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d219304bee802342dc40c066e3ee9090647e865b4f57f68d2ae9839984aac2d3",
  "kind": "def",
  "lexical_name": "runAndFailIfNoProgress",
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
  "slug": "runandfailifnoprogress--1d8732a1d07f45da4e9fc93f",
  "source": {
    "blob": "96aaf76cf0e144155d3a27cba99b9ed553bdf552",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variant3f8c99dbae05f50647455bb9ee133322aa74b2ca7f82f6c8a38ebdee8f7b5d71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d8732a1d07f45da4e9fc93fe127d754b2586aa70a05ba9c7337a129c2b604e1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variant3f8c99dbae05f50647455bb9ee133322aa74b2ca7f82f6c8a38ebdee8f7b5d71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d219304bee802342dc40c066e3ee9090647e865b4f57f68d2ae9839984aac2d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runAndFailIfNoProgress (goal : MVarId) (tacs : TacticM Unit) : TacticM (List MVarId) := do
  let l ← run goal tacs
  try
    let [newGoal] := l | failure
    guard <|← withNewMCtxDepth <| withReducible <| isDefEq (← newGoal.getType) (← goal.getType)
    let ctxDecls := (← goal.getDecl).lctx.decls.toList
    let newCtxDecls := (← newGoal.getDecl).lctx.decls.toList
    guard <|← withNewMCtxDepth <| withReducible <| lctxIsDefEq ctxDecls newCtxDecls
  catch _ =>
    return l
  throwError "no progress made on {goal}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variant3f8c99dbae05f50647455bb9ee133322aa74b2ca7f82f6c8a38ebdee8f7b5d71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variant3f8c99dbae05f50647455bb9ee133322aa74b2ca7f82f6c8a38ebdee8f7b5d71.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96aaf76cf0e144155d3a27cba99b9ed553bdf552` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
