# lift_rank_comp_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b43c145-310a-b974-3629-ce165ad0cf5f",
  "kind": "theorem",
  "lexical_name": "lift_rank_comp_le",
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
  "slug": "lift-rank-comp-le--2f9b8bd64cc90c6ee39b4752",
  "source": {
    "blob": "0c2d49f15c1165e401fe672f0975a43f02a3f9e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 67,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f9b8bd64cc90c6ee39b4752e52c676fb397a728a155980487c1e8af90f0f856",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b43c145-310a-b974-3629-ce165ad0cf5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_rank_comp_le (g : V →ₗ[K] V') (f : V' →ₗ[K] V'') :
    Cardinal.lift.{v'} (rank (f.comp g)) ≤
      min (Cardinal.lift.{v'} (rank f)) (Cardinal.lift.{v''} (rank g)) :=
  le_min (Cardinal.lift_le.mpr <| rank_comp_le_left _ _) (lift_rank_comp_le_right _ _)

variable [AddCommGroup V'₁] [Module K V'₁]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c2d49f15c1165e401fe672f0975a43f02a3f9e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
