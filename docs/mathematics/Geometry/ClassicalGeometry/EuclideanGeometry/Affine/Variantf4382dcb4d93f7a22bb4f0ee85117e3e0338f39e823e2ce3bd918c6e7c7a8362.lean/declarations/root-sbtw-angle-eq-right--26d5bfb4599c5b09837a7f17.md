# _root_.Sbtw.angle_eq_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "665c31e008a1ea5ed7fb11dd6c3c16e2a340b34f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 390,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4382dcb4d93f7a22bb4f0ee85117e3e0338f39e823e2ce3bd918c6e7c7a8362.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dae83f37-3e52-dfb3-164d-725a1579833b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:290a2bc7-8d4a-3274-56e7-fe0f3261d827",
  "kind": "theorem",
  "lexical_name": "_root_.Sbtw.angle_eq_right",
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
  "slug": "root-sbtw-angle-eq-right--26d5bfb4599c5b09837a7f17",
  "source": {
    "blob": "665c31e008a1ea5ed7fb11dd6c3c16e2a340b34f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 390,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variantf4382dcb4d93f7a22bb4f0ee85117e3e0338f39e823e2ce3bd918c6e7c7a8362.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26d5bfb4599c5b09837a7f1744d20366580d9403c80bc33ed1f0cc64c9441f5d",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variantf4382dcb4d93f7a22bb4f0ee85117e3e0338f39e823e2ce3bd918c6e7c7a8362.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:290a2bc7-8d4a-3274-56e7-fe0f3261d827`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Sbtw.angle_eq_right {p₂ p₃ p : P} (p₁ : P) (h : Sbtw ℝ p₂ p₃ p) :
    ∠ p₁ p₂ p₃ = ∠ p₁ p₂ p :=
  angle_eq_angle_of_angle_eq_pi _ h.angle₁₂₃_eq_pi

/-- An Unoriented angle is unchanged by replacing the first point by one strictly further away on
the same ray. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variantf4382dcb4d93f7a22bb4f0ee85117e3e0338f39e823e2ce3bd918c6e7c7a8362.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variantf4382dcb4d93f7a22bb4f0ee85117e3e0338f39e823e2ce3bd918c6e7c7a8362.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `665c31e008a1ea5ed7fb11dd6c3c16e2a340b34f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
