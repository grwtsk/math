# triple_eq_triple_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b9eec3bfffe16edcb4476095c15bb04bf922f7c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:518ba688-95ea-dc92-4a11-15e622741ab2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:98830ac3-8a80-3694-70b6-66191a1f61db",
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
  "slug": "triple-eq-triple-of-mem--4a4a79b66a932e7cce491bcd",
  "source": {
    "blob": "9b9eec3bfffe16edcb4476095c15bb04bf922f7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 134,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a4a79b66a932e7cce491bcda357b7d9c610b8ea2517172f4e1c210d5ccf0712",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98830ac3-8a80-3694-70b6-66191a1f61db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma triple_eq_triple_of_mem (hst : Disjoint s t) (hsu : Disjoint s u) (htu : Disjoint t u)
    {x₁ x₂ y₁ y₂ z₁ z₂ : α} (h : ({x₁, y₁, z₁} : Finset α) = {x₂, y₂, z₂})
    (hx₁ : x₁ ∈ s) (hx₂ : x₂ ∈ s) (hy₁ : y₁ ∈ t) (hy₂ : y₂ ∈ t) (hz₁ : z₁ ∈ u) (hz₂ : z₂ ∈ u) :
    (x₁, y₁, z₁) = (x₂, y₂, z₂) := by
  simp only [Finset.Subset.antisymm_iff, subset_iff, mem_insert, mem_singleton, forall_eq_or_imp,
    forall_eq] at h
  rw [disjoint_left] at hst hsu htu
  rw [Prod.mk_inj, Prod.mk_inj]
  simp only [and_assoc, @or_left_comm _ (y₁ = y₂), @or_comm _ (z₁ = z₂),
    @or_left_comm _ (z₁ = z₂)] at h
  refine ⟨h.1.resolve_right (not_or_intro ?_ ?_), h.2.1.resolve_right (not_or_intro ?_ ?_),
    h.2.2.1.resolve_right (not_or_intro ?_ ?_)⟩ <;>
  · rintro rfl
    solve_by_elim

variable [Fintype α]

/-- The **Triangle Counting Lemma**. If `G` is a graph and `s`, `t`, `u` are disjoint sets of
vertices such that each pair is `ε`-uniform and `2 * ε`-dense, then `G` contains at least
`(1 - 2 * ε) * ε ^ 3 * |s| * |t| * |u|` triangles. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Counting/Variant9fb991f4c494614312b3df06a288dee651fe0f8d75dd65aa41b66759f0d0b82a.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b9eec3bfffe16edcb4476095c15bb04bf922f7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
