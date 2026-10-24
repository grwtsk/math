# IsTangentAt.inner_left_eq_zero_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8587b5704cea9ebd2b1c294c5d42fff1cb668b0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cfb83b59-942b-41db-a07a-981702f87d5e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ac0710a-d36c-2e6f-e44c-f3ed78e1c0eb",
  "kind": "lemma",
  "lexical_name": "IsTangentAt.inner_left_eq_zero_of_mem",
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
  "slug": "istangentat-inner-left-eq-zero-of-mem--3a1bf2f42cc729998db77fb7",
  "source": {
    "blob": "8587b5704cea9ebd2b1c294c5d42fff1cb668b0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 136,
    "path": "GRWTSK/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a1bf2f42cc729998db77fb7f929d43adf00eb969bc79df5c67e9a1ed0e04e62",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ac0710a-d36c-2e6f-e44c-f3ed78e1c0eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsTangentAt.inner_left_eq_zero_of_mem {s : Sphere P} {p : P} {as : AffineSubspace ℝ P}
    (h : s.IsTangentAt p as) {x : P} (hx : x ∈ as) : ⟪x -ᵥ p, p -ᵥ s.center⟫ = 0 :=
  mem_orthRadius_iff_inner_left.1 (h.le_orthRadius hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8587b5704cea9ebd2b1c294c5d42fff1cb668b0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
