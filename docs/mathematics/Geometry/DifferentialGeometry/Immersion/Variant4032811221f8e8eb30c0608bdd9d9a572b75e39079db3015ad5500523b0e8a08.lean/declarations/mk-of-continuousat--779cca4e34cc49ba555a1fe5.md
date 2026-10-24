# mk_of_continuousAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c7789456c476b7e65495bc8ecaecf076cf0d9d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 218,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:629fb2d9-9442-d04f-c5a3-f9754c5e19f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:387079b1-3c64-5dc6-f314-f8bc62f99587",
  "kind": "lemma",
  "lexical_name": "mk_of_continuousAt",
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
  "slug": "mk-of-continuousat--779cca4e34cc49ba555a1fe5",
  "source": {
    "blob": "3c7789456c476b7e65495bc8ecaecf076cf0d9d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 218,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:779cca4e34cc49ba555a1fe5c5c48d9c15f67bc385723c058fce2ab3137782bb",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:387079b1-3c64-5dc6-f314-f8bc62f99587`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mk_of_continuousAt {f : M → N} {x : M} (hf : ContinuousAt f x) (equiv : (E × F) ≃L[𝕜] E'')
    (domChart : OpenPartialHomeomorph M H) (codChart : OpenPartialHomeomorph N G)
    (hx : x ∈ domChart.source) (hfx : f x ∈ codChart.source)
    (hdomChart : domChart ∈ IsManifold.maximalAtlas I n M)
    (hcodChart : codChart ∈ IsManifold.maximalAtlas J n N)
    (hwrittenInExtend : EqOn ((codChart.extend J) ∘ f ∘ (domChart.extend I).symm) (equiv ∘ (·, 0))
      (domChart.extend I).target) : IsImmersionAtOfComplement F I J n f x :=
  LiftSourceTargetPropertyAt.mk_of_continuousAt hf isLocalSourceTargetProperty_immersionAtProp
    _ _ hx hfx hdomChart hcodChart ⟨equiv, hwrittenInExtend⟩

/-- `f : M → N` is a `C^n` immersion at `x` if `f` is continuous at `x` and `f` looks like
`u ↦ (u, 0)` in the preferred charts at `x` and `f x`.
Version of `mk_of_continuousAt` specialized to the preferred charts at each point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Immersion/Variant4032811221f8e8eb30c0608bdd9d9a572b75e39079db3015ad5500523b0e8a08.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c7789456c476b7e65495bc8ecaecf076cf0d9d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
