# finite_of_free_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a55c4096-189c-e7d2-7da6-4a92b945544d",
  "kind": "lemma",
  "lexical_name": "finite_of_free_aux",
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
  "slug": "finite-of-free-aux--bc813b1f02678dadab13f642",
  "source": {
    "blob": "5461d8d5abce44991fad5712cd4a9d11a402197c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 94,
    "path": "GRWTSK/Algebra/Finite/Variantbfb9f77d1b5023702595f7348172a84a57566006bebf1a0d0bbae492fd21aa03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc813b1f02678dadab13f642a7e8319964f6d787fa9ef41ace7352492583ce8f",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variantbfb9f77d1b5023702595f7348172a84a57566006bebf1a0d0bbae492fd21aa03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a55c4096-189c-e7d2-7da6-4a92b945544d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_of_free_aux (I) [DecidableEq I] (b : Basis I R S)
    (f : I →₀ S) (x : S) (a : I → I →₀ R) (ha : a = fun i ↦ b.repr (b i * x)) :
    (1 ⊗ₜ[R] x * Finsupp.sum f fun i y ↦ y ⊗ₜ[R] b i) =
      Finset.sum (f.support.biUnion fun i ↦ (a i).support) fun k ↦
      Finsupp.sum (b.repr (f.sum fun i y ↦ a i k • y)) fun j c ↦ c • b j ⊗ₜ[R] b k := by
  rw [Finsupp.sum, Finset.mul_sum]
  subst ha
  let a i := b.repr (b i * x)
  conv_lhs =>
    simp only [TensorProduct.tmul_mul_tmul, one_mul, mul_comm x (b _),
      ← show ∀ i, Finsupp.linearCombination _ b (a i) = b i * x from
          fun _ ↦ b.linearCombination_repr _]
  conv_lhs => simp only [Finsupp.linearCombination, Finsupp.coe_lsum,
    LinearMap.coe_smulRight, LinearMap.id_coe, id_eq, Finsupp.sum, TensorProduct.tmul_sum,
    ← TensorProduct.smul_tmul]
  have h₁ : ∀ k,
    (Finsupp.sum (Finsupp.sum f fun i y ↦ a i k • b.repr y) fun j z ↦ z • b j ⊗ₜ[R] b k) =
      (f.sum fun i y ↦ (b.repr y).sum fun j z ↦ a i k • z • b j ⊗ₜ[R] b k) := by
    intro i
    rw [Finsupp.sum_sum_index]
    · congr
      ext j s
      rw [Finsupp.sum_smul_index]
      · simp only [mul_smul, Finsupp.sum, ← Finset.smul_sum]
      intro; simp only [zero_smul]
    · intro; simp only [zero_smul]
    · intros; simp only [add_smul]
  have h₂ : ∀ (x : S), ((b.repr x).support.sum fun a ↦ b.repr x a • b a) = x := by
    simpa only [Finsupp.linearCombination_apply, Finsupp.sum] using b.linearCombination_repr
  simp only [a] at h₁
  simp_rw [map_finsuppSum, map_smul, h₁, Finsupp.sum, Finset.sum_comm (t := f.support),
    TensorProduct.smul_tmul', ← TensorProduct.sum_tmul, ← Finset.smul_sum, h₂]
  apply Finset.sum_congr rfl
  intro i hi
  apply Finset.sum_subset_zero_on_sdiff
  · exact Finset.subset_biUnion_of_mem (fun i ↦ (a i).support) hi
  · simp only [a, Finset.mem_sdiff, Finset.mem_biUnion, Finsupp.mem_support_iff, ne_eq, not_not,
      and_imp, forall_exists_index]
    simp +contextual
  · exact fun _ _ ↦ rfl

variable [FormallyUnramified R S] [EssFiniteType R S]

variable (R S) in
/--
A finite-type `R`-algebra `S` is (formally) unramified iff there exists a `t : S ⊗[R] S` satisfying
1. `t` annihilates every `1 ⊗ s - s ⊗ 1`.
2. the image of `t` is `1` under the map `S ⊗[R] S → S`.

See `Algebra.FormallyUnramified.iff_exists_tensorProduct`.
This is the choice of such a `t`.
-/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variantbfb9f77d1b5023702595f7348172a84a57566006bebf1a0d0bbae492fd21aa03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variantbfb9f77d1b5023702595f7348172a84a57566006bebf1a0d0bbae492fd21aa03.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5461d8d5abce44991fad5712cd4a9d11a402197c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
