# MeromorphicOn.circleAverage_log_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3dd78e234df51703431c913f5bc6081233542e97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 307,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b0dc294-6f44-cc87-2a08-9c6630791afb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73871b31-a0dd-b605-c76e-d371c923aa01",
  "kind": "theorem",
  "lexical_name": "MeromorphicOn.circleAverage_log_norm",
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
  "slug": "meromorphicon-circleaverage-log-norm--dbd6f6b1948a81130c0245af",
  "source": {
    "blob": "3dd78e234df51703431c913f5bc6081233542e97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 307,
    "path": "GRWTSK/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbd6f6b1948a81130c0245af2fb4bb8ba2049ada55a5ebe3229109dc6825e055",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73871b31-a0dd-b605-c76e-d371c923aa01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeromorphicOn.circleAverage_log_norm {c : ℂ} {R : ℝ} {f : ℂ → ℂ} (hR : R ≠ 0)
    (h₁f : MeromorphicOn f (closedBall c |R|)) :
    circleAverage (log ‖f ·‖) c R
      = ∑ᶠ u, divisor f (closedBall c |R|) u * log (R * ‖c - u‖⁻¹)
        + divisor f (closedBall c |R|) c * log R + log ‖meromorphicTrailingCoeffAt f c‖ := by
  -- Shorthand notation to keep line size in check
  let CB := closedBall c |R|
  by_cases h₂f : ∀ u ∈ CB, meromorphicOrderAt f u ≠ ⊤
  · have h₃f := (divisor f CB).finiteSupport (isCompact_closedBall c |R|)
    -- Extract zeros & poles and compute
    obtain ⟨g, h₁g, h₂g, h₃g⟩ := h₁f.extract_zeros_poles (by simp_all) h₃f
    calc circleAverage (log ‖f ·‖) c R
    _ = circleAverage ((∑ᶠ u, (divisor f CB u * log ‖· - u‖)) + (log ‖g ·‖)) c R := by
      have h₄g := extract_zeros_poles_log h₂g h₃g
      rw [circleAverage_congr_codiscreteWithin (codiscreteWithin_mono sphere_subset_closedBall h₄g)
        hR]
    _ = circleAverage (∑ᶠ u, (divisor f CB u * log ‖· - u‖)) c R + circleAverage (log ‖g ·‖) c R :=
      circleAverage_add (circleIntegrable_log_norm_factorizedRational (divisor f CB))
        ((h₁g.mono sphere_subset_closedBall).meromorphicOn.circleIntegrable_log_norm)
    _ = ∑ᶠ u, divisor f CB u * log R + log ‖g c‖ := by
      simp only [circleAverage_log_norm_factorizedRational, add_right_inj]
      rw [h₁g.circleAverage_log_norm_of_ne_zero]
      exact fun u hu ↦ h₂g ⟨u, hu⟩
    _ = ∑ᶠ u, divisor f CB u * log R
      + (log ‖meromorphicTrailingCoeffAt f c‖ - ∑ᶠ u, divisor f CB u * log ‖c - u‖) := by
      have t₀ : c ∈ CB := by simp [CB]
      have t₁ : AccPt c (𝓟 CB) := by
        apply accPt_iff_frequently_nhdsNE.mpr
        apply compl_notMem
        apply mem_nhdsWithin.mpr
        use ball c |R|
        simpa [hR] using! fun _ ⟨h, _⟩ ↦ ball_subset_closedBall h
      simp [MeromorphicOn.log_norm_meromorphicTrailingCoeffAt_extract_zeros_poles h₃f t₀ t₁
        (h₁f c t₀) (h₁g c t₀) (h₂g ⟨c, t₀⟩) h₃g]
    _ = ∑ᶠ u, divisor f CB u * log R - ∑ᶠ u, divisor f CB u * log ‖c - u‖
      + log ‖meromorphicTrailingCoeffAt f c‖ := by
      ring
    _ = (∑ᶠ u, divisor f CB u * (log R - log ‖c - u‖)) + log ‖meromorphicTrailingCoeffAt f c‖ := by
      rw [← finsum_sub_distrib]
      · simp_rw [← mul_sub]
      repeat apply h₃f.subset (fun _ ↦ (by simp_all))
    _ = ∑ᶠ u, divisor f CB u * log (R * ‖c - u‖⁻¹) + divisor f CB c * log R
      + log ‖meromorphicTrailingCoeffAt f c‖ := by
      rw [countingFunction_finsum_eq_finsum_add hR h₃f]
  · -- Trivial case: `f` vanishes on a codiscrete set
    have h₂f : ¬∀ (u : ↑(closedBall c |R|)), meromorphicOrderAt f ↑u ≠ ⊤ := by aesop
    rw [← h₁f.exists_meromorphicOrderAt_ne_top_iff_forall
      ⟨nonempty_closedBall.mpr (abs_nonneg R), (convex_closedBall c |R|).isPreconnected⟩] at h₂f
    push Not at h₂f
    have : divisor f CB = 0 := by
      ext x
      by_cases h : x ∈ CB
      <;> simp_all [CB]
    simp only [CB, this, Function.locallyFinsuppWithin.coe_zero, Pi.zero_apply, Int.cast_zero,
      zero_mul, finsum_zero, add_zero, zero_add]
    rw [MeromorphicAt.meromorphicTrailingCoeffAt_of_order_eq_top (by aesop), norm_zero, log_zero]
    have : f =ᶠ[codiscreteWithin CB] 0 := by
      filter_upwards [h₁f.meromorphicNFAt_mem_codiscreteWithin, self_mem_codiscreteWithin CB]
        with z h₁z h₂z
      simpa [h₂f ⟨z, h₂z⟩] using (not_iff_not.2 h₁z.meromorphicOrderAt_eq_zero_iff)
    rw [circleAverage_congr_codiscreteWithin (f₂ := 0) _ hR]
    · simp only [circleAverage, mul_inv_rev, Pi.zero_apply, intervalIntegral.integral_zero,
        smul_eq_mul, mul_zero]
    apply Filter.codiscreteWithin_mono (s := CB) sphere_subset_closedBall
    filter_upwards [this] with z hz
    simp_all

/-- **Jensen's Formula** specialized to the case that `f` is analytic and `f c ≠ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dd78e234df51703431c913f5bc6081233542e97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
