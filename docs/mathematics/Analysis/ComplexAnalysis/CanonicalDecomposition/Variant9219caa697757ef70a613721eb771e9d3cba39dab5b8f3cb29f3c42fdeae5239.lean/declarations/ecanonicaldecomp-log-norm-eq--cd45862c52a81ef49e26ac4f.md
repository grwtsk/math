# ECanonicalDecomp.log_norm_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14a6318e-e9d8-3e86-95e8-4c43d5f15dbc",
  "kind": "lemma",
  "lexical_name": "ECanonicalDecomp.log_norm_eq",
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
  "slug": "ecanonicaldecomp-log-norm-eq--cd45862c52a81ef49e26ac4f",
  "source": {
    "blob": "363bc7fdb88c837c745e0b26a1cdb8c8bec3923d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 679,
    "line": 629,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd45862c52a81ef49e26ac4fcb6c236fccdf139abca2d9d3cef8098b7cc028e0",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14a6318e-e9d8-3e86-95e8-4c43d5f15dbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 629–679.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ECanonicalDecomp.log_norm_eq
    {f h : ℂ → E} (D : ECanonicalDecomp f h R) (h₁w : w ∈ closedBall 0 R)
    (h₂w : meromorphicOrderAt f w = 0)
    (hR : 0 < R) :
    Real.log ‖h w‖ = ((∑ᶠ i, (divisor f (ball 0 R) i) * Real.log ‖canonicalFactor R i w‖)
          - (∑ᶠ i, (divisor f (sphere 0 R) i) * Real.log ‖w - i‖))
          + Real.log ‖meromorphicTrailingCoeffAt f w‖ := by
  -- Finiteness properties and side results used throughout the proof
  let B₀R := ball (0 : ℂ) R
  let S₀R := sphere (0 : ℂ) R
  lift (divisor f S₀R).support to Finset ℂ using divisor_sphere_support_finite with t₁ ht₁
  lift (divisor f B₀R).support to Finset ℂ using D.meromorphicOn.divisor_ball_support_finite
    with t₂ ht₂
  calc Real.log ‖h w‖
    _ = log ‖((∏ᶠ (i : ℂ), canonicalFactor R i w ^ (divisor f B₀R) i)
        * ∏ᶠ (i : ℂ), (w - i) ^ (-divisor f S₀R) i) • meromorphicTrailingCoeffAt f w‖ := by
      rw [D.eq_smul_meromorphicTrailingCoeffAt_of_meromorphicOrderAt
        h₁w h₂w hR, finprod_eq_prod_of_mulSupport_subset (s := t₂) _ (by aesop)]
    _ = log ‖((∏ i ∈ t₂, canonicalFactor R i w ^ (divisor f B₀R) i)
        * ∏ i ∈ t₁, (w - i) ^ (-divisor f S₀R) i) • meromorphicTrailingCoeffAt f w‖ := by
      rw [finprod_eq_prod_of_mulSupport_subset (s := t₂) _ _,
        finprod_eq_prod_of_mulSupport_subset (s := t₁) _ _]
      <;> simpa [ht₁, ht₂] using mulSupport_pow_subset_support ..
    _ =  ∑ i ∈ t₂, log (‖canonicalFactor R i w‖ ^ (divisor f B₀R) i)
        + ∑ i ∈ t₁, log (‖w - i‖ ^ (-divisor f S₀R) i) + log ‖meromorphicTrailingCoeffAt f w‖ := by
      have η₀ (x) (hx : x ∈ t₁) : ‖w - x‖ ^ (-divisor f S₀R) x ≠ 0 := by
        refine zpow_ne_zero _ ?_
        rw [norm_ne_zero_iff, sub_ne_zero]
        rintro rfl
        simp_all [divisor_def, ← Finset.mem_coe]
      have η₁ (x) (hx : x ∈ t₂) : ‖canonicalFactor R x w‖ ^ (divisor f B₀R) x ≠ 0 := by
        refine zpow_ne_zero _ ?_
        rw [norm_ne_zero_iff]
        have h₁x : x ∈ ball 0 R := (divisor f B₀R).supportWithinDomain (ht₂ ▸ hx)
        refine canonicalFactor_ne_zero h₁x h₁w fun _ ↦ ?_
        simp_all [divisor_def, ← Finset.mem_coe]
      simp_rw [norm_smul, norm_mul, norm_prod, norm_zpow]
      rw [Real.log_mul (mul_ne_zero_iff.2 ⟨Finset.prod_ne_zero_iff.2 η₁,
          Finset.prod_ne_zero_iff.2 η₀⟩) ?_, Real.log_mul (Finset.prod_ne_zero_iff.2 η₁)
        (Finset.prod_ne_zero_iff.2 η₀), Real.log_prod η₁, Real.log_prod η₀]
      simpa using (D.meromorphicOn w h₁w).meromorphicTrailingCoeffAt_ne_zero (by simp [h₂w])
    _ = ((∑ᶠ i, (divisor f B₀R i) * Real.log ‖canonicalFactor R i w‖)
        - (∑ᶠ i, (divisor f S₀R i) * Real.log ‖w - i‖))
        + Real.log ‖meromorphicTrailingCoeffAt f w‖ := by
      rw [finsum_eq_sum_of_support_subset (s := t₂) _ ?η₀,
        finsum_eq_sum_of_support_subset (s := t₁) _ ?η₁]
      case η₀ | η₁ => intro _ _; simp_all [S₀R, B₀R]
      rw [sub_eq_add_neg, ← Finset.sum_neg_distrib]
      congr! 3 with i hi i hi <;> simp

end Complex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CanonicalDecomposition/Variant9219caa697757ef70a613721eb771e9d3cba39dab5b8f3cb29f3c42fdeae5239.lean#L629).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `363bc7fdb88c837c745e0b26a1cdb8c8bec3923d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
