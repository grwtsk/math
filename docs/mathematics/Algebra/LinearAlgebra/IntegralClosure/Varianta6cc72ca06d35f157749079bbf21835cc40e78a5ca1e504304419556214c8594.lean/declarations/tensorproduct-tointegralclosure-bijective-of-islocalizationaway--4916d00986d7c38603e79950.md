# TensorProduct.toIntegralClosure_bijective_of_isLocalizationAway

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fd8d39ed9f66f9b65488cf19af6038db4921b03c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:225fbcb6-27d1-7463-3371-dffd9909dbc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:edf72784-f185-98d9-a363-816868f50eda",
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
  "slug": "tensorproduct-tointegralclosure-bijective-of-islocalizationaway--4916d00986d7c38603e79950",
  "source": {
    "blob": "fd8d39ed9f66f9b65488cf19af6038db4921b03c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 73,
    "path": "GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4916d00986d7c38603e79950baaefc16cb7a446a3e317167a8ab9ab0e53378ec",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edf72784-f185-98d9-a363-816868f50eda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–125.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd8d39ed9f66f9b65488cf19af6038db4921b03c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
