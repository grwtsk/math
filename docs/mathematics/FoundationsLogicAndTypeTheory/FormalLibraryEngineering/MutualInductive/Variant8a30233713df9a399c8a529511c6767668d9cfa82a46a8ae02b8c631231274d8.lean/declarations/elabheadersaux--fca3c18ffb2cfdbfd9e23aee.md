# elabHeadersAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46a17ce868d5a1c5c6a3ed963f78c59669161e457c37c2ebb795fadd56187ee5",
  "kind": "def",
  "lexical_name": "elabHeadersAux",
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
  "slug": "elabheadersaux--fca3c18ffb2cfdbfd9e23aee",
  "source": {
    "blob": "70adc2c0ca9bfa1e7a54b5e64de2521494b71cb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 323,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant8a30233713df9a399c8a529511c6767668d9cfa82a46a8ae02b8c631231274d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fca3c18ffb2cfdbfd9e23aeef46077767e17a4a3541fd1038f790d62bdbe69d8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant8a30233713df9a399c8a529511c6767668d9cfa82a46a8ae02b8c631231274d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46a17ce868d5a1c5c6a3ed963f78c59669161e457c37c2ebb795fadd56187ee5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabHeadersAux (views : Array InductiveView) (i : Nat) (acc : Array PreElabHeaderResult) : TermElabM (Array PreElabHeaderResult) :=
  Term.withAutoBoundImplicitForbiddenPred (fun n => views.any (·.shortDeclName == n)) do
    if h : i < views.size then
      let view := views[i]
      let acc ← withRef view.ref <| Term.withDeprecationContextFromAttrs view.modifiers.attrs <|
          Term.withAutoBoundImplicit <| Term.elabBinders view.binders.getArgs fun params => do
        let (type, _) ← Term.withAutoBoundImplicit do
          let typeStx ← view.type?.getDM `(Sort _)
          let type ← Term.elabType typeStx
          Term.synthesizeSyntheticMVarsNoPostponing
          let type ← instantiateMVars type
          let inlayHintPos? := view.binders.getTailPos? (canonicalOnly := true)
            <|> view.declId.getTailPos? (canonicalOnly := true)
          let indices ← Term.addAutoBoundImplicits #[] inlayHintPos?
          let type ← mkForallFVars indices type
          if view.allowIndices then
            unless (← isTypeFormerType type) do
              throwErrorAt typeStx m!"Invalid resulting type: Expected a sort or an indexed family of sorts"
                ++ .hint' m!"Examples of valid sorts include `Type _`, `Sort _`, and `Prop`"
          else
            unless (← whnfD type).isSort do
              throwErrorAt typeStx m!"Invalid resulting type: Expected a sort"
                ++ .hint' m!"Examples of valid sorts include `Type _`, `Sort _`, and `Prop`"
          return (type, indices.size)
        let params ← Term.addAutoBoundImplicits params (view.declId.getTailPos? (canonicalOnly := true))
        trace[Elab.inductive] "header params: {params}, type: {type}"
        let levelNames ← Term.getLevelNames
        let type ← mkForallFVars params type
        return acc.push { levelNames, numParams := params.size, type, view, origParams := params }
      elabHeadersAux views (i+1) acc
    else
      return acc

/--
Elaborates all the headers in the inductive views.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant8a30233713df9a399c8a529511c6767668d9cfa82a46a8ae02b8c631231274d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant8a30233713df9a399c8a529511c6767668d9cfa82a46a8ae02b8c631231274d8.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70adc2c0ca9bfa1e7a54b5e64de2521494b71cb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
