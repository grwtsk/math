# tensorH1CotangentOfIsLocalization_toLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14efd983-32be-9c67-e4be-0548a39fea39",
  "kind": "lemma",
  "lexical_name": "tensorH1CotangentOfIsLocalization_toLinearMap",
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
  "slug": "tensorh1cotangentofislocalization-tolinearmap--01ec87b7c11a87cbffe1eeb6",
  "source": {
    "blob": "d18ddd3379148e9a1f7571baceac8cb5e73722dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 349,
    "path": "GRWTSK/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01ec87b7c11a87cbffe1eeb69af56a4774d1a92961bcb57490ca458c3e11afd0",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14efd983-32be-9c67-e4be-0548a39fea39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tensorH1CotangentOfIsLocalization_toLinearMap
    (M : Submonoid S) [IsLocalization M T] :
    (tensorH1CotangentOfIsLocalization R T M).toLinearMap =
      (Algebra.H1Cotangent.map R R S T).liftBaseChange T := by
  ext x : 3
  simp only [AlgebraTensorModule.curry_apply, curry_apply, LinearMap.coe_restrictScalars,
    LinearEquiv.coe_coe, LinearMap.liftBaseChange_tmul, one_smul]
  simp only [tensorH1CotangentOfIsLocalization,
    Extension.tensorH1CotangentOfFormallyEtale,
    LinearEquiv.ofBijective_apply, LinearMap.liftBaseChange_tmul, one_smul,
    Extension.equivH1CotangentOfFormallySmooth, LinearEquiv.trans_apply]
  let P : Extension R S := (Generators.self R S).toExtension
  let M' := M.comap (algebraMap P.Ring S)
  let fQ : Localization M' →ₐ[R] T := IsLocalization.liftAlgHom (M := M')
    (f := (IsScalarTower.toAlgHom R S T).comp (IsScalarTower.toAlgHom R P.Ring S)) (fun ⟨y, hy⟩ ↦
    by simpa using IsLocalization.map_units T ⟨algebraMap P.Ring S y, hy⟩)
  let Q : Extension R T := .ofSurjective fQ (by
    intro x
    obtain ⟨x, ⟨s, hs⟩, rfl⟩ := IsLocalization.exists_mk'_eq M x
    obtain ⟨x, rfl⟩ := P.algebraMap_surjective x
    obtain ⟨s, rfl⟩ := P.algebraMap_surjective s
    refine ⟨IsLocalization.mk' _ x ⟨s, show s ∈ M' from hs⟩, ?_⟩
    simp only [fQ, IsLocalization.coe_liftAlgHom, AlgHom.toRingHom_eq_coe]
    rw [IsLocalization.lift_mk'_spec]
    simp)
  let f : (Generators.self R T).toExtension.Hom Q :=
  { toRingHom := (MvPolynomial.aeval Q.σ).toRingHom
    toRingHom_algebraMap := (MvPolynomial.aeval Q.σ).commutes
    algebraMap_toRingHom := by
      have : (IsScalarTower.toAlgHom R Q.Ring T).comp (MvPolynomial.aeval Q.σ) =
          IsScalarTower.toAlgHom _ (Generators.self R T).toExtension.Ring _ := by
        ext i
        change _ = algebraMap (Generators.self R T).Ring _ (.X i)
        simp
      exact DFunLike.congr_fun this }
  rw [← Extension.H1Cotangent.equivOfFormallySmooth_symm, LinearEquiv.symm_apply_eq,
    @Extension.H1Cotangent.equivOfFormallySmooth_apply (f := f),
    Algebra.H1Cotangent.map, ← (Extension.H1Cotangent.map f).coe_restrictScalars S,
    ← LinearMap.comp_apply, ← Extension.H1Cotangent.map_comp, Extension.H1Cotangent.map_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Variante032da5e4d6f853942c5dc3ac1608840245e2b235c66ca8e78dc91050f26bc6e.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d18ddd3379148e9a1f7571baceac8cb5e73722dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
