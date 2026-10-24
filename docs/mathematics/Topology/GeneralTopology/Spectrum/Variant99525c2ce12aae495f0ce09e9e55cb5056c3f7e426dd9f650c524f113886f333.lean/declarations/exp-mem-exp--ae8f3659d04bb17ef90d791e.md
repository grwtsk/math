# exp_mem_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8fc9d56eaa04eb16e57bce8f561607390dfddca9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 400,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47384210-9a68-124f-f5b5-f8bf3fd29892",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:484ac7ab-84c9-d5c9-be6f-029f6a1b844a",
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
  "slug": "exp-mem-exp--ae8f3659d04bb17ef90d791e",
  "source": {
    "blob": "8fc9d56eaa04eb16e57bce8f561607390dfddca9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 400,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae8f3659d04bb17ef90d791e5f534a95565ee36d80845958f6048663debc5e85",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:484ac7ab-84c9-d5c9-be6f-029f6a1b844a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_mem_exp [RCLike 𝕜] [NormedRing A] [NormedAlgebra 𝕜 A] [CompleteSpace A]
    (a : A) {z : 𝕜} (hz : z ∈ spectrum 𝕜 a) : exp z ∈ spectrum 𝕜 (exp a) := by
  let +nondep : NormedAlgebra ℚ A := .restrictScalars ℚ 𝕜 A
  have hexpmul : exp a = exp (a - ↑ₐ z) * ↑ₐ (exp z) := by
    rw [algebraMap_exp_comm z, ← exp_add_of_commute (Algebra.commutes z (a - ↑ₐ z)).symm,
      sub_add_cancel]
  let b := ∑' n : ℕ, ((n + 1).factorial⁻¹ : 𝕜) • (a - ↑ₐ z) ^ n
  have hb : Summable fun n : ℕ => ((n + 1).factorial⁻¹ : 𝕜) • (a - ↑ₐ z) ^ n := by
    refine .of_norm_bounded_eventually (Real.summable_pow_div_factorial ‖a - ↑ₐ z‖) ?_
    filter_upwards [Filter.eventually_cofinite_ne 0] with n hn
    rw [norm_smul, mul_comm, norm_inv, RCLike.norm_natCast, ← div_eq_mul_inv]
    gcongr
    · exact norm_pow_le' _ (pos_iff_ne_zero.mpr hn)
    · exact n.le_succ
  have h₀ : (∑' n : ℕ, ((n + 1).factorial⁻¹ : 𝕜) • (a - ↑ₐ z) ^ (n + 1)) = (a - ↑ₐ z) * b := by
    simpa only [mul_smul_comm, pow_succ'] using hb.tsum_mul_left (a - ↑ₐ z)
  have h₁ : (∑' n : ℕ, ((n + 1).factorial⁻¹ : 𝕜) • (a - ↑ₐ z) ^ (n + 1)) = b * (a - ↑ₐ z) := by
    simpa only [pow_succ, Algebra.smul_mul_assoc] using hb.tsum_mul_right (a - ↑ₐ z)
  have h₃ : exp (a - ↑ₐ z) = 1 + (a - ↑ₐ z) * b := by
    rw [exp_eq_tsum 𝕜]
    convert! (expSeries_summable' (𝕂 := 𝕜) (a - ↑ₐ z)).tsum_eq_zero_add
    · simp only [Nat.factorial_zero, Nat.cast_one, inv_one, pow_zero, one_smul]
    · exact h₀.symm
  rw [spectrum.mem_iff, IsUnit.sub_iff, ← one_mul (↑ₐ (exp z)), hexpmul, ← _root_.sub_mul,
    Commute.isUnit_mul_iff (Algebra.commutes (exp z) (exp (a - ↑ₐ z) - 1)).symm,
    sub_eq_iff_eq_add'.mpr h₃, Commute.isUnit_mul_iff (h₀ ▸ h₁ : (a - ↑ₐ z) * b = b * (a - ↑ₐ z))]
  exact not_and_of_not_left _ (not_and_of_not_left _ ((not_iff_not.mpr IsUnit.sub_iff).mp hz))

end ExpMapping

end spectrum

section quasispectrum

variable [NormedField 𝕜] [NonUnitalNormedRing A] [NormedSpace 𝕜 A]
variable [IsScalarTower 𝕜 A A] [SMulCommClass 𝕜 A A]

open WithLp in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fc9d56eaa04eb16e57bce8f561607390dfddca9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
