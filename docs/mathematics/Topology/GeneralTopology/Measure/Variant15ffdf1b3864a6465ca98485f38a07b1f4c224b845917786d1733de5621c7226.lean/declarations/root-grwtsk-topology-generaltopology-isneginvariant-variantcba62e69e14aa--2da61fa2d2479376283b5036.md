# _root_.GRWTSK.Topology.GeneralTopology.IsNegInvariant.Variantcba62e69e14aafd9e79c41c3209cc75828e5bd7e3bcf46e5af7d8281e43696bd.MulEquiv.isHaarMeasure_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b7a48fa-6868-2adb-5340-248bf069f838",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.IsNegInvariant.Variantcba62e69e14aafd9e79c41c3209cc75828e5bd7e3bcf46e5af7d8281e43696bd.MulEquiv.isHaarMeasure_map",
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
  "slug": "root-grwtsk-topology-generaltopology-isneginvariant-variantcba62e69e14aa--2da61fa2d2479376283b5036",
  "source": {
    "blob": "c08d50da36d7f6b84232d58537b55d6e13b88e26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 903,
    "line": 892,
    "path": "GRWTSK/Topology/GeneralTopology/Measure/Variant15ffdf1b3864a6465ca98485f38a07b1f4c224b845917786d1733de5621c7226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2da61fa2d2479376283b5036a53fd27359692ab81c0ad6ea07f3c7d431d5d69d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Measure/Variant15ffdf1b3864a6465ca98485f38a07b1f4c224b845917786d1733de5621c7226.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b7a48fa-6868-2adb-5340-248bf069f838`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 892–903.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem _root_.GRWTSK.Topology.GeneralTopology.IsNegInvariant.Variantcba62e69e14aafd9e79c41c3209cc75828e5bd7e3bcf46e5af7d8281e43696bd.MulEquiv.isHaarMeasure_map [BorelSpace G] [ContinuousMul G] {H : Type*}
    [Group H] [TopologicalSpace H] [MeasurableSpace H] [BorelSpace H]
    [IsTopologicalGroup H] (e : G ≃* H) (he : Continuous e) (hesymm : Continuous e.symm) :
    IsHaarMeasure (Measure.map e μ) :=
  let f : G ≃ₜ H := .mk e he hesymm
  -- We need to write `e.toMonoidHom` instead of just `e`, to avoid unification issues.
  isHaarMeasure_map μ e.toMonoidHom he e.surjective f.isClosedEmbedding.tendsto_cocompact

/--
A convenience wrapper for `MeasureTheory.Measure.isHaarMeasure_map`.
-/
@[to_additive /-- A convenience wrapper for `MeasureTheory.Measure.isAddHaarMeasure_map`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Measure/Variant15ffdf1b3864a6465ca98485f38a07b1f4c224b845917786d1733de5621c7226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Measure/Variant15ffdf1b3864a6465ca98485f38a07b1f4c224b845917786d1733de5621c7226.lean#L892).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c08d50da36d7f6b84232d58537b55d6e13b88e26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
