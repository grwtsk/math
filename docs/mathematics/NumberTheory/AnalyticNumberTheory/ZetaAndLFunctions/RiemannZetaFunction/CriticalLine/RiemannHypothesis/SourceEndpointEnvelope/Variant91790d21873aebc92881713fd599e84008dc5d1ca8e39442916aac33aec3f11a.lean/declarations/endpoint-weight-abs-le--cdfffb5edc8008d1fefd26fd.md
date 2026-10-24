# endpoint_weight_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5feed217-2d5e-81e9-6206-146ba16eb520",
  "kind": "theorem",
  "lexical_name": "endpoint_weight_abs_le",
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
  "slug": "endpoint-weight-abs-le--cdfffb5edc8008d1fefd26fd",
  "source": {
    "blob": "7e4b0cf15e4c0ee6f231bdf1fd85cad445c55932",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 126,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointEnvelope/Variant91790d21873aebc92881713fd599e84008dc5d1ca8e39442916aac33aec3f11a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdfffb5edc8008d1fefd26fd383bf3bdcc8fb0756e7dd3d338360de0164aff16",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointEnvelope/Variant91790d21873aebc92881713fd599e84008dc5d1ca8e39442916aac33aec3f11a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5feed217-2d5e-81e9-6206-146ba16eb520`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem endpoint_weight_abs_le (A : ℝ) (hA : 1 ≤ A) :
    let a := vaughanCutoff A + 1
    let K := sourceKernelCutoff A / a
    |sourcePlainWeight A ((a * K : ℕ) : ℝ)| ≤ 2 * Real.exp (-A) := by
  let a := vaughanCutoff A + 1
  let N := sourceKernelCutoff A
  let K := N / a
  let n := a * K
  rcases quotient_geometry A hA with ⟨ha, hK, _, hdouble⟩
  change 2 ≤ a at ha
  change a ≤ K at hK
  change N < 2 * (a * K) at hdouble
  have hn : 0 < (n : ℝ) := by
    exact_mod_cast (Nat.mul_pos (by omega : 0 < a) (by omega : 0 < K))
  have hsN : a * a ≤ N := square_adjacent_le_upper A hA
  have hN : 1 ≤ N := by nlinarith
  have hf : Real.exp (2 * A) < (N : ℝ) + 1 := Nat.lt_floor_add_one _
  have hNr : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hpr : (N : ℝ) < 2 * (n : ℝ) := by exact_mod_cast hdouble
  have he : Real.exp (2 * A) ≤ 4 * (n : ℝ) := by linarith
  have hs : Real.exp A / 2 ≤ Real.sqrt (n : ℝ) := by
    apply Real.le_sqrt_of_sq_le
    rw [show 2 * A = A + A by ring, Real.exp_add] at he
    nlinarith
  have hinv : 1 / Real.sqrt (n : ℝ) ≤ 2 * Real.exp (-A) := by
    calc
      _ ≤ 1 / (Real.exp A / 2) :=
        one_div_le_one_div_of_le (by positivity) hs
      _ = _ := by rw [one_div_div, Real.exp_neg, div_eq_mul_inv]
  have hc := actual_correlation_abs_le_one A (Real.log (n : ℝ)) hA
  have hw : |sourcePlainWeight A (n : ℝ)| ≤ 1 / Real.sqrt (n : ℝ) := by
    unfold sourcePlainWeight
    rw [abs_div, abs_of_pos (Real.sqrt_pos.2 hn)]
    exact div_le_div_of_nonneg_right hc (Real.sqrt_nonneg _)
  exact hw.trans hinv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointEnvelope/Variant91790d21873aebc92881713fd599e84008dc5d1ca8e39442916aac33aec3f11a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointEnvelope/Variant91790d21873aebc92881713fd599e84008dc5d1ca8e39442916aac33aec3f11a.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e4b0cf15e4c0ee6f231bdf1fd85cad445c55932` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
