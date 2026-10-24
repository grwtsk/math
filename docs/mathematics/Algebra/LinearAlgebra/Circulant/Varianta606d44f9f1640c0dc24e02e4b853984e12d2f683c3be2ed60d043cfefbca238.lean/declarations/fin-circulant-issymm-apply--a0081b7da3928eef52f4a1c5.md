# Fin.circulant_isSymm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd6bb07cb218eaffea7a9b3d20191a8e841a113e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a606d44f9f1640c0dc24e02e4b853984e12d2f683c3be2ed60d043cfefbca238.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc4ffe01-6c63-27e0-f69b-c022d24032cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b88c31b2-2033-2cff-872f-35148aec1108",
  "kind": "theorem",
  "lexical_name": "Fin.circulant_isSymm_apply",
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
  "slug": "fin-circulant-issymm-apply--a0081b7da3928eef52f4a1c5",
  "source": {
    "blob": "dd6bb07cb218eaffea7a9b3d20191a8e841a113e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 205,
    "path": "GRWTSK/Algebra/LinearAlgebra/Circulant/Varianta606d44f9f1640c0dc24e02e4b853984e12d2f683c3be2ed60d043cfefbca238.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0081b7da3928eef52f4a1c50a66add8e9a6655084c9376e3dba398fe58caf40",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Circulant/Varianta606d44f9f1640c0dc24e02e4b853984e12d2f683c3be2ed60d043cfefbca238.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b88c31b2-2033-2cff-872f-35148aec1108`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Fin.circulant_isSymm_apply {n} {v : Fin n → α} (h : (circulant v).IsSymm) (i : Fin n) :
    v (-i) = v i :=
  Fin.circulant_isSymm_iff.1 h i
#align matrix.fin.circulant_is_symm_apply Matrix.Fin.circulant_isSymm_apply

end Matrix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Circulant/Varianta606d44f9f1640c0dc24e02e4b853984e12d2f683c3be2ed60d043cfefbca238.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Circulant/Varianta606d44f9f1640c0dc24e02e4b853984e12d2f683c3be2ed60d043cfefbca238.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd6bb07cb218eaffea7a9b3d20191a8e841a113e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
