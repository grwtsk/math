# eLpNorm_le_eLpNorm_fderiv_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adcef2b0-dc93-0a08-016a-2a0f6c96f4ca",
  "kind": "theorem",
  "lexical_name": "eLpNorm_le_eLpNorm_fderiv_of_le",
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
  "slug": "elpnorm-le-elpnorm-fderiv-of-le--4a9406d792b3633450f40353",
  "source": {
    "blob": "7f77ea7698c69b09fd175fb6d232115ceab6fe56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 723,
    "line": 666,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a9406d792b3633450f403530bdb8b98002c60d3a6aee5437f54b3a269914c01",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adcef2b0-dc93-0a08-016a-2a0f6c96f4ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 666–723.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_le_eLpNorm_fderiv_of_le [FiniteDimensional ℝ F]
    {u : E → F} {s : Set E} (hu : ContDiff ℝ 1 u) (h2u : u.support ⊆ s)
    {p q : ℝ≥0} (hp : 1 ≤ p) (h2p : p < finrank ℝ E)
    (hpq : p⁻¹ - (finrank ℝ E : ℝ)⁻¹ ≤ (q : ℝ)⁻¹)
    (hs : Bornology.IsBounded s) :
    eLpNorm u q μ ≤ eLpNormLESNormFDerivOfLeConst F μ s p q * eLpNorm (fderiv ℝ u) p μ := by
  by_cases hq0 : q = 0
  · simp [hq0]
  let p' : ℝ≥0 := (p⁻¹ - (finrank ℝ E : ℝ≥0)⁻¹)⁻¹
  have hp' : p'⁻¹ = p⁻¹ - (finrank ℝ E : ℝ)⁻¹ := by
    rw [inv_inv, NNReal.coe_sub]
    · simp
    · #adaptation_note /-- nightly-2024-11-20
      This should just be `gcongr`, but this is not working as of nightly-2024-11-20.
      Possibly related to #19262 (since this proof fails at `with_reducible_and_instances`). -/
      exact inv_anti₀ (by positivity) h2p.le
  have : (q : ℝ≥0∞) ≤ p' := by
    have H : (p' : ℝ)⁻¹ ≤ (↑q)⁻¹ := trans hp' hpq
    norm_cast at H ⊢
    rwa [inv_le_inv₀] at H
    · dsimp
      have : 0 < p⁻¹ - (finrank ℝ E : ℝ≥0)⁻¹ := by
        simp only [tsub_pos_iff_lt]
        #adaptation_note /-- nightly-2024-11-20
        This should just be `gcongr`, but this is not working as of nightly-2024-11-20.
        Possibly related to #19262 (since this proof fails at `with_reducible_and_instances`). -/
        exact inv_strictAnti₀ (by positivity) h2p
      positivity
    · positivity
  set t := (μ s).toNNReal ^ (1 / q - 1 / p' : ℝ)
  let C := SNormLESNormFDerivOfEqConst F μ p
  calc eLpNorm u q μ
      = eLpNorm u q (μ.restrict s) := by rw [eLpNorm_restrict_eq_of_support_subset h2u]
    _ ≤ eLpNorm u p' (μ.restrict s) * t := by
        convert eLpNorm_le_eLpNorm_mul_rpow_measure_univ this hu.continuous.aestronglyMeasurable
        rw [ENNReal.coe_rpow_of_nonneg]
        · simp [ENNReal.coe_toNNReal hs.measure_lt_top.ne]
        · rw [one_div, one_div]
          norm_cast
          rw [hp']
          simpa using hpq
    _ = eLpNorm u p' μ * t := by rw [eLpNorm_restrict_eq_of_support_subset h2u]
    _ ≤ (C * eLpNorm (fderiv ℝ u) p μ) * t := by
        have h2u' : HasCompactSupport u := by
          apply HasCompactSupport.of_support_subset_isCompact hs.isCompact_closure
          exact h2u.trans subset_closure
        rel [eLpNorm_le_eLpNorm_fderiv_of_eq μ hu h2u' hp (mod_cast (zero_le p).trans_lt h2p) hp']
    _ = eLpNormLESNormFDerivOfLeConst F μ s p q * eLpNorm (fderiv ℝ u) p μ := by
      simp_rw [eLpNormLESNormFDerivOfLeConst, ENNReal.coe_mul]; ring

/-- The **Gagliardo-Nirenberg-Sobolev inequality**.  Let `u` be a continuously differentiable
function `u` supported in a bounded set `s` in a normed space `E` of finite dimension
`n`, equipped with Haar measure, and let `1 < p < n`.
Then the `Lᵖ` norm of `u` is bounded above by a constant times the `Lᵖ` norm of
the Fréchet derivative of `u`.

Note: The codomain of `u` needs to be a finite dimensional normed space.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantce4fb0abe6759176a083fa822eda125bf487b99f9d6af9fe7aa715f4ec55f39f.lean#L666).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f77ea7698c69b09fd175fb6d232115ceab6fe56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
