# DocumentMeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3bb6f43baad1d3b820c7731545761db33b2132ce6621938c64ea140b80b50679",
  "kind": "structure",
  "lexical_name": "DocumentMeta",
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
  "slug": "documentmeta--38ed85dd488453fcb94f9a71",
  "source": {
    "blob": "5d734365375a2bee48e5bf8f81731f3ec64daf83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utils/Variant91cb1a653a0a6cc944c49ab2519da50c66a72c33a7387c95369a9027f707a808.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38ed85dd488453fcb94f9a717435bd54a74a8ac60379528843c506d009235b71",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utils/Variant91cb1a653a0a6cc944c49ab2519da50c66a72c33a7387c95369a9027f707a808.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3bb6f43baad1d3b820c7731545761db33b2132ce6621938c64ea140b80b50679`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DocumentMeta where
  /-- URI where the document is located. -/
  uri                 : Lsp.DocumentUri
  /--
  Module name corresponding to `uri`.
  We store the module name instead of recomputing it as needed to ensure that we can still
  determine the original module name even when the file has been deleted in the mean-time.
  -/
  mod                 : Name
  /-- Version number of the document. Incremented whenever the document is edited. -/
  version             : Nat
  /--
  Current text of the document.
  It is maintained such that it is normalized using `String.crlfToLf`, which preserves logical line/column numbers.
  (Note: we assume that edit operations never split or merge `\r\n` line endings.) -/
  text                : FileMap
  /--
  Controls when dependencies of the document are built on `textDocument/didOpen` notifications.
  -/
  dependencyBuildMode : Lsp.DependencyBuildMode
  deriving Inhabited

/-- Extracts an `InputContext` from `doc`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utils/Variant91cb1a653a0a6cc944c49ab2519da50c66a72c33a7387c95369a9027f707a808.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utils/Variant91cb1a653a0a6cc944c49ab2519da50c66a72c33a7387c95369a9027f707a808.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d734365375a2bee48e5bf8f81731f3ec64daf83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
