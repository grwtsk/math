# prodRight_symm_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a24dbe52ab9f8a8f2fd3228c4e3caeb3555e0bd6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/775ed79a75aa78d9945cc80b63b8cbb21c9c66d510a8cf0ae456645c67d03419.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff8a414e-4b31-1cac-e7a5-38c485aafd57",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d1650ad-a6eb-e158-dec4-47e33eacf0f5",
  "kind": "lemma",
  "lexical_name": "prodRight_symm_tmul",
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
  "slug": "prodright-symm-tmul--b314a1753935439d094db6b6",
  "source": {
    "blob": "a24dbe52ab9f8a8f2fd3228c4e3caeb3555e0bd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 97,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant775ed79a75aa78d9945cc80b63b8cbb21c9c66d510a8cf0ae456645c67d03419.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b314a1753935439d094db6b68740da7570c1f393bae4fc0f23dd568f4c23ce23",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant775ed79a75aa78d9945cc80b63b8cbb21c9c66d510a8cf0ae456645c67d03419.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d1650ad-a6eb-e158-dec4-47e33eacf0f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prodRight_symm_tmul (a : A) (b : B) (c : C) :
    (prodRight R S A B C).symm (a ⊗ₜ b, a ⊗ₜ c) = a ⊗ₜ (b, c) := by
  apply (prodRight R S A B C).injective
  simp [prodRight_tmul]

end

end Algebra.TensorProduct

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant775ed79a75aa78d9945cc80b63b8cbb21c9c66d510a8cf0ae456645c67d03419.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant775ed79a75aa78d9945cc80b63b8cbb21c9c66d510a8cf0ae456645c67d03419.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a24dbe52ab9f8a8f2fd3228c4e3caeb3555e0bd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
