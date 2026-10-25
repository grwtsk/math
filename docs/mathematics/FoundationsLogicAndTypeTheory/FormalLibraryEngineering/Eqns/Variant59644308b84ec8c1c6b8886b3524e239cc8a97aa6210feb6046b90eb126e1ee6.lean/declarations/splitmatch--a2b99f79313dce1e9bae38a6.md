# splitMatch?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2494e1c0553982a8c0f2e30d446ebfb3ecdc804a8be9f9803d78270d29f8067",
  "kind": "def",
  "lexical_name": "splitMatch?",
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
  "slug": "splitmatch--a2b99f79313dce1e9bae38a6",
  "source": {
    "blob": "7a2507e3b5079fdac4a97cedbb2629942a736fbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 278,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2b99f79313dce1e9bae38a63a9f805139753f7ea3d9e727e0e42675331124ef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2494e1c0553982a8c0f2e30d446ebfb3ecdc804a8be9f9803d78270d29f8067`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def splitMatch? (mvarId : MVarId) (declNames : Array Name) : MetaM (Option (List MVarId)) := commitWhenSome? do
  let target ← mvarId.getType'
  let rec go (badCases : ExprSet) : MetaM (Option (List MVarId)) := do
    if let some e := findMatchToSplit? (backward.eqns.deepRecursiveSplit.get (← getOptions)) (← getEnv)
                                       target declNames badCases then
      try
        Meta.Split.splitMatch mvarId e
      catch ex =>
        trace[Elab.definition.eqns] "cannot split {e}\n{ex.toMessageData}"
        go (badCases.insert e)
    else
      trace[Elab.definition.eqns] "did not find term to split\n{MessageData.ofGoal mvarId}"
      return none
  go {}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a2507e3b5079fdac4a97cedbb2629942a736fbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
