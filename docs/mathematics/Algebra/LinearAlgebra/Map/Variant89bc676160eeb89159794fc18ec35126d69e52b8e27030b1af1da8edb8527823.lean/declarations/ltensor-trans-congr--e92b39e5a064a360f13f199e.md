# lTensor_trans_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df579372-90dd-1b36-a9ad-e7caedc8da21",
  "kind": "theorem",
  "lexical_name": "lTensor_trans_congr",
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
  "slug": "ltensor-trans-congr--e92b39e5a064a360f13f199e",
  "source": {
    "blob": "ace6a38e30023ab4d9eb64cf818499d1714b3ce3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 687,
    "line": 684,
    "path": "GRWTSK/Algebra/LinearAlgebra/Map/Variant89bc676160eeb89159794fc18ec35126d69e52b8e27030b1af1da8edb8527823.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e92b39e5a064a360f13f199ee7aecb3a28c538fb40a3ca3c06740ef94ea1d80b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Map/Variant89bc676160eeb89159794fc18ec35126d69e52b8e27030b1af1da8edb8527823.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df579372-90dd-1b36-a9ad-e7caedc8da21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 684–687.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem lTensor_trans_congr (f : M ≃ₗ[R] P) (g : N ≃ₗ[R] Q) (g' : S ≃ₗ[R] N) :
    g'.lTensor _ ≪≫ₗ TensorProduct.congr f g = TensorProduct.congr f (g' ≪≫ₗ g) :=
  toLinearMap_injective <| LinearMap.map_comp_lTensor M _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Map/Variant89bc676160eeb89159794fc18ec35126d69e52b8e27030b1af1da8edb8527823.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Map/Variant89bc676160eeb89159794fc18ec35126d69e52b8e27030b1af1da8edb8527823.lean#L684).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ace6a38e30023ab4d9eb64cf818499d1714b3ce3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
