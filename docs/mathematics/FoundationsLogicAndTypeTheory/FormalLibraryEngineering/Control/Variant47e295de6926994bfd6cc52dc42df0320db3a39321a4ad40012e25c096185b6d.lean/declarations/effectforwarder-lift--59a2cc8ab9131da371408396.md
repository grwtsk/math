# EffectForwarder.lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6001b8dea73e4c86c688d64835d411a6a6481a9a3b79cc51d3b03942a08052cd",
  "kind": "def",
  "lexical_name": "EffectForwarder.lift",
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
  "slug": "effectforwarder-lift--59a2cc8ab9131da371408396",
  "source": {
    "blob": "d3f53f4f8a14bc0a1908658a5058d6a5a6d26f91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 262,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59a2cc8ab9131da371408396f76c3ff0beb22ae07958123891b2cb119f254b72",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6001b8dea73e4c86c688d64835d411a6a6481a9a3b79cc51d3b03942a08052cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EffectForwarder.lift (l : EffectForwarder) (elabElem : DoElemCont → DoElabM Expr) : DoElabM Expr := do
  let oldBreakCont ← getBreakCont
  let oldContinueCont ← getContinueCont
  let oldReturnCont ← getReturnCont
  let breakCont :=
    match oldBreakCont, l.breakBase? with
    | some _, some breakBase => some <| breakBase.mkBreak (l.continueBase?.isSome)
    | _, _ => oldBreakCont
  let continueCont :=
    match oldContinueCont, l.continueBase? with
    | some _, some continueBase => some <| continueBase.mkContinue
    | _, _ => oldContinueCont
  let returnCont :=
    match l.returnBase? with
    | some returnBase => { oldReturnCont with k := returnBase.mkReturn }
    | _ => oldReturnCont
  let contInfo := ContInfo.toContInfoRef { breakCont, continueCont, returnCont }
  let pureCont := { l.origCont with k := l.liftedStack.mkPure l.origCont.resultName, kind := .duplicable }
  withReader (fun ctx => { ctx with contInfo, doBlockResultType := l.liftedDoBlockResultType }) do
    elabElem pureCont

/-- Build a `DoElemCont` that unpacks the lifted body's result and resumes `origCont.k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant47e295de6926994bfd6cc52dc42df0320db3a39321a4ad40012e25c096185b6d.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3f53f4f8a14bc0a1908658a5058d6a5a6d26f91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
