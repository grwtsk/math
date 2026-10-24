# canonicalMatrixFiberCrossedProductTrace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59e5051d106be3e48ccaee92b3d13d9d7b482b79b28e9452cc5dade8fb41a143",
  "kind": "def",
  "lexical_name": "canonicalMatrixFiberCrossedProductTrace",
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
  "slug": "canonicalmatrixfibercrossedproducttrace--5d0f745bad75c91985c07a10",
  "source": {
    "blob": "680f8bbf6ebe939e47f2950c26f7690e61a82c7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 147,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d0f745bad75c91985c07a1033e6e37196bfb5c8371e635365098c7a9d3960b9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59e5051d106be3e48ccaee92b3d13d9d7b482b79b28e9452cc5dade8fb41a143`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def canonicalMatrixFiberCrossedProductTrace
    {system : RandomBitfieldSystem}
    {Automorphism : Type*}
    [Group Automorphism]
    {rank : Nat}
    (element :
      MatrixFiberCrossedProductElement
        system Automorphism rank) : ℂ :=
  system.law.expectation
    (fun state =>
      normalizedMatrixTrace (element 1 state))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixFiberCrossedProduct/Variant1b0b2205bbef6af431e9329ba76d396d3f68fb35894bf355da68f71b7a3c0916.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `680f8bbf6ebe939e47f2950c26f7690e61a82c7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
