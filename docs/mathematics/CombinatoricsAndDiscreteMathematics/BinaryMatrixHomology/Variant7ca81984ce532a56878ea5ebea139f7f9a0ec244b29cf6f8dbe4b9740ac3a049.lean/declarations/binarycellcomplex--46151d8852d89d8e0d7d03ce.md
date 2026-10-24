# BinaryCellComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95f41b5f9310ba7b688c97ec67c6db4108dd6cc217fbb5c5c3174c5b0b363da8",
  "kind": "structure",
  "lexical_name": "BinaryCellComplex",
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
  "slug": "binarycellcomplex--46151d8852d89d8e0d7d03ce",
  "source": {
    "blob": "2a2c775e4c33edd86d8cd0a132c05b5aed7e606e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrixHomology/Variant7ca81984ce532a56878ea5ebea139f7f9a0ec244b29cf6f8dbe4b9740ac3a049.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46151d8852d89d8e0d7d03cee92bbafdf5dbcbd541eef494fdc7f575a2cb4e76",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BinaryMatrixHomology/Variant7ca81984ce532a56878ea5ebea139f7f9a0ec244b29cf6f8dbe4b9740ac3a049.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95f41b5f9310ba7b688c97ec67c6db4108dd6cc217fbb5c5c3174c5b0b363da8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BinaryCellComplex where
  matrix : BinaryMatrix
  closureKind : BinaryClosureKind
  C0 : Type
  C1 : Type
  C2 : Type
  fintype0 : Fintype C0
  fintype1 : Fintype C1
  fintype2 : Fintype C2
  decEq0 : DecidableEq C0
  decEq1 : DecidableEq C1
  decEq2 : DecidableEq C2
  /-- Each original matrix cell is assigned to a 2-cell/face. -/
  matrixFace : Fin matrix.m → Fin matrix.n → C2
  /-- Boundary C1 -> C0. -/
  d1 : Z2Chain C1 → Z2Chain C0
  /-- Boundary C2 -> C1. -/
  d2 : Z2Chain C2 → Z2Chain C1
  /-- Boundary of a boundary is zero. -/
  d1_d2_zero : ∀ c : Z2Chain C2, d1 (d2 c) = 0

namespace BinaryCellComplex

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BinaryMatrixHomology/Variant7ca81984ce532a56878ea5ebea139f7f9a0ec244b29cf6f8dbe4b9740ac3a049.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrixHomology/Variant7ca81984ce532a56878ea5ebea139f7f9a0ec244b29cf6f8dbe4b9740ac3a049.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a2c775e4c33edd86d8cd0a132c05b5aed7e606e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
