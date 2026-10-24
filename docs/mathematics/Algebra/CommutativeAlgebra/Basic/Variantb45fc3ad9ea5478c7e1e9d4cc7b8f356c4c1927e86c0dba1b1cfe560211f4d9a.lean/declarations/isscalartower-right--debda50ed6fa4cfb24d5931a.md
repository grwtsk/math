# isScalarTower_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f275a1f3ecda0080aad332dd661f3240e589ead69ef3b14e8a74da5b1134e917",
  "kind": "instance",
  "lexical_name": "isScalarTower_right",
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
  "slug": "isscalartower-right--debda50ed6fa4cfb24d5931a",
  "source": {
    "blob": "b6adaa591a1a88222c979e83886e4b3656700533",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 340,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantb45fc3ad9ea5478c7e1e9d4cc7b8f356c4c1927e86c0dba1b1cfe560211f4d9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:debda50ed6fa4cfb24d5931aeb23725a3e2335f854798bae6278ef1c845b970c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantb45fc3ad9ea5478c7e1e9d4cc7b8f356c4c1927e86c0dba1b1cfe560211f4d9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f275a1f3ecda0080aad332dd661f3240e589ead69ef3b14e8a74da5b1134e917`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isScalarTower_right {α K : Type*} [Semiring K] [DistribSMul α K] [IsScalarTower α K K] :
    IsScalarTower α K[X] K[X] :=
  ⟨by
    rintro _ ⟨⟩ ⟨⟩;
      simp_rw [smul_eq_mul, ← ofFinsupp_smul, ← ofFinsupp_mul, ← ofFinsupp_smul, smul_mul_assoc]⟩
#align polynomial.is_scalar_tower_right Polynomial.isScalarTower_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantb45fc3ad9ea5478c7e1e9d4cc7b8f356c4c1927e86c0dba1b1cfe560211f4d9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantb45fc3ad9ea5478c7e1e9d4cc7b8f356c4c1927e86c0dba1b1cfe560211f4d9a.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6adaa591a1a88222c979e83886e4b3656700533` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
