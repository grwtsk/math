# IsAlt.eq_of_add_add_eq_zero

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
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/58d1d2d975360ed038f8258ae998cc0b26a085e0f15628dd99ea981486a32be0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b57415b-e366-8c7a-c17d-22ff4ef57e5a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c086fa6e-71a8-5753-2b88-0e0381c65468",
  "kind": "theorem",
  "lexical_name": "IsAlt.eq_of_add_add_eq_zero",
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
  "slug": "isalt-eq-of-add-add-eq-zero--5f7ba495c59a2b0edd3613a0",
  "source": {
    "blob": "70f67826b666a4f9b7db87816f0d9b6f325a000c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 248,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant58d1d2d975360ed038f8258ae998cc0b26a085e0f15628dd99ea981486a32be0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f7ba495c59a2b0edd3613a080ea864248fc57b64d8b90aa550e7431beccd0c4",
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

Occurrence: `result:c086fa6e-71a8-5753-2b88-0e0381c65468`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsAlt.eq_of_add_add_eq_zero [IsCancelAdd M] {a b c : M₁} (hAdd : a + b + c = 0) :
    B a b = B b c := by
  have : B a a + B a b + B a c = B a c + B b c + B c c := by
    simp_rw [← map_add, ← map_add₂, hAdd, map_zero, LinearMap.zero_apply]
  rw [H, H, zero_add, add_zero, add_comm] at this
  exact add_left_cancel this

end AddCommMonoid

section AddCommGroup

namespace IsAlt

variable [CommSemiring R] [AddCommGroup M] [Module R M] [CommSemiring R₁] [AddCommMonoid M₁]
  [Module R₁ M₁] {I₁ : R₁ →+* R} {I₂ : R₁ →+* R} {I : R₁ →+* R} {B : M₁ →ₛₗ[I₁] M₁ →ₛₗ[I₂] M}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Variant58d1d2d975360ed038f8258ae998cc0b26a085e0f15628dd99ea981486a32be0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant58d1d2d975360ed038f8258ae998cc0b26a085e0f15628dd99ea981486a32be0.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70f67826b666a4f9b7db87816f0d9b6f325a000c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
