# BuildConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a62956939caaa1e39ca545911cd1fc6370ae663dadba063fd893e6215bc1663",
  "kind": "structure",
  "lexical_name": "BuildConfig",
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
  "slug": "buildconfig--dca07abfef69adbff13ab66e",
  "source": {
    "blob": "e3e562a3911103d8515b9e5f766fc79a3fcefda5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Varianta9b8660d5cb93a2aa5c5df32a3fb9f302eaf3edd218e18ad65eb7b1de1b08639.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dca07abfef69adbff13ab66eeaeabf732bbe087e5e8ab4f650d660507abefbe5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Varianta9b8660d5cb93a2aa5c5df32a3fb9f302eaf3edd218e18ad65eb7b1de1b08639.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a62956939caaa1e39ca545911cd1fc6370ae663dadba063fd893e6215bc1663`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public structure BuildConfig extends LogConfig where
  /-- Use modification times for trace checking. -/
  oldMode : Bool := false
  /-- Whether to trust `.hash` files. -/
  trustHash : Bool := true
  /-- Early exit if a target has to be rebuilt. -/
  noBuild : Bool := false
  /-- Verbosity level (`-q`, `-v`, or neither). -/
  verbosity : Verbosity := .normal
  /-- Whether to print a message when the build finishes successfully (if not quiet). -/
  showSuccess : Bool := false
  /-- File to save input-to-output mappings from the build of the workspace's root -/
  outputsFile? : Option FilePath := none
  /--
  Per-package Lean option overrides, applied to every module whose owning
  package's `baseName` appears as a key. When `recFetchSetup` builds module
  `M`, the `LeanOptions` associated with `M.pkg.baseName` (if any) are appended
  to `M.leanOptions`, overriding clashing entries.

  Used by `lake lint` to inject `linter.extra`/`linter.all` into every module
  of a target package (so transitively-imported first-party modules capture
  linter-tagged warnings), without touching dependencies.
  -/
  leanOptOverrides : Lean.NameMap Lean.LeanOptions := {}

/--
Whether the build should show progress information.

`Verbosity.quiet` hides progress and, for a `noBuild`,
`Verbosity.verbose` shows progress.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Varianta9b8660d5cb93a2aa5c5df32a3fb9f302eaf3edd218e18ad65eb7b1de1b08639.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Varianta9b8660d5cb93a2aa5c5df32a3fb9f302eaf3edd218e18ad65eb7b1de1b08639.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3e562a3911103d8515b9e5f766fc79a3fcefda5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
