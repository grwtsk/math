# upper_time_orders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99f773d1-17bc-54ab-c40b-71f4531effe7",
  "kind": "theorem",
  "lexical_name": "upper_time_orders",
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
  "slug": "upper-time-orders--8dc631cd1629af717a5284b8",
  "source": {
    "blob": "f1ac264af0fefb1d57d73ab68b06003e5402ddc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variante4ed480f72f4c20d38d3660e6f105fa21146396d51e1e4a364826f9f86d27922.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dc631cd1629af717a5284b8dd0db0c0cf440044e69254b1c0b90acfca31fa36",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variante4ed480f72f4c20d38d3660e6f105fa21146396d51e1e4a364826f9f86d27922.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99f773d1-17bc-54ab-c40b-71f4531effe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem upper_time_orders {A : ℝ} (hA : 1 ≤ A) :
    actualTimeLower A ≤ 2 * A - actualColumnUpper A ∧
      2 * A - actualColumnUpper A ≤ Real.log (sourceKernelCutoff A : ℝ) := by
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (U + 1)
  have hU : 0 < (U : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hKa : U + 1 ≤ K := actual_column_window_nonempty hA
  have hK : 0 < (K : ℝ) := by exact_mod_cast (show 0 < K by omega)
  have hm : (K : ℝ) * ((U + 1 : ℕ) : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast Nat.div_mul_le_self (sourceKernelCutoff A) (U + 1)
  have hf : (sourceKernelCutoff A : ℝ) ≤ Real.exp (2 * A) :=
    Nat.floor_le (Real.exp_pos _).le
  have hs : (K : ℝ) * (U : ℝ) < Real.exp (2 * A) := by
    simp only [Nat.cast_add, Nat.cast_one] at hm
    nlinarith
  have hl := Real.log_lt_log (mul_pos hK hU) hs
  rw [Real.log_mul hK.ne' hU.ne', Real.log_exp] at hl
  have hb := actualJointSupportUpper_le_log_sourceCutoff A hA
  unfold actualJointSupportUpper at hb
  have hak : Real.log ((U + 1 : ℕ) : ℝ) ≤ Real.log (K : ℝ) :=
    Real.log_le_log (by positivity) (by exact_mod_cast hKa)
  change Real.log (U : ℝ) ≤ 2 * A - Real.log (K : ℝ) ∧
    2 * A - Real.log (K : ℝ) ≤ Real.log (sourceKernelCutoff A : ℝ)
  constructor <;> linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variante4ed480f72f4c20d38d3660e6f105fa21146396d51e1e4a364826f9f86d27922.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variante4ed480f72f4c20d38d3660e6f105fa21146396d51e1e4a364826f9f86d27922.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1ac264af0fefb1d57d73ab68b06003e5402ddc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
