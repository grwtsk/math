# endpoint_weight_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32617095-3b24-023f-398f-2efeb874f972",
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
  "slug": "endpoint-weight-abs-le--3a9e6db6661d483b74cacd2a",
  "source": {
    "blob": "9fb96680ff30c7595c0d48bf7517e20493618e45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 122,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variantf5788c76fc9f74c83bdc72da74fc0e3a5d71d6956d30d60a0aef1d05b452cbb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a9e6db6661d483b74cacd2aaa5429c6d5f299b1c977862af6a64ebe5b770b8b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variantf5788c76fc9f74c83bdc72da74fc0e3a5d71d6956d30d60a0aef1d05b452cbb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32617095-3b24-023f-398f-2efeb874f972`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–153.

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
  have hn : 0 < (n : ℝ) := by
    exact_mod_cast (Nat.mul_pos (by omega : 0 < a) (by omega : 0 < K))
  have hN : 1 ≤ N := by nlinarith [square_adjacent_le_upper A hA]
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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variantf5788c76fc9f74c83bdc72da74fc0e3a5d71d6956d30d60a0aef1d05b452cbb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variantf5788c76fc9f74c83bdc72da74fc0e3a5d71d6956d30d60a0aef1d05b452cbb5.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fb96680ff30c7595c0d48bf7517e20493618e45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
