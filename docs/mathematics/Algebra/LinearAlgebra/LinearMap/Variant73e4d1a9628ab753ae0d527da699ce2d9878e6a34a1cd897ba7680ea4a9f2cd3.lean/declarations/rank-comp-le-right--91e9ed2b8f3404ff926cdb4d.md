# rank_comp_le_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1b41f6c-c085-400b-0b49-7d400c4fcb49",
  "kind": "theorem",
  "lexical_name": "rank_comp_le_right",
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
  "slug": "rank-comp-le-right--91e9ed2b8f3404ff926cdb4d",
  "source": {
    "blob": "0c2d49f15c1165e401fe672f0975a43f02a3f9e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 74,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91e9ed2b8f3404ff926cdb4dec758257ee4f5268c39afb70f8787d79610b0c89",
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

Occurrence: `result:c1b41f6c-c085-400b-0b49-7d400c4fcb49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_comp_le_right (g : V →ₗ[K] V') (f : V' →ₗ[K] V'₁) : rank (f.comp g) ≤ rank g := by
  simpa only [Cardinal.lift_id] using lift_rank_comp_le_right g f

/-- The rank of the composition of two maps is less than the minimum of their ranks.

See `lift_rank_comp_le` for the universe-polymorphic version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant73e4d1a9628ab753ae0d527da699ce2d9878e6a34a1cd897ba7680ea4a9f2cd3.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c2d49f15c1165e401fe672f0975a43f02a3f9e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
