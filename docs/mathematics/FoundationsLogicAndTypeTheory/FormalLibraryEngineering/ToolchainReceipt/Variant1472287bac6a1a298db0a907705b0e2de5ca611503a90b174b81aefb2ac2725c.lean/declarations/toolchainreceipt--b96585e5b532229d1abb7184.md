# ToolchainReceipt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da81595205ba51c2b2f0bcc73cd3109f65d3fc819a6e6940701b6854330cfbb7",
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
  "slug": "toolchainreceipt--b96585e5b532229d1abb7184",
  "source": {
    "blob": "f54c095dcb7ef545e3c72716aff038c066cbd216",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToolchainReceipt/Variant1472287bac6a1a298db0a907705b0e2de5ca611503a90b174b81aefb2ac2725c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b96585e5b532229d1abb71843c52a3e35d51212a264c2efb201734941da3b03f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToolchainReceipt/Variant1472287bac6a1a298db0a907705b0e2de5ca611503a90b174b81aefb2ac2725c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da81595205ba51c2b2f0bcc73cd3109f65d3fc819a6e6940701b6854330cfbb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–40.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToolchainReceipt/Variant1472287bac6a1a298db0a907705b0e2de5ca611503a90b174b81aefb2ac2725c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToolchainReceipt/Variant1472287bac6a1a298db0a907705b0e2de5ca611503a90b174b81aefb2ac2725c.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f54c095dcb7ef545e3c72716aff038c066cbd216` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
