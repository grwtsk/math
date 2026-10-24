# hasDerivWithinAt_sInf_slope_of_mem_interior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb240152a5e1ec3d5e0201b1e1949b8729bd018e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 426,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/0080c2c1e2017655083c60c0387c659c54988b602fe0e649023bb6af4439b702.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96d7e03f-253f-49b2-7f63-bf338fcbdb58",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee7218ad-b57d-cae2-d27b-0762e5989a3c",
  "kind": "lemma",
  "lexical_name": "hasDerivWithinAt_sInf_slope_of_mem_interior",
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
  "slug": "hasderivwithinat-sinf-slope-of-mem-interior--29c8b8548444fca8dae743e6",
  "source": {
    "blob": "eb240152a5e1ec3d5e0201b1e1949b8729bd018e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 426,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0080c2c1e2017655083c60c0387c659c54988b602fe0e649023bb6af4439b702.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29c8b8548444fca8dae743e6eb7de6e4a89736aaaae4b56e75b9abf075644d0e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0080c2c1e2017655083c60c0387c659c54988b602fe0e649023bb6af4439b702.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee7218ad-b57d-cae2-d27b-0762e5989a3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasDerivWithinAt_sInf_slope_of_mem_interior (hfc : ConvexOn ℝ S f) (hxs : x ∈ interior S) :
    HasDerivWithinAt f (sInf (slope f x '' {y ∈ S | x < y})) (Ioi x) x := by
  have hxs' := hxs
  rw [mem_interior_iff_mem_nhds, mem_nhds_iff_exists_Ioo_subset] at hxs'
  obtain ⟨a, b, hxab, habs⟩ := hxs'
  simp_rw [hasDerivWithinAt_iff_tendsto_slope]
  simp only [mem_Ioi, lt_self_iff_false, not_false_eq_true, diff_singleton_eq_self]
  have h : Ioo x b ⊆ {y | y ∈ S ∧ x < y} := fun z hz ↦ ⟨habs ⟨hxab.1.trans hz.1, hz.2⟩, hz.1⟩
  have h_Ioo : Tendsto (slope f x) (𝓝[>] x) (𝓝 (sInf (slope f x '' Ioo x b))) :=
    ((monotoneOn_slope_gt hfc (habs hxab)).mono h).tendsto_nhdsWithin_Ioo_right
      (by simpa using hxab.2) ((bddBelow_slope_lt_of_mem_interior hfc hxs).mono (image_subset _ h))
  suffices sInf (slope f x '' Ioo x b) = sInf (slope f x '' {y ∈ S | x < y}) by rwa [← this]
  apply (monotoneOn_slope_gt hfc (habs hxab)).csInf_eq_of_subset_of_forall_exists_le
    (bddBelow_slope_lt_of_mem_interior hfc hxs) h ?_
  rintro y ⟨hyS, hxy⟩
  obtain ⟨z, hxz, hzy⟩ := exists_between (lt_min hxab.2 hxy)
  exact ⟨z, ⟨hxz, hzy.trans_le (min_le_left _ _)⟩, hzy.le.trans (min_le_right _ _)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0080c2c1e2017655083c60c0387c659c54988b602fe0e649023bb6af4439b702.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0080c2c1e2017655083c60c0387c659c54988b602fe0e649023bb6af4439b702.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb240152a5e1ec3d5e0201b1e1949b8729bd018e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
