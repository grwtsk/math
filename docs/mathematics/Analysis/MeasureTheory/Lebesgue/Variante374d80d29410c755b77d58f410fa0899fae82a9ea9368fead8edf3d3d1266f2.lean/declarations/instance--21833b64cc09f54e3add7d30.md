# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a219e38c974724fe63384818f0bad9ee65e9a4c3ef0a6d03e28e8cc255200d53",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--21833b64cc09f54e3add7d30",
  "source": {
    "blob": "566c66a8c4a9766999291f456377c6f8b9f0ab90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 774,
    "line": 666,
    "path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variante374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21833b64cc09f54e3add7d3034c0eb15847086a517c07660c828e5488903fce6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lebesgue/Variante374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a219e38c974724fe63384818f0bad9ee65e9a4c3ef0a6d03e28e8cc255200d53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 666–774.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) haveLebesgueDecomposition_of_sigmaFinite (μ ν : Measure α)
    [SigmaFinite μ] [SigmaFinite ν] : HaveLebesgueDecomposition μ ν :=
  ⟨by
    -- Since `μ` and `ν` are both σ-finite, there exists a sequence of pairwise disjoint spanning
    -- sets which are finite with respect to both `μ` and `ν`
    obtain ⟨S, T, h₁, h₂⟩ := exists_eq_disjoint_finiteSpanningSetsIn μ ν
    have h₃ : Pairwise (Disjoint on T.set) := h₁ ▸ h₂
    -- We define `μn` and `νn` as sequences of measures such that `μn n = μ ∩ S n` and
    -- `νn n = ν ∩ S n` where `S` is the aforementioned finite spanning set sequence.
    -- Since `S` is spanning, it is clear that `sum μn = μ` and `sum νn = ν`
    set μn : ℕ → Measure α := fun n => μ.restrict (S.set n) with hμn
    have hμ : μ = sum μn := by rw [hμn, ← restrict_iUnion h₂ S.set_mem, S.spanning, restrict_univ]
    set νn : ℕ → Measure α := fun n => ν.restrict (T.set n) with hνn
    have hν : ν = sum νn := by rw [hνn, ← restrict_iUnion h₃ T.set_mem, T.spanning, restrict_univ]
    -- As `S` is finite with respect to both `μ` and `ν`, it is clear that `μn n` and `νn n` are
    -- finite measures for all `n : ℕ`. Thus, we may apply the finite Lebesgue decomposition theorem
    -- to `μn n` and `νn n`. We define `ξ` as the sum of the singular part of the Lebesgue
    -- decompositions of `μn n` and `νn n`, and `f` as the sum of the Radon-Nikodym derivatives of
    -- `μn n` and `νn n` restricted on `S n`
    set ξ := sum fun n => singularPart (μn n) (νn n) with hξ
    set f := ∑' n, (S.set n).indicator (rnDeriv (μn n) (νn n))
    -- I claim `ξ` and `f` form a Lebesgue decomposition of `μ` and `ν`
    refine' ⟨⟨ξ, f⟩, _, _, _⟩
    · exact
        Measurable.ennreal_tsum' fun n =>
          Measurable.indicator (measurable_rnDeriv (μn n) (νn n)) (S.set_mem n)
    -- We show that `ξ` is mutually singular with respect to `ν`
    · choose A hA₁ hA₂ hA₃ using fun n => mutuallySingular_singularPart (μn n) (νn n)
      simp only [hξ]
      -- We use the set `B := ⋃ j, (S.set j) ∩ A j` where `A n` is the set provided as
      -- `singularPart (μn n) (νn n) ⟂ₘ νn n`
      refine' ⟨⋃ j, S.set j ∩ A j, MeasurableSet.iUnion fun n => (S.set_mem n).inter (hA₁ n), _, _⟩
      -- `ξ B = 0` since `ξ B = ∑ i j, singularPart (μn j) (νn j) (S.set i ∩ A i)`
      --                     `= ∑ i, singularPart (μn i) (νn i) (S.set i ∩ A i)`
      --                     `≤ ∑ i, singularPart (μn i) (νn i) (A i) = 0`
      -- where the second equality follows as `singularPart (μn j) (νn j) (S.set i ∩ A i)` vanishes
      -- for all `i ≠ j`
      · rw [measure_iUnion]
        · have :
            ∀ i,
              (sum fun n => (μn n).singularPart (νn n)) (S.set i ∩ A i) =
                (μn i).singularPart (νn i) (S.set i ∩ A i) := by
            intro i; rw [sum_apply _ ((S.set_mem i).inter (hA₁ i)), tsum_eq_single i]
            · intro j hij
              rw [hμn, ← nonpos_iff_eq_zero]
              refine' le_trans ((singularPart_le _ _) _ ((S.set_mem i).inter (hA₁ i))) (le_of_eq _)
              rw [restrict_apply ((S.set_mem i).inter (hA₁ i)), inter_comm, ← inter_assoc]
              have : Disjoint (S.set j) (S.set i) := h₂ hij
              rw [disjoint_iff_inter_eq_empty] at this
              rw [this, empty_inter, measure_empty]
          simp_rw [this, tsum_eq_zero_iff ENNReal.summable]
          intro n; exact measure_mono_null (inter_subset_right _ _) (hA₂ n)
        · exact h₂.mono fun i j => Disjoint.mono inf_le_left inf_le_left
        · exact fun n => (S.set_mem n).inter (hA₁ n)
      -- We will now show `ν Bᶜ = 0`. This follows since `Bᶜ = ⋃ n, S.set n ∩ (A n)ᶜ` and thus,
      -- `ν Bᶜ = ∑ i, ν (S.set i ∩ (A i)ᶜ) = ∑ i, (νn i) (A i)ᶜ = 0`
      · have hcompl : IsCompl (⋃ n, S.set n ∩ A n) (⋃ n, S.set n ∩ (A n)ᶜ) := by
          constructor
          · rw [disjoint_iff_inf_le]
            rintro x ⟨hx₁, hx₂⟩; rw [mem_iUnion] at hx₁ hx₂
            obtain ⟨⟨i, hi₁, hi₂⟩, ⟨j, hj₁, hj₂⟩⟩ := hx₁, hx₂
            have : i = j := by by_contra hij; exact (h₂ hij).le_bot ⟨hi₁, hj₁⟩
            exact hj₂ (this ▸ hi₂)
          · rw [codisjoint_iff_le_sup]
            intro x hx
            simp only [mem_iUnion, sup_eq_union, mem_inter_iff, mem_union, mem_compl_iff,
              or_iff_not_imp_left]
            intro h; push_neg at h
            rw [top_eq_univ, ← S.spanning, mem_iUnion] at hx
            obtain ⟨i, hi⟩ := hx
            exact ⟨i, hi, h i hi⟩
        rw [hcompl.compl_eq, measure_iUnion, tsum_eq_zero_iff ENNReal.summable]
        · intro n; rw [inter_comm, ← restrict_apply (hA₁ n).compl, ← hA₃ n, hνn, h₁]
        · exact h₂.mono fun i j => Disjoint.mono inf_le_left inf_le_left
        · exact fun n => (S.set_mem n).inter (hA₁ n).compl
    -- Finally, it remains to show `μ = ξ + ν.withDensity f`. Since `μ = sum μn`, and
    -- `ξ + ν.withDensity f = ∑ n, singularPart (μn n) (νn n)`
    --                        `+ ν.withDensity (rnDeriv (μn n) (νn n)) ∩ (S.set n)`,
    -- it suffices to show that the individual summands are equal. This follows by the
    -- Lebesgue decomposition properties on the individual `μn n` and `νn n`
    · simp only
      nth_rw 1 [hμ]
      rw [withDensity_tsum _, sum_add_sum]
      · refine' sum_congr fun n => _
        nth_rw 1 [haveLebesgueDecomposition_add (μn n) (νn n)]
        suffices heq :
          (νn n).withDensity ((μn n).rnDeriv (νn n)) =
            ν.withDensity ((S.set n).indicator ((μn n).rnDeriv (νn n)))
        · rw [heq]
        rw [hν, withDensity_indicator (S.set_mem n), restrict_sum _ (S.set_mem n)]
        suffices hsumeq : (sum fun i : ℕ => (νn i).restrict (S.set n)) = νn n
        · rw [hsumeq]
        ext1 s hs
        rw [sum_apply _ hs, tsum_eq_single n, hνn, h₁, restrict_restrict (T.set_mem n), inter_self]
        · intro m hm
          rw [hνn, h₁, restrict_restrict (T.set_mem n), (h₃ hm.symm).inter_eq, restrict_empty,
            coe_zero, Pi.zero_apply]
      · exact fun n => Measurable.indicator (measurable_rnDeriv _ _) (S.set_mem n)⟩
#align measure_theory.measure.have_lebesgue_decomposition_of_sigma_finite MeasureTheory.Measure.haveLebesgueDecomposition_of_sigmaFinite

end Measure

namespace SignedMeasure

open Measure

/-- A signed measure `s` is said to `HaveLebesgueDecomposition` with respect to a measure `μ`
if the positive part and the negative part of `s` both `HaveLebesgueDecomposition` with
respect to `μ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lebesgue/Variante374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lebesgue/Variante374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean#L666).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `566c66a8c4a9766999291f456377c6f8b9f0ab90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
