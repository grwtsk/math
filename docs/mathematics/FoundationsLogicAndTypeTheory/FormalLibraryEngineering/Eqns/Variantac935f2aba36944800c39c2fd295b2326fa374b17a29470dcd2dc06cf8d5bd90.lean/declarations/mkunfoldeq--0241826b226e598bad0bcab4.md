# mkUnfoldEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:814930a77a0baeba659d582afbc9f56d793b07293ddbc18f76a87fc2d3a6cf19",
  "kind": "def",
  "lexical_name": "mkUnfoldEq",
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
  "slug": "mkunfoldeq--0241826b226e598bad0bcab4",
  "source": {
    "blob": "3c69938afd8f9223631306fff8954e5c7d732605",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantac935f2aba36944800c39c2fd295b2326fa374b17a29470dcd2dc06cf8d5bd90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0241826b226e598bad0bcab47e0e5101cd77a2fcd84c548c7d1ad5495cb03668",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantac935f2aba36944800c39c2fd295b2326fa374b17a29470dcd2dc06cf8d5bd90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:814930a77a0baeba659d582afbc9f56d793b07293ddbc18f76a87fc2d3a6cf19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkUnfoldEq (declName : Name) (info : EqnInfo) : MetaM Name := do
  let name := mkEqLikeNameFor (← getEnv) declName unfoldThmSuffix
  realizeConst declName name (doRealize name)
  return name
where
  doRealize name := withOptions (tactic.hygienic.set · false) do
    lambdaTelescope info.value fun xs body => do
      let us := info.levelParams.map mkLevelParam
      let type ← mkEq (mkAppN (Lean.mkConst declName us) xs) body
      let goal ← withNewMCtxDepth do
        try
          let goal ← mkFreshExprSyntheticOpaqueMVar type
          let mvarId := goal.mvarId!
          trace[Elab.definition.partialFixpoint] "mkUnfoldEq start:{mvarId}"
          let mvarId ← deltaLHSUntilFix declName info.declNameNonRec mvarId
          trace[Elab.definition.partialFixpoint] "mkUnfoldEq after deltaLHS:{mvarId}"
          let mvarId ← rwFixEq mvarId
          trace[Elab.definition.partialFixpoint] "mkUnfoldEq after rwFixEq:{mvarId}"
          withAtLeastTransparency .all <|
            withOptions (smartUnfolding.set · false) <|
              mvarId.refl
          trace[Elab.definition.partialFixpoint] "mkUnfoldEq rfl succeeded"
          instantiateMVars goal
        catch e =>
          throwError "failed to generate unfold theorem for `{.ofConstName declName}`:\n{e.toMessageData}"
      let type ← mkForallFVars xs type
      let type ← letToHave type
      let value ← mkLambdaFVars xs goal

      addDecl <| (←mkThmOrUnsafeDef {
        name := name
        levelParams := info.levelParams
        type := type
        value := value
      })

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantac935f2aba36944800c39c2fd295b2326fa374b17a29470dcd2dc06cf8d5bd90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantac935f2aba36944800c39c2fd295b2326fa374b17a29470dcd2dc06cf8d5bd90.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c69938afd8f9223631306fff8954e5c7d732605` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
