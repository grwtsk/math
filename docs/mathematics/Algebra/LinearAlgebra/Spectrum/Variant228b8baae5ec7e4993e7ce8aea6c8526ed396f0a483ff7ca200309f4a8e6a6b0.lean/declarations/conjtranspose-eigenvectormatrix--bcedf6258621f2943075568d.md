# conjTranspose_eigenvectorMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9d44b833de758419e3a71f83f0575b4b17abfd0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/228b8baae5ec7e4993e7ce8aea6c8526ed396f0a483ff7ca200309f4a8e6a6b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:523d4b5b-3dd7-34d3-6acd-b6349a4ad1e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a51397d8-270e-864a-8188-67f25c924c54",
  "kind": "theorem",
  "lexical_name": "conjTranspose_eigenvectorMatrix",
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
  "slug": "conjtranspose-eigenvectormatrix--bcedf6258621f2943075568d",
  "source": {
    "blob": "b9d44b833de758419e3a71f83f0575b4b17abfd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 98,
    "path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant228b8baae5ec7e4993e7ce8aea6c8526ed396f0a483ff7ca200309f4a8e6a6b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcedf6258621f2943075568d27d9f23d1831bf1518ffe9c62fbac6f29a2f3c32",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Spectrum/Variant228b8baae5ec7e4993e7ce8aea6c8526ed396f0a483ff7ca200309f4a8e6a6b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a51397d8-270e-864a-8188-67f25c924c54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conjTranspose_eigenvectorMatrix : hA.eigenvectorMatrixᴴ = hA.eigenvectorMatrixInv := by
  rw [← conjTranspose_eigenvectorMatrixInv, conjTranspose_conjTranspose]
#align matrix.is_hermitian.conj_transpose_eigenvector_matrix Matrix.IsHermitian.conjTranspose_eigenvectorMatrix

/-- *Diagonalization theorem*, *spectral theorem* for matrices; A hermitian matrix can be
diagonalized by a change of basis.

For the spectral theorem on linear maps, see
`LinearMap.IsSymmetric.eigenvectorBasis_apply_self_apply`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Spectrum/Variant228b8baae5ec7e4993e7ce8aea6c8526ed396f0a483ff7ca200309f4a8e6a6b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant228b8baae5ec7e4993e7ce8aea6c8526ed396f0a483ff7ca200309f4a8e6a6b0.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9d44b833de758419e3a71f83f0575b4b17abfd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
