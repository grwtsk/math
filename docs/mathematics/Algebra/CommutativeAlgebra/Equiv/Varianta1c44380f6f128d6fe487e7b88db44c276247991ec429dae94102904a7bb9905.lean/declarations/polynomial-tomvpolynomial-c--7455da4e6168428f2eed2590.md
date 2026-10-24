# Polynomial.toMvPolynomial_C

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c927bb5bf68d837d34e0798956fb6c5bfba530fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 728,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1c44380f6f128d6fe487e7b88db44c276247991ec429dae94102904a7bb9905.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ce83b97-fbfb-c26e-2e44-d6b4528640a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d248481-c775-95e8-6b70-70f194efa0b0",
  "kind": "lemma",
  "lexical_name": "Polynomial.toMvPolynomial_C",
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
  "slug": "polynomial-tomvpolynomial-c--7455da4e6168428f2eed2590",
  "source": {
    "blob": "c927bb5bf68d837d34e0798956fb6c5bfba530fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 731,
    "line": 728,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Equiv/Varianta1c44380f6f128d6fe487e7b88db44c276247991ec429dae94102904a7bb9905.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7455da4e6168428f2eed25900932f9a0b910d8177ced29f4931aa6bd222b322c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Equiv/Varianta1c44380f6f128d6fe487e7b88db44c276247991ec429dae94102904a7bb9905.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d248481-c775-95e8-6b70-70f194efa0b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 728–731.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Polynomial.toMvPolynomial_C (i : σ) (r : R) : (C r).toMvPolynomial i = MvPolynomial.C r := by
  simp [toMvPolynomial]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Equiv/Varianta1c44380f6f128d6fe487e7b88db44c276247991ec429dae94102904a7bb9905.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Equiv/Varianta1c44380f6f128d6fe487e7b88db44c276247991ec429dae94102904a7bb9905.lean#L728).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c927bb5bf68d837d34e0798956fb6c5bfba530fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
