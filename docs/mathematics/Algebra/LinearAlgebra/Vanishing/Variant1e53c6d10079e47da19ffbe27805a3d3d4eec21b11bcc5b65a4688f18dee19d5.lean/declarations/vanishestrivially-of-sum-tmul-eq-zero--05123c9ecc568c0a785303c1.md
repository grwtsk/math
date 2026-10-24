# vanishesTrivially_of_sum_tmul_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0ce640eb4dcf77190582aca9fe4c9190cf7ab31",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8190af9-4446-99e1-cd6e-cd21c946e52e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8bd8ffc5-e446-4783-65f6-6fc345a82524",
  "kind": "theorem",
  "lexical_name": "vanishesTrivially_of_sum_tmul_eq_zero",
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
  "slug": "vanishestrivially-of-sum-tmul-eq-zero--05123c9ecc568c0a785303c1",
  "source": {
    "blob": "c0ce640eb4dcf77190582aca9fe4c9190cf7ab31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 120,
    "path": "GRWTSK/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05123c9ecc568c0a785303c15780c2170d77f38c7a7ca802b18d176d91b2dafc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bd8ffc5-e446-4783-65f6-6fc345a82524`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vanishesTrivially_of_sum_tmul_eq_zero (hm : Submodule.span R (Set.range m) = ⊤)
    (hmn : ∑ i, m i ⊗ₜ n i = (0 : M ⊗[R] N)) : VanishesTrivially R m n := by
  -- Define a map $G \colon R^\iota \to M$ whose matrix entries are the $m_i$. It is surjective.
  set G : (ι →₀ R) →ₗ[R] M := Finsupp.linearCombination R m with hG
  have G_basis_eq (i : ι) : G (Finsupp.single i 1) = m i := by simp [hG]
  have G_surjective : Surjective G := by
    apply LinearMap.range_eq_top.mp
    apply top_le_iff.mp
    rw [← hm]
    apply Submodule.span_le.mpr
    rintro _ ⟨i, rfl⟩
    use Finsupp.single i 1, G_basis_eq i
  /- Consider the element $\sum_i e_i \otimes n_i$ of $R^\iota \otimes N$. It is in the kernel of
  $R^\iota \otimes N \to M \otimes N$. -/
  set en : (ι →₀ R) ⊗[R] N := ∑ i, Finsupp.single i 1 ⊗ₜ n i with hen
  have en_mem_ker : en ∈ ker (rTensor N G) := by simp [hen, G_basis_eq, hmn]
  -- We have an exact sequence $\ker G \to R^\iota \to M \to 0$.
  have exact_ker_subtype : Exact (ker G).subtype G := G.exact_subtype_ker_map
  -- Tensor the exact sequence with $N$.
  have exact_rTensor_ker_subtype : Exact (rTensor N (ker G).subtype) (rTensor N G) :=
    rTensor_exact (M := ↥(ker G)) N exact_ker_subtype G_surjective
  /- We conclude that $\sum_i e_i \otimes n_i$ is in the range of
    $\ker G \otimes N \to R^\iota \otimes N$. -/
  have en_mem_range : en ∈ range (rTensor N (ker G).subtype) :=
    exact_rTensor_ker_subtype.linearMap_ker_eq ▸ en_mem_ker
  /- There is an element of in $\ker G \otimes N$ that maps to $\sum_i e_i \otimes n_i$.
  Write it as a finite sum of pure tensors. -/
  obtain ⟨kn, hkn⟩ := en_mem_range
  obtain ⟨ma, rfl : kn = ∑ kj ∈ ma, kj.1 ⊗ₜ[R] kj.2⟩ := exists_finset kn
  /- Let $\sum_j k_j \otimes y_j$ be the sum obtained in the previous step.
  In order to show that $\sum_i m_i \otimes n_i$ vanishes trivially, it suffices to prove that there
  exist $(a_{ij})_{i, j}$ such that for all $i$,
  $$n_i = \sum_j a_{ij} y_j$$
  and for all $j$,
  $$\sum_i a_{ij} m_i = 0.$$
  For this, take $a_{ij}$ to be the coefficient of $e_i$ in $k_j$. -/
  refine .of_fintype (κ := ma) (fun i ⟨⟨kj, _⟩, _⟩ ↦ (kj : ι →₀ R) i) (fun ⟨⟨_, yj⟩, _⟩ ↦ yj) ?_ ?_
  · intro i
    classical
    apply_fun finsuppScalarLeft R N ι at hkn
    apply_fun (· i) at hkn
    symm at hkn
    simp only [map_sum, finsuppScalarLeft_apply_tmul, zero_smul, Finsupp.single_zero,
      Finsupp.sum_single_index, one_smul, Finsupp.finsetSum_apply, Finsupp.single_apply,
      Finset.sum_ite_eq', Finset.mem_univ, ↓reduceIte, rTensor_tmul, coe_subtype, Finsupp.sum_apply,
      Finsupp.sum_ite_eq', Finsupp.mem_support_iff, ne_eq, ite_not, en] at hkn
    simp only [Finset.univ_eq_attach, Finset.sum_attach ma (fun x ↦ (x.1 : ι →₀ R) i • x.2)]
    convert! hkn using 2 with x _
    split
    · next h'x => rw [h'x, zero_smul]
    · rfl
  · rintro ⟨⟨⟨k, hk⟩, _⟩, _⟩
    simpa only [hG, linearCombination_apply, zero_smul, implies_true, Finsupp.sum_fintype] using
      mem_ker.mp hk

/-- **Equational criterion for vanishing**
[A. Altman and S. Kleiman, *A term of commutative algebra* (Lemma 8.16)][altman2021term].

Assume that the $m_i$ generate $M$. Then the expression $\sum_i m_i \otimes n_i$ vanishes
trivially if and only if it vanishes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Vanishing/Variant1e53c6d10079e47da19ffbe27805a3d3d4eec21b11bcc5b65a4688f18dee19d5.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0ce640eb4dcf77190582aca9fe4c9190cf7ab31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
