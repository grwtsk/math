# discr_powerBasis_eq_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af4a8c40634ac4c32a63c6f8aea15d92877b2208",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78e20804-dfbe-8a79-9a6a-2d623c356df8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4859ff20-5057-93bb-818e-b0cf4906a595",
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
  "slug": "discr-powerbasis-eq-norm--36310d0976af96ae5d5cf167",
  "source": {
    "blob": "af4a8c40634ac4c32a63c6f8aea15d92877b2208",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 223,
    "path": "GRWTSK/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36310d0976af96ae5d5cf167cda2e1567dcdb2302e412d331b1144e4dd7c2aeb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4859ff20-5057-93bb-818e-b0cf4906a595`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discr_powerBasis_eq_norm [IsSeparable K L] :
    discr K pb.basis =
      (-1) ^ (n * (n - 1) / 2) *
      norm K (aeval pb.gen (derivative (R := K) (minpoly K pb.gen))) := by
  let E := AlgebraicClosure L
  letI := fun a b : E => Classical.propDecidable (Eq a b)
  have e : Fin pb.dim ≃ (L →ₐ[K] E) := by
    refine' equivOfCardEq _
    rw [Fintype.card_fin, AlgHom.card]
    exact (PowerBasis.finrank pb).symm
  have hnodup : ((minpoly K pb.gen).map (algebraMap K E)).roots.Nodup :=
    nodup_roots (Separable.map (IsSeparable.separable K pb.gen))
  have hroots : ∀ σ : L →ₐ[K] E, σ pb.gen ∈ ((minpoly K pb.gen).map (algebraMap K E)).roots := by
    intro σ
    rw [mem_roots, IsRoot.def, eval_map, ← aeval_def, aeval_algHom_apply]
    repeat' simp [minpoly.ne_zero (IsSeparable.isIntegral K pb.gen)]
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
      aeval_root_derivative_of_splits (minpoly.monic (IsSeparable.isIntegral K pb.gen))
        (IsAlgClosed.splits_codomain _) (hroots σ),
      ← Finset.prod_mk _ (hnodup.erase _)]
  rw [prod_sigma', prod_sigma']
  refine'
    prod_bij (fun i _ => ⟨e i.2, e i.1 pb.gen⟩) (fun i hi => _) (fun i _ => by simp )
      (fun i j hi hj hij => _) fun σ hσ => _
  · simp only [true_and_iff, Finset.mem_mk, mem_univ, mem_sigma]
    rw [Multiset.mem_erase_of_ne fun h => ?_]
    · exact hroots _
-- Porting note: `@mem_compl` was not necessary.
    · simp only [true_and_iff, mem_univ, Ne.def, mem_sigma, @mem_compl _ _ _ (_),
        mem_singleton] at hi
      rw [← PowerBasis.liftEquiv_apply_coe, ← PowerBasis.liftEquiv_apply_coe] at h
      exact hi (e.injective <| pb.liftEquiv.injective <| Subtype.eq h.symm)
  · simp only [Sigma.mk.inj_iff, EmbeddingLike.apply_eq_iff_eq, heq_eq_eq] at hij
    have h := hij.2
    rw [← PowerBasis.liftEquiv_apply_coe, ← PowerBasis.liftEquiv_apply_coe] at h
    refine' Sigma.eq (Equiv.injective e (Equiv.injective _ (Subtype.eq h))) (by simp [hij.1])
  · simp only [true_and_iff, Finset.mem_mk, mem_univ, mem_sigma] at hσ ⊢
    simp only [Sigma.exists, exists_prop, mem_compl, mem_singleton, Ne.def]
    refine' ⟨e.symm (PowerBasis.lift pb σ.2 _), e.symm σ.1, ⟨_, Sigma.eq _ _⟩⟩
    · rw [aeval_def, eval₂_eq_eval_map, ← IsRoot.def, ← mem_roots]
      · exact Multiset.erase_subset _ _ hσ
      · simp [minpoly.ne_zero (IsSeparable.isIntegral K pb.gen)]
-- Porting note: the `simp only` was not needed.
    · simp only [@mem_compl _ _ _ (_), mem_singleton]
      intro h
      replace h := AlgHom.congr_fun (Equiv.injective _ h) pb.gen
      rw [PowerBasis.lift_gen] at h
      rw [← h] at hσ
      exact hnodup.not_mem_erase hσ
    all_goals simp
#align algebra.discr_power_basis_eq_norm Algebra.discr_powerBasis_eq_norm

section Integral

variable {R : Type z} [CommRing R] [Algebra R K] [Algebra R L] [IsScalarTower R K L]

/-- If `K` and `L` are fields and `IsScalarTower R K L`, and `b : ι → L` satisfies
` ∀ i, IsIntegral R (b i)`, then `IsIntegral R (discr K b)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af4a8c40634ac4c32a63c6f8aea15d92877b2208` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
