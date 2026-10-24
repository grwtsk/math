# assocAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa524554bfe1610aef5e9cb65f85b4f0d16e0e12d6bd08ba7f35ee944623400a",
  "kind": "def",
  "lexical_name": "assocAux",
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
  "slug": "assocaux--ee524bfe3fbec0778c14202d",
  "source": {
    "blob": "915342d3b63e40411174a7257f149107258f9690",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 187,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantd34362ddb31cae2ecf190a79ac4100d88ff7863926d4137712c7492be07da9c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee524bfe3fbec0778c14202db3168f1a0735132f371a9d468128d1845cee6551",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsTensorProduct/Variantd34362ddb31cae2ecf190a79ac4100d88ff7863926d4137712c7492be07da9c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa524554bfe1610aef5e9cb65f85b4f0d16e0e12d6bd08ba7f35ee944623400a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private noncomputable def assocAux
    (f : M₁ →ₗ[R] M₂ →ₗ[S] M₁₂) (hf : IsTensorProduct (f.restrictScalars₁₂ R R))
    (g : M₂ →ₗ[S] M₃ →ₗ[S] M₂₃) (hg : IsTensorProduct g) :
    M₁₂ ⊗[S] M₃ ≃ₗ[R] M₁ ⊗[R] M₂₃ :=
  letI : Module S (M₁ ⊗[R] M₂) :=
    AddEquiv.module S hf.equiv.toAddEquiv
  haveI heq (s : S) (y : M₁) (x : M₂) : s • y ⊗ₜ[R] x = y ⊗ₜ[R] (s • x) := by
    change hf.equiv.symm (s • _) = _
    dsimp
    rw [← map_smul]
    apply hf.equiv_symm_apply
  haveI : IsScalarTower R S (M₁ ⊗[R] M₂) := hf.equiv.isScalarTower S
  letI e₀ : M₂ ⊗[R] M₁ ≃ₗ[S] M₁ ⊗[R] M₂ :=
    { __ := TensorProduct.comm R M₂ M₁
      map_smul' s x := by induction x <;> simp_all [TensorProduct.smul_tmul'] }
  LinearEquiv.symm <|
    TensorProduct.congr (.refl _ _) (hg.equiv.symm.restrictScalars R) ≪≫ₗ
    TensorProduct.comm _ _ _ ≪≫ₗ
    (AlgebraTensorModule.congr (TensorProduct.comm _ _ _) (.refl _ _)).restrictScalars R ≪≫ₗ
    (AlgebraTensorModule.assoc R S S M₃ M₂ M₁).restrictScalars R ≪≫ₗ
    (TensorProduct.comm _ _ _).restrictScalars R ≪≫ₗ
    (TensorProduct.congr e₀ (.refl _ _)).restrictScalars R ≪≫ₗ
    (TensorProduct.congr (hf.equiv.linearEquiv S) (.refl _ _)).restrictScalars R

variable (f : M₁ →ₗ[R] M₂ →ₗ[S] M₁₂) (hf : IsTensorProduct (f.restrictScalars₁₂ R R))
  (g : M₂ →ₗ[S] M₃ →ₗ[S] M₂₃) (hg : IsTensorProduct g)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsTensorProduct/Variantd34362ddb31cae2ecf190a79ac4100d88ff7863926d4137712c7492be07da9c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantd34362ddb31cae2ecf190a79ac4100d88ff7863926d4137712c7492be07da9c9.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `915342d3b63e40411174a7257f149107258f9690` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
