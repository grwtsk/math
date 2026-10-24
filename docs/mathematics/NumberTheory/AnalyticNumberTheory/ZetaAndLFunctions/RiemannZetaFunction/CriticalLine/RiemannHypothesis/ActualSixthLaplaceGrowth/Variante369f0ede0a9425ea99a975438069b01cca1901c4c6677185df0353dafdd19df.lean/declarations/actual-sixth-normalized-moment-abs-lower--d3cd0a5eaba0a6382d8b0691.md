# actual_sixth_normalized_moment_abs_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f462fd22-fc92-802d-3714-1224fb27996e",
  "kind": "theorem",
  "lexical_name": "actual_sixth_normalized_moment_abs_lower",
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
  "slug": "actual-sixth-normalized-moment-abs-lower--d3cd0a5eaba0a6382d8b0691",
  "source": {
    "blob": "d9e23669f6630852e9664ff3161c86bfcf18b60f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 81,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplaceGrowth/Variante369f0ede0a9425ea99a975438069b01cca1901c4c6677185df0353dafdd19df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3cd0a5eaba0a6382d8b06912dca3861db8de4f5421a7f84170245c380a12414",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplaceGrowth/Variante369f0ede0a9425ea99a975438069b01cca1901c4c6677185df0353dafdd19df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f462fd22-fc92-802d-3714-1224fb27996e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_sixth_normalized_moment_abs_lower {A : ℝ} (hA : 8 ≤ A) :
    (2 / 9) * (Real.exp ((A - 2) / 6) / (A ^ 4 * Real.sqrt A)) ≤
      |testMoment A (1 / 6)| := by
  have hA1 : 1 ≤ A := by linarith
  have hp := actual_bump_moment_positive hA1 (1 / 6)
  have hn := source_normalization_pos A (by linarith)
  have hr0 : 0 < Real.sqrt (sourceNormalization A) := Real.sqrt_pos.mpr hn
  have hr1 : Real.sqrt (sourceNormalization A) ≤ 1 :=
    Real.sqrt_le_one.mpr (source_normalization_le_one hA)
  rw [exact_actual_normalized_laplace_multiplier hA1, abs_div, abs_mul,
    abs_of_pos hp, abs_of_pos hr0]
  norm_num
  calc
    _ ≤ (2 / 9) * bumpMoment A (1 / 6) :=
      mul_le_mul_of_nonneg_left (actual_sixth_bump_moment_edge_lower hA) (by norm_num)
    _ = ((2 / 9) * bumpMoment A (1 / 6)) / 1 := by simp
    _ ≤ _ := div_le_div_of_nonneg_left (by positivity) hr0 hr1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplaceGrowth/Variante369f0ede0a9425ea99a975438069b01cca1901c4c6677185df0353dafdd19df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplaceGrowth/Variante369f0ede0a9425ea99a975438069b01cca1901c4c6677185df0353dafdd19df.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9e23669f6630852e9664ff3161c86bfcf18b60f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
