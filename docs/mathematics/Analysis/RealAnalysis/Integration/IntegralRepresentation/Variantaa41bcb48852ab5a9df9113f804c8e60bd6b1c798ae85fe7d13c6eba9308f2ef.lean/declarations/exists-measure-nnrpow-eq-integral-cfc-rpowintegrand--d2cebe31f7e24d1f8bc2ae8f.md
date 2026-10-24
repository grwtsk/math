# exists_measure_nnrpow_eq_integral_cfcₙ_rpowIntegrand₁₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f051aa857c8527248c1a1aa9c3b4aa9fe41a0c3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 525,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa41bcb48852ab5a9df9113f804c8e60bd6b1c798ae85fe7d13c6eba9308f2ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:441efd83-c746-65a2-2342-c5c612abf0f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf0acb7a-1757-7559-6dcd-1cb5d40591ee",
  "kind": "lemma",
  "lexical_name": "exists_measure_nnrpow_eq_integral_cfcₙ_rpowIntegrand₁₂",
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
  "slug": "exists-measure-nnrpow-eq-integral-cfc-rpowintegrand--d2cebe31f7e24d1f8bc2ae8f",
  "source": {
    "blob": "1f051aa857c8527248c1a1aa9c3b4aa9fe41a0c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 577,
    "line": 525,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaa41bcb48852ab5a9df9113f804c8e60bd6b1c798ae85fe7d13c6eba9308f2ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2cebe31f7e24d1f8bc2ae8f50270b99df230374996615255e2f022603f21987",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaa41bcb48852ab5a9df9113f804c8e60bd6b1c798ae85fe7d13c6eba9308f2ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf0acb7a-1757-7559-6dcd-1cb5d40591ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–577.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_measure_nnrpow_eq_integral_cfcₙ_rpowIntegrand₁₂ [CompleteSpace A] {p : ℝ≥0}
    (hp : p ∈ Ioo 1 2) :
    ∃ μ : Measure ℝ, ∀ a ∈ Ici (0 : A),
      (IntegrableOn (fun t => cfcₙ (rpowIntegrand₁₂ p t) a) (Ioi 0) μ)
      ∧ a ^ p = ∫ t in Ioi 0, cfcₙ (rpowIntegrand₁₂ p t) a ∂μ := by
  obtain ⟨μ, hμ⟩ := exists_measure_rpow_eq_integral_rpowIntegrand₁₂ hp
  refine ⟨μ, fun a (ha : 0 ≤ a) => ?_⟩
  have hpcoe : (p : ℝ) ∈ Ioo 1 2 := by exact_mod_cast hp
  let f t := rpowIntegrand₁₂ p t
  let maxr := sSup (quasispectrum ℝ a)
  have maxr_nonneg : 0 ≤ maxr :=
    le_csSup_of_le (b := 0) (IsCompact.bddAbove (quasispectrum.isCompact _)) (by simp) le_rfl
  let bound (t : ℝ) := ‖f t maxr‖
  have hf : ContinuousOn (Function.uncurry f) (Ioi (0 : ℝ) ×ˢ quasispectrum ℝ a) :=
    continuousOn_rpowIntegrand₁₂_uncurry hpcoe.1 (quasispectrum ℝ a) (by grind)
  have hbound : ∀ᵐ t ∂μ.restrict (Ioi 0), ∀ z ∈ quasispectrum ℝ a, ‖f t z‖ ≤ bound t := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    intro z hz
    have hz' : 0 ≤ z := by grind
    unfold bound f
    rw [Real.norm_of_nonneg (rpowIntegrand₁₂_nonneg (by grind) (by grind) hz'),
        Real.norm_of_nonneg (rpowIntegrand₁₂_nonneg (by grind) (by grind) maxr_nonneg)]
    refine monotoneOn_rpowIntegrand₁₂ (by grind) (by grind) hz' maxr_nonneg ?_
    exact le_csSup (IsCompact.bddAbove (quasispectrum.isCompact _)) hz
  have hbound_finite_integral : HasFiniteIntegral bound (μ.restrict (Ioi 0)) := by
    rw [hasFiniteIntegral_norm_iff]
    exact (hμ maxr maxr_nonneg).1.2
  have hmapzero : ∀ᵐ (x : ℝ) ∂μ.restrict (Ioi 0), rpowIntegrand₁₂ p x 0 = 0 := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    simp [rpowIntegrand₁₂_zero ht]
  refine ⟨?integrable, ?integral⟩
  case integrable =>
    exact integrableOn_cfcₙ measurableSet_Ioi _ bound a hf hmapzero hbound hbound_finite_integral
  case integral => calc
      a ^ p = cfcₙ (fun x => NNReal.nnrpow x p) a := by
        rw [CFC.nnrpow_def]
      _ = cfcₙ (fun r => ∫ t in Ioi 0, rpowIntegrand₁₂ p t r ∂μ) a := by
        rw [cfcₙ_nnreal_eq_real ..]
        congr! 1 with r hr
        have hr' : 0 ≤ r := by grind
        simp only [sup_of_le_left hr', NNReal.nnrpow_def, NNReal.coe_rpow, coe_toNNReal']
        exact (hμ r hr').2
      _ = ∫ t in Ioi 0, cfcₙ (rpowIntegrand₁₂ p t) a ∂μ :=
        cfcₙ_setIntegral measurableSet_Ioi _ bound a hf hmapzero hbound
          hbound_finite_integral ha.isSelfAdjoint

end NonUnitalCFC

section UnitalCStarAlgebra

variable {A : Type*} [CStarAlgebra A] [PartialOrder A] [StarOrderedRing A]

/-- `rpowIntegrand₀₁ p t` is operator concave for all `p ∈ Ioo 0 1` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaa41bcb48852ab5a9df9113f804c8e60bd6b1c798ae85fe7d13c6eba9308f2ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaa41bcb48852ab5a9df9113f804c8e60bd6b1c798ae85fe7d13c6eba9308f2ef.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f051aa857c8527248c1a1aa9c3b4aa9fe41a0c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
