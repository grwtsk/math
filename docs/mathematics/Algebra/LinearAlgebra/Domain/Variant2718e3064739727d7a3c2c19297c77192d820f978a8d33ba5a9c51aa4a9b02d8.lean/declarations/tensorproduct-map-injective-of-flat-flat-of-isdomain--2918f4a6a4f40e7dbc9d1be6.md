# TensorProduct.map_injective_of_flat_flat_of_isDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:027cd999-f08c-5dae-a1b6-b72e361656f4",
  "kind": "lemma",
  "lexical_name": "TensorProduct.map_injective_of_flat_flat_of_isDomain",
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
  "slug": "tensorproduct-map-injective-of-flat-flat-of-isdomain--2918f4a6a4f40e7dbc9d1be6",
  "source": {
    "blob": "7f2fcab9343cbc5da42cec26a7376b0e038749fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 36,
    "path": "GRWTSK/Algebra/LinearAlgebra/Domain/Variant2718e3064739727d7a3c2c19297c77192d820f978a8d33ba5a9c51aa4a9b02d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2918f4a6a4f40e7dbc9d1be63524e8fdfbe97299357a4f8e9e477ebd346b97f5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Domain/Variant2718e3064739727d7a3c2c19297c77192d820f978a8d33ba5a9c51aa4a9b02d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:027cd999-f08c-5dae-a1b6-b72e361656f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma TensorProduct.map_injective_of_flat_flat_of_isDomain
    (f : P →ₗ[R] M) (g : Q →ₗ[R] N) [H : Module.Flat R P] [Module.Flat R Q]
    (hf : Injective f) (hg : Injective g) : Injective (TensorProduct.map f g) := by
  let K := FractionRing R
  refine .of_comp (f := TensorProduct.mk R K _ 1) ?_
  have H₁ := TensorProduct.map_injective_of_flat_flat (f.baseChange K) (g.baseChange K)
    (Module.Flat.lTensor_preserves_injective_linearMap f hf)
    (Module.Flat.lTensor_preserves_injective_linearMap g hg)
  have H₂ := (AlgebraTensorModule.cancelBaseChange R K K (K ⊗[R] P) Q).symm.injective
  have H₃ := (AlgebraTensorModule.cancelBaseChange R K K (K ⊗[R] M) N).injective
  have H₄ := (AlgebraTensorModule.assoc R R K K P Q).symm.injective
  have H₅ := (AlgebraTensorModule.assoc R R K K M N).injective
  have H₆ := Module.Flat.rTensor_preserves_injective_linearMap (M := P ⊗[R] Q)
    (Algebra.linearMap R K) (FaithfulSMul.algebraMap_injective R K)
  have H₇ := (TensorProduct.lid R (P ⊗[R] Q)).symm.injective
  convert H₅.comp <| H₃.comp <| H₁.comp <| H₂.comp <| H₄.comp <| H₆.comp <| H₇
  dsimp only [← LinearMap.coe_comp, ← LinearEquiv.coe_toLinearMap,
    ← @LinearMap.coe_restrictScalars R K]
  congr! 1
  ext p q
  -- `simp` solves the goal but it times out
  change (1 : K) ⊗ₜ[R] f p ⊗ₜ[R] g q = (AlgebraTensorModule.assoc R R K K M N)
    (((1 : K) • (algebraMap R K) 1 ⊗ₜ[R] f p) ⊗ₜ[R] g q)
  simp only [map_one, one_smul, AlgebraTensorModule.assoc_tmul]

variable {ι κ : Type*} {v : ι → M} {w : κ → N} {s : Set ι} {t : Set κ}

/-- Tensor product of linearly independent families is linearly independent over domains.
This is true over non-domains if one of the modules is flat.
See `LinearIndependent.tmul_of_flat_left`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Domain/Variant2718e3064739727d7a3c2c19297c77192d820f978a8d33ba5a9c51aa4a9b02d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Domain/Variant2718e3064739727d7a3c2c19297c77192d820f978a8d33ba5a9c51aa4a9b02d8.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f2fcab9343cbc5da42cec26a7376b0e038749fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
