# gamma_gram_integrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b7e9132-029a-3907-e168-845920e32cd4",
  "kind": "theorem",
  "lexical_name": "gamma_gram_integrand_integrable",
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
  "slug": "gamma-gram-integrand-integrable--7c749aeb6945f96c3966842f",
  "source": {
    "blob": "c6809202381899a41d04fc351e8aa05d5c4ffec1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 144,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2ArithmeticGammaI/Variantee342cac4d09b115cc936836046e1944e8aea8235efc288d5606b6827cc1c700.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c749aeb6945f96c3966842ffcaa8b12f287c6423a790b56ef48c424956f8e13",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2ArithmeticGammaI/Variantee342cac4d09b115cc936836046e1944e8aea8235efc288d5606b6827cc1c700.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b7e9132-029a-3907-e168-845920e32cd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gamma_gram_integrand_integrable (ξ : ℝ) :
    IntegrableOn (gammaGramIntegrand ξ) (Ioi 0) := by
  have hm : AEStronglyMeasurable (gammaGramIntegrand ξ) (volume.restrict (Ioi 0)) := by
    change AEStronglyMeasurable (fun t ↦ gammaGramIntegrand ξ t) _
    simp_rw [gamma_gram_integrand_eq_cosine]
    unfold gammaDirichletDensity
    fun_prop
  have hL : (∫⁻ t in Ioi (0 : ℝ), ENNReal.ofReal (gammaGramIntegrand ξ t)) =
      ENNReal.ofReal (∑' n : ℕ, kernel (ξ / 2) ((n : ℝ) + 1 / 4)) := by
    calc
      _ = ∫⁻ t in Ioi (0 : ℝ), ∑' n : ℕ, ENNReal.ofReal (gammaDifferenceAtom ξ n t) := by
        apply lintegral_congr_ae
        filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
        rw [← gamma_difference_atoms_tsum ξ t ht,
          ENNReal.ofReal_tsum_of_nonneg (gamma_difference_atom_nonneg ξ · t)
            (gamma_difference_atoms_summable ξ t ht)]
      _ = ∑' n : ℕ, ∫⁻ t in Ioi (0 : ℝ),
          ENNReal.ofReal (gammaDifferenceAtom ξ n t) := by
        apply lintegral_tsum
        intro n
        unfold gammaDifferenceAtom
        fun_prop
      _ = ∑' n : ℕ, ENNReal.ofReal (kernel (ξ / 2) ((n : ℝ) + 1 / 4)) := by
        apply tsum_congr
        intro n
        rw [← ofReal_integral_eq_lintegral_ofReal (gamma_difference_atom_integrable ξ n)
          (Filter.Eventually.of_forall (gamma_difference_atom_nonneg ξ n)),
          gamma_difference_atom_integral]
      _ = _ := (ENNReal.ofReal_tsum_of_nonneg (fun n ↦ kernel_nonneg _ _ (by positivity))
        (kernel_summable _ _ (by norm_num))).symm
  refine ⟨hm, (hasFiniteIntegral_iff_ofReal ?_).mpr ?_⟩
  · filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact gamma_gram_integrand_nonneg ξ t ht
  · rw [hL]
    exact ENNReal.ofReal_lt_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2ArithmeticGammaI/Variantee342cac4d09b115cc936836046e1944e8aea8235efc288d5606b6827cc1c700.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2ArithmeticGammaI/Variantee342cac4d09b115cc936836046e1944e8aea8235efc288d5606b6827cc1c700.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6809202381899a41d04fc351e8aa05d5c4ffec1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
