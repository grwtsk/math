# TensorProduct.toIntegralClosure_bijective_of_isLocalizationAway

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f362ad56-a99d-d25a-cf40-250689e84696",
  "kind": "lemma",
  "lexical_name": "TensorProduct.toIntegralClosure_bijective_of_isLocalizationAway",
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
  "slug": "tensorproduct-tointegralclosure-bijective-of-islocalizationaway--86e10c335b3d2f5497951b14",
  "source": {
    "blob": "dafcd035a18243fbde809cbb881a37dc98ce6b7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 81,
    "path": "GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86e10c335b3d2f5497951b14e4b278553614413c3af365ce4391a8d4279ba126",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f362ad56-a99d-d25a-cf40-250689e84696`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma TensorProduct.toIntegralClosure_bijective_of_isLocalizationAway
    {s : Set S} (hs : Ideal.span s = ⊤) (Sᵣ : s → Type*) [∀ r, CommRing (Sᵣ r)]
    [∀ r, Algebra S (Sᵣ r)] [∀ r, Algebra R (Sᵣ r)] [∀ r, IsScalarTower R S (Sᵣ r)]
    [∀ r, IsLocalization.Away r.1 (Sᵣ r)]
    (H : ∀ r, Function.Bijective (toIntegralClosure R (Sᵣ r) B)) :
    Function.Bijective (toIntegralClosure R S B) := by
  have (r : s) : IsLocalizedModule.Away r.1
      (Algebra.TensorProduct.map (Algebra.ofId S (Sᵣ r))
        (AlgHom.id R (integralClosure R B))).toLinearMap := by
    let := (Algebra.TensorProduct.map (Algebra.ofId S (Sᵣ r))
      (AlgHom.id R (integralClosure R B))).toAlgebra
    refine isLocalizedModule_iff_isLocalization.mpr ?_
    refine IsLocalization.tensorProduct_tensorProduct _ _ (.powers r.1) _ ?_
    ext; simp [RingHom.algebraMap_toAlgebra]
  let φ (r : s) : integralClosure S (S ⊗[R] B) →ₐ[S] integralClosure (Sᵣ r) (Sᵣ r ⊗[R] B) :=
    ((Algebra.TensorProduct.map (Algebra.ofId _ _) (.id _ _)).comp
      (integralClosure S (S ⊗[R] B)).val).codRestrict
        ((integralClosure (Sᵣ r) (Sᵣ r ⊗[R] B)).restrictScalars S) <| by
    simp only [AlgHom.coe_comp, Subalgebra.coe_val, Function.comp_apply,
      Subalgebra.mem_restrictScalars, Subtype.forall, mem_integralClosure_iff]
    exact fun a ha ↦ (ha.map _).tower_top
  have (r : s) : IsLocalizedModule.Away r.1 (φ r).toLinearMap := by
    let := (Algebra.TensorProduct.map (Algebra.ofId S (Sᵣ r))
          (AlgHom.id R B)).toAlgebra
    let := (φ r).toAlgebra
    have : IsScalarTower (integralClosure S (S ⊗[R] B)) (integralClosure (Sᵣ r) (Sᵣ r ⊗[R] B))
        (Sᵣ r ⊗[R] B) := .of_algebraMap_eq' rfl
    have : IsLocalization (Algebra.algebraMapSubmonoid (S ⊗[R] B) (Submonoid.powers r.1))
        (Sᵣ r ⊗[R] B) := by
      refine IsLocalization.tensorProduct_tensorProduct _ _ (.powers r.1) _ ?_
      ext; simp [RingHom.algebraMap_toAlgebra]
    refine isLocalizedModule_iff_isLocalization.mpr ?_
    exact IsLocalization.integralClosure ..
  refine bijective_of_isLocalized_span s hs (F := (toIntegralClosure R S B).toLinearMap)
    (fun r ↦ (Sᵣ r) ⊗[R] integralClosure R B)
    (fun r ↦ (Algebra.TensorProduct.map (Algebra.ofId _ _) (.id _ _)).toLinearMap)
    (fun r ↦ integralClosure (Sᵣ r) ((Sᵣ r) ⊗[R] B))
    (fun r ↦ (φ r).toLinearMap) fun r ↦ ?_
  convert!
    show Function.Bijective ((toIntegralClosure R (Sᵣ r) B).toLinearMap.restrictScalars S) from
      H r using 1
  congr!
  refine IsLocalizedModule.ext (.powers r.1) (Algebra.TensorProduct.map (Algebra.ofId S (Sᵣ r))
    (AlgHom.id R (integralClosure R B))).toLinearMap
    (IsLocalizedModule.map_units (S := .powers r.1) (φ r).toLinearMap) ?_
  ext x
  exact congr($(IsLocalizedModule.map_apply (.powers r.1)
      ((Algebra.TensorProduct.map (Algebra.ofId S (Sᵣ r))
        (AlgHom.id R (integralClosure R B))).toLinearMap)
      (φ r).toLinearMap (toIntegralClosure R S B).toLinearMap (1 ⊗ₜ x)).1)

attribute [local instance] MvPolynomial.algebraMvPolynomial in
/-- Base changing to `MvPolynomial σ R` preserves integral closure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dafcd035a18243fbde809cbb881a37dc98ce6b7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
