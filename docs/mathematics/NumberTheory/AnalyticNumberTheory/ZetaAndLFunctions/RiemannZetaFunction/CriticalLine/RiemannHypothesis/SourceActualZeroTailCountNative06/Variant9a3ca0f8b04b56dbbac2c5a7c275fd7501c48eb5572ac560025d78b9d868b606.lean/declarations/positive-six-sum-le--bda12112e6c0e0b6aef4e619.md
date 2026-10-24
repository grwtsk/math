# positive_six_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ad8f41f-d3a3-34b5-64f1-ddfa63d14fe0",
  "kind": "theorem",
  "lexical_name": "positive_six_sum_le",
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
  "slug": "positive-six-sum-le--bda12112e6c0e0b6aef4e619",
  "source": {
    "blob": "852e80b5774342017ec41644a1411719a6be1862",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailCountNative06/Variant9a3ca0f8b04b56dbbac2c5a7c275fd7501c48eb5572ac560025d78b9d868b606.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bda12112e6c0e0b6aef4e61973423626338f156f06534a35f539052dee1ed3b5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailCountNative06/Variant9a3ca0f8b04b56dbbac2c5a7c275fd7501c48eb5572ac560025d78b9d868b606.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ad8f41f-d3a3-34b5-64f1-ddfa63d14fe0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem positive_six_sum_le (A0 R : ℝ) (hA0 : 1 ≤ A0) (hR : 4 ≤ R)
    (hloc : Tail.LocalCount (fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ).im)
      (fun ρ => (zetaZeros zetaSeam).mult ρ) A0)
    (s : Finset (zetaZeros zetaSeam).carrier)
    (hs : ∀ ρ ∈ s, R ≤ (ρ : ℂ).im) :
    ∑ ρ ∈ s, ((zetaZeros zetaSeam).mult ρ : ℝ) / (ρ : ℂ).im ^ 6 ≤
      A0 * (Real.log R + 2) / R ^ 5 := by
  have hp : 0 < R := by linarith
  let key : (zetaZeros zetaSeam).carrier → ℕ := fun ρ => ⌈(ρ : ℂ).im⌉₊ - 1
  have hk (ρ) (hρ : ρ ∈ s) := positive_key_bounds (ρ : ℂ).im (hp.trans_le (hs ρ hρ))
  have hcount : ∀ j : ℕ, ∑ ρ ∈ s with key ρ = j,
      ((zetaZeros zetaSeam).mult ρ : ℝ) ≤ A0 * Real.log (R + j) := by
    intro j
    have hw := hloc.window (j : ℝ) (s.filter fun ρ => key ρ = j) (by
      intro ρ hρ
      have hx := hk ρ (mem_filter.mp hρ).1
      simpa only [key, (mem_filter.mp hρ).2] using hx)
    have hj : (0 : ℝ) ≤ j := Nat.cast_nonneg _
    have hl : Real.log (|(j : ℝ)| + 3) ≤ Real.log (R + j) := by
      rw [abs_of_nonneg hj]
      exact Real.log_le_log (by positivity) (by linarith)
    exact hw.trans (mul_le_mul_of_nonneg_left hl (by linarith))
  have h3 := Tail.one_side_sum_le s (fun ρ => (ρ : ℂ).im)
    (fun ρ => (zetaZeros zetaSeam).mult ρ) key (show 0 ≤ A0 by linarith)
    (show 1 ≤ R by linarith) (show 2 ≤ R by linarith) hs
    (fun ρ hρ => (hk ρ hρ).1.le) (fun ρ hρ => (hk ρ hρ).2) hcount
  have h3' : ∑ ρ ∈ s, ((zetaZeros zetaSeam).mult ρ : ℝ) * ((ρ : ℂ).im ^ 3)⁻¹ ≤
      A0 * (Real.log R + 2) / R ^ 2 := by
    exact h3.trans (by
      have h := mul_le_mul_of_nonneg_left (side_budget_le R hR) (show 0 ≤ A0 by linarith)
      simpa only [mul_div_assoc] using h)
  calc
    _ ≤ R⁻¹ ^ 3 * ∑ ρ ∈ s,
        ((zetaZeros zetaSeam).mult ρ : ℝ) * ((ρ : ℂ).im ^ 3)⁻¹ := by
      rw [mul_sum]
      apply sum_le_sum
      intro ρ hρ
      have hx : 0 < (ρ : ℂ).im := hp.trans_le (hs ρ hρ)
      have hi := inv_anti₀ hp (hs ρ hρ)
      have hi3 := pow_le_pow_left₀ (by positivity : 0 ≤ ((ρ : ℂ).im)⁻¹) hi 3
      have hm : 0 ≤ ((zetaZeros zetaSeam).mult ρ : ℝ) := Nat.cast_nonneg _
      have ht := mul_le_mul_of_nonneg_right hi3
        (show 0 ≤ ((zetaZeros zetaSeam).mult ρ : ℝ) * ((ρ : ℂ).im ^ 3)⁻¹ by positivity)
      convert ht using 1
      field_simp
    _ ≤ R⁻¹ ^ 3 * (A0 * (Real.log R + 2) / R ^ 2) :=
      mul_le_mul_of_nonneg_left h3' (by positivity)
    _ = _ := by field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailCountNative06/Variant9a3ca0f8b04b56dbbac2c5a7c275fd7501c48eb5572ac560025d78b9d868b606.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailCountNative06/Variant9a3ca0f8b04b56dbbac2c5a7c275fd7501c48eb5572ac560025d78b9d868b606.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `852e80b5774342017ec41644a1411719a6be1862` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
