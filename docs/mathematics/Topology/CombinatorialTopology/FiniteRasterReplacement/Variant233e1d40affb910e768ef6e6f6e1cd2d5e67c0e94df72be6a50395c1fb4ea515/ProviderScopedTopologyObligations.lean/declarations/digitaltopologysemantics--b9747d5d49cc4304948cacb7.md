# DigitalTopologySemantics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1ffa6d501dbf24a911fccc945c1cb0885eedf681102fa85482badd096231802",
  "kind": "structure",
  "lexical_name": "DigitalTopologySemantics",
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
  "slug": "digitaltopologysemantics--b9747d5d49cc4304948cacb7",
  "source": {
    "blob": "ed70dbb69dc8d2aab029ee38c60787d9c948f55b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 52,
    "path": "GRWTSK/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/ProviderScopedTopologyObligations.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9747d5d49cc4304948cacb7fdc007c5dc6f04db3ebe6154f68b47d9fc6f469c",
  "verification": {
    "reference": "docs/verification/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/ProviderScopedTopologyObligations.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1ffa6d501dbf24a911fccc945c1cb0885eedf681102fa85482badd096231802`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DigitalTopologySemantics (rows columns : Nat) where
  incidenceMap :
    AdjacencyPolicy → AdjacencyPolicy →
      Cell rows columns → Finset (Cell rows columns)
  incidenceLowersDimension :
    ∀ foreground background cell face,
      face ∈ incidenceMap foreground background cell →
        face.dimension < cell.dimension
  linkCondition :
    (foreground background : AdjacencyPolicy) →
      (cut : CutDatum rows columns) → Repair cut → Prop
  betti :
    AdjacencyPolicy → AdjacencyPolicy →
      RasterState rows columns → Nat → Nat
  exactCarrierCompatible :
    (foreground background : AdjacencyPolicy) →
      (cut : CutDatum rows columns) → Repair cut → Prop
  cubicalManifold :
    AdjacencyPolicy → AdjacencyPolicy → RasterState rows columns → Prop

/--
Proof-carrying obligations for calling a finite replacement *controlled
digital surgery*.  All topology-sensitive propositions are selected once by
the explicit semantics provider and are applied to the record's actual cut,
repair, and post-repair state.  Merely constructing `Repair` supplies none of
their evidence.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/ProviderScopedTopologyObligations.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/ProviderScopedTopologyObligations.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed70dbb69dc8d2aab029ee38c60787d9c948f55b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
