# hasEigenvector_toLin'_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78509cc9d2d29ce6e7c73a48fcb2d5e2d4d85c4e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86e68fde0331b663f564e53b85a4e4e7dcefdc859732dd193f905d3b20cabd97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64b7abd6-cae1-f820-7c29-e80e40b9f0d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:359b03bb-a857-5fd2-3595-5f24d78d3b52",
  "kind": "lemma",
  "lexical_name": "hasEigenvector_toLin'_diagonal",
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
  "slug": "haseigenvector-tolin-diagonal--1b3a9a456870fd6ca8d52302",
  "source": {
    "blob": "78509cc9d2d29ce6e7c73a48fcb2d5e2d4d85c4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 37,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant86e68fde0331b663f564e53b85a4e4e7dcefdc859732dd193f905d3b20cabd97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b3a9a456870fd6ca8d52302a52d8dc977ae76c76b69d255e26bff33005cc966",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variant86e68fde0331b663f564e53b85a4e4e7dcefdc859732dd193f905d3b20cabd97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:359b03bb-a857-5fd2-3595-5f24d78d3b52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasEigenvector_toLin'_diagonal (d : n → R) (i : n) :
    HasEigenvector (toLin' (diagonal d)) (d i) (Pi.basisFun R n i)  :=
  hasEigenvector_toLin_diagonal _ _ (Pi.basisFun R n)

/-- Eigenvalues of a diagonal linear operator are the diagonal entries. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variant86e68fde0331b663f564e53b85a4e4e7dcefdc859732dd193f905d3b20cabd97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant86e68fde0331b663f564e53b85a4e4e7dcefdc859732dd193f905d3b20cabd97.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78509cc9d2d29ce6e7c73a48fcb2d5e2d4d85c4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
