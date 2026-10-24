# Topology.IsInducing.smallInductiveDimension_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e163210f-2943-d411-36cc-1347068ac200",
  "kind": "theorem",
  "lexical_name": "Topology.IsInducing.smallInductiveDimension_le",
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
  "slug": "topology-isinducing-smallinductivedimension-le--132c4cddb7958b12b3ffe0bb",
  "source": {
    "blob": "266080d76e16da8d8d3b09ba309f76a53522b584",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 189,
    "path": "GRWTSK/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:132c4cddb7958b12b3ffe0bb70754ed8f708b844f8fb5a489c55cf52f11cdc00",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e163210f-2943-d411-36cc-1347068ac200`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Topology.IsInducing.smallInductiveDimension_le {f : X → Y} (hf : IsInducing f) :
    smallInductiveDimension X ≤ smallInductiveDimension Y :=
  sInf_le_sInf fun _ hm i hi ↦ hf.hasSmallInductiveDimensionLT (hm i hi)

/-- The small inductive dimension of a subspace is at most that of the ambient space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `266080d76e16da8d8d3b09ba309f76a53522b584` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
