# exists_locallyFinite_subset_iUnion_ball_radius_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bde6096-7a9b-4d0b-1e2a-ba1f9f85c4cf",
  "kind": "theorem",
  "lexical_name": "exists_locallyFinite_subset_iUnion_ball_radius_lt",
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
  "slug": "exists-locallyfinite-subset-iunion-ball-radius-lt--e267b74413d0e8f32d50946a",
  "source": {
    "blob": "f55553959a87363bec29bc98c78e3254496267bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 96,
    "path": "GRWTSK/Topology/MetricTopology/ShrinkingLemma/Variant6ade5cc928d9070bceb4251dd72a95930936491e58c078e18dd013bf407dc2a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e267b74413d0e8f32d50946a3a872a152224b5bb09fdfc6989d4e94742f02e3c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ShrinkingLemma/Variant6ade5cc928d9070bceb4251dd72a95930936491e58c078e18dd013bf407dc2a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bde6096-7a9b-4d0b-1e2a-ba1f9f85c4cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_locallyFinite_subset_iUnion_ball_radius_lt (hs : IsClosed s) {R : α → ℝ}
    (hR : ∀ x ∈ s, 0 < R x) :
    ∃ (ι : Type u) (c : ι → α) (r r' : ι → ℝ),
      (∀ i, c i ∈ s ∧ 0 < r i ∧ r i < r' i ∧ r' i < R (c i)) ∧
        (LocallyFinite fun i => ball (c i) (r' i)) ∧ s ⊆ ⋃ i, ball (c i) (r i) := by
  have : ∀ x ∈ s, (𝓝 x).HasBasis (fun r : ℝ => 0 < r ∧ r < R x) fun r => ball x r := fun x hx =>
    nhds_basis_uniformity (uniformity_basis_dist_lt (hR x hx))
  rcases refinement_of_locallyCompact_sigmaCompact_of_nhds_basis_set hs this with
    ⟨ι, c, r', hr', hsub', hfin⟩
  rcases exists_subset_iUnion_ball_radius_pos_lt (fun i => (hr' i).2.1) hs
      (fun x _ => hfin.point_finite x) hsub' with
    ⟨r, hsub, hlt⟩
  exact ⟨ι, c, r, r', fun i => ⟨(hr' i).1, (hlt i).1, (hlt i).2, (hr' i).2.2⟩, hfin, hsub⟩

/-- Let `R : α → ℝ` be a (possibly discontinuous) positive function on a proper metric space. Then
there exists a collection of pairs of balls `Metric.ball (c i) (r i)`, `Metric.ball (c i) (r' i)`
such that

* for all `i` we have `0 < r i < r' i < R (c i)`;
* the family of balls `Metric.ball (c i) (r' i)` is locally finite;
* the balls `Metric.ball (c i) (r i)` cover the whole space.

This is a simple corollary of `refinement_of_locallyCompact_sigmaCompact_of_nhds_basis`
and `exists_iUnion_ball_eq_radius_pos_lt` or `exists_locallyFinite_subset_iUnion_ball_radius_lt`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ShrinkingLemma/Variant6ade5cc928d9070bceb4251dd72a95930936491e58c078e18dd013bf407dc2a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ShrinkingLemma/Variant6ade5cc928d9070bceb4251dd72a95930936491e58c078e18dd013bf407dc2a4.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f55553959a87363bec29bc98c78e3254496267bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
