/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
ISOLATED SOURCE_PROOF_CANDIDATE: original Alpoge Lean v4.33.1 /
Mathlib 0df444a360eaa60ab8c11dca51a86af692955474.
Elaboration, trusted kernel and transitive axioms: NOT_RUN.
-/
import GRWTSK.NumberTheory.AlpogeNativeGmNormalization
import Mathlib.NumberTheory.DirichletCharacter.Bounds
import Mathlib.Tactic

/-!
# Original nonexceptional character Level: positive prime phase

The ACTUAL Level.ofSub has psK=none, o=Nat.card Xi, and Nt
is KEPT.erase PChar.one. Its true weighted arithmetic coefficient
cannot vanish, because each nontrivial character weight is
(3*o+1)^(-1) and there are at most o-1 of them.

The source independent mathematical proof of the original ofSub
cardinality is in the adjacent .md. The local first-stage
cardinality hypothesis is kept explicit so the downstream phase
proof can be checked before the source finite-group cardinal lemma.

At n coprime to the common ambient modulus, original characters
match their primitive PChar.of values. The full subgroup character
sum is 0 or o by finite Fourier orthogonality; hence phase is
the exact binary coset symbol 3o/(3o+1) or 4o/(3o+1).
This stronger source-specific binary statement is a mathematical
proof in .md; a pinned Lean orthogonality-transport theorem is OPEN.
No claim of an RH estimate or zeta spectral mapping is made.
-/

set_option autoImplicit false
noncomputable section
open Formalism Formalism.HC
open GRWTSK.NumberTheory.AlpogeNativeGmNormalization
open scoped BigOperators

namespace GRWTSK.NumberTheory.AlpogeNativeCyclicPhase

/-- The native nonexceptional weight formula is definitional. -/
theorem weight_eq_inverse_of_no_exception
    (Λ : Level) (hNone : Λ.psK = none) (ψ : PChar) :
    Λ.wt ψ = (3 * (Λ.o : ℝ) + 1)⁻¹ := by
  simp [Level.wt, hNone]

/-- Exact character modulus bound, including value zero at
ramified primes. A primitive PChar has its own true modulus. -/
theorem native_character_real_abs_le_one (ψ : PChar) (n : ℕ) :
    |(ψ.χ n).re| ≤ (1 : ℝ) := by
  exact (Complex.abs_re_le_norm _).trans
    (DirichletCharacter.norm_le_one ψ.χ (n : ZMod ψ.N))

/-- A genuine nonexceptional native Level's signed coefficient
has a computable bound in its actual nontrivial-character count. -/
theorem signedPhase_deviation_le_count
    (Λ : Level) (hNone : Λ.psK = none) (n : ℕ) :
    |signedPhase Λ n - 1| ≤
      (Λ.Nt.card : ℝ) / (3 * (Λ.o : ℝ) + 1) := by
  classical
  have hb : 0 < (3 * (Λ.o : ℝ) + 1) := by positivity
  have hterm (ψ : PChar) :
      |Λ.wt ψ * (ψ.χ n).re| ≤
        (3 * (Λ.o : ℝ) + 1)⁻¹ := by
    rw [weight_eq_inverse_of_no_exception Λ hNone ψ, abs_mul,
      abs_of_nonneg (inv_nonneg.mpr hb.le)]
    simpa only [mul_one] using
      (mul_le_mul_of_nonneg_left
        (native_character_real_abs_le_one ψ n)
        (inv_nonneg.mpr hb.le))
  have hsum :
      |∑ ψ ∈ Λ.Nt, Λ.wt ψ * (ψ.χ n).re| ≤
        (Λ.Nt.card : ℝ) * (3 * (Λ.o : ℝ) + 1)⁻¹ := by
    calc
      _ ≤ ∑ ψ ∈ Λ.Nt, |Λ.wt ψ * (ψ.χ n).re| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ ψ ∈ Λ.Nt, (3 * (Λ.o : ℝ) + 1)⁻¹ :=
        Finset.sum_le_sum (fun ψ _ => hterm ψ)
      _ = (Λ.Nt.card : ℝ) * (3 * (Λ.o : ℝ) + 1)⁻¹ := by
        simp [nsmul_eq_mul]
  simpa only [signedPhase, add_sub_cancel_left, div_eq_mul_inv] using hsum

/-- The cardinality supplier for the real Level.ofSub is exactly:
Nt.card+1 <= o, because its KEPT is the image of its subgroup,
the principal character is present, and o is the original Nat.card.
This theorem takes the explicit source cardinal hypothesis; it
does not pretend the current pinned source cardinal bridge is proved. -/
theorem phase_two_sided_of_subgroup_cardinality
    (Λ : Level) (hNone : Λ.psK = none)
    (hCard : Λ.Nt.card + 1 ≤ Λ.o) (n : ℕ) :
    (2 * ((Λ.o : ℝ) + 1)) / (3 * (Λ.o : ℝ) + 1) ≤
      signedPhase Λ n ∧
      signedPhase Λ n ≤
        (4 * (Λ.o : ℝ)) / (3 * (Λ.o : ℝ) + 1) := by
  have hb : 0 < (3 * (Λ.o : ℝ) + 1) := by positivity
  have hcardReal : (Λ.Nt.card : ℝ) + 1 ≤ (Λ.o : ℝ) := by
    exact_mod_cast hCard
  have hratio : (Λ.Nt.card : ℝ) / (3 * (Λ.o : ℝ) + 1) ≤
      ((Λ.o : ℝ) - 1) / (3 * (Λ.o : ℝ) + 1) :=
    div_le_div_of_nonneg_right (by linarith) hb.le
  have h := abs_le.mp (signedPhase_deviation_le_count Λ hNone n)
  constructor
  · have hl : 1 - ((Λ.o : ℝ) - 1) / (3 * (Λ.o : ℝ) + 1) ≤
        signedPhase Λ n := by linarith
    have heq :
        (2 * ((Λ.o : ℝ) + 1)) / (3 * (Λ.o : ℝ) + 1) =
          1 - ((Λ.o : ℝ) - 1) / (3 * (Λ.o : ℝ) + 1) := by
      field_simp
      ring
    rw [heq]
    exact hl
  · have hu : signedPhase Λ n ≤
        1 + ((Λ.o : ℝ) - 1) / (3 * (Λ.o : ℝ) + 1) := by linarith
    have heq :
        1 + ((Λ.o : ℝ) - 1) / (3 * (Λ.o : ℝ) + 1) =
          (4 * (Λ.o : ℝ)) / (3 * (Λ.o : ℝ) + 1) := by
      field_simp
      ring
    rw [← heq]
    exact hu

/-- The original subgroup cardinality gives a STRICT arithmetic
nonvanishing bound. The proof cannot be applied to an exceptional
Level with a unit-weight character. -/
theorem phase_gt_two_thirds_of_subgroup_cardinality
    (Λ : Level) (hNone : Λ.psK = none)
    (hCard : Λ.Nt.card + 1 ≤ Λ.o) (n : ℕ) :
    (2 : ℝ) / 3 < signedPhase Λ n := by
  have htwo :=
    (phase_two_sided_of_subgroup_cardinality Λ hNone hCard n).1
  have hb : 0 < (3 * (Λ.o : ℝ) + 1) := by positivity
  have hlo :
      (2 : ℝ) / 3 <
      (2 * ((Λ.o : ℝ) + 1)) / (3 * (Λ.o : ℝ) + 1) := by
    apply (lt_div_iff₀ hb).mpr
    nlinarith
  exact hlo.trans_le htwo

/-- The integer curvature identity is an exact inverse whenever
the TRUE signed prime multiplier is positive. Its source premise
is the still-uncompiled native normalization/hinge curvature lemma.
No zero side or RH supplies that premise. -/
theorem vonMangoldt_from_native_integer_curvature
    (Λ : Level) (hNone : Λ.psK = none)
    (hCard : Λ.Nt.card + 1 ≤ Λ.o)
    (k : ℕ) (hk : 2 ≤ k)
    (adjustedCurvature : ℝ)
    (hSource :
      (k : ℝ) * adjustedCurvature =
        (ArithmeticFunction.vonMangoldt k : ℝ) * signedPhase Λ k) :
    ((k : ℝ) * adjustedCurvature) / signedPhase Λ k =
      (ArithmeticFunction.vonMangoldt k : ℝ) := by
  have hpos := phase_gt_two_thirds_of_subgroup_cardinality
    Λ hNone hCard k
  have hneq : signedPhase Λ k ≠ 0 := by linarith
  apply (div_eq_iff hneq).mpr
  exact hSource


/-- The actual original Level.ofSub has at most as many retained
PChar images as subgroup elements. The principal character is in
KEPT, so removing it gives Nt.card + 1 <= o.
The finite-cardinality argument uses only the original source
definition and Mathlib cardinal identities, not RH. -/
theorem ofSub_Nt_card_succ_le_o {M : ℕ} [NeZero M]
    (Ξ : Subgroup (DirichletCharacter ℂ M)) :
    (Level.ofSub Ξ).Nt.card + 1 ≤ (Level.ofSub Ξ).o := by
  classical
  have hImage :
      (Level.ofSub Ξ).KEPT.card ≤
        (Finset.univ.filter
          (fun χ : DirichletCharacter ℂ M => χ ∈ Ξ)).card := by
    change ((Finset.univ.filter
      (fun χ : DirichletCharacter ℂ M => χ ∈ Ξ)).image PChar.of).card ≤ _
    exact Finset.card_image_le
  have hSub :
      (Finset.univ.filter
        (fun χ : DirichletCharacter ℂ M => χ ∈ Ξ)).card =
          Nat.card Ξ := by
    rw [Nat.card_eq_fintype_card]
    simpa only [Fintype.card_subtype] using
      (Fintype.card_subtype
        (fun χ : DirichletCharacter ℂ M => χ ∈ Ξ)).symm
  have hKept :
      (Level.ofSub Ξ).KEPT.card ≤ (Level.ofSub Ξ).o := by
    change (Level.ofSub Ξ).KEPT.card ≤ Nat.card Ξ
    exact hImage.trans_eq hSub
  have hOne : PChar.one ∈ (Level.ofSub Ξ).KEPT :=
    (Level.ofSub Ξ).one_mem
  have hErase :
      (Level.ofSub Ξ).Nt.card + 1 =
        (Level.ofSub Ξ).KEPT.card := by
    change ((Level.ofSub Ξ).KEPT.erase PChar.one).card + 1 =
      (Level.ofSub Ξ).KEPT.card
    have he := Finset.card_erase_of_mem hOne
    have hc : 1 ≤ (Level.ofSub Ξ).KEPT.card :=
      Finset.one_le_card.mpr hOne
    omega
  exact hErase.le.trans hKept

/-- Original Level.ofSub has no exceptional character by definition.
Thus its true signed prime-power phase is strictly nonzero at every
natural index, even one divisible by the ambient modulus. -/
theorem ofSub_phase_gt_two_thirds {M : ℕ} [NeZero M]
    (Ξ : Subgroup (DirichletCharacter ℂ M)) (n : ℕ) :
    (2 : ℝ) / 3 < signedPhase (Level.ofSub Ξ) n := by
  apply phase_gt_two_thirds_of_subgroup_cardinality
  · rfl
  · exact ofSub_Nt_card_succ_le_o Ξ

/-- Original Level.cyc specializes to a genuine subgroup, not an
arbitrary synthetic finite character family. -/
theorem cyclic_phase_gt_two_thirds (ψ : PChar) (n : ℕ) :
    (2 : ℝ) / 3 < signedPhase (Level.cyc ψ) n := by
  change (2 : ℝ) / 3 <
    signedPhase (Level.ofSub (Subgroup.zpowers ψ.χ)) n
  exact ofSub_phase_gt_two_thirds (Subgroup.zpowers ψ.χ) n

/-- All original cyclic levels can invert true signed prime-power
curvature without division by a vanishing weighted character symbol.
This remains conditional on the separately formulated source
integer-curvature identity, whose full Lean proof is not included. -/
theorem cyclic_vonMangoldt_of_source_curvature
    (ψ : PChar) (k : ℕ) (hk : 2 ≤ k)
    (curvature : ℝ)
    (hCurvature :
      (k : ℝ) * curvature =
        (ArithmeticFunction.vonMangoldt k : ℝ) *
          signedPhase (Level.cyc ψ) k) :
    ((k : ℝ) * curvature) /
      signedPhase (Level.cyc ψ) k =
      (ArithmeticFunction.vonMangoldt k : ℝ) := by
  have hpos := cyclic_phase_gt_two_thirds ψ k
  have hne : signedPhase (Level.cyc ψ) k ≠ 0 := by linarith
  apply (div_eq_iff hne).mpr
  exact hCurvature

end GRWTSK.NumberTheory.AlpogeNativeCyclicPhase
