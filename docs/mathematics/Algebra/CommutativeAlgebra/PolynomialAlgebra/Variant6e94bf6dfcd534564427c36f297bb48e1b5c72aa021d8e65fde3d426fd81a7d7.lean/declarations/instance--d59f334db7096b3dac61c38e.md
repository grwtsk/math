# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6c66ecf51f7c2b878b9a7dcb55c69c73f55727641703cb2f6e532c4366e2748",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d59f334db7096b3dac61c38e",
  "source": {
    "blob": "939fa4841b4c09c39bf4d5ddba40f8e9ee5c8efd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 234,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant6e94bf6dfcd534564427c36f297bb48e1b5c72aa021d8e65fde3d426fd81a7d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d59f334db7096b3dac61c38e23b72445f53019af0466575fc47f9daeaece73d5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant6e94bf6dfcd534564427c36f297bb48e1b5c72aa021d8e65fde3d426fd81a7d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6c66ecf51f7c2b878b9a7dcb55c69c73f55727641703cb2f6e532c4366e2748`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Algebra.IsPushout R S R[X] S[X] where
  out := .of_equiv (polyEquivTensor' R S).symm fun _ ↦
    (polyEquivTensor_symm_apply_tmul_eq_smul ..).trans <| one_smul ..

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant6e94bf6dfcd534564427c36f297bb48e1b5c72aa021d8e65fde3d426fd81a7d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant6e94bf6dfcd534564427c36f297bb48e1b5c72aa021d8e65fde3d426fd81a7d7.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `939fa4841b4c09c39bf4d5ddba40f8e9ee5c8efd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
