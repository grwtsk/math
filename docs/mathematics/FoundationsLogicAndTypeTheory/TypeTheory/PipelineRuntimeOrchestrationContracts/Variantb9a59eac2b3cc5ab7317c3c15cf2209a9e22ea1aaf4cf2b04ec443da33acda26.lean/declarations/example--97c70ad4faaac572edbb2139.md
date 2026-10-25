# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c2e3705836d05ae17ff955bacf30463d667e1a6529a5c4d72f8aa9b3f8bdc2d",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--97c70ad4faaac572edbb2139",
  "source": {
    "blob": "ec518f36a6c9813566a9678e43912eb1459c39a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1228,
    "line": 1221,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineRuntimeOrchestrationContracts/Variantb9a59eac2b3cc5ab7317c3c15cf2209a9e22ea1aaf4cf2b04ec443da33acda26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97c70ad4faaac572edbb2139cdf35f8291a37ac59db68a33eeb34496e28bdd6e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineRuntimeOrchestrationContracts/Variantb9a59eac2b3cc5ab7317c3c15cf2209a9e22ea1aaf4cf2b04ec443da33acda26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c2e3705836d05ae17ff955bacf30463d667e1a6529a5c4d72f8aa9b3f8bdc2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1221–1228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {State Error Receipt : Type} (host : Host State Error Receipt)
    (rawCount certificateRawCount : Nat) (state prepared : State) (error : Error)
    (steps : (runSteps host.step (program rawCount certificateRawCount) state).result = .ok prepared)
    (failed : host.verifyOutputs prepared = .error error) :
    execute host rawCount certificateRawCount state =
      ⟨.error error, (program rawCount certificateRawCount).map Event.step ++ [.outputs]⟩ :=
  execute_outputs_error_stops host rawCount certificateRawCount state prepared error steps failed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineRuntimeOrchestrationContracts/Variantb9a59eac2b3cc5ab7317c3c15cf2209a9e22ea1aaf4cf2b04ec443da33acda26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineRuntimeOrchestrationContracts/Variantb9a59eac2b3cc5ab7317c3c15cf2209a9e22ea1aaf4cf2b04ec443da33acda26.lean#L1221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec518f36a6c9813566a9678e43912eb1459c39a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
