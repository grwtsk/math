# orthogonalProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e2c8dfd74cbe5619c7eb32cec01ca1c8fc103d296fafd6588ce32caad16c24d",
  "kind": "def",
  "lexical_name": "orthogonalProjection",
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
  "slug": "orthogonalprojection--6e24ccc1949b369e5423d1e8",
  "source": {
    "blob": "bcc38e3ed3951a95f60ac3a102597c3c77c25ece",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 289,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e24ccc1949b369e5423d1e8687a3c0a918e4d74ee48d3822b46003d9ff9bf09",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e2c8dfd74cbe5619c7eb32cec01ca1c8fc103d296fafd6588ce32caad16c24d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec def orthogonalProjection (s : AffineSubspace ℝ P) [Nonempty s]
    [HasOrthogonalProjection s.direction] : P →ᵃ[ℝ] s where
  toFun p := ⟨orthogonalProjectionFn s p, orthogonalProjectionFn_mem p⟩
  linear := orthogonalProjection s.direction
  map_vadd' p v := by
    have hs : ((orthogonalProjection s.direction) v : V) +ᵥ orthogonalProjectionFn s p ∈ s :=
      vadd_mem_of_mem_direction (orthogonalProjection s.direction v).2
        (orthogonalProjectionFn_mem p)
    have ho :
      ((orthogonalProjection s.direction) v : V) +ᵥ orthogonalProjectionFn s p ∈
        mk' (v +ᵥ p) s.directionᗮ := by
      rw [← vsub_right_mem_direction_iff_mem (self_mem_mk' _ _) _, direction_mk',
        vsub_vadd_eq_vsub_sub, vadd_vsub_assoc, add_comm, add_sub_assoc]
      refine' Submodule.add_mem _ (orthogonalProjectionFn_vsub_mem_direction_orthogonal p) _
      rw [Submodule.mem_orthogonal']
      intro w hw
      rw [← neg_sub, inner_neg_left, orthogonalProjection_inner_eq_zero _ w hw, neg_zero]
    have hm :
      ((orthogonalProjection s.direction) v : V) +ᵥ orthogonalProjectionFn s p ∈
        ({orthogonalProjectionFn s (v +ᵥ p)} : Set P) := by
      rw [← inter_eq_singleton_orthogonalProjectionFn (v +ᵥ p)]
      exact Set.mem_inter hs ho
    rw [Set.mem_singleton_iff] at hm
    ext
    exact hm.symm
#align euclidean_geometry.orthogonal_projection EuclideanGeometry.orthogonalProjection

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant613aa69420c7fc7f318d194a69bdf3ac3f097d7f7a1724409a2cd11254f67c35.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcc38e3ed3951a95f60ac3a102597c3c77c25ece` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
