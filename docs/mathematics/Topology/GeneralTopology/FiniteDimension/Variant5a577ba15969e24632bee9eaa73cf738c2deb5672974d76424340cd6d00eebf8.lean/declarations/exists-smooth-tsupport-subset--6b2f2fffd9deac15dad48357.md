# exists_smooth_tsupport_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0fa5769890846ab75be134d74e8f4cee8dbf8f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90c74c0a-b78f-b779-7adb-74e275a18114",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5620a610-9418-0086-a2d7-54e2de29dc02",
  "kind": "theorem",
  "lexical_name": "exists_smooth_tsupport_subset",
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
  "slug": "exists-smooth-tsupport-subset--6b2f2fffd9deac15dad48357",
  "source": {
    "blob": "c0fa5769890846ab75be134d74e8f4cee8dbf8f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b2f2fffd9deac15dad48357f15fbbdea49c943ce36754b99546f15b8427d20e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5620a610-9418-0086-a2d7-54e2de29dc02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_smooth_tsupport_subset {s : Set E} {x : E} (hs : s ∈ 𝓝 x) :
    ∃ f : E → ℝ,
      tsupport f ⊆ s ∧ HasCompactSupport f ∧ ContDiff ℝ ∞ f ∧ range f ⊆ Icc 0 1 ∧ f x = 1 := by
  obtain ⟨d : ℝ, d_pos : 0 < d, hd : Euclidean.closedBall x d ⊆ s⟩ :=
    Euclidean.nhds_basis_closedBall.mem_iff.1 hs
  let c : ContDiffBump (toEuclidean x) :=
    { rIn := d / 2
      rOut := d
      rIn_pos := half_pos d_pos
      rIn_lt_rOut := half_lt_self d_pos }
  let f : E → ℝ := c ∘ toEuclidean
  have f_supp : f.support ⊆ Euclidean.ball x d := by
    intro y hy
    have : toEuclidean y ∈ Function.support c := by
      simpa only [Function.mem_support, Function.comp_apply, Ne] using hy
    rwa [c.support_eq] at this
  have f_tsupp : tsupport f ⊆ Euclidean.closedBall x d := by
    rw [tsupport, ← Euclidean.closure_ball _ d_pos.ne']
    exact closure_mono f_supp
  refine ⟨f, f_tsupp.trans hd, ?_, ?_, ?_, ?_⟩
  · refine isCompact_of_isClosed_isBounded isClosed_closure ?_
    have : IsBounded (Euclidean.closedBall x d) := Euclidean.isCompact_closedBall.isBounded
    refine this.subset (Euclidean.isClosed_closedBall.closure_subset_iff.2 ?_)
    exact f_supp.trans Euclidean.ball_subset_closedBall
  · apply c.contDiff.comp
    exact ContinuousLinearEquiv.contDiff _
  · rintro t ⟨y, rfl⟩
    exact ⟨c.nonneg, c.le_one⟩
  · apply c.one_of_mem_closedBall
    apply mem_closedBall_self
    exact (half_pos d_pos).le

/-- Given an open set `s` in a finite-dimensional real normed vector space, there exists a smooth
function with values in `[0, 1]` whose support is exactly `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiniteDimension/Variant5a577ba15969e24632bee9eaa73cf738c2deb5672974d76424340cd6d00eebf8.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0fa5769890846ab75be134d74e8f4cee8dbf8f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
