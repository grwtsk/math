# trace.profiler.threshold.unitAdjusted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92626945ff7d56049d55db3040eb842f9a3fbbf4ca774658c92097c1635d365c",
  "kind": "def",
  "lexical_name": "trace.profiler.threshold.unitAdjusted",
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
  "slug": "trace-profiler-threshold-unitadjusted--6c7f57cfa8a8117da8ee086a",
  "source": {
    "blob": "4d441f69db37a760f7e9df53643c694e73b45713",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 238,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Varianta49a604e68b3870755e1dd4f728fb5dc3a8dfcda43df53ae863786199e5fe167.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c7f57cfa8a8117da8ee086a81d503b50d6d7de0aeb03492e1597c31a8c0e288",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Varianta49a604e68b3870755e1dd4f728fb5dc3a8dfcda43df53ae863786199e5fe167.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92626945ff7d56049d55db3040eb842f9a3fbbf4ca774658c92097c1635d365c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def trace.profiler.threshold.unitAdjusted (o : Options) : Float :=
  if trace.profiler.useHeartbeats.get o then
    (trace.profiler.threshold.get o).toFloat
  else
    -- milliseconds to seconds
    (trace.profiler.threshold.get o).toFloat / 1000

/--
`MonadExcept` variant that is expected to catch all exceptions of the given type in case the
standard instance doesn't.

In most circumstances, we want to let runtime exceptions during term elaboration bubble up to the
command elaborator (see `Core.tryCatch`). However, in a few cases like building the trace tree, we
really need to handle (and then re-throw) every exception lest we end up with a broken tree.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Varianta49a604e68b3870755e1dd4f728fb5dc3a8dfcda43df53ae863786199e5fe167.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Varianta49a604e68b3870755e1dd4f728fb5dc3a8dfcda43df53ae863786199e5fe167.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d441f69db37a760f7e9df53643c694e73b45713` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
