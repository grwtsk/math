# liftedOperator_unitary_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a0b93fb-3eab-389e-406c-c734602fe5d0",
  "kind": "theorem",
  "lexical_name": "liftedOperator_unitary_left",
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
  "slug": "liftedoperator-unitary-left--41174fca2591b1de0800e6a2",
  "source": {
    "blob": "898b01de39e7a98c4846df9e17e030deec17dc39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 44,
    "path": "GRWTSK/Algebra/LinearAlgebra/TotalTransport/Variant10695b0947539ec362a23741c58d61eae33eee582c4569ec39e72c63645b057f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41174fca2591b1de0800e6a26838dc524773b17415494adf25774cdd405c6bbd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TotalTransport/Variant10695b0947539ec362a23741c58d61eae33eee582c4569ec39e72c63645b057f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a0b93fb-3eab-389e-406c-c734602fe5d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftedOperator_unitary_left (fold : FoldUnitary terrain) :
    fold.liftedOperator.conjTranspose * fold.liftedOperator =
      (1 : Matrix (Index × SpindleIndex) (Index × SpindleIndex) ℂ) := by
  rw [liftedOperator, Matrix.conjTranspose_kronecker]
  simp only [Matrix.conjTranspose_one]
  rw [← Matrix.mul_kronecker_mul, fold.unitary_left]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TotalTransport/Variant10695b0947539ec362a23741c58d61eae33eee582c4569ec39e72c63645b057f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TotalTransport/Variant10695b0947539ec362a23741c58d61eae33eee582c4569ec39e72c63645b057f.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `898b01de39e7a98c4846df9e17e030deec17dc39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
