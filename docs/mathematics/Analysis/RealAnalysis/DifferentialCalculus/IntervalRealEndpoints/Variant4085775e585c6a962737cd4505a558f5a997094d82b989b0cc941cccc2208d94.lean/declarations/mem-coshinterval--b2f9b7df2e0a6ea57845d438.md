# mem_coshInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ccf06335-ede8-4198-d638-340d5b156aa1",
  "kind": "theorem",
  "lexical_name": "mem_coshInterval",
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
  "slug": "mem-coshinterval--b2f9b7df2e0a6ea57845d438",
  "source": {
    "blob": "a8bfe74749149205173be5f0435832353e0c6d91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 363,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2f9b7df2e0a6ea57845d438803ea691ad8ecbea3037aa06bee2c9d208fb6ce6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccf06335-ede8-4198-d638-340d5b156aa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_coshInterval {x : ℝ} {I : IntervalReal} (hx : x ∈ I) :
    Real.cosh x ∈ coshInterval I := by
  simp only [mem_def] at hx
  unfold coshInterval
  split_ifs with h1 h2
  · -- Case: 0 ≤ I.lo (cosh increasing on [0, ∞))
    simp only [mem_def]
    have hx_nonneg : 0 ≤ x := le_trans h1 hx.1
    constructor
    · rw [Real.cosh_le_cosh, abs_of_nonneg h1, abs_of_nonneg hx_nonneg]
      exact hx.1
    · rw [Real.cosh_le_cosh, abs_of_nonneg hx_nonneg, abs_of_nonneg (le_trans h1 I.le)]
      exact hx.2
  · -- Case: I.hi ≤ 0 (cosh decreasing on (-∞, 0])
    simp only [mem_def]
    have hx_nonpos : x ≤ 0 := le_trans hx.2 h2
    have hlo_neg : I.lo < 0 := not_le.mp h1
    constructor
    · rw [Real.cosh_le_cosh, abs_of_nonpos h2, abs_of_nonpos hx_nonpos]
      linarith
    · rw [Real.cosh_le_cosh, abs_of_nonpos hx_nonpos, abs_of_nonpos (le_of_lt hlo_neg)]
      linarith
  · -- Case: interval contains 0
    simp only [mem_def]
    push Not at h1 h2
    constructor
    · exact Real.one_le_cosh x
    · -- cosh(x) ≤ max(cosh(lo), cosh(hi))
      by_cases! hx0 : 0 ≤ x
      · -- x ≥ 0: cosh(x) ≤ cosh(hi) since |x| ≤ |hi|
        have hle : Real.cosh x ≤ Real.cosh I.hi := by
          rw [Real.cosh_le_cosh, abs_of_nonneg hx0, abs_of_pos h2]
          exact hx.2
        exact le_trans hle (le_max_right _ _)
      · -- x < 0: cosh(x) ≤ cosh(lo) since |x| ≤ |lo|
        have hx_nonpos : x ≤ 0 := le_of_lt hx0
        have hle : Real.cosh x ≤ Real.cosh I.lo := by
          rw [Real.cosh_le_cosh, abs_of_nonpos hx_nonpos, abs_of_neg h1]
          linarith
        exact le_trans hle (le_max_left _ _)

/-! ### Square root interval -/

/-- Interval bound for sqrt.
    For any interval I, sqrt(x) ∈ [0, max(hi, 1)] for x ∈ I.
    This is always sound because:
    - sqrt(x) ≥ 0 for all x (Mathlib convention: sqrt(negative) = 0)
    - sqrt(x) ≤ max(x, 1) for x ≥ 0, so sqrt(x) ≤ max(hi, 1) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8bfe74749149205173be5f0435832353e0c6d91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
