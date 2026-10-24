# exp_mem_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f7dc8bc-45a0-c298-1aae-7085cbe82f86",
  "kind": "theorem",
  "lexical_name": "exp_mem_exp",
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
  "slug": "exp-mem-exp--8b6fc33e0ddddf4bd779ad9d",
  "source": {
    "blob": "63c1901026c6855fadc702ac7372ab4733738167",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 480,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant2c7ed183ce1f7a9f4cd76b0c902f9428632369f66e2468dacaeca5570a3bac7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b6fc33e0ddddf4bd779ad9d50a00b0e694f704a30360a1213a3f4bab8dd87d2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant2c7ed183ce1f7a9f4cd76b0c902f9428632369f66e2468dacaeca5570a3bac7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f7dc8bc-45a0-c298-1aae-7085cbe82f86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_mem_exp [RCLike 𝕜] [NormedRing A] [NormedAlgebra 𝕜 A] [CompleteSpace A] (a : A)
    {z : 𝕜} (hz : z ∈ spectrum 𝕜 a) : exp 𝕜 z ∈ spectrum 𝕜 (exp 𝕜 a) := by
  have hexpmul : exp 𝕜 a = exp 𝕜 (a - ↑ₐ z) * ↑ₐ (exp 𝕜 z) := by
    rw [algebraMap_exp_comm z, ← exp_add_of_commute (Algebra.commutes z (a - ↑ₐ z)).symm,
      sub_add_cancel]
  let b := ∑' n : ℕ, ((n + 1).factorial⁻¹ : 𝕜) • (a - ↑ₐ z) ^ n
  have hb : Summable fun n : ℕ => ((n + 1).factorial⁻¹ : 𝕜) • (a - ↑ₐ z) ^ n := by
    refine .of_norm_bounded_eventually _ (Real.summable_pow_div_factorial ‖a - ↑ₐ z‖) ?_
    filter_upwards [Filter.eventually_cofinite_ne 0] with n hn
    rw [norm_smul, mul_comm, norm_inv, RCLike.norm_natCast, ← div_eq_mul_inv]
    exact div_le_div₀ (pow_nonneg (norm_nonneg _) n) (norm_pow_le' (a - ↑ₐ z) (zero_lt_iff.mpr hn))
      (mod_cast Nat.factorial_pos n) (mod_cast Nat.factorial_le (lt_add_one n).le)
  have h₀ : (∑' n : ℕ, ((n + 1).factorial⁻¹ : 𝕜) • (a - ↑ₐ z) ^ (n + 1)) = (a - ↑ₐ z) * b := by
    simpa only [mul_smul_comm, pow_succ'] using hb.tsum_mul_left (a - ↑ₐ z)
  have h₁ : (∑' n : ℕ, ((n + 1).factorial⁻¹ : 𝕜) • (a - ↑ₐ z) ^ (n + 1)) = b * (a - ↑ₐ z) := by
    simpa only [pow_succ, Algebra.smul_mul_assoc] using hb.tsum_mul_right (a - ↑ₐ z)
  have h₃ : exp 𝕜 (a - ↑ₐ z) = 1 + (a - ↑ₐ z) * b := by
    rw [exp_eq_tsum]
    convert (expSeries_summable' (𝕂 := 𝕜) (a - ↑ₐ z)).tsum_eq_zero_add
    · simp only [Nat.factorial_zero, Nat.cast_one, inv_one, pow_zero, one_smul]
    · exact h₀.symm
  rw [spectrum.mem_iff, IsUnit.sub_iff, ← one_mul (↑ₐ (exp 𝕜 z)), hexpmul, ← _root_.sub_mul,
    Commute.isUnit_mul_iff (Algebra.commutes (exp 𝕜 z) (exp 𝕜 (a - ↑ₐ z) - 1)).symm,
    sub_eq_iff_eq_add'.mpr h₃, Commute.isUnit_mul_iff (h₀ ▸ h₁ : (a - ↑ₐ z) * b = b * (a - ↑ₐ z))]
  exact not_and_of_not_left _ (not_and_of_not_left _ ((not_iff_not.mpr IsUnit.sub_iff).mp hz))

end ExpMapping

end spectrum

namespace AlgHom

section NormedField

variable {F : Type*} [NormedField 𝕜] [NormedRing A] [NormedAlgebra 𝕜 A] [CompleteSpace A]

local notation "↑ₐ" => algebraMap 𝕜 A

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant2c7ed183ce1f7a9f4cd76b0c902f9428632369f66e2468dacaeca5570a3bac7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant2c7ed183ce1f7a9f4cd76b0c902f9428632369f66e2468dacaeca5570a3bac7e.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63c1901026c6855fadc702ac7372ab4733738167` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
