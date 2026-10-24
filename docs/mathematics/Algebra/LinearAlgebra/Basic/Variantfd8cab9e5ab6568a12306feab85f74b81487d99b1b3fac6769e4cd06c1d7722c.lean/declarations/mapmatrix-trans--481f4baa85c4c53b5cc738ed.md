# mapMatrix_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "059cf13371418aa322f014e88dca4ec9a6e7cf28",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 718,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd8cab9e5ab6568a12306feab85f74b81487d99b1b3fac6769e4cd06c1d7722c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8864c202-a4b1-4a88-1d78-fdbd3ffd5c19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54dd5188-1efa-9acf-6661-b3d0721e235d",
  "kind": "theorem",
  "lexical_name": "mapMatrix_trans",
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
  "slug": "mapmatrix-trans--481f4baa85c4c53b5cc738ed",
  "source": {
    "blob": "059cf13371418aa322f014e88dca4ec9a6e7cf28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 726,
    "line": 718,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfd8cab9e5ab6568a12306feab85f74b81487d99b1b3fac6769e4cd06c1d7722c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:481f4baa85c4c53b5cc738edbc1234cef43a63961d9b7642a6c776ecd689accf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantfd8cab9e5ab6568a12306feab85f74b81487d99b1b3fac6769e4cd06c1d7722c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54dd5188-1efa-9acf-6661-b3d0721e235d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 718–726.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapMatrix_trans (f : α ≃ₐ[R] β) (g : β ≃ₐ[R] γ) :
    f.mapMatrix.trans g.mapMatrix = ((f.trans g).mapMatrix : Matrix m m α ≃ₐ[R] _) :=
  rfl

/-- For any algebra `α` over a ring `R`, we have an `R`-algebra isomorphism
`Matₙₓₙ(αᵒᵖ) ≅ (Matₙₓₙ(R))ᵒᵖ` given by transpose.

See also `Matrix.transposeAlgEquiv` for a version that doesn't take the opposite of `α`,
given that its multiplication is commutative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantfd8cab9e5ab6568a12306feab85f74b81487d99b1b3fac6769e4cd06c1d7722c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantfd8cab9e5ab6568a12306feab85f74b81487d99b1b3fac6769e4cd06c1d7722c.lean#L718).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `059cf13371418aa322f014e88dca4ec9a6e7cf28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
