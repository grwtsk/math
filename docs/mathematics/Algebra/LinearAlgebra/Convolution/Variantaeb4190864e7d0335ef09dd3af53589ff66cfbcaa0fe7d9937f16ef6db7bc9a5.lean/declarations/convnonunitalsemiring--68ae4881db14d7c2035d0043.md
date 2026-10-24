# convNonUnitalSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b539be933ee31ae57700ab2cf1a54ceab46465eea9c8a73033cd0f34aa207ccd",
  "kind": "instance",
  "lexical_name": "convNonUnitalSemiring",
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
  "slug": "convnonunitalsemiring--68ae4881db14d7c2035d0043",
  "source": {
    "blob": "e1066ab2ac9cfb5898d5aa0e9d6662ed58060fb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 140,
    "path": "GRWTSK/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68ae4881db14d7c2035d0043dc3afcfc29c8095e3ef23289cc51b332e49dc77d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b539be933ee31ae57700ab2cf1a54ceab46465eea9c8a73033cd0f34aa207ccd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance convNonUnitalSemiring : NonUnitalSemiring (WithConv (C →ₗ[R] A)) where
  mul_assoc f g h := toConv_injective.eq_iff.mpr <| calc
    _ = (μ ∘ₗ rTensor _ μ) ∘ₗ (((f.ofConv ⊗ₘ g.ofConv) ⊗ₘ h.ofConv) ∘ₗ
        (TensorProduct.assoc R C C C).symm) ∘ₗ lTensor C δ ∘ₗ δ := by
      ext; simp [comp_assoc, coassoc_symm, convMul_def]
    _ = (μ ∘ₗ rTensor A μ ∘ₗ ↑(TensorProduct.assoc R A A A).symm) ∘ₗ
        (f.ofConv ⊗ₘ (g.ofConv ⊗ₘ h.ofConv)) ∘ₗ lTensor C δ ∘ₗ δ := by
      simp only [map_map_comp_assoc_symm_eq, comp_assoc]
    _ = (μ ∘ₗ .lTensor _ μ) ∘ₗ (f.ofConv ⊗ₘ (g.ofConv ⊗ₘ h.ofConv)) ∘ₗ (lTensor C δ ∘ₗ δ) := by
      congr 1
      ext
      simp [mul_assoc]
    _ = μ ∘ₗ (f.ofConv ⊗ₘ μ ∘ₗ (g.ofConv ⊗ₘ h.ofConv) ∘ₗ δ) ∘ₗ δ := by ext; simp

end NonUnitalSemiring

section NonUnitalRing
variable [NonUnitalRing A] [AddCommMonoid C] [Module R A] [SMulCommClass R A A]
  [IsScalarTower R A A] [Module R C] [Coalgebra R C]

/-- Non-unital convolution ring structure on linear maps from a coalgebra to a
non-unital algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Convolution/Variantaeb4190864e7d0335ef09dd3af53589ff66cfbcaa0fe7d9937f16ef6db7bc9a5.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1066ab2ac9cfb5898d5aa0e9d6662ed58060fb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
