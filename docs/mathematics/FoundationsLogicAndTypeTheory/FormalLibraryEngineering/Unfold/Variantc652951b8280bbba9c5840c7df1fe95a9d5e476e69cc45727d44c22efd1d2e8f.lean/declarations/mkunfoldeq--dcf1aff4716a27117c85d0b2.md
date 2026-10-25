# mkUnfoldEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c04628a1a09e602d0746cfb945414963181b7b009f55b3ea916a2ec74f5b95b",
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
  "slug": "mkunfoldeq--dcf1aff4716a27117c85d0b2",
  "source": {
    "blob": "849a457353df87c49693cff34437d1c9ba571f06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 219,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc652951b8280bbba9c5840c7df1fe95a9d5e476e69cc45727d44c22efd1d2e8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcf1aff4716a27117c85d0b2ce778b35b25a83bfe8dbe31471573ce4fb1cd1fc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc652951b8280bbba9c5840c7df1fe95a9d5e476e69cc45727d44c22efd1d2e8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c04628a1a09e602d0746cfb945414963181b7b009f55b3ea916a2ec74f5b95b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkUnfoldEq (preDef : PreDefinition) (unaryPreDefName : Name) (wfPreprocessProof : Simp.Result) : MetaM Unit := do
  let name := mkEqLikeNameFor (← getEnv) preDef.declName unfoldThmSuffix
  prependError m!"Cannot derive unfold equation {name}" do
  withOptions (tactic.hygienic.set · false) do
  withoutExporting do
    lambdaTelescope preDef.value fun xs body => do
      let us := preDef.levelParams.map mkLevelParam
      let lhs := mkAppN (Lean.mkConst preDef.declName us) xs
      let type ← mkEq lhs body

      let main ← mkFreshExprSyntheticOpaqueMVar type
      let mvarId := main.mvarId!
      let wfPreprocessProof ← Simp.mkCongr { expr := type.appFn! } (← wfPreprocessProof.addExtraArgs xs)
      let mvarId ← applySimpResultToTarget mvarId type wfPreprocessProof
      let mvarId ← if preDef.declName != unaryPreDefName then deltaLHS mvarId else pure mvarId
      let mvarId ← rwFixEq mvarId
      mkUnfoldProof preDef.declName mvarId

      let value ← instantiateMVars main
      let type ← mkForallFVars xs type
      let type ← letToHave type
      let value ← mkLambdaFVars xs value
      addDecl <| Declaration.thmDecl {
        name, type, value
        levelParams := preDef.levelParams
      }
      inferDefEqAttr name
      trace[Elab.definition.wf] "mkUnfoldEq defined {.ofConstName name}"

/--
Derives the equational theorem for the individual functions from the equational
theorem of `foo._unary` or `foo._binary`.

It should just be a specialization of that one, due to defeq.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc652951b8280bbba9c5840c7df1fe95a9d5e476e69cc45727d44c22efd1d2e8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc652951b8280bbba9c5840c7df1fe95a9d5e476e69cc45727d44c22efd1d2e8f.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `849a457353df87c49693cff34437d1c9ba571f06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
