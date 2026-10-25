# guessLex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c79e1d6e3eae925544558129111862a700bcaa8fb6216342a07512fc64c18f1",
  "kind": "def",
  "lexical_name": "guessLex",
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
  "slug": "guesslex--5e083d5ec90bb6c29bcd0ed7",
  "source": {
    "blob": "8655cf0708eda72c2b5d9dd51524ab5abee9098b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 846,
    "line": 808,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e083d5ec90bb6c29bcd0ed72110e9aa828b28756b4ace60aa3fefbe49e141e9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c79e1d6e3eae925544558129111862a700bcaa8fb6216342a07512fc64c18f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 808–846.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def guessLex (preDefs : Array PreDefinition) (unaryPreDef : PreDefinition)
    (fixedParamPerms : FixedParamPerms) (argsPacker : ArgsPacker) :
    MetaM TerminationMeasures := do
  let userVarNamess ← argsPacker.varNamess.mapM (naryVarNames ·)
  trace[Elab.definition.wf] "varNames is: {userVarNamess}"

  -- Collect all recursive calls and extract their context
  let recCalls ← collectRecCalls unaryPreDef fixedParamPerms argsPacker
  let recCalls := filterSubsumed recCalls

  -- For every function, the measures we want to use
  -- (One for each non-forbidden arg)
  let basicMeasures₁ ← simpleMeasures preDefs fixedParamPerms userVarNamess
  let basicMeasures₂ ← complexMeasures preDefs fixedParamPerms userVarNamess recCalls
  let basicMeasures := Array.zipWith (· ++ ·) basicMeasures₁ basicMeasures₂

  -- The list of measures, including the measures that order functions.
  -- The function ordering measures come last
  let mutualMeasures ← generateMeasures (basicMeasures.map (·.size))

  -- If there is only one plausible measure, use that
  if let #[solution] := mutualMeasures then
    let termMeasures ← toTerminationMeasures preDefs fixedParamPerms userVarNamess basicMeasures #[solution]
    reportTerminationMeasures preDefs termMeasures
    return termMeasures

  let rcs ← recCalls.mapM (RecCallCache.mk (preDefs.map (·.declName)) (preDefs.map (·.termination.decreasingBy?)) basicMeasures ·)
  let callMatrix := rcs.map (inspectCall ·)

  match ← liftMetaM <| solve mutualMeasures callMatrix with
  | .some solution => do
    let termMeasures ← toTerminationMeasures preDefs fixedParamPerms userVarNamess basicMeasures solution
    reportTerminationMeasures preDefs termMeasures
    return termMeasures
  | .none =>
    let explanation ← explainFailure (preDefs.map (·.declName)) basicMeasures rcs
    Lean.throwError <| "Could not find a decreasing measure.\n" ++
      explanation ++ "\n" ++
      "Please use `termination_by` to specify a decreasing measure."
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean#L808).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8655cf0708eda72c2b5d9dd51524ab5abee9098b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
