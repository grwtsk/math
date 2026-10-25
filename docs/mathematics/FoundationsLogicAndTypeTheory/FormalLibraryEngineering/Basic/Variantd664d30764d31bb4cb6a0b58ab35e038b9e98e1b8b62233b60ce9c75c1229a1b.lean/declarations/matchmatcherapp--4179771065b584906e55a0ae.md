# matchMatcherApp?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98bfd2e00d08e9e99d2f88331dab1492408d68eb7bcecc25595523bd55f8fc3f",
  "kind": "def",
  "lexical_name": "matchMatcherApp?",
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
  "slug": "matchmatcherapp--4179771065b584906e55a0ae",
  "source": {
    "blob": "119ed082898c5e67a8ece6f61ea1fcb751d0075d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd664d30764d31bb4cb6a0b58ab35e038b9e98e1b8b62233b60ce9c75c1229a1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4179771065b584906e55a0ae52db773e5357bdcd4a7ed1bad49b1f19170563d8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd664d30764d31bb4cb6a0b58ab35e038b9e98e1b8b62233b60ce9c75c1229a1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98bfd2e00d08e9e99d2f88331dab1492408d68eb7bcecc25595523bd55f8fc3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def matchMatcherApp? [Monad m] [MonadEnv m] [MonadError m] (e : Expr) (alsoCasesOn := false) :
    m (Option MatcherApp) := do
  unless e.isApp do return none
  if let .const declName declLevels := e.getAppFn then
    if let some info ← getMatcherInfo? declName then
      let args := e.getAppArgs
      if args.size < info.arity then
        return none
      return some {
        info with
        matcherName   := declName
        matcherLevels := declLevels.toArray
        params        := args.extract 0 info.numParams
        motive        := args[info.getMotivePos]!
        discrs        := args[(info.numParams + 1)...(info.numParams + 1 + info.numDiscrs)]
        alts          := args[(info.numParams + 1 + info.numDiscrs)...(info.numParams + 1 + info.numDiscrs + info.numAlts)]
        remaining     := args[(info.numParams + 1 + info.numDiscrs + info.numAlts)...args.size]
      }

    if alsoCasesOn && isCasesOnRecursor (← getEnv) declName then
      let indName := declName.getPrefix
      let .inductInfo info ← getConstInfo indName | return none
      let args := e.getAppArgs
      unless args.size >= info.numParams + 1 /- motive -/ + info.numIndices + 1 /- major -/ + info.numCtors do return none
      let params     := args[*...info.numParams]
      let motive     := args[info.numParams]!
      let discrs     := args[(info.numParams + 1)...(info.numParams + 1 + info.numIndices + 1)]
      let discrInfos := .replicate (info.numIndices + 1) {}
      let alts       := args[(info.numParams + 1 + info.numIndices + 1)...(info.numParams + 1 + info.numIndices + 1 + info.numCtors)]
      let remaining  := args[(info.numParams + 1 + info.numIndices + 1 + info.numCtors)...*]
      let uElimPos?  := if info.levelParams.length == declLevels.length then none else some 0
      let altInfos   ← info.ctors.toArray.mapM fun ctor => do
        let .ctorInfo ctorInfo ← getConstInfo ctor | panic! "expected constructor"
        return { numFields := ctorInfo.numFields, numOverlaps := 0, hasUnitThunk := false  : Match.AltParamInfo}
      return some {
        numParams := params.size
        numDiscrs := discrs.size
        matcherName   := declName
        matcherLevels := declLevels.toArray
        uElimPos?, discrInfos, params, motive, discrs, alts, remaining, altInfos
        overlaps := {} -- CasesOn constructor have no overlaps
      }

  return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd664d30764d31bb4cb6a0b58ab35e038b9e98e1b8b62233b60ce9c75c1229a1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd664d30764d31bb4cb6a0b58ab35e038b9e98e1b8b62233b60ce9c75c1229a1b.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `119ed082898c5e67a8ece6f61ea1fcb751d0075d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
