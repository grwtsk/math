# sum_a2g_lower'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33b8cae5-eb7a-2117-10a3-d8858552eea3",
  "kind": "theorem",
  "lexical_name": "sum_a2g_lower'",
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
  "slug": "sum-a2g-lower--9c4d52272ccc0ca388b89355",
  "source": {
    "blob": "47f6cd6bd30dffd5fe33d4e68eb9edfd3b283ecf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 126,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c4d52272ccc0ca388b89355cefd90890faeaca64811d1f89b704b20c6ef603e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33b8cae5-eb7a-2117-10a3-d8858552eea3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_a2g_lower' (hcheb : Zeta23.ChebyshevMertens) (_hlam : 0 < lam ∧ lam ≤ 1) :
    ∃ C : ℝ, EventuallyAt cϱ lam (fun p F =>
      (p.L - 2 * p.w) ^ 3 / 6 - C * p.L ^ 2 ≤ sumA2g p.X F.g) := by
  obtain ⟨C, hC⟩ := hcheb.cheb2b
  refine ⟨max C 0, 0, fun p F _ _ hF => ?_⟩
  -- x' := X e^{−2w} = e^{L−2w} ≥ e^6 ≥ 2
  set L' := p.L - 2 * p.w with hL'
  set x' := Real.exp L' with hx'
  have hL'pos : 6 ≤ L' := by have := hF.w_le; have := hF.eight_le_L; rw [hL']; linarith
  have hL'le : L' ≤ p.L := by rw [hL']; linarith [hF.one_le_w]
  have hx'2 : 2 ≤ x' := by linarith [Real.add_one_le_exp L']
  have hx'X : x' ≤ p.X := Real.exp_le_exp.mpr hL'le
  have hlogx' : Real.log x' = L' := Real.log_exp _
  have hsub : primeRange x' ⊆ primeRange p.X := by
    unfold primeRange
    exact Finset.Ioc_subset_Ioc_right (Nat.floor_le_floor hx'X)
  -- Σ_{n≤X} a_n² g(y_n) ≥ Σ_{n≤x'} a_n² g(y_n) ≥ Σ_{n≤x'} a_n² (L−2w−y_n)
  have h1 : ∑ n ∈ primeRange x', (Λ n : ℝ) ^ 2 / n * (Real.log x' - Real.log n)
      ≤ sumA2g p.X F.g := by
    unfold sumA2g
    calc ∑ n ∈ primeRange x', (Λ n : ℝ) ^ 2 / n * (Real.log x' - Real.log n)
        ≤ ∑ n ∈ primeRange x', (Λ n : ℝ) ^ 2 / n * F.g (Real.log n) := by
          refine Finset.sum_le_sum fun n hn => mul_le_mul_of_nonneg_left ?_ (a2_nonneg n)
          calc Real.log x' - Real.log n ≤ max (p.L - 2 * p.w - |Real.log n|) 0 := by
                rw [hlogx', abs_of_nonneg (log_nonneg_of_mem_primeRange hn), hL']
                exact le_max_left _ _
            _ ≤ F.g (Real.log n) := hF.g_lower _
      _ ≤ ∑ n ∈ primeRange p.X, (Λ n : ℝ) ^ 2 / n * F.g (Real.log n) := by
          apply Finset.sum_le_sum_of_subset_of_nonneg hsub
          intro n _ _
          have : 0 ≤ F.g (Real.log n) := le_trans (le_max_right _ _) (hF.g_lower _)
          exact mul_nonneg (a2_nonneg n) this
  -- [eq:cheb2] at x':  Σ_{n≤x'} a_n² (log x' − log n) ≥ (log x')³/6 − C (log x')²
  have h2 := hC x' hx'2
  rw [hlogx'] at h2
  have h3 := (abs_le.mp h2).1
  have hCmax : C * L' ^ 2 ≤ max C 0 * p.L ^ 2 := by
    calc C * L' ^ 2 ≤ max C 0 * L' ^ 2 :=
          mul_le_mul_of_nonneg_right (le_max_left _ _) (sq_nonneg _)
      _ ≤ max C 0 * p.L ^ 2 := by
          apply mul_le_mul_of_nonneg_left _ (le_max_right _ _)
          exact pow_le_pow_left₀ (by linarith) hL'le 2
  rw [hlogx'] at h1
  unfold primeRange at h1
  linarith

end Sandwich

/-! ## Assembly of [prop:PP]  (§5.4) -/

section Assembly
variable {Φ : ℝ → ℝ} {T : ℝ}

/-- diagonal / off-diagonal split of a double sum ("𝒟 collects the terms n=m …, 𝒪₁ the terms n≠m",
§5.4). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant6f0c21f1d01e3f3f6e90cbdf7cc6902fb1125f4b773d7ab5e83a52e61b3b8499.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47f6cd6bd30dffd5fe33d4e68eb9edfd3b283ecf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
