# Integrable.integral_eq_integral_Ioc_meas_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5e04f9a-183f-a0f5-c015-dd43a8b7db04",
  "kind": "lemma",
  "lexical_name": "Integrable.integral_eq_integral_Ioc_meas_le",
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
  "slug": "integrable-integral-eq-integral-ioc-meas-le--0916c59e635b7ac2649187a8",
  "source": {
    "blob": "7f7df4ecfb474def3681bb622071838acc047db3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 568,
    "line": 552,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0916c59e635b7ac2649187a853b61a302439c73046b37edbd1920b7d0d0687e3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5e04f9a-183f-a0f5-c015-dd43a8b7db04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–568.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Integrable.integral_eq_integral_Ioc_meas_le {f : α → ℝ} {M : ℝ}
    (f_intble : Integrable f μ) (f_nn : 0 ≤ᵐ[μ] f) (f_bdd : f ≤ᵐ[μ] (fun _ ↦ M)) :
    ∫ ω, f ω ∂μ = ∫ t in Ioc 0 M, μ.real {a : α | t ≤ f a} := by
  rw [f_intble.integral_eq_integral_meas_le f_nn]
  rw [setIntegral_eq_of_subset_of_ae_diff_eq_zero
      nullMeasurableSet_Ioi Ioc_subset_Ioi_self ?_]
  apply Eventually.of_forall (fun t ht ↦ ?_)
  have htM : M < t := by simp_all only [mem_diff, mem_Ioi, mem_Ioc, not_and, not_le]
  have obs : μ {a | M < f a} = 0 := by
    rw [measure_zero_iff_ae_notMem]
    filter_upwards [f_bdd] with a ha using not_lt.mpr ha
  rw [measureReal_def, ENNReal.toReal_eq_zero_iff]
  exact Or.inl <| measure_mono_null (fun a ha ↦ lt_of_lt_of_le htM ha) obs

end LayercakeIntegral

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variant3bef6a5f9792e5c67b85dfc855fd3c907a8dec5af36ddc921e335851df5c63d8.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f7df4ecfb474def3681bb622071838acc047db3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
