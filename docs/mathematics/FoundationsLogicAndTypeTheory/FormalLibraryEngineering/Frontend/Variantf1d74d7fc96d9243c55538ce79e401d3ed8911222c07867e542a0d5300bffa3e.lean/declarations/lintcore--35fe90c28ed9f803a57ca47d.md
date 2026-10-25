# lintCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:310ebaadcd873782f5bbeca6e0a03473754a7cc0b2775a0f018d3fb0df75a4f7",
  "kind": "def",
  "lexical_name": "lintCore",
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
  "slug": "lintcore--35fe90c28ed9f803a57ca47d",
  "source": {
    "blob": "79aac6bb16a2744c6841a9575ee4a20ab117bc39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35fe90c28ed9f803a57ca47da0d690cfc12e05937162de28c7421b3ea58e7fb7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:310ebaadcd873782f5bbeca6e0a03473754a7cc0b2775a0f018d3fb0df75a4f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lintCore (decls : Array Name) (linters : Array NamedLinter) :
    CoreM (Array (NamedLinter × HashMap Name MessageData)) := do
  let env ← getEnv
  let options ← getOptions -- TODO: sanitize options?

  let tasks : Array (NamedLinter × Array (Name × Task (Option MessageData))) ←
    linters.mapM fun linter => do
      let decls ← decls.filterM (shouldBeLinted linter.name)
      (linter, ·) <$> decls.mapM fun decl => (decl, ·) <$> do
        BaseIO.asTask do
          match ← withCurrHeartbeats (linter.test decl)
              |>.run'.run' {options, fileName := "", fileMap := default} {env}
              |>.toBaseIO with
          | Except.ok msg? => pure msg?
          | Except.error err => pure m!"LINTER FAILED:\n{err.toMessageData}"

  tasks.mapM fun (linter, decls) => do
    let mut msgs : HashMap Name MessageData := {}
    for (declName, msg?) in decls do
      if let some msg := msg?.get then
        msgs := msgs.insert declName msg
    pure (linter, msgs)

/-- Sorts a map with declaration keys as names by line number. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantf1d74d7fc96d9243c55538ce79e401d3ed8911222c07867e542a0d5300bffa3e.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79aac6bb16a2744c6841a9575ee4a20ab117bc39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
