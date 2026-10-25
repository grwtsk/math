# update

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f1b80c040473519f6fa5103d15f6947c5f3b83f0d3c7c8c2604a4c324524317",
  "kind": "def",
  "lexical_name": "update",
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
  "slug": "update--f1ba3d5ae90cd2d8134d13f9",
  "source": {
    "blob": "74d8fdc9f1b41015680168a96479c29275caaba7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 923,
    "line": 899,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant3a5024a55293b95649591d69e76e74675401a2f691c6f1c9e9c5788366ed7a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1ba3d5ae90cd2d8134d13f90ccf153668f9f80820384f58aecc30ab119ede14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant3a5024a55293b95649591d69e76e74675401a2f691c6f1c9e9c5788366ed7a37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f1b80c040473519f6fa5103d15f6947c5f3b83f0d3c7c8c2604a4c324524317`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 899–923.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def update (goal : MVarId) (fs : ForwardState) (phase? : Option PhaseName) :
    BaseM (ForwardState × Array ForwardRuleMatch) :=
  profilingForwardState do
  let phaseStr :=
    match phase? with
    | none => "all phases"
    | some phase => s!"{phase} phase"
  withAesopTraceNode .forward (fun _ => return m!"update forward state for {phaseStr}") do
  let toUpdate : Array RuleName :=
    match phase? with
    | none => fs.ruleStates.foldl (init := #[]) fun toUpdate rule _ => toUpdate.push rule
    | some phase => fs.ruleStates.foldl (init := #[]) fun toUpdate rule _ =>
      if rule.phase == phase then toUpdate.push rule else toUpdate
  let mut ruleStates := fs.ruleStates
  let mut ms := #[]
  for rule in toUpdate do
    let some rs := fs.ruleStates[rule]
      | unreachable!
    let (rs, ms') ← rs.update goal
    ruleStates := ruleStates.insert rule rs
    ms := ms ++ ms'
  aesop_trace[forward] "new complete matches:{indentD <| m!"\n".joinSep <| ms.toList.map toMessageData}"
  return ({ fs with ruleStates }, ms)

/-- Extract stats from a `ForwardState`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant3a5024a55293b95649591d69e76e74675401a2f691c6f1c9e9c5788366ed7a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant3a5024a55293b95649591d69e76e74675401a2f691c6f1c9e9c5788366ed7a37.lean#L899).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74d8fdc9f1b41015680168a96479c29275caaba7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
