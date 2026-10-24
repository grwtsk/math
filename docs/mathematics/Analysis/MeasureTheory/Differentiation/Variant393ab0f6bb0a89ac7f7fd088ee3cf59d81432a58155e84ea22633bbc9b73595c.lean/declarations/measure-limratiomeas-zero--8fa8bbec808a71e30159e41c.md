# measure_limRatioMeas_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4306b546065d2c8e4816f30f3507973d6ace6a16",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 496,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c085b680-0b24-a8e0-5035-b8eb8bc5f859",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:713d8e2a-66ab-64ae-3597-c7674cb16914",
  "kind": "theorem",
  "lexical_name": "measure_limRatioMeas_zero",
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
  "slug": "measure-limratiomeas-zero--8fa8bbec808a71e30159e41c",
  "source": {
    "blob": "4306b546065d2c8e4816f30f3507973d6ace6a16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 518,
    "line": 496,
    "path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fa8bbec808a71e30159e41c716f1387dfae49410de0bfa14169c48332cdce02",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:713d8e2a-66ab-64ae-3597-c7674cb16914`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_limRatioMeas_zero : ρ {x | v.limRatioMeas hρ x = 0} = 0 := by
  refine measure_null_of_locally_null _ fun x _ => ?_
  obtain ⟨o, xo, o_open, μo⟩ : ∃ o : Set α, x ∈ o ∧ IsOpen o ∧ μ o < ∞ :=
    Measure.exists_isOpen_measure_lt_top μ x
  let s := {x : α | v.limRatioMeas hρ x = 0} ∩ o
  refine ⟨s, inter_mem_nhdsWithin _ (o_open.mem_nhds xo), le_antisymm ?_ bot_le⟩
  have μs : μ s ≠ ∞ := ((measure_mono inter_subset_right).trans_lt μo).ne
  have A : ∀ q : ℝ≥0, 0 < q → ρ s ≤ q * μ s := by
    intro q hq
    apply v.measure_le_mul_of_subset_limRatioMeas_lt hρ
    intro y hy
    have : v.limRatioMeas hρ y = 0 := hy.1
    simp only [this, mem_setOf_eq, hq, ENNReal.coe_pos]
  have B : Tendsto (fun q : ℝ≥0 => (q : ℝ≥0∞) * μ s) (𝓝[>] (0 : ℝ≥0)) (𝓝 ((0 : ℝ≥0) * μ s)) := by
    apply ENNReal.Tendsto.mul_const _ (Or.inr μs)
    rw [ENNReal.tendsto_coe]
    exact nhdsWithin_le_nhds
  simp only [zero_mul, ENNReal.coe_zero] at B
  apply ge_of_tendsto B
  filter_upwards [self_mem_nhdsWithin] using A

/-- As an intermediate step to show that `μ.withDensity (v.limRatioMeas hρ) = ρ`, we show here
that `μ.withDensity (v.limRatioMeas hρ) ≤ t^2 ρ` for any `t > 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Differentiation/Variant393ab0f6bb0a89ac7f7fd088ee3cf59d81432a58155e84ea22633bbc9b73595c.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4306b546065d2c8e4816f30f3507973d6ace6a16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
