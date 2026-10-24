# integrable_cosh_half_of_even_factorial_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b5bfa168a4ac50a54f1f3f399696334a4f4c634",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90c4e5d3-ffcd-772a-598b-87d28a40f9d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:912a1cdf-bb37-cae7-b8b5-9cb2826c8b0d",
  "kind": "theorem",
  "lexical_name": "integrable_cosh_half_of_even_factorial_bound",
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
  "slug": "integrable-cosh-half-of-even-factorial-bound--beb2cf9640c347e9b19b53a5",
  "source": {
    "blob": "7b5bfa168a4ac50a54f1f3f399696334a4f4c634",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 27,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variante9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:beb2cf9640c347e9b19b53a50109968fe57ad8a4bc83326beb1306c8ac837a75",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variante9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:912a1cdf-bb37-cae7-b8b5-9cb2826c8b0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_cosh_half_of_even_factorial_bound
    (ν : Measure ℝ) (C : ℝ)
    (hint : ∀ n : ℕ, Integrable (fun x : ℝ => x ^ (2 * n)) ν)
    (hbound : ∀ n : ℕ, (∫ x : ℝ, x ^ (2 * n) ∂ν) ≤ ((2 * n).factorial : ℝ) * C) :
    Integrable (fun x : ℝ => Real.cosh (x / 2)) ν := by
  let F : ℕ → ℝ → ℝ := fun n x => (1 / 2 : ℝ) ^ (2 * n) / (2 * n).factorial * x ^ (2 * n)
  have hFint (n : ℕ) : Integrable (F n) ν := (hint n).const_mul _
  have hFnonneg (n : ℕ) (x : ℝ) : 0 ≤ F n x := by
    dsimp [F]
    apply mul_nonneg (by positivity)
    rw [pow_mul]
    exact pow_nonneg (sq_nonneg x) n
  have hFbound (n : ℕ) : (∫ x, F n x ∂ν) ≤ C * (1 / 4 : ℝ) ^ n := by
    rw [show F n = fun x : ℝ => ((1 / 2 : ℝ) ^ (2 * n) / (2 * n).factorial) * x ^ (2 * n) from rfl,
      integral_const_mul]
    calc
      _ ≤ ((1 / 2 : ℝ) ^ (2 * n) / (2 * n).factorial) * (((2 * n).factorial : ℝ) * C) :=
        mul_le_mul_of_nonneg_left (hbound n) (by positivity)
      _ = _ := by
        rw [pow_mul]
        norm_num
        field_simp
  have hFsum : Summable (fun n => ∫ x, F n x ∂ν) :=
    Summable.of_nonneg_of_le (fun n => integral_nonneg (hFnonneg n)) hFbound
      ((summable_geometric_of_norm_lt_one (by norm_num : ‖(1 / 4 : ℝ)‖ < 1)).mul_left C)
  have hlin : (∫⁻ x, ENNReal.ofReal (Real.cosh (x / 2)) ∂ν) =
      ∑' n, ENNReal.ofReal (∫ x, F n x ∂ν) := by
    calc
      _ = ∫⁻ x, ∑' n, ENNReal.ofReal (F n x) ∂ν := by
        apply lintegral_congr
        intro x
        have hseries : HasSum (fun n => F n x) (Real.cosh (x / 2)) := by
          convert Real.hasSum_cosh (x / 2) using 1
          ext n
          dsimp [F]
          rw [div_pow]
          field_simp
          simp only [one_pow, div_pow, one_mul]
          rw [mul_div_cancel₀ _ (by positivity : (2 : ℝ) ^ (2 * n) ≠ 0)]
        rw [← hseries.tsum_eq, ENNReal.ofReal_tsum_of_nonneg (fun n => hFnonneg n x) hseries.summable]
      _ = ∑' n, ∫⁻ x, ENNReal.ofReal (F n x) ∂ν :=
        lintegral_tsum (fun n => (hFint n).aestronglyMeasurable.aemeasurable.ennreal_ofReal)
      _ = _ := by
        congr 1
        ext n
        exact (ofReal_integral_eq_lintegral_ofReal (hFint n)
          (Eventually.of_forall (hFnonneg n))).symm
  apply (lintegral_ofReal_ne_top_iff_integrable
    (Real.continuous_cosh.comp (continuous_id.div_const 2)).aestronglyMeasurable
    (Eventually.of_forall (fun x => (Real.cosh_pos (x / 2)).le))).mp
  change (∫⁻ x, ENNReal.ofReal (Real.cosh (x / 2)) ∂ν) ≠ ⊤
  rw [hlin]
  exact hFsum.tsum_ofReal_ne_top

/-- The entire competing measure acquires an absolute exponential moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variante9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variante9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b5bfa168a4ac50a54f1f3f399696334a4f4c634` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
