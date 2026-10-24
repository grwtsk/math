# mem_interior_range_of_mem_interior_range_of_mem_atlas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e44227a5404371d3fbe4b9cdd473abc69f26c393",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87f659a2-4af5-fda1-41b1-4e224fa31c18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:934bbc31-bf05-5b23-de27-0ee0b33e5c1d",
  "kind": "lemma",
  "lexical_name": "mem_interior_range_of_mem_interior_range_of_mem_atlas",
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
  "slug": "mem-interior-range-of-mem-interior-range-of-mem-atlas--d883561f85cb6b71b6cd03b9",
  "source": {
    "blob": "e44227a5404371d3fbe4b9cdd473abc69f26c393",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 256,
    "path": "GRWTSK/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d883561f85cb6b71b6cd03b9efafaa5acdb7d986f7236e01a9147606557fd2c4",
  "verification": {
    "reference": "docs/verification/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:934bbc31-bf05-5b23-de27-0ee0b33e5c1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_interior_range_of_mem_interior_range_of_mem_atlas (hn : n ≠ 0)
    (he : e ∈ atlas H M) (he' : e' ∈ atlas H M) (hex : x ∈ e.source) (hex' : x ∈ e'.source)
    (hx : e.extend I x ∈ interior (e.extend I).target) :
    e'.extend I x ∈ interior (e'.extend I).target := by
  /- Since transition maps are diffeomorphisms, it suffices to show that if `e'` were to send `x`
  to the boundary of `range I`, the differential of the transition map `φ` from `e` to `e'` at `x`
  could not be surjective. -/
  let φ := I.extendCoordChange e e'
  have hφ : ContDiffOn 𝕜 n φ φ.source := contDiffOn_extendCoordChange
    (IsManifold.subset_maximalAtlas he) (IsManifold.subset_maximalAtlas he')
  suffices h : Function.Surjective (fderivWithin 𝕜 φ φ.source (e.extend I x)) →
      e'.extend I x ∈ interior (range I) by
    refine e'.mem_interior_extend_target (by simp [hex']) <| h ?_
    exact (isInvertible_fderivWithin_extendCoordChange hn (IsManifold.subset_maximalAtlas he)
      (IsManifold.subset_maximalAtlas he') <| by simp [hex, hex']).surjective
  intro hφx'
  /- Reduce the situation to the real case, then apply
  `DifferentiableAt.mem_interior_convex_of_surjective_fderiv`. -/
  wlog _ : IsRCLikeNormedField 𝕜
  · simp [I.range_eq_univ_of_not_isRCLikeNormedField ‹_›]
  let _ := IsRCLikeNormedField.rclike 𝕜
  let _ : NormedSpace ℝ E := NormedSpace.restrictScalars ℝ 𝕜 E
  have hφx : φ.source ∈ 𝓝 (e.extend I x) := by
    simp_rw [φ, extendCoordChange, PartialEquiv.trans_source, PartialEquiv.symm_source,
      Filter.inter_mem_iff, mem_interior_iff_mem_nhds.1 hx, true_and, e'.extend_source]
    exact e.extend_preimage_mem_nhds hex <| e'.open_source.mem_nhds hex'
  rw [← ContinuousLinearMap.coe_restrictScalars' (R := ℝ),
    (hφ.differentiableOn hn _ (by simp [φ, hex, hex'])).restrictScalars_fderivWithin (𝕜 := ℝ)
      (uniqueDiffWithinAt_of_mem_nhds hφx), fderivWithin_of_mem_nhds <| hφx] at hφx'
  rw [show e'.extend I x = φ (e.extend I x) by simp [φ, hex]]
  replace hφ := ((hφ.restrict_scalars ℝ).differentiableOn hn).differentiableAt hφx
  exact hφ.mem_interior_convex_of_surjective_fderiv hφx I.convex_range I.isClosed_range
    I.nonempty_interior (φ.mapsTo.mono_right <| by simp [φ, inter_assoc]) hφx'

/-- For any two charts `e`, `e'` around a point `x` in a C¹ manifold, `e` maps `x` to the interior
of the model space iff `e'` does. - in other words, the notion of interior points does not
depend on any choice of charts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e44227a5404371d3fbe4b9cdd473abc69f26c393` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
