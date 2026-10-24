# traceNorm_le_of_hasSum_vecMulVec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbba6b91-2d23-5ac9-ac42-e99b9dcd398b",
  "kind": "theorem",
  "lexical_name": "traceNorm_le_of_hasSum_vecMulVec",
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
  "slug": "tracenorm-le-of-hassum-vecmulvec--7e7f8b3d8da57b4c7d49b1a5",
  "source": {
    "blob": "f3a6d90b869227c85fe9af140ad10de4304d14da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 89,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/RankOne/Variant2c7d576e6caa150deba0847cc5cdd31f8d3aeefd5e5fa50001fbdfe5536ae059.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e7f8b3d8da57b4c7d49b1a562eba701a61a1031b0a9faf58d9a17ad8a416ca9",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/RankOne/Variant2c7d576e6caa150deba0847cc5cdd31f8d3aeefd5e5fa50001fbdfe5536ae059.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbba6b91-2d23-5ac9-ac42-e99b9dcd398b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem traceNorm_le_of_hasSum_vecMulVec {ι : Type*} {E : Matrix n n ℂ}
    (hE : E.IsHermitian) (c : ι → ℝ) (hc : ∀ ρ, 0 ≤ c ρ) (u : ι → n → ℂ) {S : ℝ}
    (hS : HasSum (fun ρ => c ρ * ∑ k, ‖u ρ k‖ ^ 2) S)
    (hEsum : HasSum (fun ρ => ((c ρ : ℝ) : ℂ) • vecMulVec (u ρ) (u ρ)) E) :
    traceNorm hE ≤ S := by
  set U : Matrix n n ℂ := (hE.eigenvectorUnitary : Matrix n n ℂ) with hU
  -- coordinates of u_ρ and ū_ρ in the eigenbasis
  set α : n → ι → ℂ := fun i ρ => (star U *ᵥ u ρ) i with hα
  set β : n → ι → ℂ := fun i ρ => (star U *ᵥ star (u ρ)) i with hβ
  -- Step 1: entrywise HasSum for E.
  have hEkl : ∀ k l, HasSum (fun ρ => ((c ρ : ℝ) : ℂ) * (u ρ k * u ρ l)) (E k l) := by
    intro k l
    have := (Pi.hasSum.mp (Pi.hasSum.mp hEsum k)) l
    simpa only [Matrix.smul_apply, vecMulVec_apply, smul_eq_mul] using this
  -- Step 2: λᵢ = vᵢ* E vᵢ = ∑_ρ c_ρ αᵢρ · conj(βᵢρ), vᵢ = i-th column of U.
  have hlam : ∀ i, HasSum (fun ρ => ((c ρ : ℝ) : ℂ) * (α i ρ * star (β i ρ)))
      ((hE.eigenvalues i : ℝ) : ℂ) := by
    intro i
    have hv : (fun k => U k i) = (hE.eigenvectorBasis i).ofLp := by
      funext k; exact hE.eigenvectorUnitary_apply k i
    have hEv : E *ᵥ (fun k => U k i) = ((hE.eigenvalues i : ℝ) : ℂ) • (fun k => U k i) := by
      have h := hE.mulVec_eigenvectorBasis i
      rw [← hv] at h
      rw [h]
      funext k
      simp only [Pi.smul_apply, Complex.real_smul, smul_eq_mul]
    have hvv : star (fun k => U k i) ⬝ᵥ (fun k => U k i) = 1 := by
      have h1 := Matrix.UnitaryGroup.star_mul_self hE.eigenvectorUnitary
      have := congrFun (congrFun h1 i) i
      simpa [hU, Matrix.mul_apply, Matrix.star_apply, dotProduct] using this
    have hquad : star (fun k => U k i) ⬝ᵥ (E *ᵥ fun k => U k i)
        = ((hE.eigenvalues i : ℝ) : ℂ) := by
      rw [hEv, dotProduct_smul, hvv, smul_eq_mul, mul_one]
    have hexp : star (fun k => U k i) ⬝ᵥ (E *ᵥ fun k => U k i)
        = ∑ k, star (U k i) * ∑ l, E k l * U l i := by
      simp only [dotProduct, mulVec, Pi.star_apply]
    have h2 : HasSum (fun ρ => ∑ k, star (U k i) *
        ∑ l, (((c ρ : ℝ) : ℂ) * (u ρ k * u ρ l)) * U l i)
        (∑ k, star (U k i) * ∑ l, E k l * U l i) := by
      apply hasSum_sum; intro k _
      apply HasSum.mul_left
      apply hasSum_sum; intro l _
      exact (hEkl k l).mul_right _
    rw [← hexp, hquad] at h2
    convert h2 using 1
    funext ρ
    simp only [hα, hβ, mulVec, dotProduct, Matrix.star_apply, Pi.star_apply, star_sum, star_mul',
      star_star]
    rw [Finset.sum_mul_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [Finset.mul_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl fun l _ => ?_
    ring
  -- Step 3: the majorant Fᵢρ := c_ρ (|αᵢρ|² + |βᵢρ|²)/2, with ∑ᵢ Fᵢρ = c_ρ ‖u_ρ‖² (Parseval).
  set F : n → ι → ℝ := fun i ρ => c ρ * ((‖α i ρ‖ ^ 2 + ‖β i ρ‖ ^ 2) / 2) with hF
  have hF_sum : ∀ ρ, ∑ i, F i ρ = c ρ * ∑ k, ‖u ρ k‖ ^ 2 := by
    intro ρ
    simp only [hF, hα, hβ]
    rw [← mul_sum, ← sum_div, sum_add_distrib, sum_normSq_unitary_mulVec hE (u ρ),
      sum_normSq_unitary_mulVec hE (star (u ρ))]
    congr 1
    simp only [Pi.star_apply, norm_star]
    ring
  have hF_nonneg : ∀ i ρ, 0 ≤ F i ρ := fun i ρ => by
    have := hc ρ; simp only [hF]; positivity
  have hF_summable : ∀ i, Summable (F i) := by
    intro i
    refine Summable.of_nonneg_of_le (hF_nonneg i) (fun ρ => ?_) hS.summable
    rw [← hF_sum ρ]
    exact single_le_sum (f := fun j => F j ρ) (fun j _ => hF_nonneg j ρ) (mem_univ i)
  -- Step 4: |λᵢ| ≤ ∑' ρ, Fᵢρ.
  have hbound : ∀ i, |hE.eigenvalues i| ≤ ∑' ρ, F i ρ := by
    intro i
    have h := HasSum.norm_le_of_bounded (hlam i) (hF_summable i).hasSum (fun ρ => ?_)
    · simpa only [Complex.norm_real, Real.norm_eq_abs] using h
    · rw [norm_mul, norm_mul, norm_star, Complex.norm_real, Real.norm_of_nonneg (hc ρ)]
      simp only [hF]
      exact mul_le_mul_of_nonneg_left (mul_le_half_sq_add_sq _ _) (hc ρ)
  -- Step 5: sum over i and swap the finite sum with the series.
  calc traceNorm hE = ∑ i, |hE.eigenvalues i| := rfl
    _ ≤ ∑ i, ∑' ρ, F i ρ := sum_le_sum fun i _ => hbound i
    _ = ∑' ρ, ∑ i, F i ρ := (Summable.tsum_finsetSum (fun i _ => hF_summable i)).symm
    _ = ∑' ρ, c ρ * ∑ k, ‖u ρ k‖ ^ 2 := tsum_congr hF_sum
    _ = S := hS.tsum_eq

/-- **[eq:Enormsum], operator-norm form** (the shape RHLinalg.weyl_posIndexAbove_le wants):
under the same hypotheses every eigenvalue satisfies |λᵢ(E)| ≤ S, i.e. ‖E‖ ≤ S.
Paper: "‖E‖ ≤ ∑_{γ∉I'} m_ρ ‖u_ρ‖₂²". -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/RankOne/Variant2c7d576e6caa150deba0847cc5cdd31f8d3aeefd5e5fa50001fbdfe5536ae059.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/RankOne/Variant2c7d576e6caa150deba0847cc5cdd31f8d3aeefd5e5fa50001fbdfe5536ae059.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3a6d90b869227c85fe9af140ad10de4304d14da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
