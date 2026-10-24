# actualReciprocalXiVariationBudget_tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e82563f-a20b-6e5f-3eb2-95081634b9dd",
  "kind": "theorem",
  "lexical_name": "actualReciprocalXiVariationBudget_tendsto_atTop",
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
  "slug": "actualreciprocalxivariationbudget-tendsto-attop--9ac8bbfe658fa56ab18321d2",
  "source": {
    "blob": "4bf4c9e21165225775a01eac13b8de4073bdf1a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 144,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallenge/Variantf5944f69fa72d5673d51a6b65df0925261b5dec265de559bcc37223e412c9a50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ac8bbfe658fa56ab18321d23efce5ac2685eadf4b44a07e4628b0ff8db2761a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallenge/Variantf5944f69fa72d5673d51a6b65df0925261b5dec265de559bcc37223e412c9a50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e82563f-a20b-6e5f-3eb2-95081634b9dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualReciprocalXiVariationBudget_tendsto_atTop :
    Tendsto (fun q : ℕ => actualReciprocalXiVariationBudget (8 * q)) atTop atTop := by
  have hn : Tendsto (fun q : ℕ => (q : ℝ)) atTop atTop := tendsto_natCast_atTop_atTop
  have hs := Real.tendsto_sqrt_atTop.comp (hn.const_mul_atTop (by norm_num : (0 : ℝ) < 8))
  have he := hs.atTop_mul_const
    (div_pos (Real.log_pos (by norm_num : (1 : ℝ) < 2)) (by norm_num : (0 : ℝ) < 8))
  apply tendsto_atTop.2
  intro b
  filter_upwards [he.eventually_ge_atTop b, eventually_ge_atTop (2 : ℕ)] with q hb hq
  have hl := Real.log_le_log (by norm_num : (0 : ℝ) < 2)
    (show (2 : ℝ) ≤ (q : ℝ) by exact_mod_cast hq)
  calc
    b ≤ Real.sqrt (8 * (q : ℝ)) * (Real.log 2 / 8) := hb
    _ = Real.sqrt ((8 * q : ℕ) : ℝ) * Real.log 2 / 8 := by push_cast; ring
    _ ≤ Real.sqrt ((8 * q : ℕ) : ℝ) * Real.log (q : ℝ) / 8 := by
      exact div_le_div_of_nonneg_right
        (mul_le_mul_of_nonneg_left hl (Real.sqrt_nonneg _)) (by norm_num)
    _ ≤ actualReciprocalXiVariationBudget (8 * q) := actualReciprocalXiVariationBudget_lower hq

/-- No fixed tail bound exists for this absolute Abel budget; no signed-pair claim is made. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallenge/Variantf5944f69fa72d5673d51a6b65df0925261b5dec265de559bcc37223e412c9a50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallenge/Variantf5944f69fa72d5673d51a6b65df0925261b5dec265de559bcc37223e412c9a50.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bf4c9e21165225775a01eac13b8de4073bdf1a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
