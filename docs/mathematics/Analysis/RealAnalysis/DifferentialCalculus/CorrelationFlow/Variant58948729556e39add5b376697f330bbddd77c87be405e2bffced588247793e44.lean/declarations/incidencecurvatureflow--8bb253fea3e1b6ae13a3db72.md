# IncidenceCurvatureFlow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc6887a61837ac9a605a123fb0c8f852a659d5b5e337e3c67093ce8de45c5d8b",
  "kind": "structure",
  "lexical_name": "IncidenceCurvatureFlow",
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
  "slug": "incidencecurvatureflow--8bb253fea3e1b6ae13a3db72",
  "source": {
    "blob": "6f72744b754f359171a8e33954b3c731b8d883c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant58948729556e39add5b376697f330bbddd77c87be405e2bffced588247793e44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8bb253fea3e1b6ae13a3db728e52e9efbc7771977f50e9ec8ec936751c5d6d54",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant58948729556e39add5b376697f330bbddd77c87be405e2bffced588247793e44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc6887a61837ac9a605a123fb0c8f852a659d5b5e337e3c67093ce8de45c5d8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IncidenceCurvatureFlow extends
    CorrelationCompatibleFlow (Left := Left) (Right := Right) where
  Edge : Type
  edgeFintype : Fintype Edge
  edgeMetric : ℝ → Edge → ℝ
  /-- A fixed, explicitly chosen finite curvature functional (for example a
  Forman-, Ollivier-, or Regge-type rule). -/
  curvatureFunctional : (Edge → ℝ) → Edge → ℝ
  curvature : ℝ → Edge → ℝ
  curvature_from_metric : ∀ t edge,
    curvature t edge = curvatureFunctional (edgeMetric t) edge
  metric_equation : ∀ t edge,
    HasDerivAt (fun s ↦ edgeMetric s edge) (-2 * curvature t edge) t
  metric_positive : ∀ t edge, 0 ≤ t → t ≤ finalTime → 0 < edgeMetric t edge

/-! The exact local correlation transport identity.

All generator terms cancel because the incidence derivative contains the
two adjoint transport terms.  Only the explicitly supplied defect remains.
-/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant58948729556e39add5b376697f330bbddd77c87be405e2bffced588247793e44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationFlow/Variant58948729556e39add5b376697f330bbddd77c87be405e2bffced588247793e44.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f72744b754f359171a8e33954b3c731b8d883c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
