# tendsto_set_integral_of_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36dd6215-1f5d-8314-6d50-4edce6d5590c",
  "kind": "theorem",
  "lexical_name": "tendsto_set_integral_of_monotone",
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
  "slug": "tendsto-set-integral-of-monotone--1296b43923e62557dc0438ca",
  "source": {
    "blob": "38870d9281f38ed1ccfa0ea21d604040e52a66e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 220,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Variantf08c48361783f4f58fbbbb26d175196d052ca8ed36905808ef891807a217668b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1296b43923e62557dc0438cac4c102b95054f90ce8ba1689bffaa2a449a06ba2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SetIntegral/Variantf08c48361783f4f58fbbbb26d175196d052ca8ed36905808ef891807a217668b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36dd6215-1f5d-8314-6d50-4edce6d5590c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_set_integral_of_monotone {ι : Type*} [Countable ι] [SemilatticeSup ι]
    {s : ι → Set α} (hsm : ∀ i, MeasurableSet (s i)) (h_mono : Monotone s)
    (hfi : IntegrableOn f (⋃ n, s n) μ) :
    Tendsto (fun i => ∫ a in s i, f a ∂μ) atTop (𝓝 (∫ a in ⋃ n, s n, f a ∂μ)) := by
  have hfi' : (∫⁻ x in ⋃ n, s n, ‖f x‖₊ ∂μ) < ∞ := hfi.2
  set S := ⋃ i, s i
  have hSm : MeasurableSet S := MeasurableSet.iUnion hsm
  have hsub : ∀ {i}, s i ⊆ S := @(subset_iUnion s)
  rw [← withDensity_apply _ hSm] at hfi'
  set ν := μ.withDensity fun x => ‖f x‖₊ with hν
  refine' Metric.nhds_basis_closedBall.tendsto_right_iff.2 fun ε ε0 => _
  lift ε to ℝ≥0 using ε0.le
  have : ∀ᶠ i in atTop, ν (s i) ∈ Icc (ν S - ε) (ν S + ε) :=
    tendsto_measure_iUnion h_mono (ENNReal.Icc_mem_nhds hfi'.ne (ENNReal.coe_pos.2 ε0).ne')
  refine' this.mono fun i hi => _
  rw [mem_closedBall_iff_norm', ← integral_diff (hsm i) hfi hsub, ← coe_nnnorm, NNReal.coe_le_coe, ←
    ENNReal.coe_le_coe]
  refine' (ennnorm_integral_le_lintegral_ennnorm _).trans _
  rw [← withDensity_apply _ (hSm.diff (hsm _)), ← hν, measure_diff hsub (hsm _)]
  exacts [tsub_le_iff_tsub_le.mp hi.1,
    (hi.2.trans_lt <| ENNReal.add_lt_top.2 ⟨hfi', ENNReal.coe_lt_top⟩).ne]
#align measure_theory.tendsto_set_integral_of_monotone MeasureTheory.tendsto_set_integral_of_monotone

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SetIntegral/Variantf08c48361783f4f58fbbbb26d175196d052ca8ed36905808ef891807a217668b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Variantf08c48361783f4f58fbbbb26d175196d052ca8ed36905808ef891807a217668b.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38870d9281f38ed1ccfa0ea21d604040e52a66e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
