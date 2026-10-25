# EvalConfigItem.defaultOnErr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31587f4fb604c695ef7983b6d9b1aaea90c1879b16de9dce293bb55e49533e2c",
  "kind": "def",
  "lexical_name": "EvalConfigItem.defaultOnErr",
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
  "slug": "evalconfigitem-defaultonerr--25a651b5094c08aadae3d0fc",
  "source": {
    "blob": "e6586ec16c89bf98fe7ca76b5f365cb44e8b3b4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 272,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantca06e116b9b91f8833e6c8f512c9cf32d87499e451cc71a777d83180d4e39347.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25a651b5094c08aadae3d0fc3c6598c61f75ad87fdc011cfa3fe7bbeb8fb4273",
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

Occurrence: `declaration:31587f4fb604c695ef7983b6d9b1aaea90c1879b16de9dce293bb55e49533e2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EvalConfigItem.defaultOnErr {α : Type} (cfg : α) (cfgItem : Syntax) (cfgType? : Option Expr := none) : TermElabM α := do
  if let some cfgType := cfgType? then
    if (← getInfoState).enabled then
      -- Assumption: the configuration item might be malformed, but if the
      -- first token is an atom and the second is missing, it is almost surely
      -- `"(" ...`, `"+" ...`, or `"-" ...` and completion would be helpful.
      if (cfgItem.getArg 0).isAtom && (cfgItem.getArg 1).isMissing then
        -- This expression is used only for its inferred type in the completion system.
        let expr : Expr := mkApp2 (.const ``id [1]) cfgType (.const `_cfg_dummy [])
        let info := { elaborator := `ConfigEval, stx := cfgItem.getArg 0, lctx := {}, expectedType? := none, expr }
        addCompletionInfo <| .dot info none
  if cfgItem.hasMissing then
    return cfg
  else
    throwUnsupportedSyntax

/--
Applies the configuration `cfg` to `init` using `eval.set`.
If `logExceptions` is true, then catches and logs exceptions.

The `onErr` callback is used for invalid configuration syntax.

Note: this should be run from within `runConfigElab`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantca06e116b9b91f8833e6c8f512c9cf32d87499e451cc71a777d83180d4e39347.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantca06e116b9b91f8833e6c8f512c9cf32d87499e451cc71a777d83180d4e39347.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6586ec16c89bf98fe7ca76b5f365cb44e8b3b4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
