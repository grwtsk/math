# span_range_relation_eq_ker_baseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e31332236473030a63735df6a7d17142a665de4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd822ebd-267e-86de-1156-ad5defac9fe0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4e254212-b46d-6248-5eca-4c5a22bc9578",
  "kind": "lemma",
  "lexical_name": "span_range_relation_eq_ker_baseChange",
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
  "slug": "span-range-relation-eq-ker-basechange--5d6a44bd8c4906fdb61d7625",
  "source": {
    "blob": "5e31332236473030a63735df6a7d17142a665de4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 238,
    "path": "GRWTSK/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d6a44bd8c4906fdb61d7625036efd1912934a5eca09f9fadf3bd500b9330577",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e254212-b46d-6248-5eca-4c5a22bc9578`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma span_range_relation_eq_ker_baseChange :
    Ideal.span (Set.range fun i ↦ (MvPolynomial.map (algebraMap R T)) (P.relation i)) =
      RingHom.ker (aeval (R := T) (S₁ := T ⊗[R] S) P.baseChange.val) := by
  apply le_antisymm
  · rw [Ideal.span_le]
    intro x ⟨y, hy⟩
    have Z := aeval_val_relation P y
    apply_fun TensorProduct.includeRight (R := R) (A := T) at Z
    rw [map_zero] at Z
    simp only [SetLike.mem_coe, RingHom.mem_ker, ← Z, ← hy, algebraMap_apply,
      TensorProduct.includeRight_apply]
    erw [aeval_map_algebraMap T P.baseChange.val (P.relation y)]
    show _ = TensorProduct.includeRight.toRingHom _
    rw [map_aeval, AlgHom.toRingHom_eq_coe, RingHom.coe_coe,
      TensorProduct.includeRight.comp_algebraMap]
    rfl
  · intro x hx
    rw [RingHom.mem_ker] at hx
    have H := Algebra.TensorProduct.lTensor_ker (A := T) (IsScalarTower.toAlgHom R P.Ring S)
      P.algebraMap_surjective
    let e := MvPolynomial.algebraTensorAlgEquiv (R := R) (σ := P.vars) (A := T)
    have H' : e.symm x ∈ RingHom.ker (TensorProduct.map (AlgHom.id R T)
        (IsScalarTower.toAlgHom R P.Ring S)) := by
      rw [RingHom.mem_ker, ← hx]
      clear hx
      induction x using MvPolynomial.induction_on with
      | C a =>
        simp only [Generators.algebraMap_apply, algHom_C, TensorProduct.algebraMap_apply,
          id.map_eq_id, RingHom.id_apply, e]
        rw [← MvPolynomial.algebraMap_eq, AlgEquiv.commutes]
        simp only [TensorProduct.algebraMap_apply, id.map_eq_id, RingHom.id_apply,
          TensorProduct.map_tmul, AlgHom.coe_id, id_eq, map_one, algebraMap_eq]
        erw [aeval_C]
        simp
      | add p q hp hq => simp only [map_add, hp, hq]
      | mul_X p i hp =>
        simp only [map_mul, algebraTensorAlgEquiv_symm_X, hp, TensorProduct.map_tmul, map_one,
          IsScalarTower.coe_toAlgHom', Generators.algebraMap_apply, aeval_X, e]
        congr
        erw [aeval_X]
        rw [Generators.baseChange_val]
    rw [H] at H'
    replace H' : e.symm x ∈ Ideal.map TensorProduct.includeRight P.ker := H'
    rw [← P.span_range_relation_eq_ker, ← Ideal.mem_comap, ← Ideal.comap_coe,
      ← AlgEquiv.toRingEquiv_toRingHom, Ideal.comap_coe, AlgEquiv.symm_toRingEquiv,
      Ideal.comap_symm, ← Ideal.map_coe, ← Ideal.map_coe _ (Ideal.span _), Ideal.map_map,
      Ideal.map_span, ← Set.range_comp, AlgEquiv.toRingEquiv_toRingHom, RingHom.coe_comp,
      RingHom.coe_coe] at H'
    convert H'
    simp [e]

/-- If `P` is a presentation of `S` over `R` and `T` is an `R`-algebra, we
obtain a natural presentation of `T ⊗[R] S` over `T`. -/
@[simps relation, simps -isSimp rels]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e31332236473030a63735df6a7d17142a665de4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
