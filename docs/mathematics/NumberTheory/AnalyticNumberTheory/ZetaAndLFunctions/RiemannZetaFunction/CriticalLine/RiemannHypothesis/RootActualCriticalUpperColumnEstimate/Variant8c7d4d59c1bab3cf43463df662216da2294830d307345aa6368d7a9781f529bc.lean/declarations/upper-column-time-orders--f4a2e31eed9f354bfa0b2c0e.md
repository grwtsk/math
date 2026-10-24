# upper_column_time_orders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abafaa73-e892-afb1-f817-a9597d4b32d4",
  "kind": "theorem",
  "lexical_name": "upper_column_time_orders",
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
  "slug": "upper-column-time-orders--f4a2e31eed9f354bfa0b2c0e",
  "source": {
    "blob": "d1af9b61f52246d8859e58d175a09a5ed453eafc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalUpperColumnEstimate/Variant8c7d4d59c1bab3cf43463df662216da2294830d307345aa6368d7a9781f529bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4a2e31eed9f354bfa0b2c0e0840b60e935dca9a769d1e2409bd7174b89169fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalUpperColumnEstimate/Variant8c7d4d59c1bab3cf43463df662216da2294830d307345aa6368d7a9781f529bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abafaa73-e892-afb1-f817-a9597d4b32d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem upper_column_time_orders {A : ℝ} (hA : 1 ≤ A) :
    actualTimeLower A ≤ 2 * A - actualColumnUpper A ∧
      2 * A - actualColumnUpper A ≤ Real.log (sourceKernelCutoff A : ℝ) := by
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (U + 1)
  have hU : 0 < (U : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hK : 0 < (K : ℝ) := by
    have hh := actual_column_window_nonempty hA
    exact_mod_cast (show 0 < K by dsimp [K]; omega)
  have hm : (K : ℝ) * ((U + 1 : ℕ) : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast Nat.div_mul_le_self (sourceKernelCutoff A) (U + 1)
  have hf : (sourceKernelCutoff A : ℝ) ≤ Real.exp (2 * A) :=
    Nat.floor_le (Real.exp_pos _).le
  have hstrict : (K : ℝ) * (U : ℝ) < Real.exp (2 * A) := by
    simp only [Nat.cast_add, Nat.cast_one] at hm
    nlinarith
  have hl := Real.log_lt_log (mul_pos hK hU) hstrict
  rw [Real.log_mul hK.ne' hU.ne', Real.log_exp] at hl
  have hb := actualJointSupportUpper_le_log_sourceCutoff A hA
  unfold actualJointSupportUpper at hb
  have hs : Real.log ((U + 1 : ℕ) : ℝ) ≤ Real.log (K : ℝ) := by
    apply Real.log_le_log (by positivity)
    exact_mod_cast actual_column_window_nonempty hA
  change Real.log (U : ℝ) ≤ 2 * A - Real.log (K : ℝ) ∧
    2 * A - Real.log (K : ℝ) ≤ Real.log (sourceKernelCutoff A : ℝ)
  constructor <;> linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalUpperColumnEstimate/Variant8c7d4d59c1bab3cf43463df662216da2294830d307345aa6368d7a9781f529bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalUpperColumnEstimate/Variant8c7d4d59c1bab3cf43463df662216da2294830d307345aa6368d7a9781f529bc.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1af9b61f52246d8859e58d175a09a5ed453eafc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
