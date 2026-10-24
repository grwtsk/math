# Complete source: GRWTSK.Combinatorics.Sequences.FixedSizeSubsetExposure

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f892475421f04d20782b1e111d51787f8e16876` · SHA-256 `170dab618bc848445ed686b981bcde622d29ac845decdbd08f484df6f4d18dae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import Mathlib.Data.Finset.Powerset
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Tactic

/-!
# Two-stage exposure of a uniform fixed-size subset

First choose an `a`-element subset `A` of `S`, then choose a `b`-element
subset of `S \ A`. The union is a uniform `(a + b)`-element subset.

Every union fiber is explicitly counted by the bijection
`A ↦ ⟨A, R \ A⟩`. The normalized laws require feasible sampling spaces.
There is no finite ambient-type assumption and no independence hypothesis
between subsets exposed at different stages.
-/

namespace GRWTSK.FixedSizeSubsetExposure

open scoped BigOperators

noncomputable section

attribute [local instance] Classical.propDecidable

abbrev ExposurePair (α : Type*) :=
  Σ _ : Finset α, Finset α

variable {α : Type*} [DecidableEq α]

/-- The actual two-stage finite sample space. -/
def exposurePairs (S : Finset α) (a b : ℕ) :
    Finset (ExposurePair α) :=
  (S.powersetCard a).sigma (fun A => (S \ A).powersetCard b)

/-- The final subset produced by a two-stage sample. -/
def pairUnion (q : ExposurePair α) : Finset α :=
  q.1 ∪ q.2

@[simp]
theorem mem_exposurePairs (S : Finset α) (a b : ℕ)
    (q : ExposurePair α) :
    q ∈ exposurePairs S a b ↔
      (q.1 ⊆ S ∧ q.1.card = a) ∧
        (q.2 ⊆ S \ q.1 ∧ q.2.card = b) := by
  simp only [exposurePairs, Finset.mem_sigma, Finset.mem_powersetCard]

theorem exposure_disjoint {S : Finset α} {a b : ℕ}
    {q : ExposurePair α} (hq : q ∈ exposurePairs S a b) :
    Disjoint q.1 q.2 := by
  obtain ⟨_, ⟨hB, _⟩⟩ := (mem_exposurePairs S a b q).mp hq
  apply Finset.disjoint_left.mpr
  intro x hxA hxB
  exact (Finset.mem_sdiff.mp (hB hxB)).2 hxA

theorem exposure_union_mem {S : Finset α} {a b : ℕ}
    {q : ExposurePair α} (hq : q ∈ exposurePairs S a b) :
    pairUnion q ∈ S.powersetCard (a + b) := by
  obtain ⟨⟨hA, hAc⟩, ⟨hB, hBc⟩⟩ :=
    (mem_exposurePairs S a b q).mp hq
  apply Finset.mem_powersetCard.mpr
  constructor
  · intro x hx
    rcases Finset.mem_union.mp hx with hx | hx
    · exact hA hx
    · exact (Finset.mem_sdiff.mp (hB hx)).1
  · change (q.1 ∪ q.2).card = a + b
    rw [Finset.card_union_of_disjoint (exposure_disjoint hq), hAc, hBc]

/-- Feasibility supplies nonempty target, first-stage, and conditional spaces. -/
theorem exposure_spaces_nonempty (S : Finset α) (a b : ℕ)
    (hab : a + b ≤ S.card) :
    (S.powersetCard (a + b)).Nonempty ∧
      (S.powersetCard a).Nonempty ∧
        ∀ A ∈ S.powersetCard a, ((S \ A).powersetCard b).Nonempty := by
  constructor
  · apply Finset.card_pos.mp
    rw [Finset.card_powersetCard]
    exact Nat.choose_pos hab
  · constructor
    · apply Finset.card_pos.mp
      rw [Finset.card_powersetCard]
      exact Nat.choose_pos (by omega)
    · intro A hA
      obtain ⟨hAS, hAc⟩ := Finset.mem_powersetCard.mp hA
      apply Finset.card_pos.mp
      rw [Finset.card_powersetCard,
        Finset.card_sdiff_of_subset hAS, hAc]
      exact Nat.choose_pos (by omega)

/-- Every first-stage choice leaves the same number of second-stage choices. -/
theorem card_exposurePairs (S : Finset α) (a b : ℕ) :
    (exposurePairs S a b).card =
      S.card.choose a * (S.card - a).choose b := by
  rw [exposurePairs, Finset.card_sigma]
  calc
    (∑ A ∈ S.powersetCard a, ((S \ A).powersetCard b).card) =
        ∑ _A ∈ S.powersetCard a, (S.card - a).choose b := by
      apply Finset.sum_congr rfl
      intro A hA
      obtain ⟨hAS, hAc⟩ := Finset.mem_powersetCard.mp hA
      rw [Finset.card_powersetCard,
        Finset.card_sdiff_of_subset hAS, hAc]
    _ = S.card.choose a * (S.card - a).choose b := by
      simp

/-- Conditioning on the actual first choice leaves precisely the residual
fixed-size sample space, including every residual event. -/
theorem exposure_first_event_card (S : Finset α) (a b : ℕ)
    (A : Finset α) (hA : A ∈ S.powersetCard a)
    (E : Finset α → Prop) :
    ((exposurePairs S a b).filter (fun q => q.1 = A ∧ E q.2)).card =
      (((S \ A).powersetCard b).filter E).card := by
  have hcard :
      (((S \ A).powersetCard b).filter E).card =
        ((exposurePairs S a b).filter
          (fun q => q.1 = A ∧ E q.2)).card := by
    refine Finset.card_bij
      (fun B _ => (⟨A, B⟩ : ExposurePair α)) ?_ ?_ ?_
    · intro B hB
      obtain ⟨hB, hE⟩ := Finset.mem_filter.mp hB
      apply Finset.mem_filter.mpr
      refine ⟨?_, rfl, hE⟩
      exact (mem_exposurePairs S a b ⟨A, B⟩).mpr
        ⟨Finset.mem_powersetCard.mp hA,
          Finset.mem_powersetCard.mp hB⟩
    · intro B hB C hC h
      exact congrArg (fun q : ExposurePair α => q.2) h
    · rintro ⟨C, B⟩ hq
      obtain ⟨hqp, hCA, hE⟩ := Finset.mem_filter.mp hq
      change C = A at hCA
      subst C
      refine ⟨B, Finset.mem_filter.mpr ⟨?_, hE⟩, rfl⟩
      exact Finset.mem_powersetCard.mpr
        ((mem_exposurePairs S a b ⟨A, B⟩).mp hqp).2
  exact hcard.symm

theorem exposure_first_fiber_card (S : Finset α) (a b : ℕ)
    (A : Finset α) (hA : A ∈ S.powersetCard a) :
    ((exposurePairs S a b).filter (fun q => q.1 = A)).card =
      ((S \ A).powersetCard b).card := by
  simpa using exposure_first_event_card S a b A hA (fun _ => True)

/-- The union fiber over `R` is explicitly bijective with its `a`-subsets. -/
theorem exposure_union_fiber_card (S : Finset α) (a b : ℕ)
    (R : Finset α) (hR : R ∈ S.powersetCard (a + b)) :
    ((exposurePairs S a b).filter (fun q => pairUnion q = R)).card =
      (a + b).choose a := by
  obtain ⟨hRS, hRc⟩ := Finset.mem_powersetCard.mp hR
  have hcard :
      (R.powersetCard a).card =
        ((exposurePairs S a b).filter
          (fun q => pairUnion q = R)).card := by
    refine Finset.card_bij
      (fun A _ => (⟨A, R \ A⟩ : ExposurePair α)) ?_ ?_ ?_
    · intro A hA
      obtain ⟨hAR, hAc⟩ := Finset.mem_powersetCard.mp hA
      apply Finset.mem_filter.mpr
      constructor
      · apply (mem_exposurePairs S a b ⟨A, R \ A⟩).mpr
        refine ⟨⟨hAR.trans hRS, hAc⟩, ⟨?_, ?_⟩⟩
        · intro x hx
          obtain ⟨hxR, hxA⟩ := Finset.mem_sdiff.mp hx
          exact Finset.mem_sdiff.mpr ⟨hRS hxR, hxA⟩
        · rw [Finset.card_sdiff_of_subset hAR, hRc, hAc]
          omega
      · change A ∪ (R \ A) = R
        rw [Finset.union_comm, Finset.sdiff_union_of_subset hAR]
    · intro A hA B hB h
      exact congrArg (fun q : ExposurePair α => q.1) h
    · intro q hq
      obtain ⟨hqp, hqu⟩ := Finset.mem_filter.mp hq
      obtain ⟨⟨_, hAc⟩, _⟩ :=
        (mem_exposurePairs S a b q).mp hqp
      have hAR : q.1 ⊆ R := by
        intro x hx
        have hxU : x ∈ pairUnion q :=
          Finset.mem_union.mpr (Or.inl hx)
        exact hqu ▸ hxU
      have hsecond : R \ q.1 = q.2 := by
        rw [← hqu]
        exact Finset.union_sdiff_cancel_left (exposure_disjoint hqp)
      refine ⟨q.1, Finset.mem_powersetCard.mpr ⟨hAR, hAc⟩, ?_⟩
      exact Sigma.ext rfl (heq_of_eq hsecond)
  calc
    ((exposurePairs S a b).filter
        (fun q => pairUnion q = R)).card =
        (R.powersetCard a).card := hcard.symm
    _ = (a + b).choose a := by
      rw [Finset.card_powersetCard, hRc]

/-- Unnormalized pushforward identity in any additive commutative monoid. -/
theorem sum_exposure_union {β : Type*} [AddCommMonoid β]
    (S : Finset α) (a b : ℕ) (f : Finset α → β) :
    (∑ q ∈ exposurePairs S a b, f (pairUnion q)) =
      ∑ R ∈ S.powersetCard (a + b), (a + b).choose a • f R := by
  have hmap :
      ∀ q ∈ exposurePairs S a b,
        pairUnion q ∈ S.powersetCard (a + b) :=
    fun _ hq => exposure_union_mem hq
  calc
    (∑ q ∈ exposurePairs S a b, f (pairUnion q)) =
        ∑ R ∈ S.powersetCard (a + b),
          ∑ q ∈ exposurePairs S a b with pairUnion q = R, f R :=
      (Finset.sum_fiberwise_of_maps_to'
        (g := pairUnion) hmap f).symm
    _ = ∑ R ∈ S.powersetCard (a + b),
        (a + b).choose a • f R := by
      apply Finset.sum_congr rfl
      intro R hR
      rw [Finset.sum_const, exposure_union_fiber_card S a b R hR]

theorem sum_exposure_union_real (S : Finset α) (a b : ℕ)
    (f : Finset α → ℝ) :
    (∑ A ∈ S.powersetCard a,
      ∑ B ∈ (S \ A).powersetCard b, f (A ∪ B)) =
      ((a + b).choose a : ℝ) *
        ∑ R ∈ S.powersetCard (a + b), f R := by
  have h := sum_exposure_union S a b f
  rw [exposurePairs, Finset.sum_sigma] at h
  simpa only [pairUnion, nsmul_eq_mul, ← Finset.mul_sum] using h

/-- Exact normalized law: uniform first choice, then uniform conditional
residual choice, produces the uniform subset of the combined size. -/
theorem mean_union_exposure (S : Finset α) (a b : ℕ)
    (hab : a + b ≤ S.card) (f : Finset α → ℝ) :
    (∑ R ∈ S.powersetCard (a + b), f R) /
        ((S.powersetCard (a + b)).card : ℝ) =
      (∑ A ∈ S.powersetCard a,
        (∑ B ∈ (S \ A).powersetCard b, f (A ∪ B)) /
          (((S \ A).powersetCard b).card : ℝ)) /
        ((S.powersetCard a).card : ℝ) := by
  simp only [Finset.card_powersetCard]
  have hinner :
      (∑ A ∈ S.powersetCard a,
        (∑ B ∈ (S \ A).powersetCard b, f (A ∪ B)) /
          ((S \ A).card.choose b : ℝ)) =
        (∑ A ∈ S.powersetCard a,
          ∑ B ∈ (S \ A).powersetCard b, f (A ∪ B)) /
            ((S.card - a).choose b : ℝ) := by
    rw [Finset.sum_div]
    apply Finset.sum_congr rfl
    intro A hA
    obtain ⟨hAS, hAc⟩ := Finset.mem_powersetCard.mp hA
    rw [Finset.card_sdiff_of_subset hAS, hAc]
  have hchooseNat :
      S.card.choose (a + b) * (a + b).choose a =
        S.card.choose a * (S.card - a).choose b := by
    simpa using
      (Nat.choose_mul (n := S.card) (k := a + b) (s := a)
        (by omega))
  have hchoose :
      (S.card.choose (a + b) : ℝ) * ((a + b).choose a : ℝ) =
        (S.card.choose a : ℝ) * ((S.card - a).choose b : ℝ) := by
    exact_mod_cast hchooseNat
  have hden :
      ((S.card - a).choose b : ℝ) * (S.card.choose a : ℝ) =
        (S.card.choose (a + b) : ℝ) * ((a + b).choose a : ℝ) := by
    calc
      _ = (S.card.choose a : ℝ) * ((S.card - a).choose b : ℝ) :=
        mul_comm _ _
      _ = _ := hchoose.symm
  have hT : (S.card.choose (a + b) : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.choose_pos hab).ne'
  have hF : ((a + b).choose a : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.choose_pos (by omega : a ≤ a + b)).ne'
  rw [hinner, sum_exposure_union_real, div_div, hden]
  field_simp [hT, hF]

/-- Conditional mean bounds average without any additional independence
assumption. The bound may be any real number. -/
theorem mean_union_le_of_conditional (S : Finset α) (a b : ℕ)
    (hab : a + b ≤ S.card) (f : Finset α → ℝ) (c : ℝ)
    (hconditional : ∀ A ∈ S.powersetCard a,
      (∑ B ∈ (S \ A).powersetCard b, f (A ∪ B)) /
          (((S \ A).powersetCard b).card : ℝ) ≤ c) :
    (∑ R ∈ S.powersetCard (a + b), f R) /
        ((S.powersetCard (a + b)).card : ℝ) ≤ c := by
  rw [mean_union_exposure S a b hab f]
  have hfirst : (0 : ℝ) < (S.powersetCard a).card := by
    exact_mod_cast (exposure_spaces_nonempty S a b hab).2.1.card_pos
  apply (div_le_iff₀ hfirst).mpr
  calc
    (∑ A ∈ S.powersetCard a,
        (∑ B ∈ (S \ A).powersetCard b, f (A ∪ B)) /
          (((S \ A).powersetCard b).card : ℝ)) ≤
        ∑ _A ∈ S.powersetCard a, c :=
      Finset.sum_le_sum hconditional
    _ = c * ((S.powersetCard a).card : ℝ) := by
      simp [nsmul_eq_mul, mul_comm]

/-- Exact event-probability form of the two-stage sampling law. -/
theorem event_union_exposure (S : Finset α) (a b : ℕ)
    (hab : a + b ≤ S.card) (E : Finset α → Prop) :
    (((S.powersetCard (a + b)).filter E).card : ℝ) /
        ((S.powersetCard (a + b)).card : ℝ) =
      (∑ A ∈ S.powersetCard a,
        ((((S \ A).powersetCard b).filter
          (fun B => E (A ∪ B))).card : ℝ) /
            (((S \ A).powersetCard b).card : ℝ)) /
        ((S.powersetCard a).card : ℝ) := by
  simpa only [Finset.sum_boole] using
    mean_union_exposure S a b hab
      (fun R => if E R then (1 : ℝ) else 0)

theorem event_union_le_of_conditional (S : Finset α) (a b : ℕ)
    (hab : a + b ≤ S.card) (E : Finset α → Prop) (c : ℝ)
    (hconditional : ∀ A ∈ S.powersetCard a,
      ((((S \ A).powersetCard b).filter
        (fun B => E (A ∪ B))).card : ℝ) /
          (((S \ A).powersetCard b).card : ℝ) ≤ c) :
    (((S.powersetCard (a + b)).filter E).card : ℝ) /
        ((S.powersetCard (a + b)).card : ℝ) ≤ c := by
  have hmean : ∀ A ∈ S.powersetCard a,
      (∑ B ∈ (S \ A).powersetCard b,
        if E (A ∪ B) then (1 : ℝ) else 0) /
          (((S \ A).powersetCard b).card : ℝ) ≤ c := by
    intro A hA
    simpa only [Finset.sum_boole] using hconditional A hA
  simpa only [Finset.sum_boole] using
    mean_union_le_of_conditional S a b hab
      (fun R => if E R then (1 : ℝ) else 0) c hmean

/-- Translation of the residual target is exact. This is generic additive-group
counting and does not use primality, Fourier analysis, or independent nested
subset assumptions. -/
theorem sum_union_exposure {G : Type*} [AddCommGroup G]
    (S : Finset α) (a b : ℕ) (hab : a + b ≤ S.card)
    (label : α → G) (z : G) :
    (((S.powersetCard (a + b)).filter
      (fun R => ∑ x ∈ R, label x = z)).card : ℝ) /
        ((S.powersetCard (a + b)).card : ℝ) =
      (∑ A ∈ S.powersetCard a,
        ((((S \ A).powersetCard b).filter
          (fun B => ∑ x ∈ B, label x =
            z - ∑ x ∈ A, label x)).card : ℝ) /
              (((S \ A).powersetCard b).card : ℝ)) /
        ((S.powersetCard a).card : ℝ) := by
  rw [event_union_exposure S a b hab
    (fun R => ∑ x ∈ R, label x = z)]
  congr 1
  apply Finset.sum_congr rfl
  intro A hA
  have hfilter :
      ((S \ A).powersetCard b).filter
          (fun B => ∑ x ∈ A ∪ B, label x = z) =
        ((S \ A).powersetCard b).filter
          (fun B => ∑ x ∈ B, label x =
            z - ∑ x ∈ A, label x) := by
    apply Finset.filter_congr
    intro B hB
    have hdisjoint : Disjoint A B := by
      apply Finset.disjoint_left.mpr
      intro x hxA hxB
      exact
        (Finset.mem_sdiff.mp
          ((Finset.mem_powersetCard.mp hB).1 hxB)).2 hxA
    rw [Finset.sum_union hdisjoint, eq_sub_iff_add_eq]
    constructor <;> intro h <;> simpa only [add_comm] using h
  rw [hfilter]

/-- Every feasible conditioning event has strictly positive actual cardinality. -/
theorem exposure_first_fiber_card_pos (S : Finset α) (a b : ℕ)
    (hab : a + b ≤ S.card) (A : Finset α)
    (hA : A ∈ S.powersetCard a) :
    0 < ((exposurePairs S a b).filter (fun q => q.1 = A)).card := by
  rw [exposure_first_fiber_card S a b A hA]
  exact ((exposure_spaces_nonempty S a b hab).2.2 A hA).card_pos

theorem exposure_first_fiber_card_pos_real (S : Finset α) (a b : ℕ)
    (hab : a + b ≤ S.card) (A : Finset α)
    (hA : A ∈ S.powersetCard a) :
    (0 : ℝ) <
      ((exposurePairs S a b).filter (fun q => q.1 = A)).card := by
  exact_mod_cast exposure_first_fiber_card_pos S a b hab A hA

/-- Conditional on the actual first subset `A`, the residual subset is uniform
on the actual residual fixed-size sample space. Feasibility ensures that this
conditioning event has positive cardinality. -/
theorem conditional_residual_probability (S : Finset α) (a b : ℕ)
    (_hab : a + b ≤ S.card) (A : Finset α)
    (hA : A ∈ S.powersetCard a) (E : Finset α → Prop) :
    (((exposurePairs S a b).filter
      (fun q => q.1 = A ∧ E q.2)).card : ℝ) /
        (((exposurePairs S a b).filter
          (fun q => q.1 = A)).card : ℝ) =
      ((((S \ A).powersetCard b).filter E).card : ℝ) /
        (((S \ A).powersetCard b).card : ℝ) := by
  rw [exposure_first_event_card S a b A hA E,
    exposure_first_fiber_card S a b A hA]

/-- The complete two-stage space is nonempty whenever sampling is feasible. -/
theorem exposurePairs_card_pos (S : Finset α) (a b : ℕ)
    (hab : a + b ≤ S.card) :
    0 < (exposurePairs S a b).card := by
  rw [card_exposurePairs]
  exact Nat.mul_pos
    (Nat.choose_pos (by omega))
    (Nat.choose_pos (by omega))

/-- Uniform counting on the complete pair space has the uniform first marginal.
Together with `conditional_residual_probability`, this identifies both stages
of the sampler as actual normalized finite laws. -/
theorem exposure_first_marginal_probability (S : Finset α) (a b : ℕ)
    (hab : a + b ≤ S.card) (A : Finset α)
    (hA : A ∈ S.powersetCard a) :
    (((exposurePairs S a b).filter
      (fun q => q.1 = A)).card : ℝ) /
        ((exposurePairs S a b).card : ℝ) =
      1 / ((S.powersetCard a).card : ℝ) := by
  obtain ⟨hAS, hAc⟩ := Finset.mem_powersetCard.mp hA
  have hresidual : ((S.card - a).choose b : ℝ) ≠ 0 := by
    exact_mod_cast
      (Nat.choose_pos (by omega : b ≤ S.card - a)).ne'
  rw [exposure_first_fiber_card S a b A hA,
    Finset.card_powersetCard, Finset.card_sdiff_of_subset hAS, hAc,
    card_exposurePairs S a b, Nat.cast_mul, Finset.card_powersetCard]
  simpa only [one_mul] using
    (mul_div_mul_right (1 : ℝ) (S.card.choose a : ℝ) hresidual)

end

end GRWTSK.FixedSizeSubsetExposure
```
