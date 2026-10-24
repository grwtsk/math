# gD_deriv_facts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1750,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37c35054-ed3a-6a9e-b141-a9423c53a667",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b026b1e3-279d-16be-45da-b40e5ddb8145",
  "kind": "theorem",
  "lexical_name": "gD_deriv_facts",
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
  "slug": "gd-deriv-facts--6bc26cb047ebe250800cd9aa",
  "source": {
    "blob": "749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1792,
    "line": 1750,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bc26cb047ebe250800cd9aac0cd38f32f30ded9e7bf6b1c6bf7c0787a4b2c29",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b026b1e3-279d-16be-45da-b40e5ddb8145`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1750–1792.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gD_deriv_facts (hϱ : TaperProfile ϱ) (h0 : 0 < lam) (h1 : lam ≤ 1)
    (hw : 0 < w) (hwL : 2 * w ≤ L) :
    Differentiable ℝ (Params.autocorr (fun u => phiD ϱ lam L w u ^ 2))
      ∧ Continuous (deriv (Params.autocorr (fun u => phiD ϱ lam L w u ^ 2)))
      ∧ ∀ y : ℝ, |deriv (Params.autocorr (fun u => phiD ϱ lam L w u ^ 2)) y| ≤ 2 := by
  have hL : 0 < L := by linarith
  apply autocorr_deriv_facts
  · exact ((phiD_contDiff hϱ h0 h1 hw hwL).pow 2).of_le (by norm_num)
  · apply HasCompactSupport.of_support_subset_isCompact
      (isCompact_Icc (a := -(L/2)) (b := L/2))
    intro x hx
    rw [Function.mem_support] at hx
    by_contra hmem
    apply hx
    rw [Set.mem_Icc, not_and_or, not_le, not_le] at hmem
    have : L / 2 ≤ |x| := by
      rcases hmem with hc | hc
      · rw [abs_of_neg (by linarith : x < 0)]; linarith
      · rw [abs_of_pos (by linarith : 0 < x)]; linarith
    rw [phiD_eq_zero hϱ hw this, zero_pow two_ne_zero]
  · intro x
    rw [phiD_even]
  · intro u
    rw [abs_of_nonneg (sq_nonneg _)]
    calc phiD ϱ lam L w u ^ 2 ≤ 1 ^ 2 :=
          pow_le_pow_left₀ (phiD_nonneg hϱ u) (phiD_le_one hϱ u) 2
      _ = 1 := one_pow 2
  · exact integral_abs_deriv_phiD_sq_le hϱ h0 h1 hw hwL

end AutocorrC1

/-!
Summary of the statements proved in this file:
cos_factor_ge, phiD_contDiff, phiD_antitoneOn, integral_abs_deriv_phiD_le,
integral_abs_deriv_phiD_sq_le, integral_abs_deriv2_phiD_le, integral_abs_deriv2_phiD_sq_le,
aD_close, bD_close, jD_close (via the 1-D route: jStar_closed [Functional.lean] + the
sharp-window autocorrelation closed form integral_cos_overlap/sharp_autocorr_eq + the
y-moment closed form integral_Cfun_moment + the 4w ramp comparison
integral_abs_phiDsq_sub_sharp/autocorr_phiDsq_close — no Fubini anywhere).
-/

end ThmD
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean#L1750).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
