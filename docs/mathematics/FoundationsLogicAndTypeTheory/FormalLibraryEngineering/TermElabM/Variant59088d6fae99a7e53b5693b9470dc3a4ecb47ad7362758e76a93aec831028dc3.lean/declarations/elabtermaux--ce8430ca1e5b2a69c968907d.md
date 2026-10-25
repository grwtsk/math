# elabTermAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7998a613aea8fec8a7ed4b94665efc5943b5787e89d999366799b606b2cce866",
  "kind": "def",
  "lexical_name": "elabTermAux",
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
  "slug": "elabtermaux--ce8430ca1e5b2a69c968907d",
  "source": {
    "blob": "872babc942fe96b14ef803da94e7e2245f8a08ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1866,
    "line": 1831,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce8430ca1e5b2a69c968907def5a600a2c5b871310af41ed5d995cf085b9ca8a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7998a613aea8fec8a7ed4b94665efc5943b5787e89d999366799b606b2cce866`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1831–1866.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def elabTermAux (expectedType? : Option Expr) (catchExPostpone : Bool) (implicitLambda : Bool) : Syntax → TermElabM Expr
  | .missing => mkSyntheticSorryFor expectedType?
  | stx => withFreshMacroScope <| withIncRecDepth do
    withTraceNode `Elab.step (fun _ => return m!"expected type: {expectedType?}, term\n{stx}")
      (tag := stx.getKind.toString) do
    checkSystem "elaborator"
    checkDeprecatedSyntax stx (← read).macroStack
    let env ← getEnv
    let result ← match (← liftMacroM (expandMacroImpl? env stx)) with
    | some (decl, stxNew?) =>
      let stxNew ← liftMacroM <| liftExcept stxNew?
      withTermInfoContext' decl stx (expectedType? := expectedType?) <|
        withMacroExpansion stx stxNew <|
          withRef stxNew <|
            elabTermAux expectedType? catchExPostpone implicitLambda stxNew
    | _ =>
      let useImplicitResult ← if implicitLambda && (← read).implicitLambda then useImplicitLambda stx expectedType? else pure .no
      match useImplicitResult with
      | .yes expectedType => elabImplicitLambda stx catchExPostpone expectedType
      | .no => elabUsingElabFns stx expectedType? catchExPostpone
      | .postpone =>
        /-
        Try to postpone elaboration, and if we cannot postpone anymore disable implicit lambdas.
        See comment at `useImplicitLambda`.
        -/
        if (← read).mayPostpone then
          if catchExPostpone then
            postponeElabTerm stx expectedType?
          else
            throwPostpone
        else
          elabUsingElabFns stx expectedType? catchExPostpone
    trace[Elab.step.result] result
    pure result

/-- Store in the `InfoTree` that `e` is a "dot"-completion target. `stx` should cover the entire term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean#L1831).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `872babc942fe96b14ef803da94e7e2245f8a08ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
