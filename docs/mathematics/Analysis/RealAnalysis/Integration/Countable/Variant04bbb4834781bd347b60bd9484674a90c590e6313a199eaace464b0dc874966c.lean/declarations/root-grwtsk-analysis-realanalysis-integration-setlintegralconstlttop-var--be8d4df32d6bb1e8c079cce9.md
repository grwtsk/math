# _root_.GRWTSK.Analysis.RealAnalysis.Integration.SetLIntegralConstLtTop.Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.NNReal.count_const_le_le_of_tsum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30fe159f-4a27-0bea-f71b-834f9af58a9a",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.Integration.SetLIntegralConstLtTop.Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.NNReal.count_const_le_le_of_tsum_le",
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
  "slug": "root-grwtsk-analysis-realanalysis-integration-setlintegralconstlttop-var--be8d4df32d6bb1e8c079cce9",
  "source": {
    "blob": "c562802d04421b4b392bc1aa38c3c15bd0bfa291",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be8d4df32d6bb1e8c079cce93c682d6475023ab368ca4fe9f65b52107da3c805",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30fe159f-4a27-0bea-f71b-834f9af58a9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.RealAnalysis.Integration.SetLIntegralConstLtTop.Variantd72bbe283ae4450a54542434fae411870672bfcad5b518d17a4b909a0c7b4c62.NNReal.count_const_le_le_of_tsum_le [MeasurableSingletonClass α] {a : α → ℝ≥0}
    (a_mble : Measurable a) (a_summable : Summable a) {c : ℝ≥0} (tsum_le_c : ∑' i, a i ≤ c)
    {ε : ℝ≥0} (ε_ne_zero : ε ≠ 0) : Measure.count { i : α | ε ≤ a i } ≤ c / ε := by
  rw [show (fun i => ε ≤ a i) = fun i => (ε : ℝ≥0∞) ≤ ((↑) ∘ a) i by
      funext i
      simp only [ENNReal.coe_le_coe, Function.comp]]
  apply
    ENNReal.count_const_le_le_of_tsum_le (measurable_coe_nnreal_ennreal.comp a_mble) _
      (mod_cast ε_ne_zero) (@ENNReal.coe_ne_top ε)
  convert ENNReal.coe_le_coe.mpr tsum_le_c
  simp_rw [Function.comp_apply]
  rw [ENNReal.tsum_coe_eq a_summable.hasSum]

end DiracAndCount

section Countable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Countable/Variant04bbb4834781bd347b60bd9484674a90c590e6313a199eaace464b0dc874966c.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c562802d04421b4b392bc1aa38c3c15bd0bfa291` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
