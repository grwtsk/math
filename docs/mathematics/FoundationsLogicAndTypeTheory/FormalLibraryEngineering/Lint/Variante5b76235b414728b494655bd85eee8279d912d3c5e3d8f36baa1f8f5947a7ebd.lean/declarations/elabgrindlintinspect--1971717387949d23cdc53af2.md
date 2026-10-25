# elabGrindLintInspect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee62bb2e1aa5b07199f55f5b1ee4b99ae9613b9baf09c156c1d3547a4e1af1c0",
  "kind": "def",
  "lexical_name": "elabGrindLintInspect",
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
  "slug": "elabgrindlintinspect--1971717387949d23cdc53af2",
  "source": {
    "blob": "baaffbdb8c06bacbc85d4d76dccce77946002704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 137,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variante5b76235b414728b494655bd85eee8279d912d3c5e3d8f36baa1f8f5947a7ebd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1971717387949d23cdc53af28621885f8b2424ec70943f35df3bc263ebcc641a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variante5b76235b414728b494655bd85eee8279d912d3c5e3d8f36baa1f8f5947a7ebd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee62bb2e1aa5b07199f55f5b1ee4b99ae9613b9baf09c156c1d3547a4e1af1c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabGrindLintInspect : CommandElab := fun stx => liftTermElabM <| withTheReader Core.Context (fun c => { c with maxHeartbeats := 0 }) do
  let `(#grind_lint inspect $[$items:configItem]* $ids:ident*) := stx | throwUnsupportedSyntax
  let config ← mkConfig items
  let params ← mkParams config
  let mut addCodeAction := false
  for id in ids do
    let declName ← realizeGlobalConstNoOverloadWithInfo id
    if (← analyzeEMatchTheorem declName params) then
      addCodeAction := true
  if addCodeAction then
    unless (← getOptions).getBool `trace.grind.ematch.instance do
      let s ← `(command|
        set_option trace.grind.ematch.instance true in
        $(⟨stx⟩):command)
      Tactic.TryThis.addSuggestion (header := "Try this to display the actual theorem instances:") stx { suggestion := .tsyntax s }

/-- Check if the last component of `name` ends with the string form of `suff`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variante5b76235b414728b494655bd85eee8279d912d3c5e3d8f36baa1f8f5947a7ebd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variante5b76235b414728b494655bd85eee8279d912d3c5e3d8f36baa1f8f5947a7ebd.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `baaffbdb8c06bacbc85d4d76dccce77946002704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
