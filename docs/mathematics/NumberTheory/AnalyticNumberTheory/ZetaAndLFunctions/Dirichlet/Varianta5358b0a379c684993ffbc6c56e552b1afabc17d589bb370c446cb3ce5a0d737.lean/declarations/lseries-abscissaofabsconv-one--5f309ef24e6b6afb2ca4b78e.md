# LSeries.abscissaOfAbsConv_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d8597d045aff4470b39553ce6cdae2695bb455b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 239,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2d1610e-5a39-aa43-c11e-c54ad046206c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:884a28f7-3e42-c93d-34a3-862e2c5a0ced",
  "kind": "lemma",
  "lexical_name": "LSeries.abscissaOfAbsConv_one",
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
  "slug": "lseries-abscissaofabsconv-one--5f309ef24e6b6afb2ca4b78e",
  "source": {
    "blob": "3d8597d045aff4470b39553ce6cdae2695bb455b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 239,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f309ef24e6b6afb2ca4b78e010f5cfeae7bedc38ac7fc3ba17e6b1a96739e07",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:884a28f7-3e42-c93d-34a3-862e2c5a0ced`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries.abscissaOfAbsConv_one : abscissaOfAbsConv 1 = 1 :=
  modOne_eq_one (χ := χ₁) ▸ absicssaOfAbsConv_eq_one one_ne_zero χ₁

/-- The `LSeries` of the constant sequence `1` converges at `s` if and only if `re s > 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Dirichlet/Varianta5358b0a379c684993ffbc6c56e552b1afabc17d589bb370c446cb3ce5a0d737.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d8597d045aff4470b39553ce6cdae2695bb455b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
