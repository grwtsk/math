# exists_eq_one_ne_zero_of_ne_zero_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9aecd451-427c-b0c1-d0ba-e5c3108af430",
  "kind": "theorem",
  "lexical_name": "exists_eq_one_ne_zero_of_ne_zero_pair",
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
  "slug": "exists-eq-one-ne-zero-of-ne-zero-pair--0a1751d615a4d8f1ae3849b1",
  "source": {
    "blob": "62b7f1a2e25b31d4c9928f85f07f4f800fbed6e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 114,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a1751d615a4d8f1ae3849b1bb2c1e3d866787e665c8e86d118b1e0d4fa704b1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9aecd451-427c-b0c1-d0ba-e5c3108af430`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_one_ne_zero_of_ne_zero_pair {x y : V} (hx : x ≠ 0) (hy : y ≠ 0) :
    ∃ f : V →L[R] R, f x = 1 ∧ f y ≠ 0 := by
  obtain ⟨u, ux⟩ : ∃ u : V →L[R] R, u x = 1 := exists_eq_one hx
  rcases ne_or_eq (u y) 0 with uy|uy
  · exact ⟨u, ux, uy⟩
  obtain ⟨v, vy⟩ : ∃ v : V →L[R] R, v y = 1 := exists_eq_one hy
  rcases ne_or_eq (v x) 0 with vx|vx
  · exact ⟨(v x)⁻¹ • v, inv_mul_cancel₀ vx, show (v x)⁻¹ * v y ≠ 0 by simp [vx, vy]⟩
  · exact ⟨u + v, by simp [ux, vx], by simp [uy, vy]⟩

variable [IsTopologicalAddGroup V]

/-- In a topological vector space with separating dual, the group of continuous linear equivalences
acts transitively on the set of nonzero vectors: given two nonzero vectors `x` and `y`, there
exists `A : V ≃L[R] V` mapping `x` to `y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62b7f1a2e25b31d4c9928f85f07f4f800fbed6e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
