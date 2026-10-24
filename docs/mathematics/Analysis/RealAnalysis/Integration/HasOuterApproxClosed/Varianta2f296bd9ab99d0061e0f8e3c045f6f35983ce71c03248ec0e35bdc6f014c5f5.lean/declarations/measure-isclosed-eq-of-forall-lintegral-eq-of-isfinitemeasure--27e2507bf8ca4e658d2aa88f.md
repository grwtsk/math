# measure_isClosed_eq_of_forall_lintegral_eq_of_isFiniteMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b11dcc1-6a52-609b-2859-24bdd46d8d15",
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
  "slug": "measure-isclosed-eq-of-forall-lintegral-eq-of-isfinitemeasure--27e2507bf8ca4e658d2aa88f",
  "source": {
    "blob": "ec701fcd87952986a28066d36ff3c0333ba15ffb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 246,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27e2507bf8ca4e658d2aa88f3693ca95dc1bcab6df95a058fabe83224d51916b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b11dcc1-6a52-609b-2859-24bdd46d8d15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–263.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec701fcd87952986a28066d36ff3c0333ba15ffb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
