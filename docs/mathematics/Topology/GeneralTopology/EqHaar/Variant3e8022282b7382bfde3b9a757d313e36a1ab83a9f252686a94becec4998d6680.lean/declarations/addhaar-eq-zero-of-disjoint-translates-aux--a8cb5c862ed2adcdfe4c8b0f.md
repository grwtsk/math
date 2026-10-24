# addHaar_eq_zero_of_disjoint_translates_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df05ce0845ed32a0bb7ac052cf509c7af6e46f82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1cff3a1f-794a-1ffa-7004-d66de9ed90a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5df71651-fb0e-ddac-0ee2-009c9fb09b85",
  "kind": "theorem",
  "lexical_name": "addHaar_eq_zero_of_disjoint_translates_aux",
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
  "slug": "addhaar-eq-zero-of-disjoint-translates-aux--a8cb5c862ed2adcdfe4c8b0f",
  "source": {
    "blob": "df05ce0845ed32a0bb7ac052cf509c7af6e46f82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8cb5c862ed2adcdfe4c8b0f7a84b61b0442753873f87e3794f7e127c6335471",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5df71651-fb0e-ddac-0ee2-009c9fb09b85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addHaar_eq_zero_of_disjoint_translates_aux {E : Type*} [NormedAddCommGroup E]
    [NormedSpace ℝ E] [MeasurableSpace E] [BorelSpace E] [FiniteDimensional ℝ E] (μ : Measure E)
    [IsAddHaarMeasure μ] {s : Set E} (u : ℕ → E) (sb : Bounded s) (hu : Bounded (range u))
    (hs : Pairwise (Disjoint on fun n => {u n} + s)) (h's : MeasurableSet s) : μ s = 0 := by
  by_contra h
  apply lt_irrefl ∞
  calc
    ∞ = ∑' _ : ℕ, μ s := (ENNReal.tsum_const_eq_top_of_ne_zero h).symm
    _ = ∑' n : ℕ, μ ({u n} + s) := by
      congr 1; ext1 n; simp only [image_add_left, measure_preimage_add, singleton_add]
    _ = μ (⋃ n, {u n} + s) := Eq.symm <| measure_iUnion hs fun n => by
      simpa only [image_add_left, singleton_add] using measurable_id.const_add _ h's
    _ = μ (range u + s) := by rw [← iUnion_add, iUnion_singleton_eq_range]
    _ < ∞ := Bounded.measure_lt_top (hu.add sb)
#align measure_theory.measure.add_haar_eq_zero_of_disjoint_translates_aux MeasureTheory.Measure.addHaar_eq_zero_of_disjoint_translates_aux

/-- If a set is disjoint of its translates by infinitely many bounded vectors, then it has measure
zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df05ce0845ed32a0bb7ac052cf509c7af6e46f82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
