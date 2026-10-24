# ae_tendsto_measure_inter_div

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
      "line": 752,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9027ad9-dff4-cfc6-e931-b90d3700098a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7c20c0a-9727-19c6-a446-cda47c8630cc",
  "kind": "theorem",
  "lexical_name": "ae_tendsto_measure_inter_div",
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
  "slug": "ae-tendsto-measure-inter-div--cb43ff4cfed6926557581a14",
  "source": {
    "blob": "8cc0b0d6f3e14289a7a145ef32564803b339a108",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 774,
    "line": 752,
    "path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb43ff4cfed6926557581a14961184b1ae6797c252883e8f0ab715fa3f7f2bbe",
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

Occurrence: `result:c7c20c0a-9727-19c6-a446-cda47c8630cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 752–774.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_tendsto_measure_inter_div (s : Set α) :
    ∀ᵐ x ∂μ.restrict s, Tendsto (fun a => μ (s ∩ a) / μ a) (v.filterAt x) (𝓝 1) := by
  let t := toMeasurable μ s
  have A :
    ∀ᵐ x ∂μ.restrict s,
      Tendsto (fun a => μ (t ∩ a) / μ a) (v.filterAt x) (𝓝 (t.indicator 1 x)) := by
    apply ae_mono restrict_le_self
    apply ae_tendsto_measure_inter_div_of_measurableSet
    exact measurableSet_toMeasurable _ _
  have B : ∀ᵐ x ∂μ.restrict s, t.indicator 1 x = (1 : ℝ≥0∞) := by
    refine' ae_restrict_of_ae_restrict_of_subset (subset_toMeasurable μ s) _
    filter_upwards [ae_restrict_mem (measurableSet_toMeasurable μ s)] with _ hx
    simp only [hx, Pi.one_apply, indicator_of_mem]
  filter_upwards [A, B] with x hx h'x
  rw [h'x] at hx
  apply hx.congr' _
  filter_upwards [v.eventually_filterAt_measurableSet x] with _ ha
  congr 1
  exact measure_toMeasurable_inter_of_sigmaFinite ha _
#align vitali_family.ae_tendsto_measure_inter_div VitaliFamily.ae_tendsto_measure_inter_div

/-! ### Lebesgue differentiation theorem -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Differentiation/Variantdc783c4cfd451c57a0c2c0a7d035ffe056cd912da35b2b8fa29ca9a5b7b2c79a.lean#L752).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cc0b0d6f3e14289a7a145ef32564803b339a108` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
