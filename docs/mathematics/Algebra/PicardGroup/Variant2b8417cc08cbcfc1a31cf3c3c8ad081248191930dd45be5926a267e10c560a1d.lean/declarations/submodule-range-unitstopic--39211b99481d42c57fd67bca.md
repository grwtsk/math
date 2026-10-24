# Submodule.range_unitsToPic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c02743f6-f893-6919-9129-995753fd8b02",
  "kind": "theorem",
  "lexical_name": "Submodule.range_unitsToPic",
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
  "slug": "submodule-range-unitstopic--39211b99481d42c57fd67bca",
  "source": {
    "blob": "6b4966598f5e62181e195c60e1f0d3fd47894705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 864,
    "line": 844,
    "path": "GRWTSK/Algebra/PicardGroup/Variant2b8417cc08cbcfc1a31cf3c3c8ad081248191930dd45be5926a267e10c560a1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39211b99481d42c57fd67bcaf706b589c72091e9c1481ec211eb18e337c03b23",
  "verification": {
    "reference": "docs/verification/Algebra/PicardGroup/Variant2b8417cc08cbcfc1a31cf3c3c8ad081248191930dd45be5926a267e10c560a1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c02743f6-f893-6919-9129-995753fd8b02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 844–864.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.range_unitsToPic : (unitsToPic R A).range = relPic R A := by
  ext M; constructor <;> intro h
  · obtain ⟨I, rfl⟩ := h
    exact mk_eq_one_iff.mpr ⟨AlgebraTensorModule.congr (.refl ..) (unitsToPicEquiv I) ≪≫ₗ
      .ofBijective ((Algebra.TensorProduct.lmul'' R).toLinearMap ∘ₗ AlgebraTensorModule.lTensor A A
        I.1.subtype) (projective_units_and_mul'_comp_lTensor_bijective I).2⟩
  have e := (mk_eq_one_iff.mp h).some
  have f := (mk_eq_one_iff.mp (inv_mem h)).some
  refine ⟨(isUnit_of_mul_isUnit_left (x := submoduleAlgebra e) (y := submoduleAlgebra f) ?_).unit,
    mk_eq_iff.mpr ⟨submoduleAlgebraEquiv e⟩⟩
  have := eq_span_singleton_of_surjective <| LinearEquiv.surjective <|
    (congr (submoduleAlgebraEquiv e) (submoduleAlgebraEquiv f) ≪≫ₗ
    (mk_eq_one_iff.mp <| by simp_rw [mk_tensor, mk_eq_self, mul_inv_cancel]).some).symm ≪≫ₗ
    tensorSubmoduleAlgebraEquivMul f (submoduleAlgebra e)
  rw [this]
  apply_fun (⊤ * ·) at this
  simp_rw [← mul_assoc, top_mul_submoduleAlgebra] at this
  obtain ⟨a, -, eq⟩ := mem_mul_span_singleton.mp (this ▸ mem_top (x := 1))
  exact .map (spanSingleton R).toMonoidHom (.of_mul_eq_one_right _ eq)

/-- Exactness of the sequence `1 → Rˣ → Aˣ → (Submodule R A)ˣ → Pic R → Pic A` at `Pic R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PicardGroup/Variant2b8417cc08cbcfc1a31cf3c3c8ad081248191930dd45be5926a267e10c560a1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PicardGroup/Variant2b8417cc08cbcfc1a31cf3c3c8ad081248191930dd45be5926a267e10c560a1d.lean#L844).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b4966598f5e62181e195c60e1f0d3fd47894705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
