# discr_powerBasis_eq_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1bdbed5d24f837fe2867b790c4b5ff7903c39297",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b43e07e-8368-d9b8-939e-8b84018027ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b889bb0d-aad8-ad3b-319f-afea49c8705e",
  "kind": "theorem",
  "lexical_name": "discr_powerBasis_eq_norm",
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
  "slug": "discr-powerbasis-eq-norm--a4a52f9a79f767daf9892177",
  "source": {
    "blob": "1bdbed5d24f837fe2867b790c4b5ff7903c39297",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 198,
    "path": "GRWTSK/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4a52f9a79f767daf989217792ddb669e970692b17b40d5ab0b75bd5e4600e5d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b889bb0d-aad8-ad3b-319f-afea49c8705e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discr_powerBasis_eq_norm [Algebra.IsSeparable K L] :
    discr K pb.basis =
      (-1) ^ (n * (n - 1) / 2) *
      norm K (aeval pb.gen (minpoly K pb.gen).derivative) := by
  let E := AlgebraicClosure L
  let := fun a b : E => Classical.propDecidable (Eq a b)
  have e : Fin pb.dim ≃ (L →ₐ[K] E) := by
    refine equivOfCardEq ?_
    rw [Fintype.card_fin, AlgHom.card]
    exact (PowerBasis.finrank pb).symm
  have hnodup : ((minpoly K pb.gen).aroots E).Nodup :=
    nodup_roots (Separable.map (Algebra.IsSeparable.isSeparable K pb.gen))
  have hroots : ∀ σ : L →ₐ[K] E, σ pb.gen ∈ (minpoly K pb.gen).aroots E := by
    intro σ
    rw [mem_roots, IsRoot.def, eval_map_algebraMap, aeval_algHom_apply]
    repeat' simp [minpoly.ne_zero pb.isIntegral_gen]
  apply (algebraMap K E).injective
  rw [map_mul, map_pow, map_neg, map_one, discr_powerBasis_eq_prod'' _ _ _ e]
  congr
  rw [norm_eq_prod_embeddings, prod_prod_Ioi_mul_eq_prod_prod_off_diag]
  conv_rhs =>
    congr
    rfl
    ext σ
    rw [← aeval_algHom_apply, ← eval_map_algebraMap, ← derivative_map,
      (IsAlgClosed.splits _).eval_root_derivative ((minpoly.monic pb.isIntegral_gen).map _)
      (hroots σ), ← Finset.prod_mk _ (hnodup.erase _)]
  rw [Finset.prod_sigma', Finset.prod_sigma']
  refine prod_bij' (fun i _ ↦ ⟨e i.2, e i.1 pb.gen⟩)
    (fun σ hσ ↦ ⟨e.symm (PowerBasis.lift pb σ.2 ?_), e.symm σ.1⟩) ?_ ?_ ?_ ?_ (fun i _ ↦ by simp)
    <;> simp only [mem_sigma, mem_univ, Finset.mem_mk, hnodup.mem_erase_iff, IsRoot.def,
      mem_roots', mem_singleton, true_and, mem_compl, Sigma.forall, Equiv.apply_symm_apply,
      PowerBasis.lift_gen, implies_true, Equiv.symm_apply_apply,
      Sigma.ext_iff, Equiv.symm_apply_eq, heq_eq_eq, and_true] at *
  · simpa only [aeval_def, eval₂_eq_eval_map] using hσ.2.2
  · exact fun a b hba ↦ ⟨fun h ↦ hba <| e.injective <| pb.algHom_ext h.symm, hroots _⟩
  · rintro a b hba ha
    rw [ha, PowerBasis.lift_gen] at hba
    exact hba.1 rfl
  · exact fun a b _ ↦ pb.algHom_ext <| pb.lift_gen _ _

section Integral

variable {R : Type z} [CommRing R] [Algebra R K] [Algebra R L] [IsScalarTower R K L]

/-- If `K` and `L` are fields and `IsScalarTower R K L`, and `b : ι → L` satisfies
` ∀ i, IsIntegral R (b i)`, then `IsIntegral R (discr K b)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Discriminant/Variant2c5d8f3df2da089864578b3fcd71f33889254f3b982f668fa958abdd3d6dcad9.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bdbed5d24f837fe2867b790c4b5ff7903c39297` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
