# stdBasisMatrix_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4858188e-9c6d-1a9e-5f05-52a8754c0c9c",
  "kind": "theorem",
  "lexical_name": "stdBasisMatrix_add",
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
  "slug": "stdbasismatrix-add--444654fb439df59d1f979609",
  "source": {
    "blob": "9b0f55338e643d4fea6a8c5cd02a5edf0edadeac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 63,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:444654fb439df59d1f979609df7dbf902b7fd46c7e70673a49c281f0a4b7f398",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4858188e-9c6d-1a9e-5f05-52a8754c0c9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stdBasisMatrix_add (i : m) (j : n) (a b : α) :
    stdBasisMatrix i j (a + b) = stdBasisMatrix i j a + stdBasisMatrix i j b := by
  unfold stdBasisMatrix; ext
  split_ifs with h <;> simp [h]
#align matrix.std_basis_matrix_add Matrix.stdBasisMatrix_add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant6aba8c4da395440ac95ed08b6c67cf65d46c1fc018e6f1605ede09348edf1983.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b0f55338e643d4fea6a8c5cd02a5edf0edadeac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
