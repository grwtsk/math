# variance_le_sub_mul_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce67c828-8154-9b2b-7498-09ff663f9a3b",
  "kind": "lemma",
  "lexical_name": "variance_le_sub_mul_sub",
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
  "slug": "variance-le-sub-mul-sub--6a48c7240a3586823175ae31",
  "source": {
    "blob": "ad0659ef500b78f88913c5d1d3570ce665a1af31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 424,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a48c7240a3586823175ae31526c07575caece56a402760bf734d9186ab1f0b7",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce67c828-8154-9b2b-7498-09ff663f9a3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma variance_le_sub_mul_sub [IsProbabilityMeasure μ] {a b : ℝ} {X : Ω → ℝ}
    (h : ∀ᵐ ω ∂μ, X ω ∈ Set.Icc a b) (hX : AEMeasurable X μ) :
    variance X μ ≤ (b - μ[X]) * (μ[X] - a) := by
  have ha : ∀ᵐ ω ∂μ, a ≤ X ω := h.mono fun ω h => h.1
  have hb : ∀ᵐ ω ∂μ, X ω ≤ b := h.mono fun ω h => h.2
  have hX_int₂ : Integrable (fun ω ↦ -X ω ^ 2) μ :=
    (memLp_of_bounded h hX.aestronglyMeasurable 2).integrable_sq.neg
  have hX_int₁ : Integrable (fun ω ↦ (a + b) * X ω) μ :=
    ((integrable_const (max |a| |b|)).mono' hX.aestronglyMeasurable
      (by filter_upwards [ha, hb] with ω using abs_le_max_abs_abs)).const_mul (a + b)
  have h0 : 0 ≤ - μ[X ^ 2] + (a + b) * μ[X] - a * b :=
    calc
      _ ≤ ∫ ω, (b - X ω) * (X ω - a) ∂μ := by
        apply integral_nonneg_of_ae
        filter_upwards [ha, hb] with ω ha' hb'
        exact mul_nonneg (by linarith : 0 ≤ b - X ω) (by linarith : 0 ≤ X ω - a)
      _ = ∫ ω, - X ω ^ 2 + (a + b) * X ω - a * b ∂μ :=
        integral_congr_ae <| ae_of_all μ fun ω ↦ by ring
      _ = ∫ ω, - X ω ^ 2 + (a + b) * X ω ∂μ - ∫ _, a * b ∂μ :=
        integral_sub (by fun_prop) (integrable_const (a * b))
      _ = ∫ ω, - X ω ^ 2 + (a + b) * X ω ∂μ - a * b := by simp
      _ = - μ[X ^ 2] + (a + b) * μ[X] - a * b := by
        simp [← integral_neg, ← integral_const_mul, integral_add hX_int₂ hX_int₁]
  calc
    _ ≤ (a + b) * μ[X] - a * b - μ[X] ^ 2 := by
      rw [variance_def' (memLp_of_bounded h hX.aestronglyMeasurable 2)]
      linarith
    _ = (b - μ[X]) * (μ[X] - a) := by ring

/-- **Popoviciu's inequality on variance**

The variance of a random variable `X` satisfying `a ≤ X ≤ b` almost everywhere is at most
`((b - a) / 2) ^ 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad0659ef500b78f88913c5d1d3570ce665a1af31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
