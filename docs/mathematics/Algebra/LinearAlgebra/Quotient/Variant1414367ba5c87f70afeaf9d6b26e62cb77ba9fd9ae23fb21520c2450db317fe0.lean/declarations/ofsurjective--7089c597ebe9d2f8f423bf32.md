# ofSurjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49f332b1e7f7355b10c3c8da8d2024b985bd39ac3360ee7d29dbaa3cb95cbbd0",
  "kind": "abbrev",
  "lexical_name": "ofSurjective",
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
  "slug": "ofsurjective--7089c597ebe9d2f8f423bf32",
  "source": {
    "blob": "c3dcc900559676a5c51b64b31d0327d113dc3edf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 60,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant1414367ba5c87f70afeaf9d6b26e62cb77ba9fd9ae23fb21520c2450db317fe0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7089c597ebe9d2f8f423bf32398c512d9db6a34c93f5b08c201103cf2d6ebbad",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variant1414367ba5c87f70afeaf9d6b26e62cb77ba9fd9ae23fb21520c2450db317fe0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49f332b1e7f7355b10c3c8da8d2024b985bd39ac3360ee7d29dbaa3cb95cbbd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev ofSurjective (f : A →ₐc[R] B) (hf : Function.Surjective f)
    (hS : antipode R ∘ₗ f.toLinearMap = f.toLinearMap ∘ₗ antipode R) : HopfAlgebra R B := by
  refine .ofConvInverse (antipode R) (ofConv_injective ?_) (ofConv_injective ?_) <;>
    rw [← LinearMap.cancel_right (show Function.Surjective f.toLinearMap from hf)]
  · calc (toConv (antipode R) * toConv .id : WithConv (B →ₗ[R] B)).ofConv ∘ₗ
          f.toCoalgHom.toLinearMap
        = (toConv (f.toLinearMap ∘ₗ antipode R) * toConv f.toLinearMap).ofConv := by
          rw [convMul_comp_coalgHom_distrib, hS]; rfl
      _ = (AlgHom.ofClass f).toLinearMap ∘ₗ
            (toConv (antipode R) * toConv .id : WithConv (A →ₗ[R] A)).ofConv := by
          rw [algHom_comp_convMul_distrib]; rfl
      _ = (1 : WithConv (B →ₗ[R] B)).ofConv ∘ₗ f.toLinearMap := by
          rw [antipode_mul_id, algHom_comp_convOne, ← convOne_comp_coalgHom f.toCoalgHom]
  · calc (toConv .id * toConv (antipode R) : WithConv (B →ₗ[R] B)).ofConv ∘ₗ
          f.toCoalgHom.toLinearMap
        = (toConv f.toLinearMap * toConv (f.toLinearMap ∘ₗ antipode R)).ofConv := by
          rw [convMul_comp_coalgHom_distrib, hS]; rfl
      _ = (AlgHom.ofClass f).toLinearMap ∘ₗ
            (toConv .id * toConv (antipode R) : WithConv (A →ₗ[R] A)).ofConv := by
          rw [algHom_comp_convMul_distrib]; rfl
      _ = (1 : WithConv (B →ₗ[R] B)).ofConv ∘ₗ f.toLinearMap := by
          rw [id_mul_antipode, algHom_comp_convOne, ← convOne_comp_coalgHom f.toCoalgHom]

end ofSurjective

end HopfAlgebra

variable {R A : Type*} [CommRing R] [Ring A]

section HopfAlgebraStruct

variable [HopfAlgebraStruct R A]

variable (R) in
/-- An ideal whose underlying `R`-submodule is a coideal and which is stable under the
antipode (`S(I) ⊆ I`). Together with `I.IsTwoSided`, this makes `I` a *Hopf ideal*. -/
@[mk_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variant1414367ba5c87f70afeaf9d6b26e62cb77ba9fd9ae23fb21520c2450db317fe0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variant1414367ba5c87f70afeaf9d6b26e62cb77ba9fd9ae23fb21520c2450db317fe0.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3dcc900559676a5c51b64b31d0327d113dc3edf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
