# eLpNorm_le_mul_eLpNorm_of_ae_le_mul''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12247067-ba48-bf92-6854-cf96ed049d80",
  "kind": "theorem",
  "lexical_name": "eLpNorm_le_mul_eLpNorm_of_ae_le_mul''",
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
  "slug": "elpnorm-le-mul-elpnorm-of-ae-le-mul--ce8d271c925bc413da3b159b",
  "source": {
    "blob": "2c2c9429304e477f3a0fa05c5172a0431665359a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 191,
    "path": "GRWTSK/Analysis/MeasureTheory/Monotonicity/Variant08a601fcb1de125077d79b87654b9dad9bce19c27751f15f8d2805fd35185af2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce8d271c925bc413da3b159b566dbf36f0fdca186483623270e733895b5029b0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Monotonicity/Variant08a601fcb1de125077d79b87654b9dad9bce19c27751f15f8d2805fd35185af2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12247067-ba48-bf92-6854-cf96ed049d80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_le_mul_eLpNorm_of_ae_le_mul'' {f : α → ε} {c : ℝ≥0∞} {g : α → ε'} (p : ℝ≥0∞)
    (hf : AEStronglyMeasurable f μ) (h : ∀ᵐ x ∂μ, ‖f x‖ₑ ≤ c * ‖g x‖ₑ) :
    eLpNorm f p μ ≤ c * eLpNorm g p μ := by
  by_cases! hg : ¬ AEStronglyMeasurable g μ
  · rw [eLpNorm_of_not_aestronglyMeasurable hg]
    rcases eq_or_ne c 0 with rfl | hc
    · simp only [zero_mul, nonpos_iff_eq_zero] at h ⊢
      exact eLpNorm_zero_of_ae_enorm_zero' hf h
    · rw [ENNReal.mul_top hc]
      exact le_top
  by_cases h₀ : p = 0
  · simp [h₀, hf, hg]
  simp only [eLpNorm, hf, hg, h₀, ↓reduceIte]
  by_cases hp' : p = ⊤
  · simpa [hp'] using eLpNormEssSup_le_nnreal_smul_eLpNormEssSup_of_ae_le_mul' h
  · simpa [hp'] using eLpNorm'_le_mul_eLpNorm'_of_ae_le_mul hg h (ENNReal.toReal_pos h₀ hp')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Monotonicity/Variant08a601fcb1de125077d79b87654b9dad9bce19c27751f15f8d2805fd35185af2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Monotonicity/Variant08a601fcb1de125077d79b87654b9dad9bce19c27751f15f8d2805fd35185af2.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c2c9429304e477f3a0fa05c5172a0431665359a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
