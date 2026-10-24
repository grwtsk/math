# triple_eq_triple_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24db2287-53b4-3c57-5cd1-e656268a1690",
  "kind": "lemma",
  "lexical_name": "triple_eq_triple_of_mem",
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
  "slug": "triple-eq-triple-of-mem--8f6b4519a41c23a7054ad894",
  "source": {
    "blob": "d84b842b82ae80fd41cd2d5132e7ef5fc4c9e1dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 146,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant68bf491766ac76eac0384e98986cd08d74b22783733a8b1716fdad3e8dd36f8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f6b4519a41c23a7054ad8946c00429b7c9eab16a6a46e73a2ab43c6aa0ea3b4",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant68bf491766ac76eac0384e98986cd08d74b22783733a8b1716fdad3e8dd36f8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24db2287-53b4-3c57-5cd1-e656268a1690`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma triple_eq_triple_of_mem (hst : Disjoint s t) (hsu : Disjoint s u) (htu : Disjoint t u)
    {x₁ x₂ y₁ y₂ z₁ z₂ : α} (h : ({x₁, y₁, z₁} : Finset α) = {x₂, y₂, z₂})
    (hx₁ : x₁ ∈ s) (hx₂ : x₂ ∈ s) (hy₁ : y₁ ∈ t) (hy₂ : y₂ ∈ t) (hz₁ : z₁ ∈ u) (hz₂ : z₂ ∈ u) :
    (x₁, y₁, z₁) = (x₂, y₂, z₂) := by
  simp only [Finset.Subset.antisymm_iff, subset_iff, mem_insert, mem_singleton, forall_eq_or_imp,
    forall_eq] at h
  grind [Finset.disjoint_left]

variable [Fintype α]

/-- The **Triangle Counting Lemma**. If `G` is a graph and `s`, `t`, `u` are disjoint sets of
vertices such that each pair is `ε`-uniform and `2 * ε`-dense, then `G` contains at least
`(1 - 2 * ε) * ε ^ 3 * |s| * |t| * |u|` triangles. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant68bf491766ac76eac0384e98986cd08d74b22783733a8b1716fdad3e8dd36f8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant68bf491766ac76eac0384e98986cd08d74b22783733a8b1716fdad3e8dd36f8e.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d84b842b82ae80fd41cd2d5132e7ef5fc4c9e1dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
