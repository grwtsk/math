# tensorH1CotangentOfIsLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c40ae85b0805082bc2602b26c4b4e83b14c47a3af0a6fec5335c281c79b4717c",
  "kind": "def",
  "lexical_name": "tensorH1CotangentOfIsLocalization",
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
  "slug": "tensorh1cotangentofislocalization--03146b92217e256fffb49604",
  "source": {
    "blob": "bb141bf6b2643c2566500a9f40bf20f129ff5367",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 265,
    "path": "GRWTSK/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03146b92217e256fffb4960468ca448371810c00a761163f6537c8a64201b6e9",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c40ae85b0805082bc2602b26c4b4e83b14c47a3af0a6fec5335c281c79b4717c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tensorH1CotangentOfIsLocalization (M : Submonoid S) [IsLocalization M T] :
    T ⊗[S] H1Cotangent R S ≃ₗ[T] H1Cotangent R T := by
  letI P : Extension R S := (Generators.self R S).toExtension
  letI M' := M.comap (algebraMap P.Ring S)
  letI fQ : Localization M' →ₐ[R] T := IsLocalization.liftAlgHom (M := M')
    (f := (IsScalarTower.toAlgHom R S T).comp (IsScalarTower.toAlgHom R P.Ring S)) (fun ⟨y, hy⟩ ↦
    by simpa using IsLocalization.map_units T ⟨algebraMap P.Ring S y, hy⟩)
  letI Q : Extension R T := .ofSurjective fQ (by
    intro x
    obtain ⟨x, ⟨s, hs⟩, rfl⟩ := IsLocalization.mk'_surjective M x
    obtain ⟨x, rfl⟩ := P.algebraMap_surjective x
    obtain ⟨s, rfl⟩ := P.algebraMap_surjective s
    refine ⟨IsLocalization.mk' _ x ⟨s, show s ∈ M' from hs⟩, ?_⟩
    simp only [fQ, IsLocalization.coe_liftAlgHom, AlgHom.toRingHom_eq_coe]
    rw [IsLocalization.lift_mk'_spec]
    simp)
  letI f : P.Hom Q :=
  { toRingHom := algebraMap P.Ring (Localization M')
    toRingHom_algebraMap x := (IsScalarTower.algebraMap_apply R P.Ring (Localization M') _).symm
    algebraMap_toRingHom x := @IsLocalization.lift_eq .. }
  haveI : FormallySmooth R P.Ring := inferInstanceAs (FormallySmooth R (MvPolynomial _ _))
  haveI : FormallySmooth P.Ring (Localization M') := .of_isLocalization M'
  haveI : FormallySmooth R Q.Ring := .comp R P.Ring (Localization M')
  haveI : Module.Flat S T := IsLocalization.flat T M
  letI : Algebra P.Ring Q.Ring := inferInstanceAs (Algebra P.Ring (Localization M'))
  letI := ((algebraMap S T).comp (algebraMap P.Ring S)).toAlgebra
  letI := fQ.toRingHom.toAlgebra
  haveI : IsScalarTower P.Ring S T := .of_algebraMap_eq' rfl
  haveI : IsScalarTower P.Ring (Localization M') T :=
    .of_algebraMap_eq fun r ↦ (f.algebraMap_toRingHom r).symm
  haveI : IsLocalizedModule M' (IsScalarTower.toAlgHom P.Ring S T).toLinearMap := by
    rw [isLocalizedModule_iff_isLocalization]
    convert ‹IsLocalization M T› using 1
    exact Submonoid.map_comap_eq_of_surjective P.algebraMap_surjective _
  refine Extension.tensorH1Cotangent f rfl ?_ ?_ ≪≫ₗ Extension.equivH1CotangentOfFormallySmooth _
  · exact RingHom.formallyEtale_algebraMap.mpr
      (FormallyEtale.of_isLocalization (M := M') (Rₘ := Localization M'))
  · let F : P.ker →ₗ[P.Ring] RingHom.ker fQ := f.mapKer rfl
    refine (isLocalizedModule_iff_isBaseChange M' (Localization M') F).mp ?_
    have : (LinearMap.ker <| Algebra.linearMap P.Ring S).localized' (Localization M') M'
        (Algebra.linearMap P.Ring (Localization M')) = RingHom.ker fQ := by
      rw [LinearMap.localized'_ker_eq_ker_localizedMap (Localization M') M'
        (Algebra.linearMap P.Ring (Localization M'))
        (f' := (IsScalarTower.toAlgHom P.Ring S T).toLinearMap)]
      ext x
      obtain ⟨x, ⟨s, hs⟩, rfl⟩ := IsLocalization.mk'_surjective M' x
      simp only [LinearMap.mem_ker, LinearMap.extendScalarsOfIsLocalization_apply', RingHom.mem_ker,
        IsLocalization.coe_liftAlgHom, AlgHom.toRingHom_eq_coe, IsLocalization.lift_mk'_spec,
        RingHom.coe_coe, AlgHom.coe_comp, IsScalarTower.coe_toAlgHom', Function.comp_apply,
        mul_zero, fQ]
      have : IsLocalization.mk' (Localization M') x ⟨s, hs⟩ =
          IsLocalizedModule.mk' (Algebra.linearMap P.Ring (Localization M')) x ⟨s, hs⟩ := by
        rw [IsLocalization.mk'_eq_iff_eq_mul, mul_comm, ← Algebra.smul_def, ← Submonoid.smul_def,
          IsLocalizedModule.mk'_cancel']
        rfl
      simp [this, ← IsScalarTower.algebraMap_apply]
    have : F = ((LinearEquiv.ofEq _ _ this).restrictScalars P.Ring).toLinearMap ∘ₗ
      P.ker.toLocalized' (Localization M') M' (Algebra.linearMap P.Ring (Localization M')) := by
      ext; rfl
    rw [this]
    exact IsLocalizedModule.of_linearEquiv _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Variant353e076ac09a243617701d6334c41325f6cf26972781f9ea26751142434542c7.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb141bf6b2643c2566500a9f40bf20f129ff5367` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
