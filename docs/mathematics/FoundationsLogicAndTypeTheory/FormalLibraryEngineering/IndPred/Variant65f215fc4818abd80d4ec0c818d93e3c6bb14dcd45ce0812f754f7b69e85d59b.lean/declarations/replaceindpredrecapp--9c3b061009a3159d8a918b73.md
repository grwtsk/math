# replaceIndPredRecApp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a30420b76185c5f23737046fa0fb35b8fbd61d65030db320bcbb197bd25c61d",
  "kind": "def",
  "lexical_name": "replaceIndPredRecApp",
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
  "slug": "replaceindpredrecapp--9c3b061009a3159d8a918b73",
  "source": {
    "blob": "c096e6a0047aaf458258791c82e89be02940a129",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c3b061009a3159d8a918b734167ab37350e2e8a5406cb0c85cded8192675847",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a30420b76185c5f23737046fa0fb35b8fbd61d65030db320bcbb197bd25c61d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def replaceIndPredRecApp (recArgInfo : RecArgInfo) (ctx : RecursionContext) (fidx : Nat)
    (positions : Positions) (e : Expr) (args : Array Expr) : MetaM Expr := do
  let some recArg := args[recArgInfo.recArgPos]? |
    throwError "insufficient number of parameters at recursive application {indentExpr e}"
  let recArg ← whnfCore recArg
  let fail {α} : MetaM α := do throwError "failed to eliminate recursive application{indentExpr e}"
  let .fvar recVar := recArg.getAppFn | fail
  let some (motiveIdx, e) := ctx.motives.get? recVar | fail
  let recApp := mkAppN e recArg.getAppArgs
  let some pos := positions[motiveIdx]!.idxOf? fidx | fail
  let mut ys := #[]
  for h : i in *...args.size do
    unless recArgInfo.indicesPos.contains i || i == recArgInfo.recArgPos do
      unless recArgInfo.fixedParamPerm.isFixed i do
        ys := ys.push args[i]
  let recApp := andProj pos positions[motiveIdx]!.size recApp
  return mkAppN recApp ys

/-- Monad for inductive predicate recursion that accumulates matcher creation side-effects. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c096e6a0047aaf458258791c82e89be02940a129` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
