# HasCoveringExponent.subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa56a41bef72c65c81a4b115a98dd5fa628a5071",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e64dfa64ac6efcf803365d9f64bc0a6e10c9247f08801582b9af54e8575aeba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e3df95a-35d2-0025-47cf-a6813050368a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45636f3a-7eb0-7009-6dc4-fa7f7b1e0385",
  "kind": "lemma",
  "lexical_name": "HasCoveringExponent.subset",
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
  "slug": "hascoveringexponent-subset--fbd512322e161b837ae90900",
  "source": {
    "blob": "fa56a41bef72c65c81a4b115a98dd5fa628a5071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 65,
    "path": "GRWTSK/Topology/MetricTopology/CoveringExponent/Variant4e64dfa64ac6efcf803365d9f64bc0a6e10c9247f08801582b9af54e8575aeba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbd512322e161b837ae90900f4b88dab9fe2d93b11e41f0c722df74b499ac527",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CoveringExponent/Variant4e64dfa64ac6efcf803365d9f64bc0a6e10c9247f08801582b9af54e8575aeba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45636f3a-7eb0-7009-6dc4-fa7f7b1e0385`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasCoveringExponent.subset (h : HasCoveringExponent A c d) (hBA : B ⊆ A) (hd : 0 ≤ d) :
    HasCoveringExponent B (2 ^ d * c) d where
  ediam_lt_top := lt_of_le_of_lt (Metric.ediam_mono hBA) h.ediam_lt_top
  coveringNumber_le ε hε_le :=
    calc (coveringNumber ε B : ℝ≥0∞)
    _ ≤ coveringNumber (ε / 2) A := mod_cast coveringNumber_subset_le hBA
    _ ≤ c * (ε / 2 : ℝ≥0∞)⁻¹ ^ d := by
      replace h := h.coveringNumber_le (ε / 2) ?_
      · simpa using h
      · simp only [ne_eq, OfNat.ofNat_ne_zero, not_false_eq_true, ENNReal.coe_div,
          ENNReal.coe_ofNat]
        calc (ε / 2 : ℝ≥0∞) ≤ ε := ENNReal.half_le_self
        _ ≤ Metric.ediam B := hε_le
        _ ≤ Metric.ediam A := Metric.ediam_mono hBA
    _ = 2 ^ d * c * (ε : ℝ≥0∞)⁻¹ ^ d := by
      rw [div_eq_mul_inv, ENNReal.mul_inv (by simp) (by simp), inv_inv,
        ENNReal.mul_rpow_of_nonneg _ _ hd]
      ring

end Metric
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CoveringExponent/Variant4e64dfa64ac6efcf803365d9f64bc0a6e10c9247f08801582b9af54e8575aeba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CoveringExponent/Variant4e64dfa64ac6efcf803365d9f64bc0a6e10c9247f08801582b9af54e8575aeba.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa56a41bef72c65c81a4b115a98dd5fa628a5071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
