# zero_sum_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "703785534b5ac7080fcc0dfefb9c333e15196c6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c7b260f4df56cb6e24cb606d80a62e86202ed95d92bfe4c732b3d913a1b859e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90231fd1-deaa-93b4-390f-ea298c075a3c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:858287c0-3a7b-c5bc-d273-d198bb0b5867",
  "kind": "theorem",
  "lexical_name": "zero_sum_limit",
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
  "slug": "zero-sum-limit--940fe2489d421aa23d8460b4",
  "source": {
    "blob": "703785534b5ac7080fcc0dfefb9c333e15196c6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSumLimit/Variantc7b260f4df56cb6e24cb606d80a62e86202ed95d92bfe4c732b3d913a1b859e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:940fe2489d421aa23d8460b4eeb2ca2aaa171e976b0491aa6031e181fec9459e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSumLimit/Variantc7b260f4df56cb6e24cb606d80a62e86202ed95d92bfe4c732b3d913a1b859e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:858287c0-3a7b-c5bc-d273-d198bb0b5867`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_sum_limit (hs : ZetaSeam) {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k)
    {R : ℕ → ℝ} (hR : ∀ j : ℕ, (j : ℝ) + 7 ≤ R j ∧ R j ≤ (j : ℝ) + 8)
    {Z : ℕ → Finset ℂ}
    (hZ : ∀ j : ℕ, ((Z j : Set ℂ) = {ρ : ℂ | IsNontrivialZero ρ ∧ -R j < ρ.im ∧ ρ.im < R j})) :
    Tendsto (fun j : ℕ => ∑ ρ ∈ Z j, (zeroMult ρ : ℂ) * Hfn k ρ) atTop
      (𝓝 (∑' ρ : (zetaZeros hs).carrier, ((zetaZeros hs).mult ρ : ℂ) * Hfn k ρ)) := by
  classical
  set g : (zetaZeros hs).carrier → ℂ := fun ρ => ((zetaZeros hs).mult ρ : ℂ) * Hfn k ρ with hg
  -- absolute convergence : Hfn k ρ = paperFT k (gammaOf ρ) definitionally
  have hsum : Summable g := EF_zero_sum_summable hs hk hkc
  have hmemZ : ∀ j ρ, ρ ∈ Z j ↔ IsNontrivialZero ρ ∧ -R j < ρ.im ∧ ρ.im < R j := by
    intro j ρ
    rw [← Finset.mem_coe, hZ j]
    rfl
  -- the finite sets, viewed in the carrier subtype
  set s : ℕ → Finset (zetaZeros hs).carrier :=
    fun j => (Z j).subtype (· ∈ (zetaZeros hs).carrier) with hsdef
  have hsum_eq : ∀ j, ∑ x ∈ s j, g x = ∑ ρ ∈ Z j, (zeroMult ρ : ℂ) * Hfn k ρ := by
    intro j
    have h1 := Finset.sum_subtype_eq_sum_filter (s := Z j)
      (p := (· ∈ (zetaZeros hs).carrier)) (fun ρ : ℂ => (zeroMult ρ : ℂ) * Hfn k ρ)
    have h2 : (Z j).filter (· ∈ (zetaZeros hs).carrier) = Z j := by
      apply Finset.filter_true_of_mem
      intro ρ hρ
      exact ((hmemZ j ρ).mp hρ).1
    rw [h2] at h1
    rw [← h1]
    rfl
  -- monotone and exhausting
  have hRmono : ∀ i j : ℕ, i ≤ j → R i ≤ R j := by
    intro i j hij
    rcases hij.eq_or_lt with h | h
    · rw [h]
    · have : (i : ℝ) + 1 ≤ j := by exact_mod_cast h
      linarith [(hR i).2, (hR j).1]
  have hmono : Monotone s := by
    intro i j hij x hx
    rw [Finset.mem_subtype, hmemZ] at hx ⊢
    obtain ⟨h1, h2, h3⟩ := hx
    have := hRmono i j hij
    exact ⟨h1, by linarith, by linarith⟩
  have hexh : ∀ b : Finset (zetaZeros hs).carrier, ∃ j, b ≤ s j := by
    intro b
    set M : ℝ := ∑ x ∈ b, |((x : ℂ)).im| with hM
    have hMle : ∀ x ∈ b, |((x : ℂ)).im| ≤ M := fun x hx =>
      Finset.single_le_sum (f := fun x : (zetaZeros hs).carrier => |((x : ℂ)).im|)
        (fun _ _ => abs_nonneg _) hx
    obtain ⟨j, hj⟩ := exists_nat_gt M
    refine ⟨j, fun x hx => ?_⟩
    rw [Finset.mem_subtype, hmemZ]
    have hx0 : IsNontrivialZero (x : ℂ) := x.2
    have habs := abs_le.mp (hMle x hx)
    have hRj := (hR j).1
    exact ⟨hx0, by linarith [habs.1], by linarith [habs.2]⟩
  have hs_tend : Tendsto s atTop atTop := tendsto_atTop_atTop_of_monotone hmono hexh
  have hT : Tendsto (fun S : Finset (zetaZeros hs).carrier => ∑ x ∈ S, g x) atTop
      (𝓝 (∑' x, g x)) := by
    exact hsum.hasSum
  have := hT.comp hs_tend
  refine this.congr (fun j => ?_)
  simp only [Function.comp_apply, hsum_eq]

end WeilEF
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSumLimit/Variantc7b260f4df56cb6e24cb606d80a62e86202ed95d92bfe4c732b3d913a1b859e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSumLimit/Variantc7b260f4df56cb6e24cb606d80a62e86202ed95d92bfe4c732b3d913a1b859e5.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `703785534b5ac7080fcc0dfefb9c333e15196c6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
