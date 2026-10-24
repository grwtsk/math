# actualRiesz_quadratic_area_excludes_actual_right_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:663bf41b-57ee-1ab1-4282-55dad0071da9",
  "kind": "theorem",
  "lexical_name": "actualRiesz_quadratic_area_excludes_actual_right_zero",
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
  "slug": "actualriesz-quadratic-area-excludes-actual-right-zero--89282e6ab4f6c42437d10b27",
  "source": {
    "blob": "a959b9e5450cbae96864d759e0e62c2f30fa900b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 126,
    "path": "GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantf2bc163242f882e7ad4427b74b42f85be816f0e5a197cc4475c37732cc16002a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89282e6ab4f6c42437d10b2765ceb769aa09a0f82ca047a91fbd6ba0a527c64d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantf2bc163242f882e7ad4427b74b42f85be816f0e5a197cc4475c37732cc16002a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:663bf41b-57ee-1ab1-4282-55dad0071da9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRiesz_quadratic_area_excludes_actual_right_zero {M R : ℝ}
    (hM : 0 ≤ M) (hR : 1 ≤ R)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2)
    (ρ : (zetaZeros zetaSeam).carrier) : ¬ 1 / 2 < (ρ : ℂ).re := by
  intro hρ
  have hρ0 : (ρ : ℂ) ≠ 0 := by intro h; norm_num [h] at hρ
  have hρ1 : (ρ : ℂ) ≠ 1 := by
    intro h
    have hh := ρ.2.2.2
    simp [h] at hh
  have hz : riemannZeta (ρ : ℂ) = 0 := ρ.2.1
  have ha := poleCleared_analyticAt hρ0
  have hab := extension_analytic hM hR harea hρ
  have he : actualZetaPoleCleared =ᶠ[𝓝 (ρ : ℂ)] fun w => (w - 1) * riemannZeta w := by
    filter_upwards [eventually_ne_nhds hρ0, eventually_ne_nhds hρ1] with w hw0 hw1
    exact actualZetaPoleCleared_eq hw0 hw1
  have hzR : actualZetaPoleCleared (ρ : ℂ) = 0 := by
    rw [actualZetaPoleCleared_eq hρ0 hρ1, hz, mul_zero]
  have ho : analyticOrderAt actualZetaPoleCleared (ρ : ℂ) =
      ((zetaZeros zetaSeam).mult ρ : ℕ∞) := by
    rw [analyticOrderAt_congr he]
    have hm := analyticOrderAt_mul (analyticAt_id.sub analyticAt_const)
      (Zeta23.WeilEF.analyticAt_riemannZeta hρ1)
    have hn : analyticOrderAt (fun w : ℂ => w - 1) (ρ : ℂ) = 0 :=
      (analyticAt_id.sub analyticAt_const).analyticOrderAt_eq_zero.mpr (sub_ne_zero.mpr hρ1)
    simpa only [hn, zero_add] using hm.trans (by
      rw [(actualRiesz_zero_order_and_multiplicity ρ).2])
  have hprod : (fun w => actualZetaPoleCleared w * extensionNumerator w) =ᶠ[𝓝 (ρ : ℂ)]
      (fun w => -deriv actualZetaPoleCleared w) := by
    have hu : {s : ℂ | 1 / 2 < s.re} ∈ 𝓝 (ρ : ℂ) :=
      (isOpen_lt continuous_const Complex.continuous_re).mem_nhds hρ
    filter_upwards [hu] with w hw
    exact actualFixedCenteredRieszLaplace_poleCleared_identity hM hR harea hw
  have hp := analyticOrderAt_congr hprod
  change analyticOrderAt (actualZetaPoleCleared * extensionNumerator) (ρ : ℂ) =
    analyticOrderAt (-deriv actualZetaPoleCleared) (ρ : ℂ) at hp
  rw [analyticOrderAt_neg, analyticOrderAt_mul ha hab] at hp
  have hd := ha.analyticOrderAt_deriv_add_one
  simp only [hzR, sub_zero] at hd
  rw [← hp, ho] at hd
  have hlt : ((zetaZeros zetaSeam).mult ρ : ℕ∞) <
      ((zetaZeros zetaSeam).mult ρ : ℕ∞) +
        analyticOrderAt extensionNumerator (ρ : ℂ) + 1 := by
    calc
      _ < ((zetaZeros zetaSeam).mult ρ : ℕ∞) + 1 := by exact_mod_cast Nat.lt_succ_self _
      _ ≤ _ := by gcongr; exact zero_le _
  exact (ne_of_gt hlt) hd

end FormalResearch.RiemannHypothesis.SourceActualRieszAreaZeroExclusion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantf2bc163242f882e7ad4427b74b42f85be816f0e5a197cc4475c37732cc16002a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantf2bc163242f882e7ad4427b74b42f85be816f0e5a197cc4475c37732cc16002a.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a959b9e5450cbae96864d759e0e62c2f30fa900b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
