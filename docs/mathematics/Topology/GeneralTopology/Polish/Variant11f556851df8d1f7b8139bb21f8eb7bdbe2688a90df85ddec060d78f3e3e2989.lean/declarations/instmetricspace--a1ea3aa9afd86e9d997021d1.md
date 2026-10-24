# instMetricSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a178f710ee6ac65a32994a0ccfb4f1f80e1bad431564e3477e34869e82f12c77",
  "kind": "instance",
  "lexical_name": "instMetricSpace",
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
  "slug": "instmetricspace--a1ea3aa9afd86e9d997021d1",
  "source": {
    "blob": "4c64f6a336b6863be575f3d9eacbd6e4aa76f6eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 204,
    "path": "GRWTSK/Topology/GeneralTopology/Polish/Variant11f556851df8d1f7b8139bb21f8eb7bdbe2688a90df85ddec060d78f3e3e2989.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1ea3aa9afd86e9d997021d1d0df8fe109949349c4a8ee35fb8193cd2da701d0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Polish/Variant11f556851df8d1f7b8139bb21f8eb7bdbe2688a90df85ddec060d78f3e3e2989.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a178f710ee6ac65a32994a0ccfb4f1f80e1bad431564e3477e34869e82f12c77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instMetricSpace : MetricSpace (CompleteCopy s) := by
  refine @MetricSpace.ofT0PseudoMetricSpace (CompleteCopy s)
    (.ofDistTopology dist (fun _ ↦ ?_) (fun _ _ ↦ ?_) (fun x y z ↦ ?_) fun t ↦ ?_) _
  · simp only [dist_eq, dist_self, one_div, sub_self, abs_zero, add_zero]
  · simp only [dist_eq, dist_comm, abs_sub_comm]
  · calc
      dist x z = dist x.1 z.1 + |1 / infDist x.1 sᶜ - 1 / infDist z.1 sᶜ| := rfl
      _ ≤ dist x.1 y.1 + dist y.1 z.1 + (|1 / infDist x.1 sᶜ - 1 / infDist y.1 sᶜ| +
            |1 / infDist y.1 sᶜ - 1 / infDist z.1 sᶜ|) :=
        add_le_add (dist_triangle _ _ _) (dist_triangle (1 / infDist _ _) _ _)
      _ = dist x y + dist y z := add_add_add_comm ..
  · refine ⟨fun h x hx ↦ ?_, fun h ↦ isOpen_iff_mem_nhds.2 fun x hx ↦ ?_⟩
    · rcases (Metric.isOpen_iff (α := s)).1 h x hx with ⟨ε, ε0, hε⟩
      exact ⟨ε, ε0, fun y hy ↦ hε <| (dist_comm _ _).trans_lt <| (dist_val_le_dist _ _).trans_lt hy⟩
    · rcases h x hx with ⟨ε, ε0, hε⟩
      simp only [dist_eq, one_div] at hε
      have : Tendsto (fun y : s ↦ dist x.1 y.1 + |(infDist x.1 sᶜ)⁻¹ - (infDist y.1 sᶜ)⁻¹|)
          (𝓝 x) (𝓝 (dist x.1 x.1 + |(infDist x.1 sᶜ)⁻¹ - (infDist x.1 sᶜ)⁻¹|)) := by
        refine (tendsto_const_nhds.dist continuous_subtype_val.continuousAt).add
          (tendsto_const_nhds.sub <| ?_).abs
        refine (continuousAt_inv_infDist_pt ?_).comp continuous_subtype_val.continuousAt
        rw [s.isOpen.isClosed_compl.closure_eq, mem_compl_iff, not_not]
        exact x.2
      simp only [dist_self, sub_self, abs_zero, zero_add] at this
      exact mem_of_superset (this <| gt_mem_nhds ε0) hε

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Polish/Variant11f556851df8d1f7b8139bb21f8eb7bdbe2688a90df85ddec060d78f3e3e2989.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Polish/Variant11f556851df8d1f7b8139bb21f8eb7bdbe2688a90df85ddec060d78f3e3e2989.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c64f6a336b6863be575f3d9eacbd6e4aa76f6eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
