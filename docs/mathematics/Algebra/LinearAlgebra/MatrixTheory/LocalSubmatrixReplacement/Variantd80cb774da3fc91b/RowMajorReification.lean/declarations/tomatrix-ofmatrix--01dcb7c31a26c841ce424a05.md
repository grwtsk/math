# toMatrix_ofMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d92139ef-892d-0e44-ab1a-fe347064178f",
  "kind": "theorem",
  "lexical_name": "toMatrix_ofMatrix",
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
  "slug": "tomatrix-ofmatrix--01dcb7c31a26c841ce424a05",
  "source": {
    "blob": "de1646c610ba5e168069d07b62f98edbe2a655b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 50,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/RowMajorReification.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01dcb7c31a26c841ce424a0567c19a46a7ef5b4a3d9e1cf9ce7149b799e8caba",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/RowMajorReification.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d92139ef-892d-0e44-ab1a-fe347064178f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toMatrix_ofMatrix (A : BitMatrix m n) :
    (ofMatrix A).toMatrix = A := by
  apply BitMatrix.ext
  intro i j
  simp [ofMatrix, toMatrix, get, BitMatrix.FiniteField.flattenEquiv_apply_flatIdx]

/--
Executable submatrix replacement obtained by reifying the single declarative
specification.  Its theorem below is the refinement boundary; array equality
or proof-field equality is never used as the observational semantics.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/RowMajorReification.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/RowMajorReification.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de1646c610ba5e168069d07b62f98edbe2a655b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
