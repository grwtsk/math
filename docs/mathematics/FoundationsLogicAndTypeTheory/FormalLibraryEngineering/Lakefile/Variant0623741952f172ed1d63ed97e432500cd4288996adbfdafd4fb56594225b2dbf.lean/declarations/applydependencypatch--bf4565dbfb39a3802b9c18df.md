# applyDependencyPatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab4849e492407660875f15ba6ac629453c71211dfdc1ebdfc6566ead74565ad9",
  "kind": "def",
  "lexical_name": "applyDependencyPatch",
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
  "slug": "applydependencypatch--bf4565dbfb39a3802b9c18df",
  "source": {
    "blob": "669c18ea61cfd82939cf6b560d79281c49e45221",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 249,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant0623741952f172ed1d63ed97e432500cd4288996adbfdafd4fb56594225b2dbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf4565dbfb39a3802b9c18dfbd935c7ae3ced829be889c82aaec9d21d27a3c69",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant0623741952f172ed1d63ed97e432500cd4288996adbfdafd4fb56594225b2dbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab4849e492407660875f15ba6ac629453c71211dfdc1ebdfc6566ead74565ad9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def applyDependencyPatch (plan : PatchPlan) (directory : FilePath) : IO Unit := do
  let applied ← patchGit directory #["apply", plan.patch.toString]
  unless applied.exitCode == 0 do
    throw <| IO.userError s!"{plan.label}: failed to apply compatibility patch:\n{applied.stderr}"
  let verified ← checkPatch directory plan.patch #["--reverse"]
  unless verified.exitCode == 0 do
    throw <| IO.userError s!"{plan.label}: patch verification failed:\n{verified.stderr}"

/-- Prepare patched package configurations before Lake resolves their dependencies. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant0623741952f172ed1d63ed97e432500cd4288996adbfdafd4fb56594225b2dbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lakefile/Variant0623741952f172ed1d63ed97e432500cd4288996adbfdafd4fb56594225b2dbf.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `669c18ea61cfd82939cf6b560d79281c49e45221` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
