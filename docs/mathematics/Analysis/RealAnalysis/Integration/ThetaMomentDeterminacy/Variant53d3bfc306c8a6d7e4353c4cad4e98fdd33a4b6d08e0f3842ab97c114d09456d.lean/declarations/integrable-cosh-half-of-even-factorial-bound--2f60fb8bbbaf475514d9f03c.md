# integrable_cosh_half_of_even_factorial_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02c85a50-724c-0bff-7428-f8e842cd3a95",
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
  "slug": "integrable-cosh-half-of-even-factorial-bound--2f60fb8bbbaf475514d9f03c",
  "source": {
    "blob": "2e8ff1dd0dd4bf609f551a91ccd3bf2611000fda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 35,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variant53d3bfc306c8a6d7e4353c4cad4e98fdd33a4b6d08e0f3842ab97c114d09456d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f60fb8bbbaf475514d9f03cc8027bf9e7fc18424b5f2f33d56f2504f937b4aa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variant53d3bfc306c8a6d7e4353c4cad4e98fdd33a4b6d08e0f3842ab97c114d09456d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02c85a50-724c-0bff-7428-f8e842cd3a95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–89.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variant53d3bfc306c8a6d7e4353c4cad4e98fdd33a4b6d08e0f3842ab97c114d09456d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variant53d3bfc306c8a6d7e4353c4cad4e98fdd33a4b6d08e0f3842ab97c114d09456d.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e8ff1dd0dd4bf609f551a91ccd3bf2611000fda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
