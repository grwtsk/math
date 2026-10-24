# UniformSpace.hasBasis_symmetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f068a41cafe8605be201dd24b3843bcbba45a6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 366,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/0678d9754b2f7c95f4ca1c62ff0fe923bfff83092e890b26d524040be1f1a47c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f59723f-6848-a9cb-5a80-f9b56dbc1ddf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a78bac8-1d8d-97a6-a647-fad9eec31d99",
  "kind": "theorem",
  "lexical_name": "UniformSpace.hasBasis_symmetric",
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
  "slug": "uniformspace-hasbasis-symmetric--3318b6022e81f47d2c66415b",
  "source": {
    "blob": "3f068a41cafe8605be201dd24b3843bcbba45a6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 366,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant0678d9754b2f7c95f4ca1c62ff0fe923bfff83092e890b26d524040be1f1a47c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3318b6022e81f47d2c66415b80c255c12b6806c450da52d1837efc64319c710a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant0678d9754b2f7c95f4ca1c62ff0fe923bfff83092e890b26d524040be1f1a47c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a78bac8-1d8d-97a6-a647-fad9eec31d99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UniformSpace.hasBasis_symmetric :
    (𝓤 α).HasBasis (fun s : SetRel α α => s ∈ 𝓤 α ∧ SetRel.IsSymm s) id :=
  hasBasis_self.2 fun t t_in =>
    ⟨SetRel.symmetrize t, symmetrize_mem_uniformity t_in, inferInstance,
      SetRel.symmetrize_subset_self⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant0678d9754b2f7c95f4ca1c62ff0fe923bfff83092e890b26d524040be1f1a47c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant0678d9754b2f7c95f4ca1c62ff0fe923bfff83092e890b26d524040be1f1a47c.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f068a41cafe8605be201dd24b3843bcbba45a6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
