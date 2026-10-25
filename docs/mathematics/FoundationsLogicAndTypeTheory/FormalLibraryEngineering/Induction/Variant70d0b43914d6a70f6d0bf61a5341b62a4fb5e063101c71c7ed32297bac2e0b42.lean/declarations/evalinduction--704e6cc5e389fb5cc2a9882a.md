# evalInduction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da33e88d1252fec2cdb861404fb71a9c3feb8e2b7dff3c1ac1ab06e2c41032a8",
  "kind": "def",
  "lexical_name": "evalInduction",
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
  "slug": "evalinduction--704e6cc5e389fb5cc2a9882a",
  "source": {
    "blob": "96201dae32b53e8b351c7f6a2177e432e71a990e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1031,
    "line": 1006,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:704e6cc5e389fb5cc2a9882afee9dcd664fa543003edc560752ee2e07e146b1c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da33e88d1252fec2cdb861404fb71a9c3feb8e2b7dff3c1ac1ab06e2c41032a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1006–1031.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalInduction : Tactic := fun stx =>
  match expandInduction? stx with
  | some stxNew => withMacroExpansion stx stxNew <| evalTactic stxNew
  | _ => focus do
    -- Disable tactic incrementality during setup to prevent nested `by` blocks (e.g. in `using`)
    -- from consuming the snapshot meant for `evalAlts`.
    let (targets, toTag, elimInfo) ← Term.withoutTacticIncrementality true do
      let (targets, toTag) ← elabElimTargets stx[1].getSepArgs
      let elimInfo ← withMainContext <| getElimNameInfo stx[2] targets (induction := true)
      let targets ← withMainContext <| addImplicitTargets elimInfo targets
      return (targets, toTag, elimInfo)
    evalInductionCore stx elimInfo targets toTag


register_builtin_option tactic.fun_induction.unfolding : Bool := {
  defValue := true
  descr    := "if set to 'true', then 'fun_induction' and 'fun_cases' will use the “unfolding \
    functional induction (resp. cases) principle” ('….induct_unfolding'/'….fun_cases_unfolding'), \
    which will attempt to replace the function goal of interest in the goal with the appropriate \
    right-hand-side in each case. If 'false', the regular “functional induction principle” \
    ('….induct'/'….fun_cases') is used."
}

/--
Elaborates the `foo args` of `fun_induction` or `fun_cases`, inferring the args if omitted from the goal
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean#L1006).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96201dae32b53e8b351c7f6a2177e432e71a990e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
