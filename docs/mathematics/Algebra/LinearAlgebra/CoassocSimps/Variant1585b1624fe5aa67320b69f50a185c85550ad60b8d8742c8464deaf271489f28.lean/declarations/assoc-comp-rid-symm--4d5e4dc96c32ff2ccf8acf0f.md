# assoc_comp_rid_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1dfd4b17dec6a71b7360ff35337e31acfa0274ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 392,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67bafcad-ac1c-4cff-3fd3-209fd66ab67b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c82ef7b1-e4ce-5de7-84c6-eeb2b19d4ff3",
  "kind": "lemma",
  "lexical_name": "assoc_comp_rid_symm",
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
  "slug": "assoc-comp-rid-symm--4d5e4dc96c32ff2ccf8acf0f",
  "source": {
    "blob": "1dfd4b17dec6a71b7360ff35337e31acfa0274ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 392,
    "path": "GRWTSK/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d5e4dc96c32ff2ccf8acf0f7e7c0dd288d6c5ef8374ab4f3d50ee4f75ef6fea",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c82ef7b1-e4ce-5de7-84c6-eeb2b19d4ff3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma assoc_comp_rid_symm :
    (α ∘ₗ ρ⁻¹ : M ⊗[R] N →ₗ[R] _) = id ⊗ₘ ρ⁻¹ := by ext; rfl

@[coassoc_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dfd4b17dec6a71b7360ff35337e31acfa0274ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
