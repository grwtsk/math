# isSetOption

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c87221496a4e2464e83fcaae08056ec61c8f4268e2ea9af07b22039a0a6d376",
  "kind": "def",
  "lexical_name": "isSetOption",
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
  "slug": "issetoption--36ccf8edf8a18c4d6efa24d8",
  "source": {
    "blob": "6bbb9be3fa0eb628880e7cfea3837a97e7614756",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant2b0eeba61b59b74a994b8e0e83810dbda2c88f8a6a4a43501096a191ffc81e5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36ccf8edf8a18c4d6efa24d8acb4c588f49c0588dcb757a8329ba0b1bbb0bbc9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant2b0eeba61b59b74a994b8e0e83810dbda2c88f8a6a4a43501096a191ffc81e5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c87221496a4e2464e83fcaae08056ec61c8f4268e2ea9af07b22039a0a6d376`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def isSetOption : Syntax → Bool :=
  fun stx ↦ parseSetOption stx matches some _name

/-- The `setOption` linter: this lints any `set_option` command, term or tactic
which sets a `debug`, `pp`, `profiler` or `trace` option.
This also warns if an option containing `maxHeartbeats` (typically, the `maxHeartbeats` or
`synthInstance.maxHeartbeats` option) or the `linter.flexible` or
`backward.inferInstanceAs.wrap.reuseSubInstances ` option is set.

**Why is this bad?** The `debug`, `pp`, `profiler` and `trace` options are good for debugging,
but should not be used in production code.

`maxHeartbeats` options should be scoped as `set_option opt in ...` (and be followed by a comment
explaining the need for them; another linter enforces this).
The `linter.flexible` option should be scoped as `set_option opt in ...`.

**How to fix this?** The `maxHeartbeats` and `linter.flexible` option changes can be scoped to
individual commands, if they are truly necessary.
New `backward.inferInstanceAs.wrap.reuseSubInstances` instances are technical debt,
and should not be introduced.

The `debug`, `pp`, `profiler` and `trace` are usually not necessary for production code,
so you can simply remove them. (Some tests will intentionally use one of these options;
in this case, simply allow the linter.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant2b0eeba61b59b74a994b8e0e83810dbda2c88f8a6a4a43501096a191ffc81e5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant2b0eeba61b59b74a994b8e0e83810dbda2c88f8a6a4a43501096a191ffc81e5d.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bbb9be3fa0eb628880e7cfea3837a97e7614756` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
