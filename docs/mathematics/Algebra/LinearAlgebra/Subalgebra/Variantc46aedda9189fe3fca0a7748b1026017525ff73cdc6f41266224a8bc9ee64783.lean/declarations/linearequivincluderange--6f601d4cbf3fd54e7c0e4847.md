# linearEquivIncludeRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7763ce5d57da5570f43989e22478019efa81f015680d3882dc92d24f008eca8d",
  "kind": "def",
  "lexical_name": "linearEquivIncludeRange",
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
  "slug": "linearequivincluderange--6f601d4cbf3fd54e7c0e4847",
  "source": {
    "blob": "fc74da92bcc1479fe0c7c4843e837133f2bce00c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 143,
    "path": "GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f601d4cbf3fd54e7c0e4847ba74463a447f7f1764a21b8238d37ff9193fe031",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7763ce5d57da5570f43989e22478019efa81f015680d3882dc92d24f008eca8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def linearEquivIncludeRange :
    S ⊗[R] T ≃ₗ[R] (includeLeft : S →ₐ[R] S ⊗[R] T).range ⊗[R]
      (includeRight : T →ₐ[R] S ⊗[R] T).range := .ofLinear
  (_root_.TensorProduct.map
    includeLeft.toLinearMap.rangeRestrict includeRight.toLinearMap.rangeRestrict)
  ((LinearMap.range includeLeft).mulMap (LinearMap.range includeRight))
  (_root_.TensorProduct.ext' <| by
    rintro ⟨x', x, rfl : x ⊗ₜ 1 = x'⟩ ⟨y', y, rfl : 1 ⊗ₜ y = y'⟩
    rw [LinearMap.comp_apply, LinearMap.id_apply]
    erw [Submodule.mulMap_tmul]
    rw [tmul_mul_tmul, mul_one, one_mul, _root_.TensorProduct.map_tmul]
    rfl)
  (_root_.TensorProduct.ext' fun x y ↦ by
    rw [LinearMap.comp_apply, LinearMap.id_apply, _root_.TensorProduct.map_tmul]
    erw [Submodule.mulMap_tmul]
    change (x ⊗ₜ 1) * (1 ⊗ₜ y) = _
    rw [tmul_mul_tmul, mul_one, one_mul])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variantc46aedda9189fe3fca0a7748b1026017525ff73cdc6f41266224a8bc9ee64783.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc74da92bcc1479fe0c7c4843e837133f2bce00c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
