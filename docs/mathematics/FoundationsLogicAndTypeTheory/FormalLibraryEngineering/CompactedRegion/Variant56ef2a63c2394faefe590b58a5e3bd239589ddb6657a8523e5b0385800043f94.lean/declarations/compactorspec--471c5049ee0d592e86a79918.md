# CompactorSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3e35d4be40c878a663a238fb16c0b2cb6a3d0ff8e559e04444547d2ddd4c595",
  "kind": "opaque",
  "lexical_name": "CompactorSpec",
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
  "slug": "compactorspec--471c5049ee0d592e86a79918",
  "source": {
    "blob": "4fc00fa480154e5e1b2dbcf83dd2a2255fb64487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactedRegion/Variant56ef2a63c2394faefe590b58a5e3bd239589ddb6657a8523e5b0385800043f94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:471c5049ee0d592e86a7991812d362dd2dea50e72280eb165b5819f7b2f3e5c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactedRegion/Variant56ef2a63c2394faefe590b58a5e3bd239589ddb6657a8523e5b0385800043f94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `opaque` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3e35d4be40c878a663a238fb16c0b2cb6a3d0ff8e559e04444547d2ddd4c595`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
opaque CompactorSpec : NonemptyType.{0}
/--
Holds an opaque compactor handle returned by `CompactedRegion.save`, used to chain subsequent saves
so that objects shared between parts are emitted exactly once.

Not thread-safe: a `Compactor` value must not be used concurrently from multiple threads. The
`CompactedRegion`s passed as `depRegions` when the `Compactor` was first created must outlive the
`Compactor`; if any are freed (via `CompactedRegion.free`) while the `Compactor` is still in use,
subsequent saves will dereference dangling pointers.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactedRegion/Variant56ef2a63c2394faefe590b58a5e3bd239589ddb6657a8523e5b0385800043f94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactedRegion/Variant56ef2a63c2394faefe590b58a5e3bd239589ddb6657a8523e5b0385800043f94.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fc00fa480154e5e1b2dbcf83dd2a2255fb64487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
