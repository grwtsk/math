# exists_mem_support_not_dvd_of_forall_totalDegree_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88d157e4-3862-9e1b-d726-20bc35ee5db9",
  "kind": "theorem",
  "lexical_name": "exists_mem_support_not_dvd_of_forall_totalDegree_le",
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
  "slug": "exists-mem-support-not-dvd-of-forall-totaldegree-le--b64f2089311caaa934ca7792",
  "source": {
    "blob": "6929c70a9a539c04177ddfd14817da438dde16c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 148,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b64f2089311caaa934ca7792e76e912b9af4103d4c3059cefcae7ff4baf643fb",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88d157e4-3862-9e1b-d726-20bc35ee5db9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mem_support_not_dvd_of_forall_totalDegree_le (hF0 : F ≠ 0) (hFa : F.aeval a = 0) :
    ∃ i, ∃ σ ∈ F.support, ¬ p ∣ σ i := by
  by_contra!
  have (σ) (hσ : σ ∈ F.support) : ∃ σ', σ = p • σ' := by
    choose σ' hσ' using (this · σ hσ)
    exact ⟨⟨σ.support, σ', by simp [hσ', hp.ne_zero]⟩, Finsupp.ext hσ'⟩
  choose! σ' hσ' using this
  have hσ'' (σ : F.support) : σ.1 = p • σ' σ := hσ' σ.1 σ.2
  classical
  replace H (ι : Type u_3) (_ : Fintype ι) (v : ι → K) (hv : LinearIndependent k v) :
      LinearIndependent k (v · ^ p) := by
    simpa only [Finset.coe_image, Finset.coe_univ, Set.image_univ, linearIndepOn_range_iff
      hv.injective] using! H (Finset.univ.image v) (by simpa using! hv.linearIndepOn_id)
  have := mt (H F.support inferInstance (fun s ↦ aeval a (monomial (σ' s) (1 : k)))) (by
    simp_rw [← map_pow, monomial_pow, ← hσ'', one_pow, not_linearIndependent_iff]
    refine ⟨.univ, (F.coeff ·), ?_, by simpa [MvPolynomial.eq_zero_iff] using! hF0⟩
    simp only [← map_smul, ← map_sum, Finset.univ_eq_attach, smul_eq_mul, mul_one]
    rw [F.support.sum_attach (fun i ↦ monomial i (F.coeff i)), support_sum_monomial_coeff, hFa])
  simp only [LinearIndependent, injective_iff_map_eq_zero, not_forall] at this
  obtain ⟨F', hF', hF'0⟩ := this
  let F'' : MvPolynomial ι k := .ofCoeff <| F'.mapDomain fun s ↦ σ' s.1
  have hF''0 : F'' ≠ 0 := ne_of_ne_of_eq (AddMonoidAlgebra.ofCoeff_eq_zero.ne.2 <|
    (Finsupp.mapDomain_injective fun s t h ↦ Subtype.ext
    (Finsupp.ext fun i ↦ by rw [hσ' _ s.2, hσ' _ t.2, h])).ne hF'0) (by simp)
  have hF'' : aeval a F'' = 0 := by
    have : (aeval a).toLinearMap ∘ₗ (AddMonoidAlgebra.coeffLinearEquiv _).symm.toLinearMap ∘ₗ
      Finsupp.lmapDomain k k (fun s : F.support ↦ σ' s) =
        (Finsupp.linearCombination k fun s : F.support ↦ aeval a (monomial (σ' s) (1 : k))) := by
      ext v; simp [monomial]
    simp only [← hF', F'', ← this]; rfl
  suffices hpm : p * F''.totalDegree ≤ F.totalDegree by
    have hF''0' : F''.totalDegree ≠ 0 := by
      contrapose hF''0
      rw [totalDegree_eq_zero_iff_eq_C.mp hF''0, aeval_C, map_eq_zero] at hF''
      rw [totalDegree_eq_zero_iff_eq_C.mp hF''0, hF'', map_zero]
    replace this := hpm.trans ((HF F'' hF''0 hF'').trans_eq (one_mul _).symm)
    exact hp.one_lt.not_ge ((mul_le_mul_iff_of_pos_right hF''0'.bot_lt).mp this)
  rw [totalDegree, Finset.mul_sup₀, Finset.sup_le_iff]
  intro σ hσ
  obtain ⟨σ, hσ₂, rfl⟩ := Finset.mem_image.mp (Finsupp.mapDomain_support hσ)
  refine le_trans ?_ (Finset.le_sup σ.2)
  conv_rhs => rw [hσ' _ σ.2, Finsupp.sum_smul_index (fun _ ↦ rfl), ← Finsupp.mul_sum]

end MvPolynomial

open IntermediateField

section

variable [ExpChar k p]

include hp H

/--
Suppose `k` has characteristic `p` and `a₁,...,aₙ` is a transcendence basis of `K/k`.
Suppose furthermore that if `{ sᵢ } ⊆ K` is an arbitrary `k`-linearly independent set,
`{ sᵢᵖ } ⊆ K` is also `k`-linearly independent (which is true when `K ⊗ₖ k^{1/p}` is reduced).

Then some subset of `a₁,...,aₙ₊₁` forms a transcendence basis over which `a₁,...,aₙ₊₁` are
separable.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6929c70a9a539c04177ddfd14817da438dde16c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
