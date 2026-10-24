# spatialDerivative_eq_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a686014-c32e-fd87-4e5b-6a2d39bd67f0",
  "kind": "theorem",
  "lexical_name": "spatialDerivative_eq_deriv",
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
  "slug": "spatialderivative-eq-deriv--d6056c04e4cb7a324d9e5152",
  "source": {
    "blob": "023afda2a42e5811d13d0b084c2e299731f116a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/BasicSourceV3Prebytes/Variantb33753a8321ce6207cd33e97f9c984ab5c3a4f3fa7b4cd1897efc743ddc10a3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6056c04e4cb7a324d9e515283a110d38d7cdca18535231411511dc3a1ccbb55",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BasicSourceV3Prebytes/Variantb33753a8321ce6207cd33e97f9c984ab5c3a4f3fa7b4cd1897efc743ddc10a3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a686014-c32e-fd87-4e5b-6a2d39bd67f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spatialDerivative_eq_deriv {A : ℝ} (hA : 0 < A) :
    spatialDerivative A = deriv (normalizedTest explicitSecondDerivative A) :=
  funext fun x => (normalizedSource_hasSpatialDerivAt hA x).deriv.symm

/-- Joint continuity uses only the bump's actual global C³ regularity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BasicSourceV3Prebytes/Variantb33753a8321ce6207cd33e97f9c984ab5c3a4f3fa7b4cd1897efc743ddc10a3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BasicSourceV3Prebytes/Variantb33753a8321ce6207cd33e97f9c984ab5c3a4f3fa7b4cd1897efc743ddc10a3b.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `023afda2a42e5811d13d0b084c2e299731f116a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
