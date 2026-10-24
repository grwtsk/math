# Complex.volume_sum_rpow_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2ea088e-304c-f376-5870-cbbf170ef1ab",
  "kind": "theorem",
  "lexical_name": "Complex.volume_sum_rpow_lt",
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
  "slug": "complex-volume-sum-rpow-lt--fb8211c69deccf6e4607c89a",
  "source": {
    "blob": "77c7d855709f769ed7cc2ec76a321485e4b794ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 265,
    "path": "GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variantade94fb3d2d922da54b47fdc6ebe72d07c4917627480a2653aa76dbeeda6719f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb8211c69deccf6e4607c89a2100cc8c471a355aa08ab23d33cfddd30003ce3d",
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

Occurrence: `result:a2ea088e-304c-f376-5870-cbbf170ef1ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Complex.volume_sum_rpow_lt [Nonempty ι] {p : ℝ} (hp : 1 ≤ p) (r : ℝ) :
    volume {x : ι → ℂ | (∑ i, ‖x i‖ ^ p) ^ (1 / p) < r} = (.ofReal r) ^ (2 * card ι) *
      .ofReal ((π * Real.Gamma (2 / p + 1)) ^ card ι / Real.Gamma (2 * card ι / p + 1)) := by
  have h₁ (x : ι → ℂ) : 0 ≤ ∑ i, ‖x i‖ ^ p := by positivity
  have h₂ : ∀ x : ι → ℂ, 0 ≤ (∑ i, ‖x i‖ ^ p) ^ (1 / p) := fun x => rpow_nonneg (h₁ x) _
  obtain hr | hr := le_or_gt r 0
  · have : {x : ι → ℂ | (∑ i, ‖x i‖ ^ p) ^ (1 / p) < r} = ∅ := by
      ext x
      refine ⟨fun hx => ?_, fun hx => hx.elim⟩
      exact not_le.mpr (lt_of_lt_of_le (Set.mem_ofPred.mp hx) hr) (h₂ x)
    rw [this, measure_empty, ← zero_eq_ofReal.mpr hr, zero_pow Fin.pos'.ne', zero_mul]
  · rw [← Complex.volume_sum_rpow_lt_one _ hp, ← ENNReal.ofReal_pow (le_of_lt hr)]
    convert! addHaar_smul_of_nonneg volume (le_of_lt hr) {x : ι → ℂ | ∑ i, ‖x i‖ ^ p < 1} using 2
    · simp_rw [← Set.preimage_smul_inv₀ (ne_of_gt hr), Set.preimage_ofPred_eq, Pi.smul_apply,
        norm_smul, mul_rpow (norm_nonneg _) (norm_nonneg _), Real.norm_eq_abs, abs_inv, inv_rpow
        (abs_nonneg _), ← Finset.mul_sum, abs_eq_self.mpr (le_of_lt hr), inv_mul_lt_iff₀
        (rpow_pos_of_pos hr _), mul_one, ← rpow_lt_rpow_iff (rpow_nonneg (h₁ _) _)
        (le_of_lt hr) (by linarith : 0 < p), ← rpow_mul (h₁ _), div_mul_cancel₀ _
        (ne_of_gt (by linarith) : p ≠ 0), Real.rpow_one]
    · simp_rw [finrank_pi_fintype ℝ, Complex.finrank_real_complex, Finset.sum_const, smul_eq_mul,
        mul_comm, Fintype.card]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/VolumeOfBalls/Variantade94fb3d2d922da54b47fdc6ebe72d07c4917627480a2653aa76dbeeda6719f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variantade94fb3d2d922da54b47fdc6ebe72d07c4917627480a2653aa76dbeeda6719f.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77c7d855709f769ed7cc2ec76a321485e4b794ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
