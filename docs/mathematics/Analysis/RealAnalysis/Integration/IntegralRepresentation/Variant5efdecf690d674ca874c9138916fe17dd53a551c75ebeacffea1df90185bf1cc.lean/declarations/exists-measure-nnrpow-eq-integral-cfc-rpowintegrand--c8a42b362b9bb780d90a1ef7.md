# exists_measure_nnrpow_eq_integral_cfcₙ_rpowIntegrand₁₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a4e620f-fad0-31db-9853-6825fc8ce6a4",
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
  "slug": "exists-measure-nnrpow-eq-integral-cfc-rpowintegrand--c8a42b362b9bb780d90a1ef7",
  "source": {
    "blob": "443f65af5756061d550fe74ea1d2c4e23305be90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 585,
    "line": 533,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8a42b362b9bb780d90a1ef7cbefec4a65c2d026c44d0d916a04dc10a75273f2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a4e620f-fad0-31db-9853-6825fc8ce6a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–585.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `443f65af5756061d550fe74ea1d2c4e23305be90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
