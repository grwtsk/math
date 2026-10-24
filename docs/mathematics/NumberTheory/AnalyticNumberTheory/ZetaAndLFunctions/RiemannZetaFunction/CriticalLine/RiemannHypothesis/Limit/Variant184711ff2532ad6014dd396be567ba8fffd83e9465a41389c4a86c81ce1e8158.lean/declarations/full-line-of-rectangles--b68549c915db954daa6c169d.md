# full_line_of_rectangles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66105030b2ad462e8a841993cd691e95e785ed36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/184711ff2532ad6014dd396be567ba8fffd83e9465a41389c4a86c81ce1e8158.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3ad995b-b285-23ec-21be-31bf8f8d11ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a40930e-c733-32bf-0372-5f0fa0784426",
  "kind": "theorem",
  "lexical_name": "full_line_of_rectangles",
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
  "slug": "full-line-of-rectangles--b68549c915db954daa6c169d",
  "source": {
    "blob": "66105030b2ad462e8a841993cd691e95e785ed36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 162,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Limit/Variant184711ff2532ad6014dd396be567ba8fffd83e9465a41389c4a86c81ce1e8158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b68549c915db954daa6c169dc8cdc17572080678bb61b3eb5cfc42e59a88778d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Limit/Variant184711ff2532ad6014dd396be567ba8fffd83e9465a41389c4a86c81ce1e8158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a40930e-c733-32bf-0372-5f0fa0784426`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_line_of_rectangles {F : ℂ → ℂ} {k : ℝ → ℂ} {c : ℝ}
    (hc : 1 / 2 < c) (hc2 : c ≤ 2) (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k)
    (hFc : Continuous fun t : ℝ => F ((c : ℂ) + t * I))
    (hsymm : ∀ t : ℝ, F (1 - ((c : ℂ) + t * I)) = -F ((c : ℂ) + t * I))
    (hline : ∃ M : ℝ, ∀ t : ℝ, ‖F ((c : ℂ) + t * I)‖ ≤ M * Real.log (2 + |t|))
    {R : ℕ → ℝ} {j₀ : ℕ} (hj₀ : 1 ≤ j₀) {K : ℝ} (hK : 0 ≤ K)
    (hR : ∀ j : ℕ, (j : ℝ) + j₀ ≤ R j ∧ R j ≤ (j : ℝ) + j₀ + 1)
    (hhor : ∀ j : ℕ, ∀ s : ℂ, (s.im = R j ∨ s.im = -R j) → 1 - c ≤ s.re → s.re ≤ c →
      ‖F s‖ ≤ K * (Real.log ((j : ℝ) + j₀ + 3)) ^ 2)
    {E : ℕ → ℂ} (hE : ∀ j : ℕ,
      RectangleIntegral' (fun s => Hfn k s * F s) (((1 - c : ℝ) : ℂ) - R j * I) ((c : ℝ) + R j * I) = E j)
    {L : ℂ} (hlim : Tendsto E atTop (𝓝 L)) :
    Integrable (FlineF F k c) ∧
    (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, (Hfn k ((c : ℂ) + t * I) + Hfn k (1 - c - t * I)) * F ((c : ℂ) + t * I))
      = L := by
  have hcc : 1 - c < c := by linarith
  have hRge : ∀ j : ℕ, (j : ℝ) ≤ R j := fun j => by
    have := (hR j).1; have : (0:ℝ) ≤ j₀ := Nat.cast_nonneg j₀; linarith
  have hInt : Integrable (FlineF F k c) := integrable_FlineF_of hFc hline hk hkc (by linarith) hc2
  refine ⟨hInt, ?_⟩
  set G : ℂ → ℂ := fun s => Hfn k s * F s with hG
  -- the three limits
  obtain ⟨hHtop, hHbot⟩ := horizontal_vanish_F (F := F) hk hkc hcc.le hc2 hK hj₀ (R := R)
    (fun j => ⟨(hR j).1, hhor j⟩)
  have hV := tendsto_intervalIntegral_of_integrable hInt hRge
  -- decomposition of the normalized rectangle integral
  have hdec : ∀ j : ℕ, RectangleIntegral' G (((1 - c : ℝ) : ℂ) - R j * I) ((c : ℝ) + R j * I)
      = (1 / (2 * Real.pi * I) : ℂ) * (HIntegral G (1 - c) c (-(R j)) - HIntegral G (1 - c) c (R j))
        + (1 / (2 * Real.pi) : ℂ) * ∫ t in (-R j)..R j, FlineF F k c t := by
    intro j
    obtain ⟨e1, e2, e3, e4⟩ := Zeta23.WeilEF.corner_re_im c (R j)
    rw [RectangleIntegral', RectangleIntegral, smul_eq_mul, e1, e2, e3, e4]
    have hv := verticals_eq_F hFc hsymm hk hkc (R j)
    rw [hG]
    rw [show ∀ A B V₁ V₂ : ℂ, A - B + V₁ - V₂ = (A - B) + (V₁ - V₂) from fun _ _ _ _ => by ring, hv,
      smul_eq_mul, mul_add, Zeta23.WeilEF.inv_two_pi_I_mul_I]
  -- rectangle_j → (1/2π) ∫ FlineF
  have hLHS : Tendsto (fun j : ℕ => RectangleIntegral' G (((1 - c : ℝ) : ℂ) - R j * I) ((c : ℝ) + R j * I))
      atTop (𝓝 ((1 / (2 * Real.pi) : ℂ) * ∫ t, FlineF F k c t)) := by
    have h := ((hHbot.sub hHtop).const_mul (1 / (2 * Real.pi * I) : ℂ)).add
      (hV.const_mul (1 / (2 * Real.pi) : ℂ))
    simp only [sub_zero, mul_zero, zero_add] at h
    refine h.congr fun j => ?_
    rw [hdec j]
  -- rectangle_j = E_j → L
  have hRHS : Tendsto (fun j : ℕ => RectangleIntegral' G (((1 - c : ℝ) : ℂ) - R j * I) ((c : ℝ) + R j * I))
      atTop (𝓝 L) := hlim.congr fun j => (hE j).symm
  have huniq := tendsto_nhds_unique hLHS hRHS
  -- ∫ FlineF is literally the displayed integral
  exact huniq

end EFContour
end Hardy
end XiPrime
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Limit/Variant184711ff2532ad6014dd396be567ba8fffd83e9465a41389c4a86c81ce1e8158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Limit/Variant184711ff2532ad6014dd396be567ba8fffd83e9465a41389c4a86c81ce1e8158.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66105030b2ad462e8a841993cd691e95e785ed36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
