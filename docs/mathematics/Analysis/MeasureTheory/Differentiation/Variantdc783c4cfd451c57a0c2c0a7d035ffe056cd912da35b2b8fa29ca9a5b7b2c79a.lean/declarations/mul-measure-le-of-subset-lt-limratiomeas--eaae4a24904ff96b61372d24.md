# mul_measure_le_of_subset_lt_limRatioMeas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8cc0b0d6f3e14289a7a145ef32564803b339a108",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 469,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36f1604e-8809-0281-2134-143c250a10bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a1863d8-8ae9-bf92-f503-b9141ef11f7b",
  "kind": "theorem",
  "lexical_name": "mul_measure_le_of_subset_lt_limRatioMeas",
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
  "slug": "mul-measure-le-of-subset-lt-limratiomeas--eaae4a24904ff96b61372d24",
  "source": {
    "blob": "8cc0b0d6f3e14289a7a145ef32564803b339a108",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 469,
    "path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaae4a24904ff96b61372d24a2f83b51543bffdc1b87b54e14205f14bd9635fd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a1863d8-8ae9-bf92-f503-b9141ef11f7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 469–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_measure_le_of_subset_lt_limRatioMeas {q : ℝ≥0} {s : Set α}
    (h : s ⊆ {x | (q : ℝ≥0∞) < v.limRatioMeas hρ x}) : (q : ℝ≥0∞) * μ s ≤ ρ s := by
  let t := {x : α | Tendsto (fun a => ρ a / μ a) (v.filterAt x) (𝓝 (v.limRatioMeas hρ x))}
  have A : μ tᶜ = 0 := v.ae_tendsto_limRatioMeas hρ
  suffices H : (q • μ) (s ∩ t) ≤ ρ (s ∩ t);
  exact
    calc
      (q • μ) s = (q • μ) (s ∩ t ∪ s ∩ tᶜ) := by rw [inter_union_compl]
      _ ≤ (q • μ) (s ∩ t) + (q • μ) (s ∩ tᶜ) := (measure_union_le _ _)
      _ ≤ ρ (s ∩ t) + q * μ tᶜ := by
        apply add_le_add H
        rw [coe_nnreal_smul_apply]
        exact mul_le_mul_left' (measure_mono (inter_subset_right _ _)) _
      _ ≤ ρ s := by
        rw [A, mul_zero, add_zero]; exact measure_mono (inter_subset_left _ _)
  refine' v.measure_le_of_frequently_le _ (AbsolutelyContinuous.rfl.smul _) _ _
  intro x hx
  have I : ∀ᶠ a in v.filterAt x, (q : ℝ≥0∞) < ρ a / μ a := (tendsto_order.1 hx.2).1 _ (h hx.1)
  apply I.frequently.mono fun a ha => ?_
  rw [coe_nnreal_smul_apply]
  exact ENNReal.mul_le_of_le_div ha.le
#align vitali_family.mul_measure_le_of_subset_lt_lim_ratio_meas VitaliFamily.mul_measure_le_of_subset_lt_limRatioMeas

/-- The points with `v.limRatioMeas hρ x = ∞` have measure `0` for `μ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean#L469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cc0b0d6f3e14289a7a145ef32564803b339a108` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
