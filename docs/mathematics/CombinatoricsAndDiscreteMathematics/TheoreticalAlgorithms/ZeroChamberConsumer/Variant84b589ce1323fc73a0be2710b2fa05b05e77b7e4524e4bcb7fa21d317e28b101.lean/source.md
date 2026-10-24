# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ZeroChamberConsumer.Variant84b589ce1323fc73a0be2710b2fa05b05e77b7e4524e4bcb7fa21d317e28b101

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5e65ed80419014c9919a3d4e750dee7397d761b` · SHA-256 `84b589ce1323fc73a0be2710b2fa05b05e77b7e4524e4bcb7fa21d317e28b101`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.FiniteZeroInventoryChamber
import FormalResearch.RiemannHypothesis.Conversation.MovingNativeChamber
import Mathlib.Data.Set.Card

/-!
# Actual zero counts and moving folds from the complete simple-zero chamber

The same complete census has exactly n zeros at every parameter in its open
chamber. Both endpoints stay nonzero. Every ordered pair of seam graphs
supplies positive affine radius and positive native integral width; its
affine and explicit exp(-t/2) native folds are jointly C¹ at every chamber
parameter and position. Arbitrary-weight regularity and constants across
discriminant crossings remain separate hypotheses, not hidden conclusions.
Human full-census and next-consumer direction: grwtsk contributors. Local
integration: OpenAI Codex. Mathlib cardinality and calculus remain upstream.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ZeroChamberConsumer
open SimpleZeroChamber FiniteZeroInventoryChamber MovingAffineChamber Set
open scoped Topology ContDiff
noncomputable section

theorem complete_census_exact_zero_count {n : ℕ} {g : ℝ × ℝ → ℝ} {l a b : ℝ}
    (z : Fin n → ℝ) (horder : StrictMono z) (hinside : ∀ i, z i ∈ Ioo a b)
    (hcensus : ∀ x ∈ Icc a b, g (l, x) = 0 ↔ ∃ i, z i = x) :
    {x | x ∈ Icc a b ∧ g (l,x) = 0}.ncard = n := by
  have hset : {x | x ∈ Icc a b ∧ g (l,x) = 0} = range z := by
    ext x
    constructor
    · rintro ⟨hx,hz⟩
      exact (hcensus x hx).1 hz
    · rintro ⟨i,rfl⟩
      have hx : z i ∈ Icc a b := ⟨(hinside i).1.le,(hinside i).2.le⟩
      exact ⟨hx,(hcensus _ hx).2 ⟨i,rfl⟩⟩
  rw [hset,ncard_range_of_injective horder.injective]
  simp

theorem complete_chamber_actual_count_and_fold_consumers {g : ℝ × ℝ → ℝ}
    {l₀ a b : ℝ} (hab : a < b)
    (hc : ∀ x ∈ Icc a b, ContDiffAt ℝ 1 g (l₀, x))
    (ha : g (l₀, a) ≠ 0) (hb : g (l₀, b) ≠ 0)
    (hfinite : {x | x ∈ Ioo a b ∧ g (l₀,x) = 0}.Finite)
    (hsimple : ∀ x ∈ Ioo a b, g (l₀, x) = 0 → spatialSlope g (l₀, x) ≠ 0) :
    ∃ (n : ℕ) (z : Fin n → ℝ → ℝ) (U : Set ℝ),
      IsOpen U ∧ l₀ ∈ U ∧ (∀ i, ContDiffOn ℝ 1 (z i) U) ∧
      (∀ l ∈ U, StrictMono (fun i => z i l) ∧
        (∀ i, z i l ∈ Ioo a b) ∧
        (∀ x ∈ Icc a b, g (l,x) = 0 ↔ ∃ i, z i l = x) ∧
        {x | x ∈ Icc a b ∧ g (l,x) = 0}.ncard = n ∧
        g (l,a) ≠ 0 ∧ g (l,b) ≠ 0 ∧
        (∀ i j : Fin n, i < j →
          ContDiffAt ℝ 1 (center (z i) (z j)) l ∧
          ContDiffAt ℝ 1 (radius (z i) (z j)) l ∧
          0 < radius (z i) (z j) l ∧
          0 < MovingNativeChamber.width (z i l) (z j l) ∧
          (∀ x : ℝ, ContDiffAt ℝ 1 (fun u : ℝ × ℝ =>
            AffineAccordionWeld.fold (z i u.1) (z j u.1) u.2) (l,x) ∧
            ContDiffAt ℝ 1 (fun u : ℝ × ℝ =>
              MovingNativeChamber.fold (z i u.1) (z j u.1) u.2) (l,x)))) := by
  obtain ⟨n,z,U,hU,hu,hzc,hfull⟩ :=
    finite_simple_interior_zeros_have_complete_chamber hc ha hb hfinite hsimple
  refine ⟨n,z,U,hU,hu,hzc,?_⟩
  intro l hl
  obtain ⟨horder,hinside,hcensus⟩ := hfull l hl
  have hna : g (l,a) ≠ 0 := by
    intro hz
    obtain ⟨i,hi⟩ := (hcensus a ⟨le_refl a,hab.le⟩).1 hz
    have h := (hinside i).1
    rw [hi] at h
    exact lt_irrefl a h
  have hnb : g (l,b) ≠ 0 := by
    intro hz
    obtain ⟨i,hi⟩ := (hcensus b ⟨hab.le,le_refl b⟩).1 hz
    have h := (hinside i).2
    rw [hi] at h
    exact lt_irrefl b h
  refine ⟨horder,hinside,hcensus,
    complete_census_exact_zero_count _ horder hinside hcensus,hna,hnb,?_⟩
  intro i j hij
  have hci := (hzc i).contDiffAt (hU.mem_nhds hl)
  have hcj := (hzc j).contDiffAt (hU.mem_nhds hl)
  have ho := horder hij
  refine ⟨moving_center_c1 hci hcj,moving_radius_c1 hci hcj,
    div_pos (sub_pos.mpr ho) (by norm_num),MovingNativeChamber.width_pos ho,?_⟩
  intro x
  exact ⟨moving_fold_joint_c1 hci hcj ho,MovingNativeChamber.native_fold_joint_c1 hci hcj ho⟩

theorem actual_zero_count_locally_constant {g : ℝ × ℝ → ℝ} {l₀ a b : ℝ}
    (hab : a < b) (hc : ∀ x ∈ Icc a b, ContDiffAt ℝ 1 g (l₀, x))
    (ha : g (l₀, a) ≠ 0) (hb : g (l₀, b) ≠ 0)
    (hfinite : {x | x ∈ Ioo a b ∧ g (l₀,x) = 0}.Finite)
    (hsimple : ∀ x ∈ Ioo a b, g (l₀, x) = 0 → spatialSlope g (l₀, x) ≠ 0) :
    ∃ U : Set ℝ, IsOpen U ∧ l₀ ∈ U ∧ ∀ l ∈ U,
      {x | x ∈ Icc a b ∧ g (l,x) = 0}.ncard =
        {x | x ∈ Icc a b ∧ g (l₀,x) = 0}.ncard := by
  obtain ⟨n,z,U,hU,hu,_hzc,hfull⟩ :=
    complete_chamber_actual_count_and_fold_consumers hab hc ha hb hfinite hsimple
  refine ⟨U,hU,hu,?_⟩
  intro l hl
  exact (hfull l hl).2.2.2.1.trans (hfull l₀ hu).2.2.2.1.symm

theorem zero_count_chamber_failure_requires_discriminant_or_boundary
    {g : ℝ × ℝ → ℝ} {l₀ a b : ℝ}
    (hab : a < b) (hc : ∀ x ∈ Icc a b, ContDiffAt ℝ 1 g (l₀, x))
    (hfinite : {x | x ∈ Ioo a b ∧ g (l₀,x) = 0}.Finite)
    (hfailure : ¬ ∃ U : Set ℝ, IsOpen U ∧ l₀ ∈ U ∧ ∀ l ∈ U,
      {x | x ∈ Icc a b ∧ g (l,x) = 0}.ncard =
        {x | x ∈ Icc a b ∧ g (l₀,x) = 0}.ncard) :
    g (l₀,a) = 0 ∨ g (l₀,b) = 0 ∨
      ∃ x ∈ Ioo a b, g (l₀,x) = 0 ∧ spatialSlope g (l₀,x) = 0 := by
  classical
  by_contra h
  have ha : g (l₀,a) ≠ 0 := fun hz => h (Or.inl hz)
  have hb : g (l₀,b) ≠ 0 := fun hz => h (Or.inr (Or.inl hz))
  have hs : ∀ x ∈ Ioo a b, g (l₀,x) = 0 → spatialSlope g (l₀,x) ≠ 0 := by
    intro x hx hz hslope
    exact h (Or.inr (Or.inr ⟨x,hx,hz,hslope⟩))
  exact hfailure (actual_zero_count_locally_constant hab hc ha hb hfinite hs)

end
end GRWTSK.RiemannHypothesis.Conversation.ZeroChamberConsumer
```
