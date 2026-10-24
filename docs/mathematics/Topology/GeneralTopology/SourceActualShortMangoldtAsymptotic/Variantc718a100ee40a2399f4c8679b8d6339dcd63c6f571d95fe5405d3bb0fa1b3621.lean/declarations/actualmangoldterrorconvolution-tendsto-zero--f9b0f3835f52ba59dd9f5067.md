# actualMangoldtErrorConvolution_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3631b2cb-2a55-ea1e-0a64-8dc39c09ef54",
  "kind": "theorem",
  "lexical_name": "actualMangoldtErrorConvolution_tendsto_zero",
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
  "slug": "actualmangoldterrorconvolution-tendsto-zero--f9b0f3835f52ba59dd9f5067",
  "source": {
    "blob": "c082dc20bb647b747e02bf2f408d11f0fdb6ed9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 96,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualShortMangoldtAsymptotic/Variantc718a100ee40a2399f4c8679b8d6339dcd63c6f571d95fe5405d3bb0fa1b3621.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9b0f3835f52ba59dd9f50670eaf75492b0bfd0dbf76eef1ca5579fc25802002",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualShortMangoldtAsymptotic/Variantc718a100ee40a2399f4c8679b8d6339dcd63c6f571d95fe5405d3bb0fa1b3621.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3631b2cb-2a55-ea1e-0a64-8dc39c09ef54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMangoldtErrorConvolution_tendsto_zero {lam : ℝ} (hlam : 0 < lam) :
    Tendsto (actualMangoldtErrorConvolution lam) atTop (𝓝 0) := by
  have hG := actualCenteredMangoldtLogError_integrableOn.mono_set Ioi_subset_Ici_self
  have hh := tendsto_integral_filter_of_dominated_convergence
    (μ := volume.restrict (Ioi 0)) (F := causalErrorKernel lam) (f := fun _ => (0 : ℝ))
    (fun r => |actualCenteredMangoldtLogError r|)
    (Eventually.of_forall (causalErrorKernel_measurable lam))
    (Eventually.of_forall (fun T => ae_of_all _ (causalErrorKernel_norm_le hlam T)))
    hG.norm (ae_of_all _ (causalErrorKernel_tendsto_zero hlam))
  simp only [integral_zero] at hh
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (0 : ℝ)] with T hT
  unfold causalErrorKernel
  rw [integral_indicator measurableSet_Iic, Measure.restrict_restrict measurableSet_Iic,
    inter_comm, Ioi_inter_Iic, ← intervalIntegral.integral_of_le hT]
  rfl

/-- The actual full closed exponential readout tends to its literal main mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualShortMangoldtAsymptotic/Variantc718a100ee40a2399f4c8679b8d6339dcd63c6f571d95fe5405d3bb0fa1b3621.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualShortMangoldtAsymptotic/Variantc718a100ee40a2399f4c8679b8d6339dcd63c6f571d95fe5405d3bb0fa1b3621.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c082dc20bb647b747e02bf2f408d11f0fdb6ed9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
