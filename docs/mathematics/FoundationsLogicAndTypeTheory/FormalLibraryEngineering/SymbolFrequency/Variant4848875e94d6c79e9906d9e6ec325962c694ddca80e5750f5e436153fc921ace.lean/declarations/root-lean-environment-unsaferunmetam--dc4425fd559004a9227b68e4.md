# _root_.Lean.Environment.unsafeRunMetaM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1749a89017a67d74b78cab13b1557a306067720a9d3651e8ec4270a7e03aa67",
  "kind": "def",
  "lexical_name": "_root_.Lean.Environment.unsafeRunMetaM",
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
  "slug": "root-lean-environment-unsaferunmetam--dc4425fd559004a9227b68e4",
  "source": {
    "blob": "b4f097c6b2a6b88aaf403fab9040055d07edbb75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymbolFrequency/Variant4848875e94d6c79e9906d9e6ec325962c694ddca80e5750f5e436153fc921ace.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc4425fd559004a9227b68e4d5599a1b6256bc6b1add333442b446c2876a9794",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymbolFrequency/Variant4848875e94d6c79e9906d9e6ec325962c694ddca80e5750f5e436153fc921ace.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1749a89017a67d74b78cab13b1557a306067720a9d3651e8ec4270a7e03aa67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def _root_.Lean.Environment.unsafeRunMetaM [Inhabited α] (env : Environment) (x : MetaM α) : α :=
   match unsafeEIO ((((withoutExporting x).run' {} {}).run'
    { fileName := "symbolFrequency", fileMap := default
      -- avoid triggering since limit cannot be raised here
      maxHeartbeats := 0 }
    { env })) with
   | Except.ok a => a
   | Except.error ex => panic! match unsafeIO ex.toMessageData.toString with
     | Except.ok s => s
     | Except.error ex => ex.toString

/--
The state is just an array of array of maps.
We don't assemble these on import for efficiency reasons: most modules will not query this extension.

Instead, we use an `IO.Ref` below so that within each module we can assemble the global `NameMap Nat` once.

Since we never modify the extension state except on export, the `IO.Ref` does not need updating after first access.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymbolFrequency/Variant4848875e94d6c79e9906d9e6ec325962c694ddca80e5750f5e436153fc921ace.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymbolFrequency/Variant4848875e94d6c79e9906d9e6ec325962c694ddca80e5750f5e436153fc921ace.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4f097c6b2a6b88aaf403fab9040055d07edbb75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
