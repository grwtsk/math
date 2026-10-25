# generate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d50714a8c417066687ff28c920e44e1789754702528c7af7fe26fb7a15c447c9",
  "kind": "def",
  "lexical_name": "generate",
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
  "slug": "generate--e7148263b48f9ed567d6eb2e",
  "source": {
    "blob": "450d8edb60c648a3145eb1d9c2a410f4644debe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 626,
    "line": 590,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7148263b48f9ed567d6eb2ef2ce3856267839b4b8200735dca558608d4bf053",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d50714a8c417066687ff28c920e44e1789754702528c7af7fe26fb7a15c447c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 590–626.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def generate : SynthM Unit := do
  let gNode ← getTop
  if gNode.currInstanceIdx == 0  then
    modify fun s => { s with generatorStack := s.generatorStack.pop }
  else
    let key  := gNode.key
    let idx  := gNode.currInstanceIdx - 1
    let inst := gNode.instances[idx]!
    let mctx := gNode.mctx
    let mvar := gNode.mvar
    /- See comment at `typeHasMVars` -/
    if backward.synthInstance.canonInstances.get (← getOptions) then
      unless gNode.typeHasMVars do
        if let some entry := (← get).tableEntries[key]? then
          if entry.answers.any fun answer => answer.result.numMVars == 0 then
            /-
            We already have an answer that:
              1. its result does not have metavariables.
              2. its types do not have metavariables.

            Thus, we can skip other solutions because we assume instances are "morally canonical".
            We have added this optimization to address issue #3996.

            Remark: Condition 1 is important since root nodes only take into account results
            that do **not** contain metavariables. This extra check was added to address issue #4213.
            -/
            modify fun s => { s with generatorStack := s.generatorStack.pop }
            return
    discard do withMCtx mctx do
      withTraceNode `Meta.synthInstance.apply
        (fun _ => return m!"apply {inst.val} to {← instantiateMVars (← inferType mvar)}") do
      modifyTop fun gNode => { gNode with currInstanceIdx := idx }
      if let some (mctx, subgoals) ← tryResolve mvar inst then
        consume { key, mvar, subgoals, mctx, size := 0 }
        return some ()
      return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean#L590).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `450d8edb60c648a3145eb1d9c2a410f4644debe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
