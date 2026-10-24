# exists_dist_le_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51f8d43c-dcdb-ae19-5e64-2aebcb407a9c",
  "kind": "theorem",
  "lexical_name": "exists_dist_le_le",
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
  "slug": "exists-dist-le-le--b0833f878a345150fd92253d",
  "source": {
    "blob": "8d5475f5b8aa812720c499ff5b0479122ce5f9ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 165,
    "path": "GRWTSK/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0833f878a345150fd92253d8a9b46bc39a367bc254efd2e400a4ff9e0055b10",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51f8d43c-dcdb-ae19-5e64-2aebcb407a9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_dist_le_le (hδ : 0 ≤ δ) (hε : 0 ≤ ε) (h : dist x z ≤ ε + δ) :
    ∃ y, dist x y ≤ δ ∧ dist y z ≤ ε := by
  obtain rfl | hε' := hε.eq_or_lt
  · exact ⟨z, by rwa [zero_add] at h, (dist_self _).le⟩
  have hεδ := add_pos_of_pos_of_nonneg hε' hδ
  refine' (exists_dist_eq x z (div_nonneg hε <| add_nonneg hε hδ)
    (div_nonneg hδ <| add_nonneg hε hδ) <| by
      rw [← add_div, div_self hεδ.ne']).imp
    fun y hy => _
  rw [hy.1, hy.2, div_mul_comm, div_mul_comm ε]
  rw [← div_le_one hεδ] at h
  exact ⟨mul_le_of_le_one_left hδ h, mul_le_of_le_one_left hε h⟩
#align exists_dist_le_le exists_dist_le_le

-- This is also true for `ℚ`-normed spaces
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d5475f5b8aa812720c499ff5b0479122ce5f9ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
