# abs_im_integral_inv_sub_le_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d423497ad4094e1b0ce85926c78132fbe710c7ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b898cd6-c245-b284-8a6e-e59ef4023ebb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d5c2718-d4a3-781d-a13f-849c629f67cd",
  "kind": "theorem",
  "lexical_name": "abs_im_integral_inv_sub_le_pi",
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
  "slug": "abs-im-integral-inv-sub-le-pi--227835d4e516932bfe1a788e",
  "source": {
    "blob": "d423497ad4094e1b0ce85926c78132fbe710c7ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 129,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:227835d4e516932bfe1a788ee6417fffb9633eca378ee5ff09ab9a4c15677690",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d5c2718-d4a3-781d-a13f-849c629f67cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_im_integral_inv_sub_le_pi {a b : ℝ} (hab : a ≤ b) (T : ℝ) (ρ : ℂ)
    (hρ : ∀ σ ∈ Icc a b, (σ : ℂ) + T * I ≠ ρ) :
    |(∫ σ in a..b, ((σ : ℂ) + T * I - ρ)⁻¹).im| ≤ Real.pi := by
  have hρ' : ∀ σ ∈ uIcc a b, (σ : ℂ) + T * I ≠ ρ := by rw [uIcc_of_le hab]; exact hρ
  rcases eq_or_ne (T - ρ.im) 0 with h0 | h0
  · -- the integrand is real: Im = 0 pointwise
    have him : ∀ σ : ℝ, (((σ : ℂ) + T * I - ρ)⁻¹).im = 0 := by
      intro σ
      rw [Complex.inv_im]
      simp [show T = ρ.im by linarith]
    have hcont := continuousOn_inv_sub hρ'
    have e : (∫ σ in a..b, ((σ : ℂ) + T * I - ρ)⁻¹).im
        = ∫ σ in a..b, (((σ : ℂ) + T * I - ρ)⁻¹).im :=
      (Complex.imCLM.intervalIntegral_comp_comm hcont.intervalIntegrable).symm
    rw [e]
    simp only [him]
    rw [intervalIntegral.integral_zero, abs_zero]
    exact Real.pi_pos.le
  · -- Im(σ + iT − ρ) = T − Im ρ ≠ 0: the segment misses the real axis, log is a primitive
    set c : ℂ := T * I - ρ with hc
    have hcim : c.im = T - ρ.im := by simp [hc]
    have hslit : ∀ σ : ℝ, (σ : ℂ) + c ∈ Complex.slitPlane := by
      intro σ
      rw [Complex.mem_slitPlane_iff]
      right
      simp [hcim, h0]
    have hderiv : ∀ σ : ℝ, HasDerivAt (fun σ : ℝ => Complex.log ((σ : ℂ) + c)) (((σ : ℂ) + c)⁻¹) σ := by
      intro σ
      have h1 : HasDerivAt (fun t : ℝ => (t : ℂ) + c) 1 σ := by
        have := (Complex.ofRealCLM.hasDerivAt (x := σ)).add_const c
        simpa using this
      have h2 : HasDerivAt Complex.log ((σ : ℂ) + c)⁻¹ ((σ : ℂ) + c) := Complex.hasDerivAt_log (hslit σ)
      exact (h2.comp σ h1).congr_deriv (mul_one _)
    have e : (fun σ : ℝ => ((σ : ℂ) + T * I - ρ)⁻¹) = fun σ : ℝ => ((σ : ℂ) + c)⁻¹ := by
      funext σ; simp [hc, sub_eq_add_neg, add_assoc]
    rw [e]
    have hint : IntervalIntegrable (fun σ : ℝ => ((σ : ℂ) + c)⁻¹) volume a b := by
      rw [← e]; exact intervalIntegrable_inv_sub hρ'
    rw [integral_eq_sub_of_hasDerivAt (fun σ _ => hderiv σ) hint, Complex.sub_im, Complex.log_im,
      Complex.log_im]
    -- both arguments lie in the same open half (sign of c.im)
    have hbim : ((b : ℂ) + c).im = c.im := by simp
    have haim : ((a : ℂ) + c).im = c.im := by simp
    rcases lt_or_gt_of_ne h0 with hneg | hpos
    · have hcneg : c.im < 0 := by rw [hcim]; exact hneg
      have h1 : Complex.arg ((b : ℂ) + c) < 0 := Complex.arg_neg_iff.mpr (by rw [hbim]; exact hcneg)
      have h2 : Complex.arg ((a : ℂ) + c) < 0 := Complex.arg_neg_iff.mpr (by rw [haim]; exact hcneg)
      have h3 := Complex.neg_pi_lt_arg ((b : ℂ) + c)
      have h4 := Complex.neg_pi_lt_arg ((a : ℂ) + c)
      rw [abs_le]; constructor <;> linarith
    · have hcpos : 0 < c.im := by rw [hcim]; exact hpos
      have h1 : 0 ≤ Complex.arg ((b : ℂ) + c) := Complex.arg_nonneg_iff.mpr (by rw [hbim]; exact hcpos.le)
      have h2 : 0 ≤ Complex.arg ((a : ℂ) + c) := Complex.arg_nonneg_iff.mpr (by rw [haim]; exact hcpos.le)
      have h3 := Complex.arg_le_pi ((b : ℂ) + c)
      have h4 := Complex.arg_le_pi ((a : ℂ) + c)
      rw [abs_le]; constructor <;> linarith

end ZeroCount
end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d423497ad4094e1b0ce85926c78132fbe710c7ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
