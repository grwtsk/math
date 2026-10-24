# log_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c77774cb-54b0-e1d2-6d11-72d37c673cb3",
  "kind": "theorem",
  "lexical_name": "log_bounds",
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
  "slug": "log-bounds--c242e60d81fda72080f6b8ab",
  "source": {
    "blob": "1b240a6bfa660e8396ad14beb4ef3948a21c4b09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 67,
    "path": "GRWTSK/Analysis/Real/RationalLogEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c242e60d81fda72080f6b8ab36f75b893275fc6d09e18e804da8dd0cb0a99d68",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/RationalLogEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c77774cb-54b0-e1d2-6d11-72d37c673cb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_bounds (q : ℚ) (hq : 1 ≤ q) (K : ℕ) :
    (lower q K : ℝ) ≤ Real.log (q : ℝ) ∧
      Real.log (q : ℝ) ≤ (lower q K : ℝ) + (width q K : ℝ) := by
  have hr0 : (0 : ℝ) ≤ (ratio q : ℝ) := by exact_mod_cast (ratio_bounds q hq).1
  have hr1 : (ratio q : ℝ) < 1 := by exact_mod_cast (ratio_bounds q hq).2
  have hlo := Real.sum_range_le_log_div hr0 hr1 K
  have hup := Real.log_div_le_sum_range_add hr0 hr1 K
  rw [source_of_ratio q hq] at hlo hup
  have hL : (lower q K : ℝ) = 2 *
      ∑ j ∈ Finset.range K, (ratio q : ℝ) ^ (2 * j + 1) / (2 * (j : ℝ) + 1) := by
    simp only [lower, Rat.cast_mul, Rat.cast_ofNat, Rat.cast_sum, Rat.cast_div,
      Rat.cast_pow, Rat.cast_add, Rat.cast_natCast, Rat.cast_one]
  have hW : (width q K : ℝ) =
      2 * (ratio q : ℝ) ^ (2 * K + 1) / (1 - (ratio q : ℝ) ^ 2) := by
    simp only [width, Rat.cast_div, Rat.cast_mul, Rat.cast_ofNat, Rat.cast_pow,
      Rat.cast_sub, Rat.cast_one]
  rw [hL, hW]
  simp only [mul_div_assoc]
  constructor <;> linarith

/-- Reduction to [1,2] gives a uniform rational geometric width. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/RationalLogEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/RationalLogEnclosure.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b240a6bfa660e8396ad14beb4ef3948a21c4b09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
