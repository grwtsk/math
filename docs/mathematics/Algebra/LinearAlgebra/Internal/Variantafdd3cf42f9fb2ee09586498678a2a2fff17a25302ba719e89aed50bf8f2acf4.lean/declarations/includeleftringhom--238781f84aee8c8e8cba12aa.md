# includeLeftRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:509a458c1bb7c7de3ae17c5065817c82ea2e21a75e6aea63874183a3341c01ed",
  "kind": "def",
  "lexical_name": "includeLeftRingHom",
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
  "slug": "includeleftringhom--238781f84aee8c8e8cba12aa",
  "source": {
    "blob": "424c445a0606204a7431c90a9b3ae1a3f1e6ca1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 229,
    "path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:238781f84aee8c8e8cba12aaf2ad922aa785b26e4bfb1a2c8bd8cf0424788f27",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:509a458c1bb7c7de3ae17c5065817c82ea2e21a75e6aea63874183a3341c01ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def includeLeftRingHom : A →+* 𝒜 ᵍ⊗[R] ℬ where
  toFun a := a ᵍ⊗ₜ 1
  map_zero' := by simp
  map_add' := by simp [tmul, TensorProduct.add_tmul]
  map_one' := rfl
  map_mul' a₁ a₂ := by
    classical
    rw [← DirectSum.sum_support_decompose 𝒜 a₂, Finset.mul_sum]
    simp_rw [tmul, sum_tmul, map_sum, Finset.mul_sum]
    congr
    ext i
    rw [← SetLike.coe_gOne ℬ, tmul_coe_mul_coe_tmul, zero_mul, uzpow_zero, one_smul,
      SetLike.coe_gOne, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Internal/Variantafdd3cf42f9fb2ee09586498678a2a2fff17a25302ba719e89aed50bf8f2acf4.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `424c445a0606204a7431c90a9b3ae1a3f1e6ca1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
