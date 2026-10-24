# Isometry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76fac68bcdb627b81a572df3f11a62e82d3324625cd8bf3208be398662ea5206",
  "kind": "structure",
  "lexical_name": "Isometry",
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
  "slug": "isometry--b2d4acbca09f09f52c909aaa",
  "source": {
    "blob": "a33951d8b6b0f33e44b313218b3426c0b755aa3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 36,
    "path": "GRWTSK/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2d4acbca09f09f52c909aaaf264fba131193c285f670d5daecc78aa21e3b454",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76fac68bcdb627b81a572df3f11a62e82d3324625cd8bf3208be398662ea5206`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Isometry (Q₁ : QuadraticMap R M₁ N) (Q₂ : QuadraticMap R M₂ N) extends M₁ →ₗ[R] M₂ where
  /-- The quadratic form agrees across the map. -/
  map_app' : ∀ m, Q₂ (toFun m) = Q₁ m

namespace Isometry

@[inherit_doc]
notation:25 Q₁ " →qᵢ " Q₂:0 => Isometry Q₁ Q₂

variable {Q₁ : QuadraticMap R M₁ N} {Q₂ : QuadraticMap R M₂ N}
variable {Q₃ : QuadraticMap R M₃ N} {Q₄ : QuadraticMap R M₄ N}

@[macro_inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometry/Variant241d150045f041812b0568e0c8e9bc9b2bd1696e51382c04d9053c3a63838c44.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a33951d8b6b0f33e44b313218b3426c0b755aa3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
