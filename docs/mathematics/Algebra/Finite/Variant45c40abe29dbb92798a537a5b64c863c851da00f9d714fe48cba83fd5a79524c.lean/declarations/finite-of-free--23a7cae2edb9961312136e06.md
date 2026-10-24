# finite_of_free

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19fa997b-b14f-839a-dda7-1b92e2507b5f",
  "kind": "lemma",
  "lexical_name": "finite_of_free",
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
  "slug": "finite-of-free--23a7cae2edb9961312136e06",
  "source": {
    "blob": "82a8d6c170f72000d4e3a675ba5c363c4322942f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 162,
    "path": "GRWTSK/Algebra/Finite/Variant45c40abe29dbb92798a537a5b64c863c851da00f9d714fe48cba83fd5a79524c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23a7cae2edb9961312136e0648d15b3c7cf7d20ae25c73dad75c8011379d95e6",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variant45c40abe29dbb92798a537a5b64c863c851da00f9d714fe48cba83fd5a79524c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19fa997b-b14f-839a-dda7-1b92e2507b5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_of_free [Module.Free R S] : Module.Finite R S := by
  classical
  let I := Module.Free.ChooseBasisIndex R S
  -- Let `bᵢ` be an `R`-basis of `S`.
  let b : Basis I R S := Module.Free.chooseBasis R S
  -- Let `∑ₛ fᵢ ⊗ bᵢ : S ⊗[R] S` (summing over some finite `s`) be an element such that
  -- `∑ₛ fᵢbᵢ = 1` and `∀ x : S, xfᵢ ⊗ bᵢ = aᵢ ⊗ xfᵢ` which exists since `S` is unramified over `R`.
  have ⟨f, hf⟩ : ∃ (a : I →₀ S), elem R S = a.sum (fun i x ↦ x ⊗ₜ b i) := by
    let b' := ((Basis.singleton PUnit.{1} S).tensorProduct b).reindex (Equiv.punitProd I)
    use b'.repr (elem R S)
    conv_lhs => rw [← b'.linearCombination_repr (elem R S), Finsupp.linearCombination_apply]
    congr! with _ i x
    simp [b', Basis.tensorProduct, TensorProduct.smul_tmul']
  constructor
  -- I claim that `{ fᵢbⱼ | i, j ∈ s }` spans `S` over `R`.
  use Finset.image₂ (fun i j ↦ f i * b j) f.support f.support
  rw [← top_le_iff]
  -- For all `x : S`, let `bᵢx = ∑ aᵢⱼbⱼ`.
  rintro x -
  let a : I → I →₀ R := fun i ↦ b.repr (b i * x)
  -- Consider `F` such that `fⱼx = ∑ Fᵢⱼbⱼ`.
  let F : I →₀ I →₀ R := Finsupp.onFinset f.support (fun j ↦ b.repr (x * f j))
    (fun j ↦ not_imp_comm.mp fun hj ↦ by simp [Finsupp.notMem_support_iff.mp hj])
  have hG : ∀ j ∉ (Finset.biUnion f.support fun i ↦ (a i).support),
      b.repr (f.sum (fun i y ↦ a i j • y)) = 0 := by
    intros j hj
    simp only [Finset.mem_biUnion, Finsupp.mem_support_iff, ne_eq, not_exists, not_and,
      not_not] at hj
    simp only [Finsupp.sum]
    trans b.repr (f.support.sum (fun _ ↦ 0))
    · refine congr_arg b.repr (Finset.sum_congr rfl ?_)
      simp only [Finsupp.mem_support_iff]
      intro i hi
      rw [hj i hi, zero_smul]
    · simp only [Finset.sum_const_zero, map_zero]
  -- And `G` such that `∑ₛ aᵢⱼfᵢ = ∑ Gᵢⱼbⱼ`, where `aᵢⱼ` are the coefficients `bᵢx = ∑ aᵢⱼbⱼ`.
  let G : I →₀ I →₀ R := Finsupp.onFinset (Finset.biUnion f.support (fun i ↦ (a i).support))
    (fun j ↦ b.repr (f.sum (fun i y ↦ a i j • y)))
    (fun j ↦ not_imp_comm.mp (hG j))
  -- Then `∑ Fᵢⱼ(bⱼ ⊗ bᵢ) = ∑ fⱼx ⊗ bᵢ = ∑ fⱼ ⊗ xbᵢ = ∑ aᵢⱼ(fⱼ ⊗ bᵢ) = ∑ Gᵢⱼ(bⱼ ⊗ bᵢ)`.
  -- Since `bⱼ ⊗ bᵢ` forms an `R`-basis of `S ⊗ S`, we conclude that `F = G`.
  have : F = G := by
    apply Finsupp.finsuppProdEquiv.symm.injective
    apply (Finsupp.equivCongrLeft (Equiv.prodComm I I)).injective
    apply (b.tensorProduct b).repr.symm.injective
    simp? [Finsupp.linearCombination_apply, Finsupp.sum_uncurry_index] says
      simp only [Finsupp.finsuppProdEquiv_symm_apply, Finsupp.equivCongrLeft_apply,
        Basis.repr_symm_apply, Finsupp.linearCombination_apply, Finsupp.sum_equivMapDomain,
        Equiv.prodComm_apply, Finsupp.sum_uncurry_index, Prod.swap_prod_mk,
        Basis.tensorProduct_apply]
    rw [Finsupp.onFinset_sum, Finsupp.onFinset_sum]
    have : ∀ i, ((b.repr (x * f i)).sum fun j k ↦ k • b j ⊗ₜ[R] b i) = (x * f i) ⊗ₜ[R] b i := by
      intro i
      simp_rw [Finsupp.sum, TensorProduct.smul_tmul', ← TensorProduct.sum_tmul]
      congr 1
      exact b.linearCombination_repr _
    trans (x ⊗ₜ 1) * elem R S
    · simp_rw [this, hf, Finsupp.sum, Finset.mul_sum, TensorProduct.tmul_mul_tmul, one_mul]
    · rw [← one_tmul_mul_elem, hf, finite_of_free_aux]
      rfl
    · intro; simp
    · intro; simp
  -- In particular, `fⱼx = ∑ Fᵢⱼbⱼ = ∑ Gᵢⱼbⱼ = ∑ₛ aᵢⱼfᵢ` for all `j`.
  have : ∀ j, x * f j = f.sum fun i y ↦ a i j • y := by
    intro j
    apply b.repr.injective
    exact DFunLike.congr_fun this j
  -- Since `∑ₛ fⱼbⱼ = 1`, `x = ∑ₛ aᵢⱼfᵢbⱼ` is indeed in the span of `{ fᵢbⱼ | i, j ∈ s }`.
  rw [← mul_one x, ← @lmul_elem R, hf, map_finsuppSum, Finsupp.sum, Finset.mul_sum]
  simp only [TensorProduct.lmul'_apply_tmul, Finset.coe_image₂, ← mul_assoc, this,
    Finsupp.sum, Finset.sum_mul, smul_mul_assoc]
  apply Submodule.sum_mem; intro i hi
  apply Submodule.sum_mem; intro j hj
  apply Submodule.smul_mem
  apply Submodule.subset_span
  use j, hj, i, hi

/--
Proposition I.2.3 of [iversen]
If `S` is an unramified `R`-algebra, and `M` is a `S`-module, then the map
`S ⊗[R] M →ₗ[S] M` taking `(b, m) ↦ b • m` admits a `S`-linear section. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variant45c40abe29dbb92798a537a5b64c863c851da00f9d714fe48cba83fd5a79524c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variant45c40abe29dbb92798a537a5b64c863c851da00f9d714fe48cba83fd5a79524c.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82a8d6c170f72000d4e3a675ba5c363c4322942f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
