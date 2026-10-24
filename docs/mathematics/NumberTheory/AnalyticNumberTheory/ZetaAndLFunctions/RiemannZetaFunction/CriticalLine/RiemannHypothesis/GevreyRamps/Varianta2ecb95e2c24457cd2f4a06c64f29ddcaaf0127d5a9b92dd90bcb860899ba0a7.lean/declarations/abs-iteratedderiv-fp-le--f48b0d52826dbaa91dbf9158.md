# abs_iteratedDeriv_fP_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2dc5d26c-e5f4-f1fe-ffa1-a799a59d3aa6",
  "kind": "lemma",
  "lexical_name": "abs_iteratedDeriv_fP_le",
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
  "slug": "abs-iteratedderiv-fp-le--f48b0d52826dbaa91dbf9158",
  "source": {
    "blob": "52b7f6d2bfef7d2c4c681ff0d256003749e77ca6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 121,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f48b0d52826dbaa91dbf9158a3f2e1b13429497299d55d30da2f8bd92f7a6de1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2dc5d26c-e5f4-f1fe-ffa1-a799a59d3aa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_iteratedDeriv_fP_le (hϱ : GevreyProfile s A B ϱ) (hw : 0 < w) {k : ℕ} (hk : 1 ≤ k)
    (u : ℝ) : |iteratedDeriv k (fP ϱ L w) u|
      ≤ (Set.Ioo (L / 2 - w) (L / 2)).indicator (fun _ => (w⁻¹) ^ k * (B * A ^ k * (k : ℝ) ^ (s * k))) u := by
  rw [iteratedDeriv_fP hϱ, abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul, abs_mul,
    abs_of_nonneg (by positivity : (0:ℝ) ≤ (w⁻¹) ^ k)]
  have h := hϱ.abs_iteratedDeriv_le_indicator hk ((L / 2 - u) / w)
  have hset : ((L / 2 - u) / w ∈ Set.Ioo (0:ℝ) 1) ↔ (u ∈ Set.Ioo (L / 2 - w) (L / 2)) := by
    simp only [Set.mem_Ioo, div_pos_iff_of_pos_right hw, div_lt_one hw]
    constructor <;> intro h' <;> constructor <;> linarith [h'.1, h'.2]
  by_cases hu : u ∈ Set.Ioo (L / 2 - w) (L / 2)
  · rw [Set.indicator_of_mem hu]
    rw [Set.indicator_of_mem (hset.mpr hu)] at h
    exact mul_le_mul_of_nonneg_left h (by positivity)
  · rw [Set.indicator_of_notMem hu]
    rw [Set.indicator_of_notMem (fun h' => hu (hset.mp h'))] at h
    have : |iteratedDeriv k ϱ ((L / 2 - u) / w)| = 0 := le_antisymm h (abs_nonneg _)
    rw [this, mul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52b7f6d2bfef7d2c4c681ff0d256003749e77ca6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
