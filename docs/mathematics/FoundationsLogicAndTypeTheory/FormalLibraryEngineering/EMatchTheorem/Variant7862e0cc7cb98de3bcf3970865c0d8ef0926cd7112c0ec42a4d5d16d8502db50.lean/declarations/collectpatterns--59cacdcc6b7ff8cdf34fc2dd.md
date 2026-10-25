# collectPatterns?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07ba5f1c5f114a502b518a1782c1f29ae3cb3167b07bee60e0a044692d52c8d5",
  "kind": "def",
  "lexical_name": "collectPatterns?",
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
  "slug": "collectpatterns--59cacdcc6b7ff8cdf34fc2dd",
  "source": {
    "blob": "9d947cf9bc70039e5adf3ad5b7759178dd0d52bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1224,
    "line": 1188,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant7862e0cc7cb98de3bcf3970865c0d8ef0926cd7112c0ec42a4d5d16d8502db50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59cacdcc6b7ff8cdf34fc2dd38730d23fe3dc6d5552b51c01276095dbc0114e8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant7862e0cc7cb98de3bcf3970865c0d8ef0926cd7112c0ec42a4d5d16d8502db50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07ba5f1c5f114a502b518a1782c1f29ae3cb3167b07bee60e0a044692d52c8d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1188–1224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def collectPatterns? (proof : Expr) (xs : Array Expr) (searchPlaces : Array Expr) (symPrios : SymbolPriorities) (minPrio : Nat)
    (minIndexable : Bool) : MetaM (Option (List Expr × List HeadIndex)) := do
  let go (useOld : Bool): CollectorM (Option (List Expr)) := do
    for place in searchPlaces do
      trace[grind.debug.ematch.pattern] "place: {place}"
      let place ← preprocessPattern place
      if useOld then
        OldCollector.collect place
      else
        collect place minIndexable
      if (← get).done then
        return some ((← get).patterns.toList)
    return none
  let collect? (useOld : Bool) : MetaM (Option (List Expr × List HeadIndex)) := do
    let (some ps, s) ← go useOld { proof, xs } |>.run' {} { symPrios, minPrio } |>.run {}
      | return none
    return some (ps, s.symbols.toList)
  let useOld := backward.grind.inferPattern.get (← getOptions)
  if backward.grind.checkInferPatternDiscrepancy.get (← getOptions) then
    let oldResult? ← collect? (useOld := true)
    let newResult? ← collect? (useOld := false)
    let toPattern (result? : Option (List Expr × List HeadIndex)) : List MessageData :=
      let pat := result?.map (·.1) |>.getD []
      pat.map ppPattern
    if oldResult? != newResult? then
      logWarning m!"found discrepancy between old and new `grind` pattern inference procedures, old:{indentD (toPattern oldResult?)}\nnew:{indentD (toPattern newResult?)}"
    return if useOld then oldResult? else newResult?
  else
    collect? useOld

/--
Tries to find a ground pattern to activate the theorem.
This is used for theorems such as `theorem evenZ : Even 0`.
This function is only used if `collectPatterns?` returns `none`.

Remark: only symbols with priority `>= minPrio` are considered.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant7862e0cc7cb98de3bcf3970865c0d8ef0926cd7112c0ec42a4d5d16d8502db50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant7862e0cc7cb98de3bcf3970865c0d8ef0926cd7112c0ec42a4d5d16d8502db50.lean#L1188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d947cf9bc70039e5adf3ad5b7759178dd0d52bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
