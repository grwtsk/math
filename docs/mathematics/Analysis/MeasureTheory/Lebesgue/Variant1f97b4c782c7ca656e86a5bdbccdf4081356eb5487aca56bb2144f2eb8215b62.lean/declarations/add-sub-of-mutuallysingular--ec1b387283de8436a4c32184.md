# add_sub_of_mutuallySingular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "883724233c3fd89322f8347adcc92d1cab190c27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1067,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f97b4c782c7ca656e86a5bdbccdf4081356eb5487aca56bb2144f2eb8215b62.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50893db1-8d60-1a4f-f12c-7c7093088210",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94fc204f-33e1-ca78-a307-feb25479f886",
  "kind": "lemma",
  "lexical_name": "add_sub_of_mutuallySingular",
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
  "slug": "add-sub-of-mutuallysingular--ec1b387283de8436a4c32184",
  "source": {
    "blob": "883724233c3fd89322f8347adcc92d1cab190c27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1090,
    "line": 1067,
    "path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant1f97b4c782c7ca656e86a5bdbccdf4081356eb5487aca56bb2144f2eb8215b62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec1b387283de8436a4c321848342ffb4dc7c1b33e5e085904e98cfa087582073",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lebesgue/Variant1f97b4c782c7ca656e86a5bdbccdf4081356eb5487aca56bb2144f2eb8215b62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94fc204f-33e1-ca78-a307-feb25479f886`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1067–1090.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma add_sub_of_mutuallySingular {ξ : Measure α} (h : μ ⟂ₘ ξ) : μ + (ν - ξ) = μ + ν - ξ := by
  let s := h.nullSet
  have hs : MeasurableSet s := h.measurableSet_nullSet
  have h_le_s : μ.restrict s + (ν - ξ).restrict s = μ.restrict s + ν.restrict s - ξ.restrict s := by
    rw [h.restrict_nullSet, restrict_sub_eq_restrict_sub_restrict hs]
    simp
  have h_le_s_compl : μ.restrict sᶜ + (ν - ξ).restrict sᶜ =
      μ.restrict sᶜ + ν.restrict sᶜ - ξ.restrict sᶜ := by
    rw [restrict_sub_eq_restrict_sub_restrict hs.compl, h.restrict_compl_nullSet]
    simp
  calc μ + (ν - ξ)
  _ = μ.restrict s + μ.restrict sᶜ + (ν - ξ).restrict s + (ν - ξ).restrict sᶜ := by
    rw [restrict_add_restrict_compl hs, add_assoc, restrict_add_restrict_compl hs]
  _ = μ.restrict s + (ν - ξ).restrict s + (μ.restrict sᶜ + (ν - ξ).restrict sᶜ) := by abel
  _ = (μ.restrict s + ν.restrict s - ξ.restrict s) +
      (μ.restrict sᶜ + ν.restrict sᶜ - ξ.restrict sᶜ) := by rw [h_le_s, h_le_s_compl]
  _ = (μ + ν - ξ).restrict s + (μ + ν - ξ).restrict sᶜ := by
      simp [restrict_sub_eq_restrict_sub_restrict hs,
        restrict_sub_eq_restrict_sub_restrict hs.compl]
  _ = μ + ν - ξ := by rw [restrict_add_restrict_compl hs]

end Measure

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lebesgue/Variant1f97b4c782c7ca656e86a5bdbccdf4081356eb5487aca56bb2144f2eb8215b62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant1f97b4c782c7ca656e86a5bdbccdf4081356eb5487aca56bb2144f2eb8215b62.lean#L1067).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `883724233c3fd89322f8347adcc92d1cab190c27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
