# mk_of_charts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7dfbe0a0-2d1b-c305-3d30-fd2b19d6a0f5",
  "kind": "lemma",
  "lexical_name": "mk_of_charts",
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
  "slug": "mk-of-charts--d6845d594b9c9e49af1e7954",
  "source": {
    "blob": "1b2d6db7f87cab54ef603327a5fed6069f5d23d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 187,
    "path": "GRWTSK/Geometry/Submersion/Variant0f57a2c92083c4c58bff412abcd0d02d5c8bd3a14b2465b5ce45d782a6fc8416.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6845d594b9c9e49af1e79546a4281d4c7a594a19b80eb0cc7711c6909331eb4",
  "verification": {
    "reference": "docs/verification/Geometry/Submersion/Variant0f57a2c92083c4c58bff412abcd0d02d5c8bd3a14b2465b5ce45d782a6fc8416.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dfbe0a0-2d1b-c305-3d30-fd2b19d6a0f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mk_of_charts (equiv : E ≃L[𝕜] (E'' × F)) (domChart : OpenPartialHomeomorph M H)
    (codChart : OpenPartialHomeomorph N G)
    (hx : x ∈ domChart.source) (hfx : f x ∈ codChart.source)
    (hdomChart : domChart ∈ IsManifold.maximalAtlas I n M)
    (hcodChart : codChart ∈ IsManifold.maximalAtlas J n N)
    (hsource : domChart.source ⊆ f ⁻¹' codChart.source)
    (hwrittenInExtend : EqOn ((codChart.extend J) ∘ f ∘ (domChart.extend I).symm) (Prod.fst ∘ equiv)
      (domChart.extend I).target) : IsSubmersionAtOfComplement F I J n f x := by
  use domChart, codChart
  use equiv

/-- `f : M → N` is a `C^n` submersion at `x` if there are charts `φ` and `ψ` of `M` and `N`
around `x` and `f x`, respectively such that in these charts, `f` looks like `(u,v) ↦ u`.
This version does not assume that `f` maps `φ.source` to `ψ.source`,
but that `f` is continuous at `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Submersion/Variant0f57a2c92083c4c58bff412abcd0d02d5c8bd3a14b2465b5ce45d782a6fc8416.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Submersion/Variant0f57a2c92083c4c58bff412abcd0d02d5c8bd3a14b2465b5ce45d782a6fc8416.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b2d6db7f87cab54ef603327a5fed6069f5d23d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
