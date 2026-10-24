# retractionKerCotangentToTensorEquivSection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27fcac9064a81c23bbce81c3c29208d86154bda49f1ad414f8fc5862b7021d36",
  "kind": "def",
  "lexical_name": "retractionKerCotangentToTensorEquivSection",
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
  "slug": "retractionkercotangenttotensorequivsection--e9c28b89f79d157b883408ca",
  "source": {
    "blob": "8496d5bf06be1bc55372ba850642e28cd2a8607f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 332,
    "path": "GRWTSK/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9c28b89f79d157b883408cae61466dccf2acdf46fad51753f5268cd4e6abcd7",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27fcac9064a81c23bbce81c3c29208d86154bda49f1ad414f8fc5862b7021d36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def retractionKerCotangentToTensorEquivSection :
    { l // l ∘ₗ (kerCotangentToTensor R P S) = LinearMap.id } ≃
      { g // (IsScalarTower.toAlgHom R P S).kerSquareLift.comp g = AlgHom.id R S } := by
  let P' := P ⧸ (RingHom.ker (algebraMap P S) ^ 2)
  have h₁ : Surjective (algebraMap P' S) := Function.Surjective.of_comp (g := algebraMap P P') hf
  have h₂ : RingHom.ker (algebraMap P' S) ^ 2 = ⊥ := by
    rw [RingHom.algebraMap_toAlgebra, AlgHom.ker_kerSquareLift, Ideal.cotangentIdeal_square]
  let e₁ : (RingHom.ker (algebraMap P S)).Cotangent ≃ₗ[P] (RingHom.ker (algebraMap P' S)) :=
    (Ideal.cotangentEquivIdeal _).trans ((LinearEquiv.ofEq _ _
      (IsScalarTower.toAlgHom R P S).ker_kerSquareLift.symm).restrictScalars P)
  let e₂ : S ⊗[P'] Ω[P'⁄R] ≃ₗ[P] S ⊗[P] Ω[P⁄R] :=
    (tensorKaehlerQuotKerSqEquiv R P S).restrictScalars P
  have H : kerCotangentToTensor R P S =
      e₂.toLinearMap ∘ₗ (kerToTensor R P' S ).restrictScalars P ∘ₗ e₁.toLinearMap := by
    ext x
    obtain ⟨x, rfl⟩ := Ideal.toCotangent_surjective _ x
    exact (tensorKaehlerQuotKerSqEquiv_tmul_D 1 x.1).symm
  refine Equiv.trans ?_ (retractionKerToTensorEquivSection (R := R) h₂ h₁)
  refine ⟨fun ⟨l, hl⟩ ↦ ⟨⟨e₁.toLinearMap ∘ₗ l ∘ₗ e₂.toLinearMap, ?_⟩, ?_⟩,
    fun ⟨l, hl⟩ ↦ ⟨e₁.symm.toLinearMap ∘ₗ l.restrictScalars P ∘ₗ e₂.symm.toLinearMap, ?_⟩, ?_, ?_⟩
  · rintro x y
    obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective x
    simp only [P', ← Ideal.Quotient.algebraMap_eq, IsScalarTower.algebraMap_smul]
    exact (e₁.toLinearMap ∘ₗ l ∘ₗ e₂.toLinearMap).map_smul x y
  · ext1 x
    rw [H] at hl
    obtain ⟨x, rfl⟩ := e₁.surjective x
    exact DFunLike.congr_arg e₁ (LinearMap.congr_fun hl x)
  · ext x
    rw [H]
    apply e₁.injective
    simp only [LinearMap.coe_comp, LinearEquiv.coe_coe, LinearMap.coe_restrictScalars,
      Function.comp_apply, LinearEquiv.symm_apply_apply, LinearMap.id_coe, id_eq,
      LinearEquiv.apply_symm_apply]
    exact LinearMap.congr_fun hl (e₁ x)
  · intro f
    ext x
    simp only [AlgebraTensorModule.curry_apply, Derivation.coe_comp, LinearMap.coe_comp,
      LinearMap.coe_restrictScalars, Derivation.coeFn_coe, Function.comp_apply, curry_apply,
      LinearEquiv.coe_coe, LinearMap.coe_mk, AddHom.coe_coe, LinearMap.toAddMonoidHom_coe,
      LinearEquiv.apply_symm_apply, LinearEquiv.symm_apply_apply]
  · intro f
    ext x
    simp only [AlgebraTensorModule.curry_apply, Derivation.coe_comp, LinearMap.coe_comp,
      LinearMap.coe_restrictScalars, Derivation.coeFn_coe, Function.comp_apply, curry_apply,
      LinearMap.coe_mk, AddHom.coe_coe, LinearMap.toAddMonoidHom_coe, LinearEquiv.coe_coe,
      LinearEquiv.symm_apply_apply, LinearEquiv.apply_symm_apply]

variable [Algebra.FormallySmooth R P]

include hf in
/--
Given a formally smooth `R`-algebra `P` and a surjective algebra homomorphism `f : P →ₐ[R] S`
with kernel `I` (typically a presentation `R[X] → S`),
`S` is formally smooth iff the `P`-linear map `I/I² → S ⊗[P] Ω[P⁄R]` is split injective.
Also see `Algebra.Extension.formallySmooth_iff_split_injection`
for the version in terms of `Extension`.
-/
@[stacks 031I]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Variant08a69c5040a530d08b778d817e888c0dd4bf537efb7fdd4feaad3598d52fe2cd.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8496d5bf06be1bc55372ba850642e28cd2a8607f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
