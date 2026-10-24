# boundaryInverse_eq_zero_of_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a765fc32-e1da-ad1d-27c0-d760becb08a4",
  "kind": "theorem",
  "lexical_name": "boundaryInverse_eq_zero_of_neg",
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
  "slug": "boundaryinverse-eq-zero-of-neg--758ab80115f2b448f94c5fca",
  "source": {
    "blob": "30d7cafb6e5b0eedbf7b27bd84c2b68452173962",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CandidateCausalityLiteralCheck/Variant82a054615cdc998393a5e786a93c0979d1c77211d008e41e254588565881aa9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:758ab80115f2b448f94c5fca6091cee1d4faa8539931cc83f4a749ae80d82434",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CandidateCausalityLiteralCheck/Variant82a054615cdc998393a5e786a93c0979d1c77211d008e41e254588565881aa9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a765fc32-e1da-ad1d-27c0-d760becb08a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryInverse_eq_zero_of_neg (F : ℂ → ℂ)
    (hF : ∀ z : ℂ, 0 ≤ z.re → DifferentiableAt ℂ F z)
    (φ : ℝ → ℝ) (hφ : Integrable φ)
    (hb : ∀ σ t : ℝ, 0 ≤ σ → ‖F ((σ : ℂ) + (t : ℂ) * I)‖ ≤ φ t)
    (htop : Tendsto φ atTop (nhds 0)) (hbot : Tendsto φ atBot (nhds 0))
    (x : ℝ) (hx : x < 0) : boundaryInverse F x = 0 := by
  let G : ℂ → ℂ := fun z => Complex.exp ((x : ℂ) * z) * F z
  have hn (σ t : ℝ) : ‖Complex.exp ((x : ℂ) * ((σ : ℂ) + (t : ℂ) * I))‖ =
      Real.exp (x * σ) := by simp [Complex.norm_exp]
  have hφ0 (t : ℝ) : 0 ≤ φ t := (norm_nonneg _).trans (hb 0 t le_rfl)
  have hmajor (σ t : ℝ) (hσ : 0 ≤ σ) : ‖G ((σ : ℂ) + (t : ℂ) * I)‖ ≤ φ t := by
    dsimp only [G]
    rw [norm_mul, hn]
    calc
      Real.exp (x * σ) * ‖F ((σ : ℂ) + (t : ℂ) * I)‖ ≤
          Real.exp (x * σ) * φ t := mul_le_mul_of_nonneg_left (hb σ t hσ) (by positivity)
      _ ≤ 1 * φ t := mul_le_mul_of_nonneg_right
        (Real.exp_le_one_iff.mpr (mul_nonpos_of_nonpos_of_nonneg hx.le hσ)) (hφ0 t)
      _ = φ t := one_mul _
  have hshift (σ : ℝ) (hσ : 0 ≤ σ) :
      (∫ t : ℝ, G ((σ : ℂ) + (t : ℂ) * I)) = ∫ t : ℝ, G ((t : ℂ) * I) := by
    simpa only [Complex.ofReal_zero, zero_add, G, Pi.mul_apply] using
      Zeta23.WeilEF.vertical_line_shift hσ
        (fun z hz _ => (by fun_prop :
          DifferentiableAt ℂ (fun w : ℂ => Complex.exp ((x : ℂ) * w)) z).mul (hF z hz))
        hφ (fun s t hs _ => hmajor s t hs) htop hbot
  have hbound (σ : ℝ) (hσ : 0 ≤ σ) :
      ‖∫ t : ℝ, G ((t : ℂ) * I)‖ ≤ Real.exp (x * σ) * ∫ t : ℝ, φ t := by
    rw [← hshift σ hσ, ← integral_const_mul]
    apply norm_integral_le_of_norm_le (hφ.const_mul (Real.exp (x * σ)))
    filter_upwards [] with t
    dsimp only [G]
    rw [norm_mul, hn]
    exact mul_le_mul_of_nonneg_left (hb σ t hσ) (by positivity)
  have ht : Tendsto (fun σ : ℝ => Real.exp (x * σ) * ∫ t : ℝ, φ t) atTop (nhds 0) := by
    simpa using (Real.tendsto_exp_atBot.comp
      (tendsto_id.const_mul_atTop_of_neg hx)).mul_const (∫ t : ℝ, φ t)
  have hz : ‖∫ t : ℝ, G ((t : ℂ) * I)‖ = 0 := by
    apply le_antisymm _ (norm_nonneg _)
    exact ge_of_tendsto ht (eventually_atTop.2 ⟨0, fun σ hσ => hbound σ hσ⟩)
  have hi := norm_eq_zero.mp hz
  simp only [boundaryInverse, G, hi, mul_zero]

/-- The actual candidate has one integrable, vanishing majorant for every right vertical line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CandidateCausalityLiteralCheck/Variant82a054615cdc998393a5e786a93c0979d1c77211d008e41e254588565881aa9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CandidateCausalityLiteralCheck/Variant82a054615cdc998393a5e786a93c0979d1c77211d008e41e254588565881aa9a.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30d7cafb6e5b0eedbf7b27bd84c2b68452173962` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
