# isSetOption

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1a703c15038fbaa41abf4047dc19e84bfc99bb59f595be42fc74542318404e5",
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
  "slug": "issetoption--c94574e366cb77b0b6e8a954",
  "source": {
    "blob": "0093c73271085f8587850897b36b318fd63250e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variantbc4cb26f8d0d038225f892dcd8dd81c4d04b5acd607db6bedd9f65c24ae6fd9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c94574e366cb77b0b6e8a954dfe2768e70c4fefe934287c428fb7459959370f8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variantbc4cb26f8d0d038225f892dcd8dd81c4d04b5acd607db6bedd9f65c24ae6fd9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1a703c15038fbaa41abf4047dc19e84bfc99bb59f595be42fc74542318404e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–110.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variantbc4cb26f8d0d038225f892dcd8dd81c4d04b5acd607db6bedd9f65c24ae6fd9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variantbc4cb26f8d0d038225f892dcd8dd81c4d04b5acd607db6bedd9f65c24ae6fd9d.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0093c73271085f8587850897b36b318fd63250e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
