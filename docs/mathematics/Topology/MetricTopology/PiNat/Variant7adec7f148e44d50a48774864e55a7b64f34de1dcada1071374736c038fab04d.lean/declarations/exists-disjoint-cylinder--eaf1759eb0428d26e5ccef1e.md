# exists_disjoint_cylinder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30c2680a-8d51-ef6c-dff4-7e5abf7db9ce",
  "kind": "theorem",
  "lexical_name": "exists_disjoint_cylinder",
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
  "slug": "exists-disjoint-cylinder--eaf1759eb0428d26e5ccef1e",
  "source": {
    "blob": "ec4e50ee38c606a26670c8224108b37944880ea0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 495,
    "path": "GRWTSK/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaf1759eb0428d26e5ccef1e070e322bd866dda9620dfb481b3ced74c1761621",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30c2680a-8d51-ef6c-dff4-7e5abf7db9ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_disjoint_cylinder {s : Set (∀ n, E n)} (hs : IsClosed s) {x : ∀ n, E n}
    (hx : x ∉ s) : ∃ n, Disjoint s (cylinder x n) := by
  rcases eq_empty_or_nonempty s with (rfl | hne)
  · exact ⟨0, by simp⟩
  have A : 0 < infDist x s := (hs.not_mem_iff_infDist_pos hne).1 hx
  obtain ⟨n, hn⟩ : ∃ n, (1 / 2 : ℝ) ^ n < infDist x s := exists_pow_lt_of_lt_one A one_half_lt_one
  refine' ⟨n, disjoint_left.2 fun y ys hy => ?_⟩
  apply lt_irrefl (infDist x s)
  calc
    infDist x s ≤ dist x y := infDist_le_dist_of_mem ys
    _ ≤ (1 / 2) ^ n := by
      rw [mem_cylinder_comm] at hy
      exact mem_cylinder_iff_dist_le.1 hy
    _ < infDist x s := hn
#align pi_nat.exists_disjoint_cylinder PiNat.exists_disjoint_cylinder

/-- Given a point `x` in a product space `Π (n : ℕ), E n`, and `s` a subset of this space, then
`shortestPrefixDiff x s` if the smallest `n` for which there is no element of `s` having the same
prefix of length `n` as `x`. If there is no such `n`, then use `0` by convention. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiNat/Variant7adec7f148e44d50a48774864e55a7b64f34de1dcada1071374736c038fab04d.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec4e50ee38c606a26670c8224108b37944880ea0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
