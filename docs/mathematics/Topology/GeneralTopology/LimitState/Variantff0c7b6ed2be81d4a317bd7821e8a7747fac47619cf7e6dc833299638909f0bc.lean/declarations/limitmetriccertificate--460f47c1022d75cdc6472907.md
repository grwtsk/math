# LimitMetricCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd9bf3a05a93c8b03b062be9ff68ca607cfb19e3cd949aea9767e514a702f9e4",
  "kind": "structure",
  "lexical_name": "LimitMetricCertificate",
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
  "slug": "limitmetriccertificate--460f47c1022d75cdc6472907",
  "source": {
    "blob": "92cb8edf7a139cf4df767f442133195394e7c9dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 116,
    "path": "GRWTSK/Topology/GeneralTopology/LimitState/Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:460f47c1022d75cdc64729078e7607518c14706cb57a853fc530defff8259fff",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LimitState/Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd9bf3a05a93c8b03b062be9ff68ca607cfb19e3cd949aea9767e514a702f9e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LimitMetricCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule) where
  weight : Nat → ℝ
  weightPositive :
    ∀ stage, 0 < weight stage
  weightSummable :
    Summable weight
  distance :
    LimitBoundaryState system →
      LimitBoundaryState system → ℝ
  distanceFormula :
    ∀ left right,
      distance left right =
        ∑' stage,
          weight stage *
            min 1
              ((system.cut stage).closure.system.metric.distance
                (left.component stage)
                (right.component stage))
  distanceNonnegative :
    ∀ left right,
      0 ≤ distance left right
  distanceSelf :
    ∀ state,
      distance state state = 0
  distanceSymmetric :
    ∀ left right,
      distance left right =
        distance right left
  triangle :
    ∀ left middle right,
      distance left right ≤
        distance left middle +
          distance middle right
  separated :
    ∀ {left right},
      distance left right = 0 →
      left = right

end Mathematics.StratifiedBoundary.Boundary
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LimitState/Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LimitState/Variantff0c7b6ed2be81d4a317bd7821e8a7747fac47619cf7e6dc833299638909f0bc.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92cb8edf7a139cf4df767f442133195394e7c9dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
