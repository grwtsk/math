# squareCorrectionBudget_le_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b355be6f-25de-f6e9-b762-3e66d362a026",
  "kind": "theorem",
  "lexical_name": "squareCorrectionBudget_le_upper",
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
  "slug": "squarecorrectionbudget-le-upper--52dd12fcb12210528eeeb02a",
  "source": {
    "blob": "4ff2c07d0b593b14207670441f6c0e540d793ecd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 180,
    "path": "GRWTSK/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52dd12fcb12210528eeeb02ac5e8139aadbc6c9a065a2798d043991a3be025a6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b355be6f-25de-f6e9-b762-3e66d362a026`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareCorrectionBudget_le_upper
    (n : ℕ) (hn : 1 ≤ n)
    (stageLog : DyadicInput (((n + 1 : ℕ) : ℝ)))
    (cutoffLog : DyadicInput ((exponentCutoff n : ℕ) : ℝ)) :
    squareCorrectionBudget n ≤
      (squareCorrectionUpperQ n stageLog cutoffLog : ℝ) := by
  rw [cast_squareCorrectionUpperQ]
  unfold squareCorrectionBudget
  have hstage := MarginLog.log_le_upperQ stageLog
  have hcutoff := MarginLog.log_le_upperQ cutoffLog
  have hstage0 : 0 ≤ Real.log ((n + 1 : ℕ) : ℝ) :=
    Real.log_natCast_nonneg _
  have hcutoff0 : 0 ≤ Real.log (exponentCutoff n : ℝ) :=
    Real.log_natCast_nonneg _
  have hstageUpper0 : 0 ≤ (MarginLog.upperQ stageLog : ℝ) :=
    hstage0.trans hstage
  calc
    2 * Real.log ((n + 1 : ℕ) : ℝ) * Real.log (exponentCutoff n : ℝ) ≤
        2 * (MarginLog.upperQ stageLog : ℝ) *
          Real.log (exponentCutoff n : ℝ) := by
      exact mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left hstage (by norm_num)) hcutoff0
    _ ≤ 2 * (MarginLog.upperQ stageLog : ℝ) *
          (MarginLog.upperQ cutoffLog : ℝ) := by
      exact mul_le_mul_of_nonneg_left hcutoff
        (mul_nonneg (by norm_num) hstageUpper0)

/-- Fully rational lower approximation to the canonical prime margin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ff2c07d0b593b14207670441f6c0e540d793ecd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
