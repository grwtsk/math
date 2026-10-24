# dualTensorHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f1cc087482bce4a553c8d5659c6c73e714d3ae7d4cb8c0e73181d4d724d6259",
  "kind": "def",
  "lexical_name": "dualTensorHomEquiv",
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
  "slug": "dualtensorhomequiv--e64dc5b1cc77dddb85d6d121",
  "source": {
    "blob": "4bb163548c37f9186ce5655076c7a20d9ca3be09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 210,
    "path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e64dc5b1cc77dddb85d6d121d135d126c27bdf8ab6912ad89828df14f99b6c92",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f1cc087482bce4a553c8d5659c6c73e714d3ae7d4cb8c0e73181d4d724d6259`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def dualTensorHomEquiv : Module.Dual R M ⊗[R] N ≃ₗ[R] M →ₗ[R] N :=
  dualTensorHomEquivOfBasis (Module.Free.chooseBasis R M)
#align dual_tensor_hom_equiv dualTensorHomEquiv

end CommRing

end Contraction

section HomTensorHom

open TensorProduct

open Module TensorProduct LinearMap

section CommRing

variable [CommRing R]

variable [AddCommGroup M] [AddCommGroup N] [AddCommGroup P] [AddCommGroup Q]

variable [Module R M] [Module R N] [Module R P] [Module R Q]

variable [Free R M] [Finite R M] [Free R N] [Finite R N] [Nontrivial R]

/-- When `M` is a finite free module, the map `lTensorHomToHomLTensor` is an equivalence. Note
that `lTensorHomEquivHomLTensor` is not defined directly in terms of
`lTensorHomToHomLTensor`, but the equivalence between the two is given by
`lTensorHomEquivHomLTensor_toLinearMap` and `lTensorHomEquivHomLTensor_apply`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bb163548c37f9186ce5655076c7a20d9ca3be09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
