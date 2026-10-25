# reportMessages

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42a0e621c8f1c98b89383db38195451e014bd15bf56eaf3bbc75bb48d10a2e2d",
  "kind": "def",
  "lexical_name": "reportMessages",
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
  "slug": "reportmessages--3abaf2ea7e1250e08151c6e9",
  "source": {
    "blob": "967353485bde06c32d806ac028d93b654053fc8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 422,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantfaede39d7a5a40bf6b3dd2d1dba8ffb85840e9f077cf8f727ded20aa0cef8e32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3abaf2ea7e1250e08151c6e9add728253a20fee0d4f55043f9351d8c988962a4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantfaede39d7a5a40bf6b3dd2d1dba8ffb85840e9f077cf8f727ded20aa0cef8e32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42a0e621c8f1c98b89383db38195451e014bd15bf56eaf3bbc75bb48d10a2e2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def reportMessages (msgLog : MessageLog) (opts : Options)
    (json : Bool) (severityOverrides : NameMap MessageSeverity) (numErrors : Nat) : IO Nat := do
  let includeEndPos := printMessageEndPos.get opts
  msgLog.unreported.foldlM (init := numErrors) fun numErrors msg => do
    let msg : Message :=
      if let some severity := severityOverrides.find? msg.kind then
        {msg with severity}
      else
        msg
    let numErrors := numErrors + (if msg.severity matches .error then 1 else 0)
    let maxErrorsReached := maxErrors.get opts != 0 && numErrors > maxErrors.get opts
    let msg : Message :=
      if maxErrorsReached then { msg with
        data := s!"maximum number of errors ({maxErrors.get opts}; from option `maxErrors`) reached, exiting"
        severity := .error
      } else
        msg
    unless msg.isSilent do
      if json then
        let j ← msg.toJson
        IO.println j.compress
      else
        let s ← msg.toString includeEndPos
        IO.print s
    if maxErrorsReached then
      IO.Process.exit 1
    return numErrors

/--
  Runs a tree of snapshots to conclusion and incrementally report messages on stdout. Messages are
  reported in tree preorder. Returns whether any errors were reported.
  This function is used by the cmdline driver; see `Lean.Server.FileWorker.reportSnapshots` for how
  the language server reports snapshots asynchronously.  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantfaede39d7a5a40bf6b3dd2d1dba8ffb85840e9f077cf8f727ded20aa0cef8e32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantfaede39d7a5a40bf6b3dd2d1dba8ffb85840e9f077cf8f727ded20aa0cef8e32.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `967353485bde06c32d806ac028d93b654053fc8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
