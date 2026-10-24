# summable_prod_of_tendsto_weightedOrder_atTop_nhds_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48b4a7d91692836d2fa9990a2fa889e54ecc37be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 327,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/21037b464bfd0e46317f8e09ed25cd6e65016cae4ebd2949fa622bf28685dac6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c0f1b8a-1b79-eec5-5862-458abf41e214",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c7fb2a7-5b0d-3b70-099c-736096c542a9",
  "kind": "theorem",
  "lexical_name": "summable_prod_of_tendsto_weightedOrder_atTop_nhds_top",
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
  "slug": "summable-prod-of-tendsto-weightedorder-attop-nhds-top--04b90eccf5c9eea9c7199ee7",
  "source": {
    "blob": "48b4a7d91692836d2fa9990a2fa889e54ecc37be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 327,
    "path": "GRWTSK/Topology/GeneralTopology/PiTopology/Variant21037b464bfd0e46317f8e09ed25cd6e65016cae4ebd2949fa622bf28685dac6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04b90eccf5c9eea9c7199ee7bca46296378e2839dbbcf1d521597f8e7ace35ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PiTopology/Variant21037b464bfd0e46317f8e09ed25cd6e65016cae4ebd2949fa622bf28685dac6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c7fb2a7-5b0d-3b70-099c-736096c542a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_prod_of_tendsto_weightedOrder_atTop_nhds_top {w : σ → ℕ}
    (h : Tendsto (fun i ↦ weightedOrder w (f i)) atTop (𝓝 ⊤)) : Summable (∏ i ∈ ·, f i) := by
  rcases isEmpty_or_nonempty ι with hempty | hempty
  · apply Summable.of_finite
  refine summable_iff_summable_coeff.mpr fun d ↦ summable_of_hasFiniteSupport ?_
  simp_rw [ENat.tendsto_nhds_top_iff_natCast_lt, eventually_atTop] at h
  obtain ⟨i, hi⟩ := h (Finsupp.weight w d)
  apply (Finset.Iio i).powerset.finite_toSet.subset
  suffices ∀ s : Finset ι, coeff d (∏ i ∈ s, f i) ≠ 0 → ↑s ⊆ Set.Iio i by simpa
  intro s hs
  contrapose hs
  obtain ⟨x, hxs, hxi⟩ := Set.not_subset.mp hs
  rw [Set.mem_Iio, not_lt] at hxi
  refine coeff_eq_zero_of_lt_weightedOrder w <| (hi x hxi).trans_le <| ?_
  apply le_trans (Finset.single_le_sum (by simp) hxs) (le_weightedOrder_prod w _ _)

/-- If the order of a family of `MvPowerSeries` tends to infinity, the collection of all
possible products over `Finset` is summable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PiTopology/Variant21037b464bfd0e46317f8e09ed25cd6e65016cae4ebd2949fa622bf28685dac6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PiTopology/Variant21037b464bfd0e46317f8e09ed25cd6e65016cae4ebd2949fa622bf28685dac6.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48b4a7d91692836d2fa9990a2fa889e54ecc37be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
