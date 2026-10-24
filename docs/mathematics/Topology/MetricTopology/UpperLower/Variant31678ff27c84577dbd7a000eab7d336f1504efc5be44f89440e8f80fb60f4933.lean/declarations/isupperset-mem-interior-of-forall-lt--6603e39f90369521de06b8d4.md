# IsUpperSet.mem_interior_of_forall_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3691882a-9b8d-a8cb-17d9-27da1405eeb0",
  "kind": "theorem",
  "lexical_name": "IsUpperSet.mem_interior_of_forall_lt",
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
  "slug": "isupperset-mem-interior-of-forall-lt--6603e39f90369521de06b8d4",
  "source": {
    "blob": "1c22adc63de5354f1081f4b6effdbcb06f55d18c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 87,
    "path": "GRWTSK/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6603e39f90369521de06b8d4015a458afd4edf55666b2a9dbddbdfd25312a21a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3691882a-9b8d-a8cb-17d9-27da1405eeb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsUpperSet.mem_interior_of_forall_lt (hs : IsUpperSet s) (hx : x ∈ closure s)
    (h : ∀ i, x i < y i) : y ∈ interior s := by
  cases nonempty_fintype ι
  obtain ⟨ε, hε, hxy⟩ := Pi.exists_forall_pos_add_lt h
  obtain ⟨z, hz, hxz⟩ := Metric.mem_closure_iff.1 hx _ hε
  rw [dist_pi_lt_iff hε] at hxz
  have hyz : ∀ i, z i < y i := by
    refine fun i => (hxy _).trans_le' (sub_le_iff_le_add'.1 <| (le_abs_self _).trans ?_)
    rw [← Real.norm_eq_abs, ← dist_eq_norm']
    exact (hxz _).le
  obtain ⟨δ, hδ, hyz⟩ := Pi.exists_forall_pos_add_lt hyz
  refine mem_interior.2 ⟨ball y δ, ?_, isOpen_ball, mem_ball_self hδ⟩
  rintro w hw
  refine hs (fun i => ?_) hz
  simp_rw [ball_pi _ hδ, Real.ball_eq_Ioo] at hw
  exact ((lt_sub_iff_add_lt.2 <| hyz _).trans (hw _ <| mem_univ _).1).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/UpperLower/Variant31678ff27c84577dbd7a000eab7d336f1504efc5be44f89440e8f80fb60f4933.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c22adc63de5354f1081f4b6effdbcb06f55d18c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
