# isNilpotent_derivedSeries_of_traceForm_eq_zero_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4f59422-7b72-389f-4c40-dc2f3ada14d1",
  "kind": "theorem",
  "lexical_name": "isNilpotent_derivedSeries_of_traceForm_eq_zero_aux",
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
  "slug": "isnilpotent-derivedseries-of-traceform-eq-zero-aux--13e8f97821c8b4da02f4a9f3",
  "source": {
    "blob": "de81d014aa19cbecdeac1be65569ee29b5ed046f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 82,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/CartanCriterion/Variantf58abe5891642110f1958e12a0a2dcacb6ccb2c4f48b24283c1102a0c7412f24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13e8f97821c8b4da02f4a9f36d1ed7d3921d1fa8f53300ae543db14b89bfaef4",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/CartanCriterion/Variantf58abe5891642110f1958e12a0a2dcacb6ccb2c4f48b24283c1102a0c7412f24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4f59422-7b72-389f-4c40-dc2f3ada14d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNilpotent_derivedSeries_of_traceForm_eq_zero_aux {K : Type*}
    [Field K] [CharZero K] [IsAlgClosed K]
    [LieAlgebra K L] [Module K M] [LieModule K L M] [FiniteDimensional K M]
    (h : traceForm K L M = 0) :
    IsNilpotent (derivedSeries K L 1) M := by
  set φ := toEnd K L M
  /- By Engel's theorem it suffices to prove that `⁅L, L⁆` acts nilpotently on `M`. -/
  suffices ∀ x ∈ derivedSeries K L 1, _root_.IsNilpotent (φ x) from
    isNilpotent_iff_forall'.mpr fun ⟨x, hx⟩ ↦ this x hx
  intro x hx
  /- Using Jordan-Chevalley, let `s` and `n` be the semisimple and nilpotent parts of `φ x`. -/
  obtain ⟨n, hn_adj, s, hns, hn_nil, hs_ss, hX_ns⟩ := (φ x).exists_isNilpotent_isSemisimple
  replace hns : Commute n s :=
    commute_of_mem_adjoin_singleton_of_commute hns (commute_of_mem_adjoin_self hn_adj).symm
  /- It suffices to prove `s = 0`. -/
  suffices s = 0 by aesop
  classical
  /- Decompose `M` as a direct sum of eigenspaces of `s`. -/
  let eigenDecomp := DirectSum.isInternal_submodule_of_iSupIndep_of_iSup_eq_top
    s.eigenspaces_iSupIndep hs_ss.iSup_eigenspace_eq_top
  let I := (ν : K) × Fin (finrank K (s.eigenspace ν))
  let v : Basis I K M := eigenDecomp.collectedBasis fun μ ↦ finBasis K (s.eigenspace μ)
  have : Fintype I := FiniteDimensional.fintypeBasisIndex v
  let μ : I → K := Sigma.fst
  have hsv (i : I) : s (v i) = μ i • v i :=
    mem_eigenspace_iff.mp (eigenDecomp.collectedBasis_mem _ i)
  /- Let `E ⊆ K` be the `ℚ`-submodule of scalars spanned by the eigenvalues of `s`. -/
  let E : Submodule ℚ K := Submodule.span ℚ (Set.range μ)
  have hμ (i : I) : μ i ∈ E := Submodule.subset_span (Set.mem_range_self i)
  /- It suffices to prove that the `ℚ`-dual of `E` is trivial.  This can be regarded as a trick to
     handle the fact that our scalars `K` are not ordered. -/
  suffices ∀ f : Dual ℚ E, f = 0 by
    suffices ∀ ν, s.HasEigenvalue ν → ν = 0 from hs_ss.eq_zero_iff_forall_eigenvalue.mpr this
    intro ν hν
    have : Nontrivial (s.eigenspace ν) :=
      Submodule.nontrivial_iff_ne_bot.mpr (hasEigenvalue_iff.mp hν)
    replace hν : ν ∈ E := Submodule.subset_span ⟨⟨ν, ⟨0, finrank_pos⟩⟩, rfl⟩
    have : Subsingleton E := (subsingleton_dual_iff ℚ).mp ⟨by aesop⟩
    simpa using! Subsingleton.elim (⟨ν, hν⟩ : E) 0
  intro f
  /- It suffices to show that any `f : Dual ℚ E` vanishes on all the eigenvalues of `s`. -/
  suffices ∀ i, f ⟨μ i, hμ i⟩ = 0 by
    rw [Submodule.linearMap_eq_zero_iff_of_eq_span f rfl]
    rintro ⟨-, ⟨i, rfl⟩⟩
    exact this i
  /- We will deduce this by proving that the sum of the squares of all such values vanishes. -/
  suffices ∑ i, f ⟨μ i, hμ i⟩ ^ 2 = 0 from fun i ↦ eq_zero_of_pow_eq_zero <|
    (Finset.sum_eq_zero_iff_of_nonneg (fun _ _ ↦ sq_nonneg _)).mp this i (Finset.mem_univ _)
  /- Which will follow from the fact that the following `f`-linear expression vanishes. -/
  suffices ∑ i, (f ⟨μ i, hμ i⟩) • (⟨μ i, hμ i⟩ : E) = 0 by
    simpa only [map_sum, map_zero, map_smul, sq] using! f.congr_arg this
  let fμ (i : I) : K := f ⟨μ i, hμ i⟩
  /- Defining `fμ i = f ⟨μ i, hμ i⟩`, we can restate our goal as `∑ i, fμ i * μ i = 0`. -/
  suffices ∑ i, fμ i * μ i = 0 by simp [Subtype.ext_iff, fμ, ← this, smul_def]
  /- We will do this by constructing endomorphism `y` such that `trace K M (φ x * y) = 0` and also
     `trace K M (φ x * y) = ∑ i, fμ i * μ i`. -/
  suffices ∃ y : End K M, trace K M (φ x * y) = 0 ∧ trace K M (φ x * y) = ∑ i, fμ i * μ i by grind
  /- We define `y` diagonal wrt our basis `v` and takes the values `fμ` on the diagonal. -/
  let y : End K M := (Matrix.diagonal fμ).toLin v v
  have hyv (i : I) : y (v i) = fμ i • v i :=
    mem_eigenspace_iff.mp (hasEigenvector_toLin_diagonal fμ i v).1
  /- Using Lagrange interpolation, we can show that the representation is stable under `y`. -/
  have hy_range (z : End K M) (hz : z ∈ LieHom.range φ) : ⁅y, z⁆ ∈ LieHom.range φ := by
    obtain ⟨q, hq⟩ : ∃ q : K[X], q.aeval (ad K _ (φ x)) = ad K _ y := by
      obtain ⟨r, hr⟩ : ∃ r : K[X], r.aeval (ad K _ s) = ad K _ y := by
        have h₁ (i j : I) : ⁅s, v.end (i, j)⁆ = (μ i - μ j) • v.end (i, j) := by
          rw [instLieRingModule_eq, v.lie_end_of_apply_eq_smul μ s hsv]
        have h₂ (i j : I) : ⁅y, v.end (i, j)⁆ = (fμ i - fμ j) • v.end (i, j) := by
          rw [instLieRingModule_eq, v.lie_end_of_apply_eq_smul fμ y hyv]
        obtain ⟨r, hr⟩ := exists_polynomial_eval_sub_aux μ hμ f
        refine ⟨r, v.end.ext fun ⟨i, j⟩ ↦ ?_⟩
        rw [ad_apply, ← instLieRingModule_eq, aeval_apply_of_mem_apply_eq_smul (h₁ i j), hr, h₂]
        rfl
      obtain ⟨p, hp⟩ : ∃ p : K[X], p.aeval (ad K _ (φ x)) = ad K _ s :=
        adjoin_mem_exists_aeval K _ <| by
          simpa only [← hX_ns] using! ad_mem_adjoin_of_isSemisimple hns hn_nil hs_ss
      exact ⟨r.comp p, by rw [aeval_comp, hp, hr]⟩
    rw [instLieRingModule_eq, ← ad_apply K, ← hq]
    apply q.aeval_apply_smul_mem_of_le_comap hz _ ?_
    rintro - ⟨w, rfl⟩
    exact ⟨⁅x, w⁆, LieHom.map_lie φ x w⟩
  /- Using Lagrange interpolation again we can show that `n` and `y` commute. -/
  have hny_comm : Commute n y := by
    suffices y ∈ K[s] from commute_of_mem_adjoin_singleton_of_commute this hns
    rw [adjoin_singleton_eq_range_aeval]
    obtain ⟨q, hq⟩ : ∃ q : K[X], ∀ i, q.eval (μ i) = fμ i :=
      (Polynomial.exists_eval_eq_iff μ fμ).mpr <| by aesop
    refine ⟨q, v.ext fun i ↦ ?_⟩
    rw [AlgHom.toRingHom_eq_coe, RingHom.coe_coe, aeval_apply_of_mem_apply_eq_smul (hsv i), hq, hyv]
  /- By general results we need only prove `trace K M (φ x * y) = ∑ i, fμ i * μ i`. -/
  suffices trace K M (φ x * y) = ∑ i, fμ i * μ i from
    ⟨y, trace_toEnd_mul_eq_zero_of_traceForm_eq_zero h y hy_range x hx, this⟩
  /- And this is an easy calculation. -/
  have htr_n : trace K M (n * y) = 0 :=
    (isNilpotent_trace_of_isNilpotent (hny_comm.isNilpotent_mul_right hn_nil)).eq_zero
  have htr_s : trace K M (s * y) = ∑ i, fμ i * μ i := by
    rw [trace_eq_matrix_trace _ v, Matrix.trace]
    exact Finset.sum_congr rfl <| by simp [toMatrix_apply, hyv, hsv]
  rw [hX_ns, add_mul, map_add, htr_n, htr_s, zero_add]

/-- If the trace form of `M` is zero, then the `⁅L, L⁆`-module `M` is nilpotent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/CartanCriterion/Variantf58abe5891642110f1958e12a0a2dcacb6ccb2c4f48b24283c1102a0c7412f24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/CartanCriterion/Variantf58abe5891642110f1958e12a0a2dcacb6ccb2c4f48b24283c1102a0c7412f24.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de81d014aa19cbecdeac1be65569ee29b5ed046f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
