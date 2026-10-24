# rTensorHomToHomRTensor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a070f02a162f97c228d39c5a0c9c6125145d0f9aeb2d8178a5d99ff0d646ffb6",
  "kind": "def",
  "lexical_name": "rTensorHomToHomRTensor",
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
  "slug": "rtensorhomtohomrtensor--3c0ad319146ace4a41e89c3b",
  "source": {
    "blob": "ace6a38e30023ab4d9eb64cf818499d1714b3ce3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 180,
    "path": "GRWTSK/Algebra/LinearAlgebra/Map/Variant89bc676160eeb89159794fc18ec35126d69e52b8e27030b1af1da8edb8527823.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c0ad319146ace4a41e89c3b55657178a264b746e7a9b8a367d5e6ece6d80228",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Map/Variant89bc676160eeb89159794fc18ec35126d69e52b8e27030b1af1da8edb8527823.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a070f02a162f97c228d39c5a0c9c6125145d0f9aeb2d8178a5d99ff0d646ffb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rTensorHomToHomRTensor : (P →ₛₗ[σ₁₂] M₂) ⊗[R₂] N₂ →ₗ[R₂] P →ₛₗ[σ₁₂] M₂ ⊗[R₂] N₂ :=
  TensorProduct.lift (llcomp _ P M₂ _ ∘ₗ (mk R₂ M₂ N₂).flip).flip

/-- The linear map from `(M →ₛₗ[σ₁₂] M₂) ⊗ (N →ₛₗ[σ₁₂] N₂)` to `M ⊗ N →ₛₗ[σ₁₂] M₂ ⊗ N₂`
sending `f ⊗ₜ g` to `TensorProduct.map f g`, the tensor product of the two maps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Map/Variant89bc676160eeb89159794fc18ec35126d69e52b8e27030b1af1da8edb8527823.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Map/Variant89bc676160eeb89159794fc18ec35126d69e52b8e27030b1af1da8edb8527823.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ace6a38e30023ab4d9eb64cf818499d1714b3ce3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
