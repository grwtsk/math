# EvalConfigItem.setConfig'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07727e04e5bedb78f72669cebb643d1b0875c4bbfba5315d55941320dcc0a7aa",
  "kind": "def",
  "lexical_name": "EvalConfigItem.setConfig'",
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
  "slug": "evalconfigitem-setconfig--9d72451935727f3d7885d73b",
  "source": {
    "blob": "e6586ec16c89bf98fe7ca76b5f365cb44e8b3b4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 326,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantca06e116b9b91f8833e6c8f512c9cf32d87499e451cc71a777d83180d4e39347.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d72451935727f3d7885d73bb2bbdcc5c922a0a35a63931fa54850ad59f486df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantca06e116b9b91f8833e6c8f512c9cf32d87499e451cc71a777d83180d4e39347.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07727e04e5bedb78f72669cebb643d1b0875c4bbfba5315d55941320dcc0a7aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EvalConfigItem.setConfig' {α : Type} (eval : EvalConfigItem α)
    (init : α) (cfg : Syntax)
    (onErr : α → Syntax → TermElabM α := defaultOnErr)
    (logExceptions : Bool := false) : CoreM α := do
  if cfg.matchesNull 0 || (cfg.getNumArgs == 1 && (cfg.getArg 0).matchesNull 0) then
    -- These represent an empty null node or an `optConfig`-like syntax with no arguments.
    -- Return without doing `runConfigElab`.
    return init
  else
    runConfigElab (eval.setConfig init cfg onErr logExceptions)

/--
Calls `EvalConfigItem.setConfigs'` from within `runConfigElab`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantca06e116b9b91f8833e6c8f512c9cf32d87499e451cc71a777d83180d4e39347.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantca06e116b9b91f8833e6c8f512c9cf32d87499e451cc71a777d83180d4e39347.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6586ec16c89bf98fe7ca76b5f365cb44e8b3b4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
