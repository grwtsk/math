# NoncoerciveAtlasTransport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e90754bd92d01abdd06be69dc3db1879f8a931c6ef2a18ad9a344a033d1ff162",
  "kind": "structure",
  "lexical_name": "NoncoerciveAtlasTransport",
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
  "slug": "noncoerciveatlastransport--62eada13235dde6463207c9f",
  "source": {
    "blob": "5deb4a14a9befd43f4707f478f685f8365a92f68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 76,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripStructuredTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62eada13235dde6463207c9f8b2763b6a5646c3fd0ec361581f2a9bb3e0c04c2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripStructuredTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e90754bd92d01abdd06be69dc3db1879f8a931c6ef2a18ad9a344a033d1ff162`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NoncoerciveAtlasTransport
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    (atlas : CriticalStripAtlas ι A X H) (lower upper : ι)
    (TopX TopY RingA RingB : Type*)
    [TopologicalSpace TopX] [TopologicalSpace TopY]
    [Ring RingA] [Ring RingB] where
  transportId : String
  lowerBinding : SourceBinding
  upperBinding : SourceBinding
  lower_binding_matches : lowerBinding.Matches (atlas.chart lower)
  upper_binding_matches : upperBinding.Matches (atlas.chart upper)
  binding_eq : lowerBinding = upperBinding

  topological : TopologicalEquivalence TopX TopY
  comparisonMap : TopX → TopY
  homotopy : StructuredHomotopy topological.toFun comparisonMap
  homotopyInvariant : PreservedHomotopyInvariant homotopy

  ringHomomorphism : RingChartHomomorphism RingA RingB
  analytic : NonvacuousHolomorphicChartMap

  sourceTopologicalCoordinate : TopX → ℂ
  targetTopologicalCoordinate : TopY → ℂ
  sourceRingCoordinate : RingA → ℂ
  targetRingCoordinate : RingB → ℂ

  source_topological_in_domain :
    ∀ x, sourceTopologicalCoordinate x ∈ analytic.map.domain
  source_ring_in_domain :
    ∀ a, sourceRingCoordinate a ∈ analytic.map.domain

  topological_analytic_compatibility :
    ∀ x,
      analytic.map.toFun (sourceTopologicalCoordinate x) =
        targetTopologicalCoordinate (topological.toFun x)
  comparison_analytic_compatibility :
    ∀ x,
      analytic.map.toFun (sourceTopologicalCoordinate x) =
        targetTopologicalCoordinate (comparisonMap x)
  ring_analytic_compatibility :
    ∀ a,
      analytic.map.toFun (sourceRingCoordinate a) =
        targetRingCoordinate (ringHomomorphism.map a)

  sourceTopologicalPoint : TopX → X
  targetTopologicalPoint : TopY → X
  sourceRingPoint : RingA → X
  targetRingPoint : RingB → X

  source_topological_point_mem :
    ∀ x, (atlas.chart lower).carrier (sourceTopologicalPoint x)
  target_topological_point_mem :
    ∀ y, (atlas.chart upper).carrier (targetTopologicalPoint y)
  source_ring_point_mem :
    ∀ a, (atlas.chart lower).carrier (sourceRingPoint a)
  target_ring_point_mem :
    ∀ b, (atlas.chart upper).carrier (targetRingPoint b)

  topological_height_compatibility :
    ∀ x,
      atlas.root.heightAt (sourceTopologicalPoint x) =
        atlas.root.heightAt (targetTopologicalPoint (topological.toFun x))
  comparison_height_compatibility :
    ∀ x,
      atlas.root.heightAt (sourceTopologicalPoint x) =
        atlas.root.heightAt (targetTopologicalPoint (comparisonMap x))
  ring_height_compatibility :
    ∀ a,
      atlas.root.heightAt (sourceRingPoint a) =
        atlas.root.heightAt (targetRingPoint (ringHomomorphism.map a))

  height_mono :
    (atlas.chart lower).rootHeight ≤ (atlas.chart upper).rootHeight
  proofTransport :
    (atlas.chart lower).localStatement → (atlas.chart upper).localStatement

namespace NoncoerciveAtlasTransport

/-- The two homotopy endpoints describe the same target analytic coordinate. This
conclusion uses the two separately proved analytic compatibility squares, not homotopy
alone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripStructuredTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripStructuredTransport.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5deb4a14a9befd43f4707f478f685f8365a92f68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
