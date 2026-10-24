# cauchySchwarz_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed92ad7b79ba030ecb9b1625edc8ebb1cda1ec42",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f126ae63912edab0e037d171e2efc5c96f43e5a2b31406539debcb07cd341f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f169667-a674-bf62-03a5-0c74c8c210e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00fb6d3d-9b80-e148-ee58-f47c699b5364",
  "kind": "theorem",
  "lexical_name": "cauchySchwarz_count",
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
  "slug": "cauchyschwarz-count--2bf2c333d65538e73cddc0e8",
  "source": {
    "blob": "ed92ad7b79ba030ecb9b1625edc8ebb1cda1ec42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Weyl/Variant5f126ae63912edab0e037d171e2efc5c96f43e5a2b31406539debcb07cd341f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bf2c333d65538e73cddc0e897f7538c0ddf3e00fc69b44b0bfcd643708b2b93",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Weyl/Variant5f126ae63912edab0e037d171e2efc5c96f43e5a2b31406539debcb07cd341f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00fb6d3d-9b80-e148-ee58-f47c699b5364`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchySchwarz_count {R : Matrix n n 𝕜} (hR : R.IsHermitian)
    {θ : ℝ} (hθ : 0 ≤ θ) (htr : θ * Fintype.card n < rtrace R) :
    (rtrace R - θ * Fintype.card n) ^ 2 / frobSq R
      ≤ (posIndexAbove hR θ : ℝ) := by
  set ev := hR.eigenvalues
  set s : Finset n := {i | θ < ev i} with hs_def
  -- `S := ∑ᵢ∈s evᵢ` satisfies `S ≥ rtrace R − θ·d`, since `∑ᵢ∉s evᵢ ≤ θ·d`.
  have hcompl : ∑ i ∈ sᶜ, ev i ≤ θ * Fintype.card n :=
    calc ∑ i ∈ sᶜ, ev i
        ≤ ∑ _i ∈ sᶜ, θ := by
          refine sum_le_sum fun i hi => ?_
          simp only [hs_def, mem_compl, mem_filter, mem_univ, true_and, not_lt] at hi
          exact hi
      _ = θ * #sᶜ := by rw [sum_const, nsmul_eq_mul, mul_comm]
      _ ≤ θ * Fintype.card n :=
          mul_le_mul_of_nonneg_left (Nat.cast_le.mpr (card_le_univ _)) hθ
  have hS : rtrace R - θ * Fintype.card n ≤ ∑ i ∈ s, ev i := by
    have : rtrace R = ∑ i ∈ s, ev i + ∑ i ∈ sᶜ, ev i := by
      rw [rtrace_eq_sum_eigenvalues hR, ← sum_add_sum_compl s]
    linarith
  have hSpos : 0 < ∑ i ∈ s, ev i := lt_of_lt_of_le (by linarith) hS
  -- Cauchy–Schwarz: `S² ≤ #s · ∑ᵢ∈s evᵢ²`.
  have hCS : (∑ i ∈ s, ev i) ^ 2 ≤ #s * ∑ i ∈ s, (ev i) ^ 2 :=
    sq_sum_le_card_mul_sum_sq
  -- `∑ᵢ∈s evᵢ² ≤ ∑ᵢ evᵢ² = frobSq R`.
  have hsub : ∑ i ∈ s, (ev i) ^ 2 ≤ frobSq R := by
    rw [frobSq_hermitian_eq_sum_sq_eigenvalues hR]
    exact sum_le_sum_of_subset_of_nonneg (subset_univ s) (fun i _ _ => sq_nonneg _)
  -- `s` is nonempty (else `∑ᵢ∈s evᵢ = 0`, contradicting `hSpos`).
  obtain ⟨i₀, hi₀⟩ := nonempty_of_sum_ne_zero hSpos.ne'
  have hevi₀ : θ < ev i₀ := by simpa [hs_def, mem_filter] using hi₀
  have hfrobpos : 0 < frobSq R :=
    lt_of_lt_of_le
      (lt_of_lt_of_le (pow_pos (hθ.trans_lt hevi₀) 2)
        (single_le_sum (fun i _ => sq_nonneg (ev i)) hi₀))
      hsub
  -- Combine: `(rtrace R − θd)² ≤ S² ≤ #s · ∑ᵢ∈s evᵢ² ≤ #s · frobSq R`.
  have hmain : (rtrace R - θ * Fintype.card n) ^ 2 ≤ #s * frobSq R := calc
    (rtrace R - θ * Fintype.card n) ^ 2
        ≤ (∑ i ∈ s, ev i) ^ 2 := by
          apply sq_le_sq' <;> linarith
    _ ≤ #s * ∑ i ∈ s, (ev i) ^ 2 := hCS
    _ ≤ #s * frobSq R := mul_le_mul_of_nonneg_left hsub (Nat.cast_nonneg _)
  -- Divide by `frobSq R > 0`.
  rw [div_le_iff₀ hfrobpos]
  simpa [posIndexAbove, hs_def, mul_comm] using hmain

end RHLinalg
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Weyl/Variant5f126ae63912edab0e037d171e2efc5c96f43e5a2b31406539debcb07cd341f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Weyl/Variant5f126ae63912edab0e037d171e2efc5c96f43e5a2b31406539debcb07cd341f2.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed92ad7b79ba030ecb9b1625edc8ebb1cda1ec42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
