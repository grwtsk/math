# original_pickup_laplace_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fe65bec-753e-e3a8-c354-3a370919fa7a",
  "kind": "theorem",
  "lexical_name": "original_pickup_laplace_integrable",
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
  "slug": "original-pickup-laplace-integrable--6e4a4402414281e8d2977f70",
  "source": {
    "blob": "bf694380e233e32eeb49979931e72540d598cfbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 172,
    "path": "GRWTSK/NumberTheory/Moebius/LaplaceDirichletSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e4a4402414281e8d2977f70776decd4746347df14ab9fa015c815cdf631e0e8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/LaplaceDirichletSeries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fe65bec-753e-e3a8-c354-3a370919fa7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_pickup_laplace_integrable {z : ℂ} (hz : 1 / 2 < z.re) :
    IntegrableOn (fun t : ℝ ↦ Complex.exp (-z * (t : ℂ)) * (pickup t : ℂ)) (Ioi 0) := by
  have positive : 0 < z.re := by linarith
  have termsIntegrable := fun n ↦ moebius_laplace_term_integrable n positive
  have normsSummable := summable_integrated_norm_moebius_laplace_term hz
  have normIntegral (n : ℕ) :
      (∫⁻ t in Ioi 0, ‖moebiusLaplaceTerm n z t‖ₑ) =
        ‖∫ t in Ioi 0, ‖moebiusLaplaceTerm n z t‖‖ₑ := by
    dsimp [enorm]
    rw [lintegral_coe_eq_integral _ (termsIntegrable n).norm,
      coe_nnreal_eq, coe_nnnorm,
      Real.norm_of_nonneg (integral_nonneg (fun _ ↦ norm_nonneg _))]
    simp only [coe_nnnorm]
  have integratedNormsFinite : (∑' n, ∫⁻ t in Ioi 0, ‖moebiusLaplaceTerm n z t‖ₑ) ≠ ∞ := by
    simp_rw [normIntegral]
    exact ENNReal.tsum_coe_ne_top_iff_summable.2
      (NNReal.summable_coe.1 normsSummable.abs)
  have sumIntegrable : IntegrableOn (fun t ↦ ∑' n, moebiusLaplaceTerm n z t) (Ioi 0) := by
    refine ⟨AEStronglyMeasurable.tsum (fun n ↦ (termsIntegrable n).1), ?_⟩
    rw [hasFiniteIntegral_iff_enorm]
    calc
      _ ≤ ∫⁻ t in Ioi 0, ∑' n, ‖moebiusLaplaceTerm n z t‖ₑ :=
        lintegral_mono (fun _ ↦ enorm_tsum_le_tsum_enorm)
      _ = ∑' n, ∫⁻ t in Ioi 0, ‖moebiusLaplaceTerm n z t‖ₑ :=
        lintegral_tsum (fun n ↦ (termsIntegrable n).1.enorm)
      _ < ∞ := integratedNormsFinite.lt_top
  exact sumIntegrable.congr_fun
    (fun t ht ↦ (moebius_laplace_hasSum_pickup ht.le z).tsum_eq) measurableSet_Ioi

/-- The Bochner exchange uses individual integrability and summed integrated norms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/LaplaceDirichletSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/LaplaceDirichletSeries.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf694380e233e32eeb49979931e72540d598cfbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
