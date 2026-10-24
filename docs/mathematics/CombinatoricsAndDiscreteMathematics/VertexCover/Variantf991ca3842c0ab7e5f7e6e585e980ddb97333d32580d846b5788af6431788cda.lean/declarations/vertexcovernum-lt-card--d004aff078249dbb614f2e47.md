# vertexCoverNum_lt_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5b51edc202cd735d0adaa545740bea28cd75dba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:752573d3-2dfd-21cc-0c34-9e3d36317220",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2704abe3-c0d7-c904-943a-0962b5f8aa9c",
  "kind": "theorem",
  "lexical_name": "vertexCoverNum_lt_card",
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
  "slug": "vertexcovernum-lt-card--d004aff078249dbb614f2e47",
  "source": {
    "blob": "e5b51edc202cd735d0adaa545740bea28cd75dba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 142,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d004aff078249dbb614f2e47e174d3e2c6bec2ff375765bc86e840fb546a8d9c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2704abe3-c0d7-c904-943a-0962b5f8aa9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vertexCoverNum_lt_card [Nonempty V] [Finite V] : vertexCoverNum G < ENat.card V := by
  refine (ENat.add_one_le_iff vertexCoverNum_ne_top_of_finite).mp ?_
  grw [vertexCoverNum_le_card_sub_one, ENat.card_eq_coe_natCard]
  enat_to_nat
  exact Nat.add_le_of_le_sub (Order.one_le_iff_pos.mpr Nat.card_pos) (le_refl _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5b51edc202cd735d0adaa545740bea28cd75dba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
