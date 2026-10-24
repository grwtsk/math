# cubicSourceMoment_eq_packets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8db1ecb-afb8-a308-3f81-a65763d6b2fd",
  "kind": "theorem",
  "lexical_name": "cubicSourceMoment_eq_packets",
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
  "slug": "cubicsourcemoment-eq-packets--a77b244e75027f7e0d064db3",
  "source": {
    "blob": "82fda8ed57adb6c764d002cdf2324735730ad264",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 211,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Variant8bc86a07a5dbe888e201154a52ad1875a0f824c33fb38af7b7f8396303e46608.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a77b244e75027f7e0d064db3fcdca961d59ba17631036833409d03bb53afa5ad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Variant8bc86a07a5dbe888e201154a52ad1875a0f824c33fb38af7b7f8396303e46608.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8db1ecb-afb8-a308-3f81-a65763d6b2fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cubicSourceMoment_eq_packets {A : ℝ} (hA : 1 ≤ A) :
    cubicSourceMoment A = (1 / 4 : ℝ) *
      ∑ n ∈ primePowerInventory (2 * A),
      ∑ m ∈ primePowerInventory (2 * A),
      ∑ r ∈ primePowerInventory (2 * A),
        compensatedCoefficient n * compensatedCoefficient m * compensatedCoefficient r *
          (sourceCorrelation explicitSecondDerivative A (Real.log n + Real.log m + Real.log r) +
            sourceCorrelation explicitSecondDerivative A (Real.log n + Real.log m - Real.log r) +
            sourceCorrelation explicitSecondDerivative A (Real.log n - Real.log m + Real.log r) +
            sourceCorrelation explicitSecondDerivative A
              (-Real.log n + Real.log m + Real.log r)) := by
  let S := primePowerInventory (2 * A)
  let term : ℕ → ℕ → ℕ → ℝ → ℝ := fun n m r ξ =>
    compensatedCoefficient n * compensatedCoefficient m * compensatedCoefficient r *
      ((Real.cos (2 * Real.pi * ξ * Real.log n) *
        Real.cos (2 * Real.pi * ξ * Real.log m) *
        Real.cos (2 * Real.pi * ξ * Real.log r)) * sourceDensity A ξ)
  have hint : ∀ n m r, Integrable (term n m r) := by
    intro n m r
    dsimp only [term]
    apply Integrable.const_mul
    apply (sourceDensity_integrable hA).bdd_mul (by fun_prop) (c := 1)
    filter_upwards [] with ξ
    simp only [Real.norm_eq_abs, abs_mul]
    calc
      _ ≤ 1 * 1 * 1 := mul_le_mul
        (mul_le_mul (Real.abs_cos_le_one _) (Real.abs_cos_le_one _)
          (abs_nonneg _) (by norm_num)) (Real.abs_cos_le_one _)
        (abs_nonneg _) (by norm_num)
      _ = 1 := by norm_num
  have he : (fun ξ : ℝ => compensatedFourierSymbol A ξ ^ 3 * sourceDensity A ξ) =
      fun ξ => ∑ n ∈ S, ∑ m ∈ S, ∑ r ∈ S, term n m r ξ := by
    funext ξ
    rw [compensatedFourierSymbol, sum_cube]
    simp only [Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro n _
    apply Finset.sum_congr rfl
    intro m _
    apply Finset.sum_congr rfl
    intro r _
    dsimp only [term]
    ring
  unfold cubicSourceMoment
  rw [he]
  rw [integral_finsetSum S (fun n _ =>
    integrable_finsetSum S (fun m _ => integrable_finsetSum S (fun r _ => hint n m r)))]
  simp_rw [integral_finsetSum S (fun m _ =>
    integrable_finsetSum S (fun r _ => hint _ m r))]
  simp_rw [integral_finsetSum S (fun r _ => hint _ _ r)]
  simp_rw [term, integral_const_mul, cosine_cubic_source_integral hA]
  simp only [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  apply Finset.sum_congr rfl
  intro m _
  apply Finset.sum_congr rfl
  intro r _
  ring

/-- Exact fiber grouping, with no positivity assumption on the coefficients.
Choosing rational keys aggregates equal ratios by equality in `ℚ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Variant8bc86a07a5dbe888e201154a52ad1875a0f824c33fb38af7b7f8396303e46608.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Variant8bc86a07a5dbe888e201154a52ad1875a0f824c33fb38af7b7f8396303e46608.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82fda8ed57adb6c764d002cdf2324735730ad264` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
