# synthInstanceCore?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3dac4bf2b42dfd28cf2b7de128c5c05fcab3e63e6c007703f5c696e60c85b446",
  "kind": "def",
  "lexical_name": "synthInstanceCore?",
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
  "slug": "synthinstancecore--dd1473068407f150f17e34d3",
  "source": {
    "blob": "e608408e1c1d850abed1de7230db8288ff187fd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1015,
    "line": 966,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd1473068407f150f17e34d3b69956c81c380b71a797894e61881e60a3abad76",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3dac4bf2b42dfd28cf2b7de128c5c05fcab3e63e6c007703f5c696e60c85b446`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 966–1015.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def synthInstanceCore? (type : Expr) (maxResultSize? : Option Nat := none) : MetaM (Option Expr) := do
  let opts ← getOptions
  let maxResultSize := maxResultSize?.getD (synthInstance.maxSize.get opts)
  withTraceNode `Meta.synthInstance
    (fun _ => return m!"{← instantiateMVars type}") do
  withConfig (fun config => { config with isDefEqStuckEx := true, transparency := TransparencyMode.instances,
                                          foApprox := true, ctxApprox := true, constApprox := false, univApprox := false }) do
  withInTypeClassResolution do
    let localInsts ← getLocalInstances
    let type ← instantiateMVars type
    let { type, cacheKeyType, kind } ← preprocess type
    let cacheKey := { localInsts, type := cacheKeyType, synthPendingDepth := (← read).synthPendingDepth }
    match (← get).cache.synthInstance.find? cacheKey with
    | some abstResult? =>
      trace[Meta.synthInstance.cache] "cached: {type}"
      let result? ← applyCachedAbstractResult? type abstResult?
      trace[Meta.synthInstance] "result {result?} (cached)"
      return result?
    | none =>
      trace[Meta.synthInstance.cache] "new: {type}"
      let abstResult? ← withNewMCtxDepth (allowLevelAssignments := true) do
        match kind with
        | .noMVars =>
          /-
          **Note**: The expensive `preprocessOutParam` step is morally **not** needed here because
          the output params should be uniquely determined by the input params. During type class
          resolution, definitional equality only unfolds `[reducible]` and `[instance_reducible]`
          declarations. This is a contract with our users to ensure performance is reasonable.
          However, the same `OrderDual` declaration that creates problems for `assignOutParams`
          also prevents us from using this optimization. As an example, suppose we are trying to
          synthesize
          ```
          FunLike F (OrderDual α) (OrderDual β)
          ```
          where the last two arguments of `FunLike` are output parameters. This term has no
          metavariables, and it seems natural to skip `preprocessOutParam`, which would replace
          the last two arguments with metavariables. However, if we don't replace them,
          TC resolution fails because it cannot unfold `OrderDual` since it is semireducible.

          **Note**: We should remove `preprocessOutParam` from the following line as soon as
          Mathlib refactors `OrderDual`.
          -/
          SynthInstance.main (← preprocessOutParam type) maxResultSize
        | .mvarsNoOutputParams => SynthInstance.main type maxResultSize
        | .mvarsOutputParams => SynthInstance.main (← preprocessOutParam type) maxResultSize
      let result? ← applyAbstractResult? type abstResult?
      trace[Meta.synthInstance] "result {result?}"
      cacheResult cacheKey kind abstResult? result?
      return result?

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean#L966).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e608408e1c1d850abed1de7230db8288ff187fd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
