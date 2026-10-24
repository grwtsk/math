# norm_Lminus_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2cf2d75db2f44cb0dd99e2160fd273caf639f807",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b334333f17711e91dc46a1adde44f190d801f4e224e706644fa96bd880966dc5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e9ce3ac-72f1-36ae-6c34-f09fd6ccc420",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:caf18613-3912-4165-3c8a-188184dfeeb5",
  "kind": "lemma",
  "lexical_name": "norm_Lminus_le",
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
  "slug": "norm-lminus-le--23fe0f6499a8781ac0dc5772",
  "source": {
    "blob": "2cf2d75db2f44cb0dd99e2160fd273caf639f807",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 99,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variantb334333f17711e91dc46a1adde44f190d801f4e224e706644fa96bd880966dc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23fe0f6499a8781ac0dc577251f48e8abec6368d033a4819f54afbbe4d5c2dd4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variantb334333f17711e91dc46a1adde44f190d801f4e224e706644fa96bd880966dc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caf18613-3912-4165-3c8a-188184dfeeb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_Lminus_le {c : ℝ} (hc1 : 1 < c) (hc2 : c ≤ 5 / 4) {s : ℂ} (hr1 : 1 - c ≤ s.re) (hr2 : s.re ≤ c)
    (him : 2 ≤ |s.im|) : ‖Lfn s - L2 s‖ ≤ Real.log (|s.im| + 3) + 7 := by
  have hs : s.im ≠ 0 := by intro h; rw [h] at him; norm_num at him
  have hs0 : s ≠ 0 := ne_zero_of_im_ne_zero hs
  have hs1 : s ≠ 1 := ne_one_of_im_ne_zero hs
  have h0 : Gammaℝ s ≠ 0 := Gammaℝ_ne_zero_of_re (by linarith) hs0
  have h1 : Gammaℝ (1 - s) ≠ 0 := Gammaℝ_one_sub_ne_zero_of_re (by linarith) hs1
  rw [Lminus_eq_G h0 h1]
  have hG : ∀ u : ℂ, Gammaℝ u ≠ 0 → ‖logDeriv invGammaℝ u‖ = ‖logDeriv Gammaℝ u‖ := fun u hu => by
    rw [logDeriv_Gammaℝ_eq_neg hu, norm_neg]
  have hA : ‖logDeriv invGammaℝ s‖ ≤ Real.log (|s.im| + 3) + 6 := by
    rw [hG s h0]; exact norm_logDeriv_Gammaℝ_le_strip (by linarith) (by linarith) him
  have hB : ‖logDeriv invGammaℝ (1 - s)‖ ≤ Real.log (|s.im| + 3) + 6 := by
    rw [hG (1 - s) h1]
    have := norm_logDeriv_Gammaℝ_le_strip (u := 1 - s) (by simp; linarith) (by simp; linarith) (by simpa using him)
    simpa using this
  have hsnorm : 2 ≤ ‖s‖ := le_trans him (Complex.abs_im_le_norm s)
  have hs1norm : 2 ≤ ‖s - 1‖ := by
    have := Complex.abs_im_le_norm (s - 1); simp at this; linarith
  have hC : ‖1 / s‖ ≤ 1 / 2 := by
    rw [norm_div, norm_one]; exact div_le_div_of_nonneg_left zero_le_one (by norm_num) hsnorm
  have hD : ‖1 / (s - 1)‖ ≤ 1 / 2 := by
    rw [norm_div, norm_one]; exact div_le_div_of_nonneg_left zero_le_one (by norm_num) hs1norm
  have hhalf : ‖(1 / 2 : ℂ)‖ = 1 / 2 := by norm_num
  have hnhalf : ‖(-(1 / 2) : ℂ)‖ = 1 / 2 := by norm_num
  calc ‖-(1 / 2 : ℂ) * logDeriv invGammaℝ s + (1 / 2 : ℂ) * logDeriv invGammaℝ (1 - s) + 1 / s + 1 / (s - 1)‖
      ≤ ‖-(1 / 2 : ℂ) * logDeriv invGammaℝ s‖ + ‖(1 / 2 : ℂ) * logDeriv invGammaℝ (1 - s)‖ + ‖1 / s‖ + ‖1 / (s - 1)‖ := by
        refine (norm_add_le _ _).trans (add_le_add ((norm_add_le _ _).trans (add_le_add (norm_add_le _ _) le_rfl)) le_rfl)
    _ ≤ (1 / 2) * (Real.log (|s.im| + 3) + 6) + (1 / 2) * (Real.log (|s.im| + 3) + 6) + 1 / 2 + 1 / 2 := by
        rw [norm_mul, norm_mul, hhalf, hnhalf]; gcongr
    _ = Real.log (|s.im| + 3) + 7 := by ring

end EFContour
end Hardy

/-! ## §2. The L₋ line identity -/

/-- **(1/2π) ∫ [H(c+it) + H(1−c−it)] · (Lfn − L₂)(c+it) dt = ½(H(0) + H(1))**, 1 < c ≤ 5/4. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variantb334333f17711e91dc46a1adde44f190d801f4e224e706644fa96bd880966dc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variantb334333f17711e91dc46a1adde44f190d801f4e224e706644fa96bd880966dc5.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cf2d75db2f44cb0dd99e2160fd273caf639f807` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
