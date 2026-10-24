# SeparatingLeft.ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70f67826b666a4f9b7db87816f0d9b6f325a000c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 625,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/58d1d2d975360ed038f8258ae998cc0b26a085e0f15628dd99ea981486a32be0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7246b3d-9465-a168-2c42-35f9a880f864",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b227f969-ecee-a225-5d01-aefe121a67fc",
  "kind": "theorem",
  "lexical_name": "SeparatingLeft.ne_zero",
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
  "slug": "separatingleft-ne-zero--daeeed2ee44837b47c9a7e42",
  "source": {
    "blob": "70f67826b666a4f9b7db87816f0d9b6f325a000c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 634,
    "line": 625,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant58d1d2d975360ed038f8258ae998cc0b26a085e0f15628dd99ea981486a32be0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:daeeed2ee44837b47c9a7e4279e43e7d5c9dc3ac820e829c0f8b518a06779165",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SesquilinearForm/Variant58d1d2d975360ed038f8258ae998cc0b26a085e0f15628dd99ea981486a32be0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b227f969-ecee-a225-5d01-aefe121a67fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 625–634.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SeparatingLeft.ne_zero [Nontrivial M₁] {B : M₁ →ₛₗ[I₁] M₂ →ₛₗ[I₂] M}
    (h : B.SeparatingLeft) : B ≠ 0 := fun h0 ↦ not_separatingLeft_zero M₁ M₂ I₁ I₂ <| h0 ▸ h

section Linear

variable [AddCommMonoid Mₗ₁] [AddCommMonoid Mₗ₂] [AddCommMonoid Mₗ₁'] [AddCommMonoid Mₗ₂']

variable [Module R Mₗ₁] [Module R Mₗ₂] [Module R Mₗ₁'] [Module R Mₗ₂']
variable {B : Mₗ₁ →ₗ[R] Mₗ₂ →ₗ[R] M} (e₁ : Mₗ₁ ≃ₗ[R] Mₗ₁') (e₂ : Mₗ₂ ≃ₗ[R] Mₗ₂')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Variant58d1d2d975360ed038f8258ae998cc0b26a085e0f15628dd99ea981486a32be0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant58d1d2d975360ed038f8258ae998cc0b26a085e0f15628dd99ea981486a32be0.lean#L625).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70f67826b666a4f9b7db87816f0d9b6f325a000c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
