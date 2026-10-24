# comm_comp_rTensor_comp_comm_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:223c325b-29cf-74f5-1f0d-df98c0103c0f",
  "kind": "lemma",
  "lexical_name": "comm_comp_rTensor_comp_comm_eq",
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
  "slug": "comm-comp-rtensor-comp-comm-eq--0f6f336cd63aa1b4b6852867",
  "source": {
    "blob": "7641b5ba2a6369a307fc9f84015c1a5ed1797767",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 378,
    "path": "GRWTSK/Algebra/LinearAlgebra/Map/Variant7b0067c5bba49f549a0f678f1f649fcca36c6c0ed93b711ee76653f73199cc3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f6f336cd63aa1b4b6852867ced06e7cace3f2b6dd45f53c98f523e1d0e19e34",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Map/Variant7b0067c5bba49f549a0f678f1f649fcca36c6c0ed93b711ee76653f73199cc3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:223c325b-29cf-74f5-1f0d-df98c0103c0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comm_comp_rTensor_comp_comm_eq (g : N →ₗ[R] P) :
    TensorProduct.comm R P Q ∘ₗ rTensor Q g ∘ₗ TensorProduct.comm R Q N =
      lTensor Q g :=
  TensorProduct.ext rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Map/Variant7b0067c5bba49f549a0f678f1f649fcca36c6c0ed93b711ee76653f73199cc3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Map/Variant7b0067c5bba49f549a0f678f1f649fcca36c6c0ed93b711ee76653f73199cc3c.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7641b5ba2a6369a307fc9f84015c1a5ed1797767` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
