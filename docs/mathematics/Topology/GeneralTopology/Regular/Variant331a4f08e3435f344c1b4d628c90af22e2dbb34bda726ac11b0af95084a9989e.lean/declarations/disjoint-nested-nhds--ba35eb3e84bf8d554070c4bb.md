# disjoint_nested_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4735bcc-9636-a227-2a7d-161a65dfd34c",
  "kind": "theorem",
  "lexical_name": "disjoint_nested_nhds",
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
  "slug": "disjoint-nested-nhds--ba35eb3e84bf8d554070c4bb",
  "source": {
    "blob": "c1e2d4a00dc1abbada13049b6276cb7f3bfb6445",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 406,
    "path": "GRWTSK/Topology/GeneralTopology/Regular/Variant331a4f08e3435f344c1b4d628c90af22e2dbb34bda726ac11b0af95084a9989e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba35eb3e84bf8d554070c4bb4dd2f565f1a1950e5b065c84224196b9e14b36e4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Regular/Variant331a4f08e3435f344c1b4d628c90af22e2dbb34bda726ac11b0af95084a9989e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4735bcc-9636-a227-2a7d-161a65dfd34c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_nested_nhds [T3Space X] {x y : X} (h : x ≠ y) :
    ∃ U₁ ∈ 𝓝 x, ∃ V₁ ∈ 𝓝 x, ∃ U₂ ∈ 𝓝 y, ∃ V₂ ∈ 𝓝 y,
      IsClosed V₁ ∧ IsClosed V₂ ∧ IsOpen U₁ ∧ IsOpen U₂ ∧ V₁ ⊆ U₁ ∧ V₂ ⊆ U₂ ∧ Disjoint U₁ U₂ := by
  rcases t2_separation h with ⟨U₁, U₂, U₁_op, U₂_op, x_in, y_in, H⟩
  rcases exists_mem_nhds_isClosed_subset (U₁_op.mem_nhds x_in) with ⟨V₁, V₁_in, V₁_closed, h₁⟩
  rcases exists_mem_nhds_isClosed_subset (U₂_op.mem_nhds y_in) with ⟨V₂, V₂_in, V₂_closed, h₂⟩
  exact ⟨U₁, mem_of_superset V₁_in h₁, V₁, V₁_in, U₂, mem_of_superset V₂_in h₂, V₂, V₂_in,
    V₁_closed, V₂_closed, U₁_op, U₂_op, h₁, h₂, H⟩

open SeparationQuotient

/-- The `SeparationQuotient` of a regular space is a T₃ space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regular/Variant331a4f08e3435f344c1b4d628c90af22e2dbb34bda726ac11b0af95084a9989e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regular/Variant331a4f08e3435f344c1b4d628c90af22e2dbb34bda726ac11b0af95084a9989e.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1e2d4a00dc1abbada13049b6276cb7f3bfb6445` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
