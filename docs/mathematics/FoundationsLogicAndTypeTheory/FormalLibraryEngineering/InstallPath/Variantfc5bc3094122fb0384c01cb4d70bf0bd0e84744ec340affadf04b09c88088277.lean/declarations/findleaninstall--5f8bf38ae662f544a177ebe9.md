# findLeanInstall?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:691c0ae3511b6deffebd39787bf0ddc913368a16140cbc1094cf2b6d04c91686",
  "kind": "def",
  "lexical_name": "findLeanInstall?",
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
  "slug": "findleaninstall--5f8bf38ae662f544a177ebe9",
  "source": {
    "blob": "3c7edde02ea196e47aae32845c1ff9985008a2da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 371,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f8bf38ae662f544a177ebe9b5402e8f66e842e04bc2b821d694b619941a2950",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:691c0ae3511b6deffebd39787bf0ddc913368a16140cbc1094cf2b6d04c91686`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def findLeanInstall? : BaseIO (Option LeanInstall) := do
  if let some sysroot ← IO.getEnv "LEAN_SYSROOT" then
    return some <| ← LeanInstall.get sysroot
  let lean ← do
    if let some lean ← IO.getEnv "LEAN" then
      if lean.trimAscii.isEmpty then
        return none
      else
        pure lean
    else
      pure "lean"
  if let some sysroot ← findLeanSysroot? lean then
    return some <| ← LeanInstall.get sysroot
  return none

/--
Attempt to detect Lake's installation by first checking the `lakeBuildHome?`
of the running executable, then trying the `LAKE_HOME` environment variable.

It assumes that the Lake installation is organized the same way it is built.
That is, with its binary located at `<lake-home>/.lake/build/bin/lake` and its
static library and `.olean` files in `<lake-home>/.lake/build/lib`, and
its source files located directly in `<lake-home>`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c7edde02ea196e47aae32845c1ff9985008a2da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
