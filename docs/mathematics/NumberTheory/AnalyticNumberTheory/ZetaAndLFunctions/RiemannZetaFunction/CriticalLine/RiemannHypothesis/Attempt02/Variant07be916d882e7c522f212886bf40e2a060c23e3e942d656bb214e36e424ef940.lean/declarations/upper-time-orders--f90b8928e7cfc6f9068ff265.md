# upper_time_orders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1eb9940-7a71-a557-1654-e47c32381fd3",
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
  "slug": "upper-time-orders--f90b8928e7cfc6f9068ff265",
  "source": {
    "blob": "5030a4af413ef9d1b36f4787212d814df633c016",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant07be916d882e7c522f212886bf40e2a060c23e3e942d656bb214e36e424ef940.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f90b8928e7cfc6f9068ff2653a131ffb778a4c5967a0105da87002db74bda82d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant07be916d882e7c522f212886bf40e2a060c23e3e942d656bb214e36e424ef940.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1eb9940-7a71-a557-1654-e47c32381fd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–64.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant07be916d882e7c522f212886bf40e2a060c23e3e942d656bb214e36e424ef940.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant07be916d882e7c522f212886bf40e2a060c23e3e942d656bb214e36e424ef940.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5030a4af413ef9d1b36f4787212d814df633c016` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
