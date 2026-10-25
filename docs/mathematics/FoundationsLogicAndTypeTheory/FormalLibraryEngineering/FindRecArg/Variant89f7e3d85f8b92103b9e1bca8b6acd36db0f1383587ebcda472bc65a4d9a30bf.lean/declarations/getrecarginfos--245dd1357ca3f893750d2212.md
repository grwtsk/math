# getRecArgInfos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f0534707276d375998eec998e98876d1cb44fcdbcaf7afbd5b3762034c59e8b",
  "kind": "def",
  "lexical_name": "getRecArgInfos",
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
  "slug": "getrecarginfos--245dd1357ca3f893750d2212",
  "source": {
    "blob": "c85ae05060d8eb075af235554f65dafdfc6e0a69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant89f7e3d85f8b92103b9e1bca8b6acd36db0f1383587ebcda472bc65a4d9a30bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:245dd1357ca3f893750d2212aa21ddb8b40d6df82336c0b7c41c81744368fd9c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant89f7e3d85f8b92103b9e1bca8b6acd36db0f1383587ebcda472bc65a4d9a30bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f0534707276d375998eec998e98876d1cb44fcdbcaf7afbd5b3762034c59e8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getRecArgInfos (fnName : Name) (fixedParamPerm : FixedParamPerm) (xs : Array Expr)
    (value : Expr) (termMeasure? : Option TerminationMeasure) : MetaM (Array RecArgInfo × MessageData) := do
  lambdaTelescope value fun ys _ => do
    if let .some termMeasure := termMeasure? then
      -- User explicitly asked to use a certain measure, so throw errors eagerly
      let recArgInfo ← withRef termMeasure.ref do
        prependError m!"cannot use specified measure for structural recursion:" do
          let args := fixedParamPerm.buildArgs xs ys
          getRecArgInfo fnName fixedParamPerm args (← termMeasure.structuralArg)
      return (#[recArgInfo], m!"")
    else
      let args := fixedParamPerm.buildArgs xs ys
      let mut recArgInfos := #[]
      let mut report : MessageData := m!""
      -- No `termination_by`, so try all, and remember the errors
      for idx in *...args.size do
        try
          let recArgInfo ← getRecArgInfo fnName fixedParamPerm args idx
          recArgInfos := recArgInfos.push recArgInfo
        catch e =>
          report := report ++ (m!"Not considering parameter {← prettyParam args idx} of {fnName}:" ++
            indentD e.toMessageData) ++ "\n"
      trace[Elab.definition.structural] "getRecArgInfos report: {report}"
      return (recArgInfos, report)


/--
Reorders the `RecArgInfos` of one function to put arguments that are indices of other arguments
last.
See issue #837 for an example where we can show termination using the index of an inductive family, but
we don't get the desired definitional equalities.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant89f7e3d85f8b92103b9e1bca8b6acd36db0f1383587ebcda472bc65a4d9a30bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant89f7e3d85f8b92103b9e1bca8b6acd36db0f1383587ebcda472bc65a4d9a30bf.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c85ae05060d8eb075af235554f65dafdfc6e0a69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
