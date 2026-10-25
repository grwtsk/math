# DiscreteCurvatureModel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8618510351e3cacd8743605b9952cff9477d26d9a06347d8af6f0fed851d0ef",
  "kind": "structure",
  "lexical_name": "DiscreteCurvatureModel",
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
  "slug": "discretecurvaturemodel--8322d807a1a3aced0236b752",
  "source": {
    "blob": "42945280b1f60be41faca01710217de183331054",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant73df9e49463ed08757114c35cdde96125b8162751982aa8214139449f83e83dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8322d807a1a3aced0236b7526594364a92ac1e0ff90937b3d60e098e991038dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant73df9e49463ed08757114c35cdde96125b8162751982aa8214139449f83e83dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8618510351e3cacd8743605b9952cff9477d26d9a06347d8af6f0fed851d0ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DiscreteCurvatureModel
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    (T : Terrain V)
    (MetricState : Type uMetric) where
  semantics : CurvatureSemantics
  semantics_discrete : semantics.IsDiscrete
  edgeWeight : MetricState → V → V → ℝ
  edgeWeight_symmetric :
    ∀ g {x y}, T.Adjacent x y → edgeWeight g x y = edgeWeight g y x
  illegal_edge_weight_zero :
    ∀ g {x y}, ¬ T.Adjacent x y → edgeWeight g x y = 0
  curvature : MetricState → V → V → ℝ
  referenceCurvature : V → V → ℝ
  metricStep : MetricState → MetricState
  metricDistance : MetricState → MetricState → ℝ
  metricDistance_nonnegative : ∀ g h, 0 ≤ metricDistance g h

namespace DiscreteCurvatureModel

variable {V : Type uV} [Fintype V] [DecidableEq V]
variable {T : Terrain V}

/-- A certified discrete curvature model cannot be a smooth-manifold model. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant73df9e49463ed08757114c35cdde96125b8162751982aa8214139449f83e83dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant73df9e49463ed08757114c35cdde96125b8162751982aa8214139449f83e83dd.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42945280b1f60be41faca01710217de183331054` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
