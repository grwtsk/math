# LogConfig.ofLspLogConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10c23b6513aaf1df01dc35854b8c1d650f17ac36546b21e81d29568772879e88",
  "kind": "def",
  "lexical_name": "LogConfig.ofLspLogConfig",
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
  "slug": "logconfig-oflsplogconfig--70ab5be5b0af41e84bab342f",
  "source": {
    "blob": "e1b5147372004f009eae1a1b34dd396561dd8a4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantcc4037f97c2e601e47a25e589d305920d51eefa559316d29e764b10c63b20b15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70ab5be5b0af41e84bab342f7395630440bf120a1e45ac169656b2de1447b260",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantcc4037f97c2e601e47a25e589d305920d51eefa559316d29e764b10c63b20b15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10c23b6513aaf1df01dc35854b8c1d650f17ac36546b21e81d29568772879e88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def LogConfig.ofLspLogConfig (lspCfg? : Option Lsp.LogConfig) : IO LogConfig := do
  let time ← Std.Time.DateTime.now
  let time := time.format "yyyy-MM-dd-HH-mm-ss-SSSSXX"
  let logFileName := s!"LSP_{time}.log"
  let defaultLogFile : System.FilePath := System.FilePath.join "." logFileName
  let some lspCfg := lspCfg?
    | return {
      isEnabled := false
      logFile := defaultLogFile
      allowedMethods? := none
      disallowedMethods? := none
    }
  return {
    isEnabled := true
    logFile := lspCfg.logDir?.map (System.FilePath.join · logFileName) |>.getD defaultLogFile
    allowedMethods? := lspCfg.allowedMethods?
    disallowedMethods? := lspCfg.disallowedMethods?
  }

open Lean

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantcc4037f97c2e601e47a25e589d305920d51eefa559316d29e764b10c63b20b15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantcc4037f97c2e601e47a25e589d305920d51eefa559316d29e764b10c63b20b15.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1b5147372004f009eae1a1b34dd396561dd8a4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
