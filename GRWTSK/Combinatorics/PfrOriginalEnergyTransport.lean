/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.DenseSubmoduleSlice
import Mathlib.Combinatorics.Additive.Energy
import Mathlib.Tactic.Abel

set_option autoImplicit false
noncomputable section

/-!
# Returning exact PFR slice energy to the original source set

DenseSubmoduleSlice constructs B = {b in H | u+b in A}, but its energy
inequality initially concerns B, not the actual original finite set A.
Every energy quadruple in B embeds into an original energy quadruple
in A by translating ALL FOUR entries by the SAME u. This injection
preserves the additive equality and does not require a reversible
cover, disjoint cosets, or ambient group finiteness.

The return preserves the exact PFR source hypotheses, exponent-nine
constant, chosen translated B, its submodule H, all support relations
and the original A's energy. It does not assert an upper bound on
energy, pointwise equality of energy, a new PFR theorem, or acceptance
of the upstream PFR source without native qualification.
-/

namespace GRWTSK.Combinatorics.PfrOriginalEnergyTransport

open scoped Pointwise
open GRWTSK.Combinatorics.DenseSubmoduleSlice

/-- The original additive energy of a finite set cannot decrease when
one injects the source B by one common translation into A.
An actual four-coordinate injection retains all witness multiplicities. -/
theorem addEnergy_le_of_translated_subset {G : Type*}
    [AddCommGroup G] [DecidableEq G]
    (A B : Finset G) (u : G)
    (hBA : ∀ b ∈ B, u + b ∈ A) :
    Finset.addEnergy B B ≤ Finset.addEnergy A A := by
  classical
  unfold Finset.addEnergy
  let f : (G × G) × (G × G) → (G × G) × (G × G) :=
    fun x => ((u + x.1.1, u + x.1.2), (u + x.2.1, u + x.2.2))
  apply Finset.card_le_card_of_injOn f
  · intro x hx
    obtain ⟨hxB, hxEq⟩ := Finset.mem_filter.mp hx
    have hmem : x.1.1 ∈ B ∧ x.1.2 ∈ B ∧
        x.2.1 ∈ B ∧ x.2.2 ∈ B := by
      simpa only [Finset.mem_product, and_assoc] using hxB
    apply Finset.mem_filter.mpr
    constructor
    · change f x ∈ ((A ×ˢ A) ×ˢ A ×ˢ A)
      simp only [Finset.mem_product]
      exact ⟨⟨hBA _ hmem.1, hBA _ hmem.2.1⟩,
        ⟨hBA _ hmem.2.2.1, hBA _ hmem.2.2.2⟩⟩
    · change (u + x.1.1) + (u + x.2.1) =
        (u + x.1.2) + (u + x.2.2)
      calc
        (u + x.1.1) + (u + x.2.1) =
            (u + u) + (x.1.1 + x.2.1) := by abel
        _ = (u + u) + (x.1.2 + x.2.2) := by rw [hxEq]
        _ = (u + x.1.2) + (u + x.2.2) := by abel
  · intro x _ y _ hxy
    have h11 : x.1.1 = y.1.1 := by
      exact add_left_cancel
        (congrArg (fun z : (G × G) × (G × G) => z.1.1) hxy)
    have h12 : x.1.2 = y.1.2 := by
      exact add_left_cancel
        (congrArg (fun z : (G × G) × (G × G) => z.1.2) hxy)
    have h21 : x.2.1 = y.2.1 := by
      exact add_left_cancel
        (congrArg (fun z : (G × G) × (G × G) => z.2.1) hxy)
    have h22 : x.2.2 = y.2.2 := by
      exact add_left_cancel
        (congrArg (fun z : (G × G) × (G × G) => z.2.2) hxy)
    exact Prod.ext (Prod.ext h11 h12) (Prod.ext h21 h22)

/-- Consumer-facing PFR return: the chosen structured, nonempty B
has its exact translated-source identity, AND its quantitative
submodule Cauchy--Schwarz bound now holds against the energy of
THE ORIGINAL A. No analytic or cross-version premise is discarded. -/
theorem original_addEnergy_of_small_doubling {G : Type*}
    [AddCommGroup G] [Module (ZMod 2) G] [DecidableEq G]
    {A : Finset G} {K : ℝ}
    (hA : A.Nonempty)
    (hsmall : ((A + A).card : ℝ) ≤ K * A.card) :
    ∃ (H : Submodule (ZMod 2) G) (u : G) (B : Finset G),
      (H : Set G).Finite ∧ (H : Set G).ncard ≤ A.card ∧
      (B : Set G) = {b | b ∈ H ∧ u + b ∈ A} ∧ B.Nonempty ∧
      (A.card : ℝ) < (2 * K ^ (9 : ℕ)) * B.card ∧
      ((B - B : Finset G) : Set G) ⊆ (H : Set G) ∧
      B.card ^ 2 * B.card ^ 2 ≤
        (H : Set G).ncard * Finset.addEnergy A A := by
  obtain ⟨H, u, B, hH, hHcard, hB, hB₀,
    hdense, hdiff, henergy⟩ :=
    dense_submodule_slice_of_small_doubling hA hsmall
  have hBA : ∀ b ∈ B, u + b ∈ A := by
    intro b hb
    have hset : b ∈ (B : Set G) := hb
    rw [hB] at hset
    exact hset.2
  have htransport : Finset.addEnergy B B ≤ Finset.addEnergy A A :=
    addEnergy_le_of_translated_subset A B u hBA
  refine ⟨H, u, B, hH, hHcard, hB, hB₀, hdense, hdiff, ?_⟩
  exact henergy.trans (Nat.mul_le_mul_left _ htransport)

end GRWTSK.Combinatorics.PfrOriginalEnergyTransport
