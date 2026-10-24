# Ideal.Quotient.exists_algHom_fixedPoint_quotient_under

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2ca81b9-43f1-8214-cea3-21533d8a7c48",
  "kind": "lemma",
  "lexical_name": "Ideal.Quotient.exists_algHom_fixedPoint_quotient_under",
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
  "slug": "ideal-quotient-exists-alghom-fixedpoint-quotient-under--adb86a1369f2905c126ea0f8",
  "source": {
    "blob": "5ac32a0aad510660303aa75ce256813b20d884d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 414,
    "path": "GRWTSK/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adb86a1369f2905c126ea0f873f610444c632f25edc0ac3fe173e93d51077812",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2ca81b9-43f1-8214-cea3-21533d8a7c48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.Quotient.exists_algHom_fixedPoint_quotient_under
    (σ : k →ₐ[A ⧸ P] k) :
    ∃ τ : (B ⧸ Q) →ₐ[A ⧸ P] B ⧸ Q, ∀ x : B ⧸ Q,
      algebraMap _ _ (τ x) = σ (algebraMap (B ⧸ Q) k x) := by
  let f : (B ⧸ Q) →ₐ[A ⧸ P] k := IsScalarTower.toAlgHom _ _ _
  have hf : Function.Injective f := FaithfulSMul.algebraMap_injective _ _
  suffices (σ.comp f).range ≤ f.range by
    let e := (AlgEquiv.ofInjective f hf)
    exact ⟨(e.symm.toAlgHom.comp (Subalgebra.inclusion this)).comp (σ.comp f).rangeRestrict,
      fun x ↦ congr_arg Subtype.val (e.apply_symm_apply ⟨_, _⟩)⟩
  rintro _ ⟨x, rfl⟩
  obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective x
  cases nonempty_fintype G
  algebraize [(algebraMap (A ⧸ P) k).comp (algebraMap A (A ⧸ P)),
    (algebraMap (B ⧸ Q) k).comp (algebraMap B (B ⧸ Q))]
  haveI : IsScalarTower A (B ⧸ Q) k := .of_algebraMap_eq fun x ↦
    (IsScalarTower.algebraMap_apply (A ⧸ P) (B ⧸ Q) k (mk P x))
  haveI : IsScalarTower A B k := .of_algebraMap_eq fun x ↦
    (IsScalarTower.algebraMap_apply (A ⧸ P) (B ⧸ Q) k (mk P x))
  obtain ⟨P, hp⟩ := Algebra.IsInvariant.charpoly_mem_lifts A B G x
  have : Polynomial.aeval x P = 0 := by
    rw [Polynomial.aeval_def, ← Polynomial.eval_map,
      ← Polynomial.coe_mapRingHom (R := A), hp, MulSemiringAction.eval_charpoly]
  have : Polynomial.aeval (σ (algebraMap (B ⧸ Q) k (mk _ x))) P = 0 := by
    refine (DFunLike.congr_fun (Polynomial.aeval_algHom ((σ.restrictScalars A).comp
      (IsScalarTower.toAlgHom A (B ⧸ Q) k)) _) P).trans ?_
    rw [AlgHom.comp_apply, ← algebraMap_eq, Polynomial.aeval_algebraMap_apply, this,
      map_zero, map_zero]
  rw [← Polynomial.aeval_map_algebraMap B, ← Polynomial.coe_mapRingHom, hp] at this
  obtain ⟨τ, hτ⟩ : ∃ τ : G, σ (algebraMap _ _ x) = algebraMap _ _ (τ • x) := by
    simpa [MulSemiringAction.charpoly, sub_eq_zero, Finset.prod_eq_zero_iff] using this
  exact ⟨Ideal.Quotient.mk _ (τ • x), hτ.symm⟩

include G in
/--
For any domain `k` containing `B ⧸ Q`,
any endomorphism of `k` can be restricted to an endomorphism of `B ⧸ Q`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant4225541dde20804cee91a5ca6492f1675aeeaffb38d24d9de8f2052829509ea8.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ac32a0aad510660303aa75ce256813b20d884d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
