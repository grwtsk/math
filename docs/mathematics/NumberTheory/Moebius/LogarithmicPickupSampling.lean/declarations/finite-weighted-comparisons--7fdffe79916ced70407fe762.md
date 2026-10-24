# finite_weighted_comparisons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2dd51d8a-62bd-eb6c-ad74-a36f3d3cc852",
  "kind": "theorem",
  "lexical_name": "finite_weighted_comparisons",
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
  "slug": "finite-weighted-comparisons--7fdffe79916ced70407fe762",
  "source": {
    "blob": "1eb0558ffdaf4ae826fea883a8c60a3e3fefdb5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 292,
    "path": "GRWTSK/NumberTheory/Moebius/LogarithmicPickupSampling.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fdffe79916ced70407fe7622d54651afd7146da0c5bf140a188e19b4847837c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/LogarithmicPickupSampling.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2dd51d8a-62bd-eb6c-ad74-a36f3d3cc852`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_weighted_comparisons {σ : ℝ} (hσ : -1 < σ) (T : ℝ) :
    ((∫ u in Icc (0 : ℝ) T, Real.exp (-σ * u) * wholePickup u ^ 2) ≤
      2 * (∫ u in Icc (0 : ℝ) T, Real.exp (-σ * u) * sampledPickup u ^ 2) +
        2 / (σ + 1)) ∧
    ((∫ u in Icc (0 : ℝ) T, Real.exp (-σ * u) * sampledPickup u ^ 2) ≤
      2 * (∫ u in Icc (0 : ℝ) T, Real.exp (-σ * u) * wholePickup u ^ 2) +
        2 / (σ + 1)) := by
  have hw : IntegrableOn (fun u : ℝ ↦ Real.exp (-σ * u) * wholePickup u ^ 2)
      (Icc 0 T) :=
    ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      (wholePickup_continuous.pow 2)).integrableOn_Icc
  have hs := sampled_weighted_square_integrableOn_Icc hσ T
  have heAll := weighted_sampling_error_integrable hσ
  have he := heAll.mono_set (show Icc (0 : ℝ) T ⊆ Ici 0 from fun _ hu ↦ hu.1)
  have herr : (∫ u in Icc (0 : ℝ) T,
      Real.exp (-σ * u) * (wholePickup u - sampledPickup u) ^ 2) ≤ 1 / (σ + 1) := by
    apply le_trans ?_ (weighted_sampling_error_integral_le hσ)
    apply setIntegral_mono_set heAll
      (ae_of_all _ (fun u ↦ mul_nonneg (Real.exp_pos _).le (sq_nonneg _)))
    exact ae_of_all _ (fun u hu ↦ hu.1)
  constructor
  · have hb := integral_mono_ae hw ((hs.const_mul 2).add (he.const_mul 2))
      (ae_of_all _ (fun u ↦ (weighted_square_comparisons σ u).1))
    dsimp only [Pi.add_apply] at hb
    rw [integral_add (hs.const_mul 2) (he.const_mul 2), integral_const_mul,
      integral_const_mul] at hb
    apply hb.trans
    apply add_le_add le_rfl
    simpa only [mul_one_div] using
      (mul_le_mul_of_nonneg_left herr (by norm_num : (0 : ℝ) ≤ 2))
  · have hb := integral_mono_ae hs ((hw.const_mul 2).add (he.const_mul 2))
      (ae_of_all _ (fun u ↦ (weighted_square_comparisons σ u).2))
    dsimp only [Pi.add_apply] at hb
    rw [integral_add (hw.const_mul 2) (he.const_mul 2), integral_const_mul,
      integral_const_mul] at hb
    apply hb.trans
    apply add_le_add le_rfl
    simpa only [mul_one_div] using
      (mul_le_mul_of_nonneg_left herr (by norm_num : (0 : ℝ) ≤ 2))

/-- Cofinality remains universal. The arithmetic sampled-energy premise is still open. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/LogarithmicPickupSampling.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/LogarithmicPickupSampling.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1eb0558ffdaf4ae826fea883a8c60a3e3fefdb5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
