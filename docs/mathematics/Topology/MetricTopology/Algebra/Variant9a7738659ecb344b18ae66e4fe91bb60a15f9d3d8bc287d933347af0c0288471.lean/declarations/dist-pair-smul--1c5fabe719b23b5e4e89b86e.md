# dist_pair_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96bb4674-ae54-b670-f94b-3b379ecfa25b",
  "kind": "theorem",
  "lexical_name": "dist_pair_smul",
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
  "slug": "dist-pair-smul--1c5fabe719b23b5e4e89b86e",
  "source": {
    "blob": "eeab88d7cdffd2898889c47c030e7c500f329aae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 153,
    "path": "GRWTSK/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c5fabe719b23b5e4e89b86ee67dd76a64564ef53576c579f52fe2c345a015b6",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96bb4674-ae54-b670-f94b-3b379ecfa25b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_pair_smul (x₁ x₂ : α) (y : β) : dist (x₁ • y) (x₂ • y) ≤ dist x₁ x₂ * dist y 0 :=
  BoundedSMul.dist_pair_smul' x₁ x₂ y
#align dist_pair_smul dist_pair_smul

-- see Note [lower instance priority]
/-- The typeclass `BoundedSMul` on a metric-space scalar action implies continuity of the action. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Algebra/Variant9a7738659ecb344b18ae66e4fe91bb60a15f9d3d8bc287d933347af0c0288471.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eeab88d7cdffd2898889c47c030e7c500f329aae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
