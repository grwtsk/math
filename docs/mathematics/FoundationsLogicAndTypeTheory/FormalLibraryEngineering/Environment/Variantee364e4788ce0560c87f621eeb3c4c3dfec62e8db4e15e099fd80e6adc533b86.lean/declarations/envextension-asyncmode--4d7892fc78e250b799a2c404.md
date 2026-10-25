# EnvExtension.AsyncMode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d12d2c2c9d3e5b4e3c9aa401840994b750d3d71dd313789de9ac18f2acc27b12",
  "kind": "inductive",
  "lexical_name": "EnvExtension.AsyncMode",
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
  "slug": "envextension-asyncmode--4d7892fc78e250b799a2c404",
  "source": {
    "blob": "33928512dadcfa2e42a307499e9228596da0341a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1306,
    "line": 1257,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variantee364e4788ce0560c87f621eeb3c4c3dfec62e8db4e15e099fd80e6adc533b86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d7892fc78e250b799a2c4042927975f91442e0148dff2b04b7aac1cb198b5f2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variantee364e4788ce0560c87f621eeb3c4c3dfec62e8db4e15e099fd80e6adc533b86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d12d2c2c9d3e5b4e3c9aa401840994b750d3d71dd313789de9ac18f2acc27b12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1257–1306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive EnvExtension.AsyncMode where
  /--
  Safest access mode, writes and reads the extension state to/from the full `checked`
  environment. This mode ensures the observed state is identical independently of whether or how
  parallel elaboration is used but `getState` will block on all prior environment branches by
  waiting for `checked`. `setState` and `modifyState` do not block.

  While a safe fallback for when `mainOnly` is not sufficient, any extension that reasonably could
  be used in parallel elaboration contexts should opt for a weaker mode to avoid blocking unless
  there is no way to access the correct state without waiting for all prior environment branches, in
  which case its data management should be restructured if at all possible.
  -/
  | sync
  /--
  Accesses only the state of the current environment branch. Modifications on other branches are not
  visible and are ultimately discarded except for the main branch. Provides the fastest accessors,
  will never block.

  This mode is particularly suitable for extensions where state does not escape from lexical scopes
  even without parallelism, e.g. `ScopedEnvExtension`s when setting local entries.
  -/
  | local
  /--
  Default access mode. Like `local` but panics when trying to modify the state on anything but the
  main environment branch. For extensions that fulfill this requirement, all modes functionally
  coincide with `local` but this is the safest and most efficient choice in that case, preventing
  accidental misuse.

  This mode is suitable for extensions that are modified only at the command elaboration level
  before any environment forks in the command, and in particular for extensions that are modified
  only at the very beginning of the file.
  -/
  | mainOnly
  /--
  Accumulates modifications in the `checked` environment like `sync`, but `get/modify/setState` will
  panic instead of blocking unless their `asyncDecl` parameter is specified, which will access the
  state of the environment branch corresponding to the passed declaration name, if any; see
  `AsyncBranch` for a description of the specific state accessed. In other words, at most the
  environment branch corresponding to that declaration will be blocked on instead of all prior
  branches. The local state can still be accessed by calling `getState` with mode `local`
  explicitly.

  This mode is suitable for extensions with map-like state where the key uniquely identifies the
  top-level declaration where it could have been set, e.g. because the key on modification is always
  the surrounding declaration's name. In particular, this mode is closest to how the environment's
  own constant map works which provides `findAsync?` for block-avoiding access.
  -/
  | async (branch : AsyncBranch)
  deriving Inhabited

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variantee364e4788ce0560c87f621eeb3c4c3dfec62e8db4e15e099fd80e6adc533b86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variantee364e4788ce0560c87f621eeb3c4c3dfec62e8db4e15e099fd80e6adc533b86.lean#L1257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33928512dadcfa2e42a307499e9228596da0341a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
