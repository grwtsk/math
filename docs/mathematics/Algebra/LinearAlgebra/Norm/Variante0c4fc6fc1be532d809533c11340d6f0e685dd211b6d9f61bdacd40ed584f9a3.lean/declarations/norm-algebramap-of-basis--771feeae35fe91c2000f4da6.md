# norm_algebraMap_of_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12daca3406924e941496944e3d762231deb161d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e12e6cad-48a5-1333-fb02-e167dadda3ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:082e0d4b-1d5e-aaef-e4ca-20d9145ed2e2",
  "kind": "theorem",
  "lexical_name": "norm_algebraMap_of_basis",
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
  "slug": "norm-algebramap-of-basis--771feeae35fe91c2000f4da6",
  "source": {
    "blob": "12daca3406924e941496944e3d762231deb161d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 97,
    "path": "GRWTSK/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:771feeae35fe91c2000f4da66d9e406cef0e743d335643296022d656bb0846cd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:082e0d4b-1d5e-aaef-e4ca-20d9145ed2e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_algebraMap_of_basis [Fintype ι] (b : Basis ι R S) (x : R) :
    norm R (algebraMap R S x) = x ^ Fintype.card ι := by
  haveI := Classical.decEq ι
  rw [norm_apply, ← det_toMatrix b, lmul_algebraMap]
  convert @det_diagonal _ _ _ _ _ fun _ : ι => x
  · ext (i j); rw [toMatrix_lsmul, Matrix.diagonal]
  · rw [Finset.prod_const, Finset.card_univ]
#align algebra.norm_algebra_map_of_basis Algebra.norm_algebraMap_of_basis

/-- If `x` is in the base field `K`, then the norm is `x ^ [L : K]`.

(If `L` is not finite-dimensional over `K`, then `norm = 1 = x ^ 0 = x ^ (finrank L K)`.)
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12daca3406924e941496944e3d762231deb161d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
