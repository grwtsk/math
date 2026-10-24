# MeasureTheory.volume_sum_rpow_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3fd5449-8fe4-5853-d257-a045872d8d09",
  "kind": "theorem",
  "lexical_name": "MeasureTheory.volume_sum_rpow_lt_one",
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
  "slug": "measuretheory-volume-sum-rpow-lt-one--0b4edea83d3fb5889411cbae",
  "source": {
    "blob": "77c7d855709f769ed7cc2ec76a321485e4b794ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 160,
    "path": "GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variantade94fb3d2d922da54b47fdc6ebe72d07c4917627480a2653aa76dbeeda6719f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b4edea83d3fb5889411cbaebea6505066ae6e68681a6f80bad2e890a35028bd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/VolumeOfBalls/Variantade94fb3d2d922da54b47fdc6ebe72d07c4917627480a2653aa76dbeeda6719f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3fd5449-8fe4-5853-d257-a045872d8d09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasureTheory.volume_sum_rpow_lt_one (hp : 1 ≤ p) :
    volume {x : ι → ℝ | ∑ i, |x i| ^ p < 1} =
      .ofReal ((2 * Gamma (1 / p + 1)) ^ card ι / Gamma (card ι / p + 1)) := by
  have h₁ : 0 < p := by linarith
  have : (ENNReal.ofReal p).toReal = p := toReal_ofReal (le_of_lt h₁)
  have h₂ (x : ι → ℝ) : 0 ≤ ∑ i, |x i| ^ p := by positivity
  -- We collect facts about `Lp` norms that will be used in `measure_lt_one_eq_integral_div_gamma`
  have eq_norm (x : ι → ℝ) : ‖toLp (.ofReal p) x‖ = (∑ i, |x i| ^ p) ^ (1 / p) := by
    simp [PiLp.norm_eq_sum (f := toLp (.ofReal p) x) (this.symm ▸ h₁), this]
  have : Fact (1 ≤ ENNReal.ofReal p) := fact_iff.mpr (ofReal_one ▸ (ofReal_le_ofReal hp))
  have nm_zero : ‖toLp (.ofReal p) (0 : ι → ℝ)‖ = 0 := norm_zero
  have eq_zero (x : ι → ℝ) : ‖toLp (.ofReal p) x‖ = 0 ↔ x = 0 :=
    norm_eq_zero.trans (toLp_eq_zero _)
  have nm_neg := fun x : ι → ℝ => norm_neg (toLp (.ofReal p) x)
  have nm_add := fun x y : ι → ℝ => norm_add_le (toLp (.ofReal p) x) (toLp (.ofReal p) y)
  have nm_smul := fun (r : ℝ) (x : ι → ℝ) =>
    norm_smul_le (β := PiLp (.ofReal p) (fun _ : ι => ℝ)) r (toLp (.ofReal p) x)
  simp_rw [← toLp_neg, ← toLp_add, ← toLp_smul, eq_norm,
    norm_eq_abs] at eq_zero nm_zero nm_neg nm_add nm_smul
  -- We use `measure_lt_one_eq_integral_div_gamma` with `g` equals to the norm `L_p`
  convert!
    (measure_lt_one_eq_integral_div_gamma (volume : Measure (ι → ℝ)) (g := fun x =>
      (∑ i, |x i| ^ p) ^ (1 / p)) nm_zero nm_neg nm_add (eq_zero _).mp (fun r x => nm_smul r x)
      (by linarith : 0 < p)) using 4
  · rw [rpow_lt_one_iff' _ (one_div_pos.mpr h₁)]
    positivity
  · simp_rw [← rpow_mul (h₂ _), div_mul_cancel₀ _ (ne_of_gt h₁), Real.rpow_one,
      ← Finset.sum_neg_distrib, exp_sum]
    rw [integral_fintype_prod_volume_eq_pow fun x : ℝ => exp (- |x| ^ p), integral_comp_abs
      (f := fun x => exp (- x ^ p)), integral_exp_neg_rpow h₁]
  · rw [finrank_fintype_fun_eq_card]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/VolumeOfBalls/Variantade94fb3d2d922da54b47fdc6ebe72d07c4917627480a2653aa76dbeeda6719f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variantade94fb3d2d922da54b47fdc6ebe72d07c4917627480a2653aa76dbeeda6719f.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77c7d855709f769ed7cc2ec76a321485e4b794ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
