# reduceMatcher?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c1ec8d7f2f4ab3140017806e4014608f753d188e1d00d2eca7573d28b2bf59b",
  "kind": "def",
  "lexical_name": "reduceMatcher?",
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
  "slug": "reducematcher--fcc317fc14b9ef0b9a3eaf02",
  "source": {
    "blob": "f31a765ed75b6fbe3ae881a93afdf3152f18a53f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 563,
    "line": 536,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcc317fc14b9ef0b9a3eaf027304947b4c2db99069a09aade30817a891e78093",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c1ec8d7f2f4ab3140017806e4014608f753d188e1d00d2eca7573d28b2bf59b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 536–563.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reduceMatcher? (e : Expr) : MetaM ReduceMatcherResult := do
  let e := e.consumeMData
  let .const declName declLevels := e.getAppFn
    | return .notMatcher
  let some info ← getMatcherInfo? declName
    | return .notMatcher
  let args := e.getAppArgs
  let prefixSz := info.numParams + 1 + info.numDiscrs
  if args.size < prefixSz + info.numAlts then
    return ReduceMatcherResult.partialApp
  let constInfo ← getConstInfo declName
  let mut f ← instantiateValueLevelParams constInfo declLevels
  if (← getTransparency) matches .reducible | .instances | .implicit then
    f ← unfoldNestedDIte f
  let auxApp := mkAppN f args[*...prefixSz]
  let auxAppType ← inferType auxApp
  forallBoundedTelescope auxAppType info.numAlts fun hs _ => do
    let auxApp ← whnfMatcher (mkAppN auxApp hs)
    let auxAppFn := auxApp.getAppFn
    let mut i := prefixSz
    for h in hs do
      if auxAppFn == h then
        let result := mkAppN args[i]! auxApp.getAppArgs
        let result := mkAppN result args[(prefixSz + info.numAlts)...args.size]
        return ReduceMatcherResult.reduced result.headBeta
      i := i + 1
    return ReduceMatcherResult.stuck auxApp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean#L536).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f31a765ed75b6fbe3ae881a93afdf3152f18a53f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
