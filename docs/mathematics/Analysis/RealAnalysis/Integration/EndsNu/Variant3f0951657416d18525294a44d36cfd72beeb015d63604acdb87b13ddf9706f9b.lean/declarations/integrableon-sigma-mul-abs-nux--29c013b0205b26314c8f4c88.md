# integrableOn_sigma_mul_abs_nuX

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf5e3b6e-e848-8865-8bcf-b3d5c23dc414",
  "kind": "theorem",
  "lexical_name": "integrableOn_sigma_mul_abs_nuX",
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
  "slug": "integrableon-sigma-mul-abs-nux--29c013b0205b26314c8f4c88",
  "source": {
    "blob": "63016c230313d48ce8fede3551c3ee7496c7b37b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 611,
    "line": 580,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29c013b0205b26314c8f4c886cbd55c59988f73367078d07537b7f26072d233e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf5e3b6e-e848-8865-8bcf-b3d5c23dc414`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 580–611.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_sigma_mul_abs_nuX (hνc : Continuous ν) (hF : LocalHypsCoreW cϱ p F)
    (hν : NuBound p B ν) (hT : 1 ≤ p.T) :
    IntegrableOn (fun τ : ℝ =>
      (∑ k ∈ Finset.range p.d, psiA cϱ p (τ - p.tau k)) * |ν τ|) (p.I)ᶜ := by
  have hT0 : 0 < p.T := by linarith
  have hmeas : AEStronglyMeasurable (fun τ : ℝ =>
      (∑ k ∈ Finset.range p.d, psiA cϱ p (τ - p.tau k)) * |ν τ|) volume := by
    apply AEStronglyMeasurable.mul
    · apply Finset.aestronglyMeasurable_fun_sum
      intro k _
      exact (psiA_shift_integrable hF (p.tau k)).aestronglyMeasurable
    · exact hνc.abs.aestronglyMeasurable
  have hnn : ∀ τ, 0 ≤ (∑ k ∈ Finset.range p.d, psiA cϱ p (τ - p.tau k)) * |ν τ| :=
    fun τ => mul_nonneg (Finset.sum_nonneg fun k _ => psiA_nonneg_of hF _) (abs_nonneg _)
  have hcompl : (p.I)ᶜ = Iio p.T ∪ Ioi (2 * p.T) := by
    ext x
    simp only [Setting.I, Zeta23.Iwin, Set.mem_compl_iff, Set.mem_Icc, Set.mem_union, Set.mem_Iio,
      Set.mem_Ioi, not_and_or, not_le]
  rw [hcompl]
  refine IntegrableOn.union ?_ ?_
  · refine Integrable.mono' (((Mtot_integrable (B := B) hF hT0).comp_sub_left p.T).integrableOn)
      hmeas.restrict ?_
    filter_upwards [ae_restrict_mem measurableSet_Iio] with τ hτ
    rw [Real.norm_eq_abs, abs_of_nonneg (hnn τ)]
    exact dom_left hF hν hT0 hτ
  · refine Integrable.mono' (((Mtot_integrable (B := B) hF hT0).comp_sub_right (2 * p.T)).integrableOn)
      hmeas.restrict ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with τ hτ
    rw [Real.norm_eq_abs, abs_of_nonneg (hnn τ)]
    exact dom_right hF hν hT0 hτ

/-- log(2T) = log(4π) + l ≤ l + 12. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean#L580).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63016c230313d48ce8fede3551c3ee7496c7b37b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
