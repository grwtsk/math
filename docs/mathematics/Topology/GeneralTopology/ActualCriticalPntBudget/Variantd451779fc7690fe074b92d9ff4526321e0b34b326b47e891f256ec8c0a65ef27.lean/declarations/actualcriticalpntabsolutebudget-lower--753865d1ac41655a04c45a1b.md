# actualCriticalPntAbsoluteBudget_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4577b8ce-0269-ff90-cc99-00d8be956026",
  "kind": "theorem",
  "lexical_name": "actualCriticalPntAbsoluteBudget_lower",
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
  "slug": "actualcriticalpntabsolutebudget-lower--753865d1ac41655a04c45a1b",
  "source": {
    "blob": "d0656b825795eb6aa152e6620a0b87e6dd2a9a9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 63,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCriticalPntBudget/Variantd451779fc7690fe074b92d9ff4526321e0b34b326b47e891f256ec8c0a65ef27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:753865d1ac41655a04c45a1b847abac506e6004f221def75009c176f0309f6da",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCriticalPntBudget/Variantd451779fc7690fe074b92d9ff4526321e0b34b326b47e891f256ec8c0a65ef27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4577b8ce-0269-ff90-cc99-00d8be956026`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalPntAbsoluteBudget_lower (A c : ℝ) (hA : 4 ≤ A) (hc : 0 ≤ c) :
    Real.exp (A - 1 / 2 - c * Real.sqrt (2 * A)) / (30 * A ^ 9) ≤
      actualCriticalPntAbsoluteBudget A c := by
  have hp : 0 < A := by linarith
  have hb := actual_critical_absolute_upper_strip_lower A hA
  have hm : Real.exp (-c * Real.sqrt (2 * A)) *
      (∫ t in (2 * A - 1)..2 * A, |baselineLogKernel A t|) ≤
      ∫ t in (2 * A - 1)..2 * A, actualCriticalPntAbsoluteIntegrand A c t := by
    rw [← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_mono_on (by linarith)
      (((baseline_continuous A hp).abs.const_mul _).intervalIntegrable _ _)
      ((pnt_integrand_continuous A c hp).intervalIntegrable _ _)
    intro t ht
    have hs : Real.sqrt t ≤ Real.sqrt (2 * A) := Real.sqrt_le_sqrt ht.2
    have he : Real.exp (-c * Real.sqrt (2 * A)) ≤ Real.exp (-c * Real.sqrt t) :=
      Real.exp_le_exp.mpr (by nlinarith)
    exact mul_le_mul_of_nonneg_right he (abs_nonneg _)
  have hsub : Ioc (2 * A - 1) (2 * A) ⊆ Ioi (0 : ℝ) := by
    intro t ht
    exact mem_Ioi.mpr (by linarith [ht.1])
  have hf := setIntegral_mono_set (s := Ioc (2 * A - 1) (2 * A))
    (actualCriticalPntAbsoluteIntegrand_integrable A c hA hc)
    (Eventually.of_forall fun t => mul_nonneg (Real.exp_pos _).le (abs_nonneg _))
    (Eventually.of_forall fun t ht => hsub ht)
  rw [← intervalIntegral.integral_of_le (by linarith : 2 * A - 1 ≤ 2 * A)] at hf
  have hlo := mul_le_mul_of_nonneg_left hb (Real.exp_pos (-c * Real.sqrt (2 * A))).le
  have he : Real.exp (-c * Real.sqrt (2 * A)) *
      (Real.exp (A - 1 / 2) / (30 * A ^ 9)) =
      Real.exp (A - 1 / 2 - c * Real.sqrt (2 * A)) / (30 * A ^ 9) := by
    rw [← mul_div_assoc, ← Real.exp_add]
    congr 2
    ring
  rw [he] at hlo
  exact hlo.trans (hm.trans hf)

/-- The full PNT absolute envelope budget diverges for every fixed nonnegative c. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCriticalPntBudget/Variantd451779fc7690fe074b92d9ff4526321e0b34b326b47e891f256ec8c0a65ef27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCriticalPntBudget/Variantd451779fc7690fe074b92d9ff4526321e0b34b326b47e891f256ec8c0a65ef27.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0656b825795eb6aa152e6620a0b87e6dd2a9a9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
