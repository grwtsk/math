# mkIndPredBRecOnF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2af518bc51cc6b71feafca791aa6b44e9cf8472633b8415a6c253c14ddc1dd01",
  "kind": "def",
  "lexical_name": "mkIndPredBRecOnF",
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
  "slug": "mkindpredbreconf--05b8c1820a5e267352fd4201",
  "source": {
    "blob": "c096e6a0047aaf458258791c82e89be02940a129",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05b8c1820a5e267352fd42012ec08068c1a7e18ea06f3822bd5d1702f7f2641a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2af518bc51cc6b71feafca791aa6b44e9cf8472633b8415a6c253c14ddc1dd01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkIndPredBRecOnF (recArgInfos : Array RecArgInfo) (positions : Positions)
    (recArgInfo : RecArgInfo) (value : Expr) (FType : Expr) (params : Array Expr) :
    MetaM (Expr × Array (MetaM Unit)) := do
  lambdaTelescope value fun xs value => do
    let (indicesMajorArgs, otherArgs) := recArgInfo.pickIndicesMajor xs
    let FType ← instantiateForall FType indicesMajorArgs
    forallBoundedTelescope FType (some 1) fun below _ => do
      let below := below[0]!
      let belowName := (← inferType below).getForallBody.getAppFn.constName!
      let ctx := {
        belows := .insert {} indicesMajorArgs.back!.fvarId! (belowName, below)
        motives := {}
      }
      let (valueNew, matchers) ← (withDeclNameForAuxNaming recArgInfo.fnName <|
        replaceIndPredRecApps recArgInfos positions params ctx value).run #[]
      let expr ← mkLambdaFVars (indicesMajorArgs ++ #[below] ++ otherArgs) valueNew
      return (expr, matchers)

end Lean.Elab.Structural
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant65f215fc4818abd80d4ec0c818d93e3c6bb14dcd45ce0812f754f7b69e85d59b.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c096e6a0047aaf458258791c82e89be02940a129` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
