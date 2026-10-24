# discr_powerBasis_eq_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4770c37-e5e9-ea98-71bd-1b83b767f497",
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
  "slug": "discr-powerbasis-eq-norm--19554ecea556cb21be9a2b79",
  "source": {
    "blob": "4de024c130ad4e2d05b480fe6523668cac6631af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 209,
    "path": "GRWTSK/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19554ecea556cb21be9a2b79de1035581609391c08dc8eb4179b09a13c69dccb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4770c37-e5e9-ea98-71bd-1b83b767f497`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discr_powerBasis_eq_norm [Algebra.IsSeparable K L] :
    discr K pb.basis =
      (-1) ^ (n * (n - 1) / 2) *
      norm K (aeval pb.gen (derivative (R := K) (minpoly K pb.gen))) := by
  let E := AlgebraicClosure L
  letI := fun a b : E => Classical.propDecidable (Eq a b)
  have e : Fin pb.dim ≃ (L →ₐ[K] E) := by
    refine equivOfCardEq ?_
    rw [Fintype.card_fin, AlgHom.card]
    exact (PowerBasis.finrank pb).symm
  have hnodup : ((minpoly K pb.gen).aroots E).Nodup :=
    nodup_roots (Separable.map (Algebra.IsSeparable.isSeparable K pb.gen))
  have hroots : ∀ σ : L →ₐ[K] E, σ pb.gen ∈ (minpoly K pb.gen).aroots E := by
    intro σ
    rw [mem_roots, IsRoot.def, eval_map, ← aeval_def, aeval_algHom_apply]
    repeat' simp [minpoly.ne_zero (Algebra.IsSeparable.isIntegral K pb.gen)]
  apply (algebraMap K E).injective
  rw [RingHom.map_mul, RingHom.map_pow, RingHom.map_neg, RingHom.map_one,
    discr_powerBasis_eq_prod'' _ _ _ e]
  congr
  rw [norm_eq_prod_embeddings, prod_prod_Ioi_mul_eq_prod_prod_off_diag]
  conv_rhs =>
    congr
    rfl
    ext σ
    rw [← aeval_algHom_apply,
      aeval_root_derivative_of_splits (minpoly.monic (Algebra.IsSeparable.isIntegral K pb.gen))
        (IsAlgClosed.splits_codomain _) (hroots σ),
      ← Finset.prod_mk _ (hnodup.erase _)]
  rw [Finset.prod_sigma', Finset.prod_sigma']
  refine prod_bij' (fun i _ ↦ ⟨e i.2, e i.1 pb.gen⟩)
    (fun σ hσ ↦ ⟨e.symm (PowerBasis.lift pb σ.2 ?_), e.symm σ.1⟩) ?_ ?_ ?_ ?_ (fun i _ ↦ by simp)
  -- Porting note: `@mem_compl` was not necessary.
    <;> simp only [mem_sigma, mem_univ, Finset.mem_mk, hnodup.mem_erase_iff, IsRoot.def,
      mem_roots', minpoly.ne_zero (Algebra.IsSeparable.isIntegral K pb.gen), not_false_eq_true,
      mem_singleton, true_and, @mem_compl _ _ _ (_), Sigma.forall, Equiv.apply_symm_apply,
      PowerBasis.lift_gen, and_imp, implies_true, forall_const, Equiv.symm_apply_apply,
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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Discriminant/Variantea14a4df7abf7ffdcdcfb26d28cf0955c194d09e2742fa955b769e9d16f6c09f.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4de024c130ad4e2d05b480fe6523668cac6631af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
