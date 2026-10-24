# tendsto_setIntegral_of_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bb3fe6a-e0ad-a526-1d98-2336b9a25394",
  "kind": "theorem",
  "lexical_name": "tendsto_setIntegral_of_monotone",
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
  "slug": "tendsto-setintegral-of-monotone--1b316dd3ebeb16fa8306a2ea",
  "source": {
    "blob": "44c0192c42240884d8c5ec272a56c3ae52098d06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 192,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Set/Variantceb9b24b9c5df474beb72d7ac8ce9a67af7229187cd7c8c2ab5ca8887b160e4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b316dd3ebeb16fa8306a2ea10720803b8ea5de63afaca8bc6c4e2d905c2370e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Set/Variantceb9b24b9c5df474beb72d7ac8ce9a67af7229187cd7c8c2ab5ca8887b160e4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bb3fe6a-e0ad-a526-1d98-2336b9a25394`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_setIntegral_of_monotone
    {ι : Type*} [Preorder ι] [(atTop : Filter ι).IsCountablyGenerated]
    {s : ι → Set X} (hsm : ∀ i, MeasurableSet (s i)) (h_mono : Monotone s)
    (hfi : IntegrableOn f (⋃ n, s n) μ) :
    Tendsto (fun i => ∫ x in s i, f x ∂μ) atTop (𝓝 (∫ x in ⋃ n, s n, f x ∂μ)) := by
  refine .of_neBot_imp fun hne ↦ ?_
  have := (atTop_neBot_iff.mp hne).2
  have hfi' : ∫⁻ x in ⋃ n, s n, ‖f x‖₊ ∂μ < ∞ := hfi.2
  set S := ⋃ i, s i
  have hSm : MeasurableSet S := MeasurableSet.iUnion_of_monotone h_mono hsm
  have hsub {i} : s i ⊆ S := subset_iUnion s i
  rw [← withDensity_apply _ hSm] at hfi'
  set ν := μ.withDensity (‖f ·‖ₑ) with hν
  refine Metric.nhds_basis_closedBall.tendsto_right_iff.2 fun ε ε0 => ?_
  lift ε to ℝ≥0 using ε0.le
  have : ∀ᶠ i in atTop, ν (s i) ∈ Icc (ν S - ε) (ν S + ε) :=
    tendsto_measure_iUnion_atTop h_mono (ENNReal.Icc_mem_nhds hfi'.ne (ENNReal.coe_pos.2 ε0).ne')
  filter_upwards [this] with i hi
  rw [mem_closedBall_iff_norm', ← integral_diff (hsm i) hfi hsub, ← coe_nnnorm, NNReal.coe_le_coe, ←
    ENNReal.coe_le_coe]
  refine (enorm_integral_le_lintegral_enorm _).trans ?_
  rw [← withDensity_apply _ (hSm.diff (hsm _)), ← hν, measure_diff hsub (hsm _).nullMeasurableSet]
  exacts [tsub_le_iff_tsub_le.mp hi.1,
    (hi.2.trans_lt <| ENNReal.add_lt_top.2 ⟨hfi', ENNReal.coe_lt_top⟩).ne]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Set/Variantceb9b24b9c5df474beb72d7ac8ce9a67af7229187cd7c8c2ab5ca8887b160e4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Set/Variantceb9b24b9c5df474beb72d7ac8ce9a67af7229187cd7c8c2ab5ca8887b160e4f.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44c0192c42240884d8c5ec272a56c3ae52098d06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
