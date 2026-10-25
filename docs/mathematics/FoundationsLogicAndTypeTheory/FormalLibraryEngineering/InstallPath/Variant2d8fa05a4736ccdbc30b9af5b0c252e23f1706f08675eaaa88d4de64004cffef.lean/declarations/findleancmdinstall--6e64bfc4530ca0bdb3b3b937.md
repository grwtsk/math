# findLeanCmdInstall?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d193c44b39f8a3e4ae393f83caa3d4e917a4cdebf6959a7ae754e3f730975fd7",
  "kind": "def",
  "lexical_name": "findLeanCmdInstall?",
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
  "slug": "findleancmdinstall--6e64bfc4530ca0bdb3b3b937",
  "source": {
    "blob": "73b0fc56e4fad9ea24520eea0b12685638bc05bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 335,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e64bfc4530ca0bdb3b3b937bd1a441f0877d85842d245d03e610580e1dcf62e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d193c44b39f8a3e4ae393f83caa3d4e917a4cdebf6959a7ae754e3f730975fd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def findLeanCmdInstall? (lean := "lean") : BaseIO (Option LeanInstall) :=
  OptionT.run do LeanInstall.get (← findLeanSysroot? lean)

/--
Check if the running Lake's executable is co-located with Lean, and, if so,
try to return their joint home by assuming they are both located at `<home>/bin`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variant2d8fa05a4736ccdbc30b9af5b0c252e23f1706f08675eaaa88d4de64004cffef.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73b0fc56e4fad9ea24520eea0b12685638bc05bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
