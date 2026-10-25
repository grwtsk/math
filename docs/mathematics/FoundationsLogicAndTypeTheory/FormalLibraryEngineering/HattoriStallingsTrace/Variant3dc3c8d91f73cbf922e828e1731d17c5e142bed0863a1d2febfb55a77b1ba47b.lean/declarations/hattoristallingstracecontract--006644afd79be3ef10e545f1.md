# HattoriStallingsTraceContract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d7361781a4e3a07dab4d092aebaecbf5b90f4dbc68b7ea20f206c599a5c5add",
  "kind": "structure",
  "lexical_name": "HattoriStallingsTraceContract",
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
  "slug": "hattoristallingstracecontract--006644afd79be3ef10e545f1",
  "source": {
    "blob": "59e0cfc16c0d0f23661f122fcbb0845f3d65b5d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HattoriStallingsTrace/Variant3dc3c8d91f73cbf922e828e1731d17c5e142bed0863a1d2febfb55a77b1ba47b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:006644afd79be3ef10e545f13d708e95cc746709214ad6e465f686f6bfa976b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HattoriStallingsTrace/Variant3dc3c8d91f73cbf922e828e1731d17c5e142bed0863a1d2febfb55a77b1ba47b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d7361781a4e3a07dab4d092aebaecbf5b90f4dbc68b7ea20f206c599a5c5add`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HattoriStallingsTraceContract where
  RingLike : Type _
  ModuleLike : Type _
  EndomorphismLike : Type _
  traceValue : EndomorphismLike → Type _
  traceDefined : Prop
  traceDefined_certified : traceDefined
  MoritaInvariant? : Prop
  sourceLabel : String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HattoriStallingsTrace/Variant3dc3c8d91f73cbf922e828e1731d17c5e142bed0863a1d2febfb55a77b1ba47b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HattoriStallingsTrace/Variant3dc3c8d91f73cbf922e828e1731d17c5e142bed0863a1d2febfb55a77b1ba47b.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e0cfc16c0d0f23661f122fcbb0845f3d65b5d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
