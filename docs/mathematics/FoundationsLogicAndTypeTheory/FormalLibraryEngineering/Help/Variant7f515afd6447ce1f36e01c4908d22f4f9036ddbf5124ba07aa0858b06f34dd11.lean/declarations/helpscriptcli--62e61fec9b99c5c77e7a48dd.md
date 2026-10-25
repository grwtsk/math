# helpScriptCli

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2031536e3d91e7464fbdf4bf83d5690d6361897cf67686abca7e5924f625d70e",
  "kind": "def",
  "lexical_name": "helpScriptCli",
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
  "slug": "helpscriptcli--62e61fec9b99c5c77e7a48dd",
  "source": {
    "blob": "0771b93d8ef6684289739644590faee450775272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 620,
    "line": 608,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant7f515afd6447ce1f36e01c4908d22f4f9036ddbf5124ba07aa0858b06f34dd11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62e61fec9b99c5c77e7a48dd9fb03b0fb64d3eb0f99e21298d8ce6a4d187d4de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant7f515afd6447ce1f36e01c4908d22f4f9036ddbf5124ba07aa0858b06f34dd11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2031536e3d91e7464fbdf4bf83d5690d6361897cf67686abca7e5924f625d70e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 608–620.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def helpScriptCli :=
"Manage Lake scripts

USAGE:
  lake script <COMMAND>

COMMANDS:
  list                  list available scripts
  run <script>          run a script
  doc <script>          print the docstring of a given script

See `lake script help <command>` for more information on a specific command."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant7f515afd6447ce1f36e01c4908d22f4f9036ddbf5124ba07aa0858b06f34dd11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Help/Variant7f515afd6447ce1f36e01c4908d22f4f9036ddbf5124ba07aa0858b06f34dd11.lean#L608).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0771b93d8ef6684289739644590faee450775272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
