# mkIRData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34af76896b20d6b3fee05186db9db685849279ae54783345705558edf74aa18e",
  "kind": "def",
  "lexical_name": "mkIRData",
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
  "slug": "mkirdata--a15be778729fa2448cda1c90",
  "source": {
    "blob": "a95112b90e8b54756112e01a10e865971d6ac986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variantcb0e362fc299ab84ead24874efacc462e25c8c43aaa9d24276518a9ef538dee2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a15be778729fa2448cda1c9060cacece76bbddd3c35d49d05f07d1c91f5c7604",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variantcb0e362fc299ab84ead24874efacc462e25c8c43aaa9d24276518a9ef538dee2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34af76896b20d6b3fee05186db9db685849279ae54783345705558edf74aa18e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkIRData (env : Environment) : IO ModuleData := do
  -- TODO: should we use a more specific/efficient data format for IR?

  -- `exportIREntries` provides full IR for `declMapExt` and `regularInitAttr`; filter them from
  -- `mkModuleData` to prevent the latter's opaque-extern entries from overwriting the full IR
  -- in `setImportedEntries`
  let irEntries := exportIREntries env
  let irExtNames := irEntries.map (·.1)
  let modEntries := (← mkModuleData env .private).entries.filter (!irExtNames.contains ·.1)
  return { env.header with
    entries := irEntries ++ modEntries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variantcb0e362fc299ab84ead24874efacc462e25c8c43aaa9d24276518a9ef538dee2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanIR/Variantcb0e362fc299ab84ead24874efacc462e25c8c43aaa9d24276518a9ef538dee2.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a95112b90e8b54756112e01a10e865971d6ac986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
