/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.ResidueGradedConvolution
import GRWTSK.Combinatorics.ExtremalCombinatorics.RamseyTheory.ProgressionColoringDefinitions
import GRWTSK.DynamicalSystemsAndErgodicTheory.ExactSoficLanguageCover
import Mathlib

/-!
# General finite-color word transfer and the periodic-residue obstruction

Local attribution: grwtsk contributors.

Erdos Problem 138 concerns avoiding monochromatic arithmetic progressions
in arbitrary finite colorings, not in the fixed coloring n -> n mod m.
The latter always contains progressions with step m. In contrast, the
digit-product argument in ProgressionColoring.DigitProduct uses the first
base digit with NONZERO step and retains its carry arithmetic. That is a
different map from the additive Fourier mode quotient.

This file consumes the existing van der Waerden number definition and
finite-word presentation, without importing another conjecture or assuming
the stronger kth-root theorem. It establishes the exact constraints for
applying a finite-word filter to a sofic graph language.

An AP-avoiding finite word may exist at length N < W_r(k); the theorem
below obtains an actual witness from the definition of W. Conversely,
every graph-language word at length >= W_r(k) has a monochromatic AP,
given the stated standard finite-Ramsey witness. A finite graph whose
whole admitted language avoids such APs has bounded word lengths.
No claim about an arbitrary physical trajectory being sofic is made.

Source candidates; LEAN_BUILD, FRESH_KERNEL, AXIOM_AUDIT: NOT_RUN.
-/

namespace GRWTSK.Combinatorics.RamseyTheory.ResidueFourierRamseyBridge

open GRWTSK.Combinatorics.ProgressionColoring.QuantitativeVanDerWaerden
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover

/-- The raw periodic residue coloring cannot avoid an AP whose step is m. -/
theorem residue_progression_constant (m a k : ℕ) :
    ∀ j : Fin k, (a + j.val * m) % m = a % m := by
  intro j
  simp [Nat.add_mod, Nat.mul_mod]

/-- Any recoloring of n mod m has a monochromatic k-AP when it fits.
Unlike a digit-product avoider, the naive periodic lift is insufficient. -/
theorem periodic_recoloring_has_progression
    {m k N : ℕ} {Color : Type*}
    (hm : 0 < m) (hN : (k - 1) * m < N)
    (C : Fin m → Color) :
    FiniteHasMonoAP
      (fun i : Fin N => C ⟨i.val % m, Nat.mod_lt _ hm⟩) k := by
  unfold FiniteHasMonoAP
  refine ⟨0, m, hm, by simpa using hN, ?_⟩
  intro j
  congr 1
  apply Fin.ext
  simpa only [zero_add, Nat.zero_mod] using
    residue_progression_constant m 0 k j

/-- A finite coloring below the *defined* Ramsey threshold has an avoider.
This extracts a real witness, not merely a conditional property of a word. -/
theorem exists_avoiding_word_below_W
    (r k N : ℕ) (hr : 0 < r) (hN : 0 < N)
    (hbelow : N < W r k) :
    ∃ w : Fin N → Fin r, ¬ FiniteHasMonoAP w k := by
  classical
  letI : Nonempty (Fin r) := ⟨⟨0, hr⟩⟩
  by_contra hn
  have hall : ∀ w : Fin N → Fin r, FiniteHasMonoAP w k := by
    intro w
    by_contra hw
    exact hn ⟨w, hw⟩
  have hramsey : IsRamsey (Fin r) k N :=
    (isRamsey_iff_finite (Fin r) k N).2 hall
  have hW : W r k ≤ N := W_le_of_isRamsey hN hramsey
  omega

/-- A finite word at the van der Waerden scale necessarily has an AP,
even when it is also accepted by a sofic graph. -/
theorem word_has_progression_at_W
    (r k N : ℕ) (hr : 0 < r)
    (hfinite : ∃ M, 0 < M ∧ IsRamsey (Fin r) k M)
    (hW : W r k ≤ N) (word : Fin N → Fin r) :
    FiniteHasMonoAP word k := by
  letI : Nonempty (Fin r) := ⟨⟨0, hr⟩⟩
  have hspec := W_spec_of_finite (r := r) (k := k) hfinite
  have hN : IsRamsey (Fin r) k N := hspec.2.mono hW
  exact ((isRamsey_iff_finite (Fin r) k N).mp hN) word

/-- Exact obstruction: an AP-free graph language admits no word at or
above W_r(k). This does not assert a finite graph for an arbitrary trace. -/
theorem graph_language_length_lt_W_of_avoiding
    {State : Type*} (r k : ℕ)
    (G : LabeledGraph State (Fin r)) (hr : 0 < r)
    (hfinite : ∃ M, 0 < M ∧ IsRamsey (Fin r) k M)
    (havoid : ∀ word : List (Fin r), GraphLanguage G word →
      ¬ FiniteHasMonoAP (fun i : Fin word.length => word.get i) k)
    (word : List (Fin r)) (hw : GraphLanguage G word) :
    word.length < W r k := by
  by_contra hnot
  have hW : W r k ≤ word.length := Nat.le_of_not_gt hnot
  exact (havoid word hw)
    (word_has_progression_at_W r k word.length hr hfinite hW
      (fun i => word.get i))

/-- Base-two carries already prevent naive digitwise additive transport:
1+1 at digit one is not the sum of the two separate digit-one values. -/
theorem binary_digit_carry_counterexample :
    (((1 : ℕ) + 1) / 2 ^ 1) % 2 ≠
      ((((1 : ℕ) / 2 ^ 1) % 2) + (((1 : ℕ) / 2 ^ 1) % 2)) % 2 := by
  norm_num

end GRWTSK.Combinatorics.RamseyTheory.ResidueFourierRamseyBridge
