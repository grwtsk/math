# tendsto_measure_of_ae_tendsto_indicator_of_isFiniteMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4f2be79-89c5-7a0f-0e2c-b3e1cf431f9a",
  "kind": "lemma",
  "lexical_name": "tendsto_measure_of_ae_tendsto_indicator_of_isFiniteMeasure",
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
  "slug": "tendsto-measure-of-ae-tendsto-indicator-of-isfinitemeasure--3d5cff939603dc3c7245c565",
  "source": {
    "blob": "cddacc48e361eba2fe6d6a5e59e77d872d9ea922",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 67,
    "path": "GRWTSK/Topology/GeneralTopology/Indicator/Variant9aa386297c55f18d1dc1a97701a4e60f4a82ac7d28319b34953076d6bd342ea7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d5cff939603dc3c7245c5656de2606dff4b3a636327cf023bd7de8e2f655c85",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Indicator/Variant9aa386297c55f18d1dc1a97701a4e60f4a82ac7d28319b34953076d6bd342ea7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4f2be79-89c5-7a0f-0e2c-b3e1cf431f9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_measure_of_ae_tendsto_indicator_of_isFiniteMeasure
    {μ : Measure α} [IsFiniteMeasure μ] (A_mble : MeasurableSet A)
    (As_mble : ∀ i, MeasurableSet (As i)) (h_lim : ∀ᵐ x ∂μ, ∀ᶠ i in L, x ∈ As i ↔ x ∈ A) :
    Tendsto (fun i ↦ μ (As i)) L (𝓝 (μ A)) :=
  tendsto_measure_of_ae_tendsto_indicator L A_mble As_mble MeasurableSet.univ
    (measure_ne_top μ univ) (Eventually.of_forall (fun i ↦ subset_univ (As i))) h_lim

/-- If the indicators of measurable sets `Aᵢ` tend pointwise to the indicator of a set `A`
and we eventually have `Aᵢ ⊆ B` for some set `B` of finite measure, then the measures of `Aᵢ`
tend to the measure of `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Indicator/Variant9aa386297c55f18d1dc1a97701a4e60f4a82ac7d28319b34953076d6bd342ea7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Indicator/Variant9aa386297c55f18d1dc1a97701a4e60f4a82ac7d28319b34953076d6bd342ea7.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cddacc48e361eba2fe6d6a5e59e77d872d9ea922` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
