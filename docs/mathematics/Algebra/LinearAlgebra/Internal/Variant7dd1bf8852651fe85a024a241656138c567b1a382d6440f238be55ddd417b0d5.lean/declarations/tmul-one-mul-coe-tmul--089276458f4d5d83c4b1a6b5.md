# tmul_one_mul_coe_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e5bf3de-9829-af78-5896-3b73dd661c27",
  "kind": "theorem",
  "lexical_name": "tmul_one_mul_coe_tmul",
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
  "slug": "tmul-one-mul-coe-tmul--089276458f4d5d83c4b1a6b5",
  "source": {
    "blob": "f12e182084cd98129f0c79cb428c1330a2ac4f9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 218,
    "path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:089276458f4d5d83c4b1a6b5e6273354d18a1c47f213a0f1a19ebd411b7bc604",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e5bf3de-9829-af78-5896-3b73dd661c27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tmul_one_mul_coe_tmul {i₂ : ι} (a₁ : A) (a₂ : 𝒜 i₂) (b₂ : B) :
    (a₁ ᵍ⊗ₜ[R] (1 : B) * (a₂ : A) ᵍ⊗ₜ[R] b₂ : 𝒜 ᵍ⊗[R] ℬ) = (a₁ * a₂ : A) ᵍ⊗ₜ (b₂ : B) := by
  convert tmul_zero_coe_mul_coe_tmul 𝒜 ℬ a₁ (@GradedMonoid.GOne.one _ (ℬ ·) _ _) a₂ b₂
  rw [SetLike.coe_gOne, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Internal/Variant7dd1bf8852651fe85a024a241656138c567b1a382d6440f238be55ddd417b0d5.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f12e182084cd98129f0c79cb428c1330a2ac4f9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
