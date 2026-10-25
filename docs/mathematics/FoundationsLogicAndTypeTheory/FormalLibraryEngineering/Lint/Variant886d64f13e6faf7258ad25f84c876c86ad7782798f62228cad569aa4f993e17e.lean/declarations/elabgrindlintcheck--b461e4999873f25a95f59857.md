# elabGrindLintCheck

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:411ed4a1e1de2018b45f211d47e989d7431cbfd04d74e79db62b30a14ecb4d80",
  "kind": "def",
  "lexical_name": "elabGrindLintCheck",
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
  "slug": "elabgrindlintcheck--b461e4999873f25a95f59857",
  "source": {
    "blob": "f08305186716589ebd6c1f2181e9647d006be01e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 195,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b461e4999873f25a95f59857eabb544d9d4820e9300235a913c7c5809aa6b008",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:411ed4a1e1de2018b45f211d47e989d7431cbfd04d74e79db62b30a14ecb4d80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabGrindLintCheck : CommandElab := fun stx => liftTermElabM <| withTheReader Core.Context (fun c => { c with maxHeartbeats := 0 }) do
  let `(#grind_lint check $[$items:configItem]* $[in $[module%$m?]? $ids?:ident*]?) := stx | throwUnsupportedSyntax
  let config ← mkConfig items
  let params ← mkParams config
  let prefixes? := ids?.map (·.map (·.getId))
  let inModule := m? matches some (some _)
  let decls ← getTheorems prefixes? inModule
  let decls := decls.toArray.qsort Name.lt
  let mut problematicTheorems := #[]
  for declName in decls do
    try
      if (← analyzeEMatchTheorem declName params) then
        problematicTheorems := problematicTheorems.push declName
    catch e =>
      logError m!"{declName} failed with {e.toMessageData}"
  if !problematicTheorems.isEmpty then
    -- Build the "Try this:" suggestion
    let checkCmd ← PrettyPrinter.ppCategory `command stx
    let mut suggestion := Format.pretty checkCmd
    suggestion := suggestion ++ "\n"
    for declName in problematicTheorems do
      suggestion := suggestion ++ s!"#grind_lint inspect {declName}\n"
    Tactic.TryThis.addSuggestion stx { suggestion := .string suggestion }

end Lean.Elab.Tactic.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f08305186716589ebd6c1f2181e9647d006be01e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
