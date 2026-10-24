# IsOpen.mul_closure_one_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1eeaa173739cddea8b33777034878e3d3701aa00",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f0e7e9a-5f8a-9c29-4ae7-8cc44f819518",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7750d3f-b404-bcae-fe92-6e2d4e10b7ce",
  "kind": "lemma",
  "lexical_name": "IsOpen.mul_closure_one_eq",
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
  "slug": "isopen-mul-closure-one-eq--3d1e14e4acb3fb1aad1e0662",
  "source": {
    "blob": "1eeaa173739cddea8b33777034878e3d3701aa00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 253,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d1e14e4acb3fb1aad1e0662c22d32f46056b79b652a60a2f36ca3a248abefda",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7750d3f-b404-bcae-fe92-6e2d4e10b7ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsOpen.mul_closure_one_eq {U : Set G} (hU : IsOpen U) :
    U * (closure {1} : Set G) = U :=
  compl_mul_closure_one_eq_iff.1 (hU.isClosed_compl.mul_closure_one_eq)

end IsTopologicalGroup

section FilterMul

section

variable (G) [TopologicalSpace G] [Group G] [IsTopologicalGroup G]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Varianta1d9810c22a6c5c38d0f39121582f5d5caff4aeb4cde7c757cb153baadda5aa3.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1eeaa173739cddea8b33777034878e3d3701aa00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
