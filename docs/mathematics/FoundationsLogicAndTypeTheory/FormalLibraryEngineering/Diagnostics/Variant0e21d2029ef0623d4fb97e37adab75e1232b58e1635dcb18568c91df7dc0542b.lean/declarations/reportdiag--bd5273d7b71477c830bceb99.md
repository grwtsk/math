# reportDiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b011586ed051eb8300cf6c9e27d141d379b2a3ddeeb251fdc6c7a47863598cc",
  "kind": "def",
  "lexical_name": "reportDiag",
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
  "slug": "reportdiag--bd5273d7b71477c830bceb99",
  "source": {
    "blob": "1cb4711929f294c53b5f45b7792902ed8b598f5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variant0e21d2029ef0623d4fb97e37adab75e1232b58e1635dcb18568c91df7dc0542b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd5273d7b71477c830bceb998380d8670c750fdbc5d29740e67ef571fbe2f0fa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variant0e21d2029ef0623d4fb97e37adab75e1232b58e1635dcb18568c91df7dc0542b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b011586ed051eb8300cf6c9e27d141d379b2a3ddeeb251fdc6c7a47863598cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reportDiag : MetaM Unit := do
  if (← isDiagnosticsEnabled) then
    -- Diagnostic output may reference private declarations (e.g. `_match_*`,
    -- `_sparseCasesOn_*`) that are not visible in exporting mode (issue #13581).
    withoutExporting do
    let unfoldCounter := (← get).diag.unfoldCounter
    let unfoldDefault ← mkDiagSummaryForUnfolded unfoldCounter
    let unfoldInstance ← mkDiagSummaryForUnfolded unfoldCounter (instances := true)
    let unfoldAxiom ← mkDiagSummary `reduction (← get).diag.unfoldAxiomCounter
    let unfoldReducible ← mkDiagSummaryForUnfoldedReducible unfoldCounter
    let heu ← mkDiagSummary `def_eq (← get).diag.heuristicCounter
    let inst ← mkDiagSummaryForUsedInstances
    let synthPending ← mkDiagSynthPendingFailure (← get).diag.synthPendingFailures
    let unfoldKernel ← mkDiagSummary `kernel (Kernel.getDiagnostics (← getEnv)).unfoldCounter
    let m := #[]
    let m := appendSection m `reduction "unfolded declarations" unfoldDefault
    let m := appendSection m `reduction "unfolded instances" unfoldInstance
    let m := appendSection m `reduction "unfolded reducible declarations" unfoldReducible
    let m := appendSection m `type_class "used instances" inst
    let m := appendSection m `type_class
              s!"max synth pending failures (maxSynthPendingDepth: {maxSynthPendingDepth.get (← getOptions)}), use `set_option maxSynthPendingDepth <limit>`"
              synthPending (resultSummary := false)
    let m := appendSection m `def_eq "heuristic for solving `f a =?= f b`" heu
    let m := appendSection m `reduction "Axioms (possibly imported non-exposed defs) that were tried to be unfolded" unfoldAxiom
    let m := appendSection m `kernel "unfolded declarations" unfoldKernel
    unless m.isEmpty do
      let m := m.push "use `set_option diagnostics.threshold <num>` to control threshold for reporting counters"
      logInfo <| .trace { cls := `diag, collapsed := false } "Diagnostics" m
    -- Reset any reported diagnostics, so that `reportDiag` can be called again
    modify (fun s => { s with diag := {} })
    modifyEnv (Kernel.setDiagnostics · {})

end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variant0e21d2029ef0623d4fb97e37adab75e1232b58e1635dcb18568c91df7dc0542b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variant0e21d2029ef0623d4fb97e37adab75e1232b58e1635dcb18568c91df7dc0542b.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cb4711929f294c53b5f45b7792902ed8b598f5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
