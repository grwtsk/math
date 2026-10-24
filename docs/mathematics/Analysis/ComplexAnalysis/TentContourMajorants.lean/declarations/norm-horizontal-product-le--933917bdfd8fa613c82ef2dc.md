# norm_horizontal_product_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46a5abef-0cef-0bd9-c82f-e2d26e660ea0",
  "kind": "theorem",
  "lexical_name": "norm_horizontal_product_le",
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
  "slug": "norm-horizontal-product-le--933917bdfd8fa613c82ef2dc",
  "source": {
    "blob": "6112bcfd991df7cea0c12af7deea378f689bba53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 172,
    "path": "GRWTSK/Analysis/Complex/TentContourMajorants.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:933917bdfd8fa613c82ef2dc7de6e32f3cd5c320e3e722a2aff89d655ddb3aa6",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentContourMajorants.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46a5abef-0cef-0bd9-c82f-e2d26e660ea0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_horizontal_product_le (g : ℂ → ℂ) (x h l y Q : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (hl : l ≤ 2) (hy : y ≠ 0) (hQ : 0 ≤ Q)
    (hi : IntervalIntegrable (fun σ : ℝ =>
      g ((σ : ℂ) + (y : ℂ) * Complex.I) *
        tentKernel x h ((σ : ℂ) + (y : ℂ) * Complex.I)) volume l 2)
    (hg : ∀ σ ∈ Icc l 2, ‖g ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤ Q) :
    ‖horizontal (fun z => g z * tentKernel x h z) l 2 y‖ ≤
      Q * horizontalBudget x h / y ^ 2 := by
  have hb : IntervalIntegrable (fun σ => Q * numeratorProfile x h σ / (h * y ^ 2))
      volume l 2 := by
    apply Continuous.intervalIntegrable
    exact ((continuous_const.mul (continuous_numeratorProfile x h)).div_const _)
  calc
    _ ≤ ∫ σ in l..2, ‖g ((σ : ℂ) + (y : ℂ) * Complex.I) *
        tentKernel x h ((σ : ℂ) + (y : ℂ) * Complex.I)‖ :=
      intervalIntegral.norm_integral_le_integral_norm hl
    _ ≤ ∫ σ in l..2, Q * numeratorProfile x h σ / (h * y ^ 2) := by
      apply intervalIntegral.integral_mono_on hl hi.norm hb
      intro σ hσ
      rw [norm_mul]
      have hp := mul_le_mul (hg σ hσ) (norm_kernel_horizontal_le x h σ y hh ha hy)
        (norm_nonneg _) hQ
      simpa only [mul_div_assoc] using hp
    _ = Q / (h * y ^ 2) * (∫ σ in l..2, numeratorProfile x h σ) := by
      simp_rw [show ∀ σ, Q * numeratorProfile x h σ / (h * y ^ 2) =
        (Q / (h * y ^ 2)) * numeratorProfile x h σ by intro σ; ring]
      rw [intervalIntegral.integral_const_mul]
    _ ≤ Q / (h * y ^ 2) * profilePrimitive x h 2 :=
      mul_le_mul_of_nonneg_left (integral_numeratorProfile_le x h l hh ha) (by positivity)
    _ = _ := by unfold horizontalBudget; ring

/-- With a negative exponent the smallest endpoint is the largest power. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentContourMajorants.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentContourMajorants.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6112bcfd991df7cea0c12af7deea378f689bba53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
