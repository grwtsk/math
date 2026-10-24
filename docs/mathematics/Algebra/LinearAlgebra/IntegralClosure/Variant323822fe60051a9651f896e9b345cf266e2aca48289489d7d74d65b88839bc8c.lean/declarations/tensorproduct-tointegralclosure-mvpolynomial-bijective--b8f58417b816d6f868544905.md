# TensorProduct.toIntegralClosure_mvPolynomial_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78ed2e24-a5c5-0693-93d8-083c73146267",
  "kind": "lemma",
  "lexical_name": "TensorProduct.toIntegralClosure_mvPolynomial_bijective",
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
  "slug": "tensorproduct-tointegralclosure-mvpolynomial-bijective--b8f58417b816d6f868544905",
  "source": {
    "blob": "dafcd035a18243fbde809cbb881a37dc98ce6b7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 134,
    "path": "GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8f58417b816d6f86854490595b8e6ec111f71e95c38795efcf1ea098537a75b",
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

Occurrence: `result:78ed2e24-a5c5-0693-93d8-083c73146267`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma TensorProduct.toIntegralClosure_mvPolynomial_bijective {σ : Type*} :
    Function.Bijective (toIntegralClosure R (MvPolynomial σ R) B) := by
  classical
  refine ⟨toIntegralClosure_injective_of_flat, ?_⟩
  rintro ⟨x, hx⟩
  let e₀ : MvPolynomial σ R ⊗[R] B ≃ₐ[R] MvPolynomial σ B :=
    (Algebra.TensorProduct.comm R _ _).trans
      ((MvPolynomial.algebraTensorAlgEquiv R B).restrictScalars R)
  let e₁ := (Algebra.TensorProduct.comm R (MvPolynomial σ R) (integralClosure R B)).trans
    ((MvPolynomial.algebraTensorAlgEquiv R (integralClosure R B)).restrictScalars R)
  let e : MvPolynomial σ R ⊗[R] B ≃ₐ[MvPolynomial σ R] MvPolynomial σ B :=
    { toRingEquiv := e₀.toRingEquiv, commutes' r := by
        change e₀.toRingHom.comp (algebraMap _ _) r = _
        congr 1
        ext <;> simp [e₀, MvPolynomial.coeff_X] }
  have := MvPolynomial.isIntegral_iff_isIntegral_coeff.mp (hx.map e)
  obtain ⟨y, hy⟩ : e x ∈ RingHom.range (MvPolynomial.map (integralClosure R B).val.toRingHom) := by
    refine MvPolynomial.mem_range_map_iff_coeffs_subset.mpr ?_
    simp [Set.subset_def, mem_integralClosure_iff, MvPolynomial.mem_coeffs_iff,
      @forall_comm B, this]
  refine ⟨e₁.symm y, Subtype.ext <| e.injective (.trans ?_ hy)⟩
  obtain ⟨y, rfl⟩ := e₁.surjective y
  dsimp [TensorProduct.toIntegralClosure, e]
  simp only [AlgEquiv.symm_apply_apply]
  have : e₀.toAlgHom.comp
      (Algebra.TensorProduct.map (AlgHom.id R (MvPolynomial σ R)) (integralClosure R B).val) =
      (MvPolynomial.mapAlgHom (integralClosure R B).val).comp e₁.toAlgHom := by
    ext <;> simp [e₀, e₁, MvPolynomial.coeff_map, MvPolynomial.coeff_one,
      apply_ite ((↑) : (integralClosure R B) → B)]
  exact congr($this y)

attribute [local instance] Algebra.TensorProduct.rightAlgebra in
/-- Localization preserves integral closure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Variant323822fe60051a9651f896e9b345cf266e2aca48289489d7d74d65b88839bc8c.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dafcd035a18243fbde809cbb881a37dc98ce6b7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
