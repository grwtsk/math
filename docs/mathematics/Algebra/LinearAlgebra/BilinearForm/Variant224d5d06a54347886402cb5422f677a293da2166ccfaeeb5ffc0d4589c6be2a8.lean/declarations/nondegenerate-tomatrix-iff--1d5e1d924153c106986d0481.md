# nondegenerate_toMatrix'_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67ff636a-0802-6477-403d-a86c07a50609",
  "kind": "theorem",
  "lexical_name": "nondegenerate_toMatrix'_iff",
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
  "slug": "nondegenerate-tomatrix-iff--1d5e1d924153c106986d0481",
  "source": {
    "blob": "7c72096f43fba6ba5ebc644f77909edbf4342c30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 365,
    "path": "GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variant224d5d06a54347886402cb5422f677a293da2166ccfaeeb5ffc0d4589c6be2a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d5e1d924153c106986d0481ec23b0a9cf09bbdcfdae690cb01bc2f522c2e2e3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BilinearForm/Variant224d5d06a54347886402cb5422f677a293da2166ccfaeeb5ffc0d4589c6be2a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67ff636a-0802-6477-403d-a86c07a50609`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nondegenerate_toMatrix'_iff {B : BilinForm R₂ (ι → R₂)} :
    B.toMatrix'.Nondegenerate (m := ι) ↔ B.Nondegenerate :=
  Matrix.nondegenerate_toBilin'_iff.symm.trans <| (Matrix.toBilin'_toMatrix' B).symm ▸ Iff.rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BilinearForm/Variant224d5d06a54347886402cb5422f677a293da2166ccfaeeb5ffc0d4589c6be2a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variant224d5d06a54347886402cb5422f677a293da2166ccfaeeb5ffc0d4589c6be2a8.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c72096f43fba6ba5ebc644f77909edbf4342c30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
