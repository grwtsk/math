# polarProductProjection_isQuotientMap_of_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd701413-0196-561e-bd52-c6150a836a4e",
  "kind": "theorem",
  "lexical_name": "polarProductProjection_isQuotientMap_of_cover",
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
  "slug": "polarproductprojection-isquotientmap-of-cover--14d54648c3cf6931f6bbbcd6",
  "source": {
    "blob": "5f9efc9aa79056b1f07f3591e55c43c2258e64fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 90,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarCompactCover.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14d54648c3cf6931f6bbbcd6f1ff9754522176ca609c17835ca6118e92fce400",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonPolarCompactCover.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd701413-0196-561e-bd52-c6150a836a4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polarProductProjection_isQuotientMap_of_cover
    (hcover : ∀ z : UnitAddCircle,
      ∃ θ : unitInterval, ((θ : ℝ) : UnitAddCircle) = z)
    [T2Space (UnitAddCircle × unitInterval)] :
    IsQuotientMap polarProductProjection := by
  have hcompact : IsQuotientMap compactPolarProjection :=
    compactPolarProjection_isQuotientMap_of_cover hcover
  have hcont := polarProductProjection_continuous
  -- The remaining composition/quotient descent is a source proof
  -- candidate; use the exact IsQuotientMap factorization API.
  have hcomp : IsQuotientMap (polarProductProjection ∘
      (fun p : PolarCompactSource => ((p.1 : ℝ), p.2))) := by
    convert! hcompact using 1
  exact IsQuotientMap.of_comp (by fun_prop) hcont hcomp

/-- Conditional source candidate for joint continuity with a precise
compact fundamental-domain supplier rather than a generic quotient
assumption. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPolarCompactCover.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarCompactCover.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f9efc9aa79056b1f07f3591e55c43c2258e64fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
