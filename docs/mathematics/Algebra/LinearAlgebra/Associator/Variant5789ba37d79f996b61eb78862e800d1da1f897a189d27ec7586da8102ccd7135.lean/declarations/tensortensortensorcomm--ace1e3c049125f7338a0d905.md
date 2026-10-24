# tensorTensorTensorComm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ecf291933e2eb5d67a8a0e5b4eb634017bf11e3604bb3dd42a0ee4cbbfe0d045",
  "kind": "def",
  "lexical_name": "tensorTensorTensorComm",
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
  "slug": "tensortensortensorcomm--ace1e3c049125f7338a0d905",
  "source": {
    "blob": "feccf5348a2553cb4f456aeca001d460c14e846e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 276,
    "path": "GRWTSK/Algebra/LinearAlgebra/Associator/Variant5789ba37d79f996b61eb78862e800d1da1f897a189d27ec7586da8102ccd7135.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ace1e3c049125f7338a0d9053425874f5d412a06f5243887a1f017188d36635c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Associator/Variant5789ba37d79f996b61eb78862e800d1da1f897a189d27ec7586da8102ccd7135.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ecf291933e2eb5d67a8a0e5b4eb634017bf11e3604bb3dd42a0ee4cbbfe0d045`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tensorTensorTensorComm : M ⊗[R] N ⊗[R] (P ⊗[R] Q) ≃ₗ[R] M ⊗[R] P ⊗[R] (N ⊗[R] Q) :=
  (TensorProduct.assoc R (M ⊗[R] N) P Q).symm
    ≪≫ₗ congr (TensorProduct.rightComm R M N P) (.refl R Q)
    ≪≫ₗ TensorProduct.assoc R (M ⊗[R] P) N Q

variable {M N P Q}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Associator/Variant5789ba37d79f996b61eb78862e800d1da1f897a189d27ec7586da8102ccd7135.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Associator/Variant5789ba37d79f996b61eb78862e800d1da1f897a189d27ec7586da8102ccd7135.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feccf5348a2553cb4f456aeca001d460c14e846e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
