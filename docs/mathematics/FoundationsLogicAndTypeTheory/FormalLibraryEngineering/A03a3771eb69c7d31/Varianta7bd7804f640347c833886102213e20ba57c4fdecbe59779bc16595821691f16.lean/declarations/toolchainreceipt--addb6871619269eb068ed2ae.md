# ToolchainReceipt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d5ecaab1cf9b14e5bc6bbfc8aab9610b88e9d6e773cf07b50c7eda170816ec7",
  "kind": "structure",
  "lexical_name": "ToolchainReceipt",
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
  "slug": "toolchainreceipt--addb6871619269eb068ed2ae",
  "source": {
    "blob": "83204cc1b2a2454811ee3ccf5c0fe2ae4816151a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A03a3771eb69c7d31/Varianta7bd7804f640347c833886102213e20ba57c4fdecbe59779bc16595821691f16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:addb6871619269eb068ed2ae766331dc288139796ca77f4bc868da2ff6c70ebe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A03a3771eb69c7d31/Varianta7bd7804f640347c833886102213e20ba57c4fdecbe59779bc16595821691f16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d5ecaab1cf9b14e5bc6bbfc8aab9610b88e9d6e773cf07b50c7eda170816ec7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ToolchainReceipt where
  leanVersion : String
  leanGitRevision : Option String
  lakeVersion : Option String
  extractorVersion : Version
  adapterVersion : Version
  trustLevel : Option Nat
  toolchainDigest : Option Digest
  lakefileDigest : Option Digest
  lakeManifestDigest : Option Digest
  leanToolchainDigest : Option Digest
  environmentVariablesDigest : Option Digest
  deriving DecidableEq, Repr, Inhabited

end Mathematics.Extractor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A03a3771eb69c7d31/Varianta7bd7804f640347c833886102213e20ba57c4fdecbe59779bc16595821691f16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A03a3771eb69c7d31/Varianta7bd7804f640347c833886102213e20ba57c4fdecbe59779bc16595821691f16.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83204cc1b2a2454811ee3ccf5c0fe2ae4816151a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
