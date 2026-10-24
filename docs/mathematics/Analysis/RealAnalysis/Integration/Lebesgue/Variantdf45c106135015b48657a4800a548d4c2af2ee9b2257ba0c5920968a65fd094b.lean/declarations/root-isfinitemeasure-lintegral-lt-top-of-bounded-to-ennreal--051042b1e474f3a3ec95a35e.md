# _root_.IsFiniteMeasure.lintegral_lt_top_of_bounded_to_eNNReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a866e79d6e525d1d7bdbfbfeb2574af4639840e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1528,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b96df6c-8673-6b18-6cd5-66cecf9469e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8ba038e-cba3-903a-8ae0-f14369b36b32",
  "kind": "theorem",
  "lexical_name": "_root_.IsFiniteMeasure.lintegral_lt_top_of_bounded_to_eNNReal",
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
  "slug": "root-isfinitemeasure-lintegral-lt-top-of-bounded-to-ennreal--051042b1e474f3a3ec95a35e",
  "source": {
    "blob": "a866e79d6e525d1d7bdbfbfeb2574af4639840e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1538,
    "line": 1528,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:051042b1e474f3a3ec95a35e4333793b02325590690966586f2661a538005c00",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8ba038e-cba3-903a-8ae0-f14369b36b32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1528–1538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.IsFiniteMeasure.lintegral_lt_top_of_bounded_to_eNNReal {α : Type*}
    [MeasurableSpace α] (μ : Measure α) [μ_fin : IsFiniteMeasure μ] {f : α → ℝ≥0∞}
    (f_bdd : ∃ c : ℝ≥0, ∀ x, f x ≤ c) : ∫⁻ x, f x ∂μ < ∞ := by
  cases' f_bdd with c hc
  apply lt_of_le_of_lt (@lintegral_mono _ _ μ _ _ hc)
  rw [lintegral_const]
  exact ENNReal.mul_lt_top ENNReal.coe_lt_top.ne μ_fin.measure_univ_lt_top.ne
#align is_finite_measure.lintegral_lt_top_of_bounded_to_ennreal IsFiniteMeasure.lintegral_lt_top_of_bounded_to_eNNReal

/-- Given a measure `μ : Measure α` and a function `f : α → ℝ≥0∞`, `μ.withDensity f` is the
measure such that for a measurable set `s` we have `μ.withDensity f s = ∫⁻ a in s, f a ∂μ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean#L1528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a866e79d6e525d1d7bdbfbfeb2574af4639840e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
