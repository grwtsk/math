# findLeanSysroot?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55854d833cec6a23b91f0f77c5899178a941fe54f9d1690de152ff96e97922dc",
  "kind": "def",
  "lexical_name": "findLeanSysroot?",
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
  "slug": "findleansysroot--5a6a470bb446923224a32a73",
  "source": {
    "blob": "3c7edde02ea196e47aae32845c1ff9985008a2da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 231,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a6a470bb446923224a32a73ca797bad0ea7ca699cd43c5aef3343a0db5cf5a5",
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

Occurrence: `declaration:55854d833cec6a23b91f0f77c5899178a941fe54f9d1690de152ff96e97922dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def findLeanSysroot? (lean := "lean") : BaseIO (Option FilePath) := do
  let act : IO _ := do
    let out ← IO.Process.output {
      cmd := lean,
      args := #["--print-prefix"]
    }
    if out.exitCode == 0 then
      pure <| some <| FilePath.mk <| out.stdout.trimAscii.copy
    else
      pure <| none
  act.catchExceptions fun _ => pure none

/--
Construct the `LeanInstall` object for the given Lean sysroot.

Does the following:
1. Find `lean`'s githash.
2. Finds the  `ar` and `cc` to use with Lean.
3. Computes the sub-paths of the Lean install.

For (1), If `lake` is not-collocated with `lean`, invoke `lean --githash`;
otherwise, use Lake's `Lean.githash`. If the invocation fails, `githash` is
set to the empty string.

For (2), if `LEAN_AR` or `LEAN_CC` are defined, it uses those paths.
Otherwise, if Lean is packaged with an `llvm-ar` and/or `clang`, use them.
If not, use the `ar` and/or `cc` from the `AR` / `CC` environment variables
or the system's `PATH`. This last step is needed because internal builds of
Lean do not bundle these tools (unlike user-facing releases).

We also track whether `LEAN_CC` was set to determine whether it should
be set in the future for `lake env`. This is because if `LEAN_CC` was not set,
it needs to remain not set for `leanc` to work.
Even setting it to the bundled compiler will break `leanc` -- see
[leanprover/lean4#1281](https://github.com/leanprover/lean4/issues/1281).

For (3), it assumes that the Lean installation is organized the normal way.
That is, with its binaries located in `<lean-sysroot>/bin`, its
Lean libraries in `<lean-sysroot>/lib/lean`, and its system libraries in
`<lean-sysroot>/lib`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstallPath/Variantfc5bc3094122fb0384c01cb4d70bf0bd0e84744ec340affadf04b09c88088277.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c7edde02ea196e47aae32845c1ff9985008a2da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
