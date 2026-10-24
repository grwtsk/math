# earlySourceFactor_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8371e9a6-ea68-075f-abf3-fdc8c8a859c2",
  "kind": "theorem",
  "lexical_name": "earlySourceFactor_lower",
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
  "slug": "earlysourcefactor-lower--04126e8477423914ba48be99",
  "source": {
    "blob": "d03fd3af96bba818a0967dac06c09d1a9f0cfc9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 135,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8a5f4e1c0d108635fb46SourceStrictComplementaryEarlyBudget/Variant69fa4ef34e53064f2fe025dc1ef9a2575709a6063f464d84ad2a8669730cc029.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04126e8477423914ba48be997796b5c54b72b9516407bcfa8ff88cc440e1a7ba",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8a5f4e1c0d108635fb46SourceStrictComplementaryEarlyBudget/Variant69fa4ef34e53064f2fe025dc1ef9a2575709a6063f464d84ad2a8669730cc029.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8371e9a6-ea68-075f-abf3-fdc8c8a859c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem earlySourceFactor_lower {A : ℝ} (hA : 1 ≤ A) :
    1 / A ^ 3 ≤ earlySourceFactor A := by
  have hp : 0 < A := by linarith
  have hU : (0 : ℝ) < (vaughanCutoff A : ℝ) := by
    have := (actual_cutoff_order A hA).1
    linarith
  have hfloor : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hl := Real.log_le_log hU hfloor
  rw [Real.log_pow] at hl
  norm_num at hl
  have he : 1 / A ≤ Real.exp (-Real.log (vaughanCutoff A : ℝ) / 2) := by
    have hx := Real.exp_le_exp.mpr (show -Real.log A ≤
      -Real.log (vaughanCutoff A : ℝ) / 2 by linarith)
    simpa only [Real.exp_neg, Real.exp_log hp, one_div] using hx
  unfold earlySourceFactor
  calc
    1 / A ^ 3 = (1 / A) / A ^ 2 := by field_simp
    _ ≤ (1 / A) / (vaughanCutoff A : ℝ) :=
      div_le_div_of_nonneg_left (by positivity) hU hfloor
    _ ≤ _ := div_le_div_of_nonneg_right he hU.le

/-- The genuine known early contribution decreases at least linearly in the actual scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8a5f4e1c0d108635fb46SourceStrictComplementaryEarlyBudget/Variant69fa4ef34e53064f2fe025dc1ef9a2575709a6063f464d84ad2a8669730cc029.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/8a5f4e1c0d108635fb46SourceStrictComplementaryEarlyBudget/Variant69fa4ef34e53064f2fe025dc1ef9a2575709a6063f464d84ad2a8669730cc029.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d03fd3af96bba818a0967dac06c09d1a9f0cfc9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
