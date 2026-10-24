# centeredTwistedPsiMellin_eq_LSeries_sub_principal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "290f5ffc4bea1385f961f99cf14b89fcba315c8e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 412,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31816b88-57b2-eef8-40e8-e75285076fd2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:045a771b-56ea-d000-472a-a9b0d3056000",
  "kind": "theorem",
  "lexical_name": "centeredTwistedPsiMellin_eq_LSeries_sub_principal",
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
  "slug": "centeredtwistedpsimellin-eq-lseries-sub-principal--aca4c3d8b18e27eec0fb74e9",
  "source": {
    "blob": "290f5ffc4bea1385f961f99cf14b89fcba315c8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 516,
    "line": 412,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aca4c3d8b18e27eec0fb74e924dbfb44f1fd42c360d4ba4ec957bb2a0437265c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:045a771b-56ea-d000-472a-a9b0d3056000`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–516.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem centeredTwistedPsiMellin_eq_LSeries_sub_principal
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    {s : ℂ} (hs : 1 < s.re) :
    centeredTwistedPsiMellin χ s =
      LSeries
          ((fun n : ℕ ↦ χ n) *
            (fun n : ℕ ↦ (ArithmeticFunction.vonMangoldt n : ℂ))) s -
        dirichletPrincipalIndicator χ * s / (s - 1) := by
  have hCenteredIntegral :
      mellin (centeredTwistedPsiStep χ) (-s) =
        ∫ t : ℝ in Ioi 1,
          (t : ℂ) ^ (-(s + 1)) *
            (twistedPsi χ ⌊t⌋₊ -
              dirichletPrincipalIndicator χ * (t : ℂ)) := by
    unfold mellin
    rw [setIntegral_eq_of_subset_of_forall_sdiff_eq_zero measurableSet_Ioi
      (show Ici (1 : ℝ) ⊆ Ioi 0 by
        intro t ht
        change 1 ≤ t at ht
        exact zero_lt_one.trans_le ht)]
    · rw [integral_Ici_eq_integral_Ioi]
      apply setIntegral_congr_fun measurableSet_Ioi
      intro t ht
      have ht1 : 1 ≤ t := le_of_lt ht
      simp only [smul_eq_mul, centeredTwistedPsiStep, if_pos ht1]
      rw [show -s - 1 = -(s + 1) by ring]
    · intro t ht
      have htnot : ¬ 1 ≤ t := ht.2
      simp [centeredTwistedPsiStep, htnot]
  rw [centeredTwistedPsiMellin, hCenteredIntegral]
  have hTwisted : IntegrableOn
      (fun t : ℝ ↦ (t : ℂ) ^ (-(s + 1)) * twistedPsi χ ⌊t⌋₊)
      (Ioi 1) := by
    exact (twistedPsiKernel_integrable χ hs).congr_fun
      (fun t ht ↦ mul_comm _ _) measurableSet_Ioi
  have hMain := principalMellinKernel_integrable χ hs
  rw [show (∫ t : ℝ in Ioi 1,
        (t : ℂ) ^ (-(s + 1)) *
          (twistedPsi χ ⌊t⌋₊ -
            dirichletPrincipalIndicator χ * (t : ℂ))) =
      (∫ t : ℝ in Ioi 1,
        (t : ℂ) ^ (-(s + 1)) * twistedPsi χ ⌊t⌋₊) -
      ∫ t : ℝ in Ioi 1,
        (t : ℂ) ^ (-(s + 1)) *
          (dirichletPrincipalIndicator χ * (t : ℂ)) by
    rw [← integral_sub hTwisted hMain]
    congr 1
    funext t
    ring]
  have hMainIntegral :
      (∫ t : ℝ in Ioi 1,
        (t : ℂ) ^ (-(s + 1)) *
          (dirichletPrincipalIndicator χ * (t : ℂ))) =
        dirichletPrincipalIndicator χ / (s - 1) := by
    have hcongr : ∀ t ∈ Ioi (1 : ℝ),
        (t : ℂ) ^ (-(s + 1)) *
            (dirichletPrincipalIndicator χ * (t : ℂ)) =
          dirichletPrincipalIndicator χ * (t : ℂ) ^ (-s) := by
      intro t ht
      have ht0 : (t : ℂ) ≠ 0 :=
        ofReal_ne_zero.mpr (ne_of_gt (zero_lt_one.trans ht))
      rw [show -(s + 1) = -s - 1 by ring, cpow_sub _ _ ht0]
      simp only [cpow_one]
      calc
        (t : ℂ) ^ (-s) / (t : ℂ) *
            (dirichletPrincipalIndicator χ * (t : ℂ)) =
            (t : ℂ) ^ (-s) * dirichletPrincipalIndicator χ := by
              field_simp [ht0]
        _ = _ := mul_comm _ _
    rw [setIntegral_congr_fun measurableSet_Ioi hcongr,
      integral_const_mul,
      integral_Ioi_cpow_of_lt (by simp; linarith) zero_lt_one]
    simp only [ofReal_one, one_cpow]
    rw [show -s + 1 = -(s - 1) by ring]
    simp only [div_eq_mul_inv, inv_neg]
    ring
  rw [hMainIntegral, mul_sub]
  have hUncenteredIntegral :
      mellin (uncenteredTwistedPsiStep χ) (-s) =
        ∫ t : ℝ in Ioi 1,
          (t : ℂ) ^ (-(s + 1)) * twistedPsi χ ⌊t⌋₊ := by
    unfold mellin
    rw [setIntegral_eq_of_subset_of_forall_sdiff_eq_zero measurableSet_Ioi
      (show Ici (1 : ℝ) ⊆ Ioi 0 by
        intro t ht
        change 1 ≤ t at ht
        exact zero_lt_one.trans_le ht)]
    · rw [integral_Ici_eq_integral_Ioi]
      apply setIntegral_congr_fun measurableSet_Ioi
      intro t ht
      have ht1 : 1 ≤ t := le_of_lt ht
      simp only [smul_eq_mul, uncenteredTwistedPsiStep, if_pos ht1]
      rw [show -s - 1 = -(s + 1) by ring]
    · intro t ht
      have htnot : ¬ 1 ≤ t := ht.2
      simp [uncenteredTwistedPsiStep, htnot]
  rw [← hUncenteredIntegral,
    ← twistedVonMangoldtLSeries_eq_uncenteredMellin χ hs]
  ring

/-- On the half-plane of absolute convergence, the literal centered Mellin
transform is exactly the negative logarithmic derivative of the canonical
pole-removed `L`-function, with the constant principal correction exposed.
This is the analytic identity needed by the continued first-order ODE. -/
@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `290f5ffc4bea1385f961f99cf14b89fcba315c8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
