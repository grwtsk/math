# isUniformEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b166675c3471ebe57a567bcc3a297d9b77ea1119",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae3cf47d-0040-d7f9-859e-44946f6f1552",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0723b5a7-1a6d-bfb7-5382-81644266d434",
  "kind": "theorem",
  "lexical_name": "isUniformEmbedding",
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
  "slug": "isuniformembedding--f484a869472163a2f77209c2",
  "source": {
    "blob": "b166675c3471ebe57a567bcc3a297d9b77ea1119",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 287,
    "path": "GRWTSK/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f484a869472163a2f77209c253937b133a6f0584e2bbac2e7d9cc4a07831432a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0723b5a7-1a6d-bfb7-5382-81644266d434`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUniformEmbedding {E₁ E₂ : Type*} [UniformSpace E₁] [UniformSpace E₂] [Ring E₁]
    [IsUniformAddGroup E₁] [Algebra R E₁] [Ring E₂] [IsUniformAddGroup E₂] [Algebra R E₂]
    (e : E₁ ≃A[R] E₂) : IsUniformEmbedding e :=
  e.toAlgEquiv.isUniformEmbedding e.toContinuousAlgHom.uniformContinuous
    e.symm.toContinuousAlgHom.uniformContinuous

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Equiv/Variantec2bd8ae91b79c24d35612591aa5b308ef6821cda35a275b518ba86d5ec30cc9.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b166675c3471ebe57a567bcc3a297d9b77ea1119` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
