# measure_isClosed_eq_of_forall_lintegral_eq_of_isFiniteMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "24acba94dd117c99ad39f86567ead16935981d85",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/58faf38cf5f8aa4ef3b6418526fb09ce23372ffe6560b85f936113ff284a1c27.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f833490d-a7c1-9777-c623-e67ebd19d97b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b819981-a072-2c78-708e-73f6dddab68c",
  "kind": "theorem",
  "lexical_name": "measure_isClosed_eq_of_forall_lintegral_eq_of_isFiniteMeasure",
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
  "slug": "measure-isclosed-eq-of-forall-lintegral-eq-of-isfinitemeasure--9a8ff88d3262d02755d74a74",
  "source": {
    "blob": "24acba94dd117c99ad39f86567ead16935981d85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 238,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant58faf38cf5f8aa4ef3b6418526fb09ce23372ffe6560b85f936113ff284a1c27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a8ff88d3262d02755d74a745323f3356a1f80240b6f3d07c3c9fc737d12e9cf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant58faf38cf5f8aa4ef3b6418526fb09ce23372ffe6560b85f936113ff284a1c27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b819981-a072-2c78-708e-73f6dddab68c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_isClosed_eq_of_forall_lintegral_eq_of_isFiniteMeasure {Ω : Type*}
    [MeasurableSpace Ω] [TopologicalSpace Ω] [HasOuterApproxClosed Ω]
    [OpensMeasurableSpace Ω] {μ ν : Measure Ω} [IsFiniteMeasure μ]
    (h : ∀ (f : Ω →ᵇ ℝ≥0), ∫⁻ x, f x ∂μ = ∫⁻ x, f x ∂ν) {F : Set Ω} (F_closed : IsClosed F) :
    μ F = ν F := by
  have ν_finite : IsFiniteMeasure ν := by
    constructor
    have whole := h 1
    simp only [BoundedContinuousFunction.coe_one, Pi.one_apply, ENNReal.coe_one, lintegral_const,
      one_mul] at whole
    simp [← whole]
  have obs_μ := HasOuterApproxClosed.tendsto_lintegral_apprSeq F_closed μ
  have obs_ν := HasOuterApproxClosed.tendsto_lintegral_apprSeq F_closed ν
  simp_rw [h] at obs_μ
  exact tendsto_nhds_unique obs_μ obs_ν

/-- Two finite Borel measures are equal if the integrals of all non-negative bounded continuous
functions with respect to both agree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant58faf38cf5f8aa4ef3b6418526fb09ce23372ffe6560b85f936113ff284a1c27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant58faf38cf5f8aa4ef3b6418526fb09ce23372ffe6560b85f936113ff284a1c27.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24acba94dd117c99ad39f86567ead16935981d85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
