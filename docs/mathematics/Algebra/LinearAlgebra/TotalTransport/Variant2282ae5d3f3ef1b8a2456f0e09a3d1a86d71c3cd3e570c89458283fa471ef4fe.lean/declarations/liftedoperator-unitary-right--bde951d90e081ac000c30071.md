# liftedOperator_unitary_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bfa89c1d40aeeeed345de3fe5dab28a8520a3f67",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1ab9f27-6335-0faa-6747-b6d5440554c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8347edc1-3b8d-39f7-5f5a-2585b3158ab7",
  "kind": "theorem",
  "lexical_name": "liftedOperator_unitary_right",
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
  "slug": "liftedoperator-unitary-right--bde951d90e081ac000c30071",
  "source": {
    "blob": "bfa89c1d40aeeeed345de3fe5dab28a8520a3f67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 44,
    "path": "GRWTSK/Algebra/LinearAlgebra/TotalTransport/Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bde951d90e081ac000c300713c76a24e32955c5b220b7abe55cb37157673bf64",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TotalTransport/Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8347edc1-3b8d-39f7-5f5a-2585b3158ab7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftedOperator_unitary_right (fold : FoldUnitary terrain) :
    fold.liftedOperator * fold.liftedOperator.conjTranspose =
      (1 : Matrix (Index × SpindleIndex) (Index × SpindleIndex) ℂ) := by
  rw [liftedOperator, Matrix.conjTranspose_kronecker]
  simp only [Matrix.conjTranspose_one]
  rw [← Matrix.mul_kronecker_mul, fold.unitary_right]
  simp

/-- The lifted fold commutes with the total finite DAF operator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TotalTransport/Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TotalTransport/Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfa89c1d40aeeeed345de3fe5dab28a8520a3f67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
