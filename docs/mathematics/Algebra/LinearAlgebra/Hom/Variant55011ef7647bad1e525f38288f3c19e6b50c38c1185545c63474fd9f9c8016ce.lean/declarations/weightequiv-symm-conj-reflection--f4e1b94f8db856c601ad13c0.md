# weightEquiv_symm_conj_reflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "74980505f91545ca7a800653b57a4baacaeeff25",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 551,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/55011ef7647bad1e525f38288f3c19e6b50c38c1185545c63474fd9f9c8016ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03cb542a-c1a6-3ac4-c015-1dfc5183bc31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aee24cda-28a7-9480-6c6b-32a7d255bb9c",
  "kind": "lemma",
  "lexical_name": "weightEquiv_symm_conj_reflection",
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
  "slug": "weightequiv-symm-conj-reflection--f4e1b94f8db856c601ad13c0",
  "source": {
    "blob": "74980505f91545ca7a800653b57a4baacaeeff25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 556,
    "line": 551,
    "path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variant55011ef7647bad1e525f38288f3c19e6b50c38c1185545c63474fd9f9c8016ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4e1b94f8db856c601ad13c0e13e91472847aa295bd697f7b7af78eae30b0893",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Hom/Variant55011ef7647bad1e525f38288f3c19e6b50c38c1185545c63474fd9f9c8016ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aee24cda-28a7-9480-6c6b-32a7d255bb9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–556.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma weightEquiv_symm_conj_reflection :
    e.weightEquiv.symm.conj (Q.reflection (e.indexEquiv i)) = P.reflection i := by
  ext x
  simp_rw [LinearEquiv.conj_apply_apply, LinearEquiv.symm_symm, LinearEquiv.coe_coe,
    ← e.weightEquiv_reflection, weightEquiv_apply, weightEquiv_symm_weightMap]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Hom/Variant55011ef7647bad1e525f38288f3c19e6b50c38c1185545c63474fd9f9c8016ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Hom/Variant55011ef7647bad1e525f38288f3c19e6b50c38c1185545c63474fd9f9c8016ce.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74980505f91545ca7a800653b57a4baacaeeff25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
