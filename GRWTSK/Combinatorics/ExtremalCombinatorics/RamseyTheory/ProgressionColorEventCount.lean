/- Copyright (c) 2026 grwtsk contributors. MIT.
Source proof candidates; compilation, fresh replay and axiom audit NOT_RUN. -/
import GRWTSK.Combinatorics.ExtremalCombinatorics.RamseyTheory.FiniteProgressionCensus
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Finset.Fin

/-!
# Exact counting fibers for a prescribed progression color

The sample space is ALL Boolean functions on the actual finite interval.
Constraining coordinates in S leaves arbitrary Boolean data on its complement.
The explicit equivalence below retains that sample space and supplies the
numerator of the uniform Bernoulli event probability. It does not replace
fixed-size sampling by independence, or assert independence of overlapping APs.
No OpenAI progression-coloring construction is imported.
-/
namespace GRWTSK.Combinatorics.RamseyTheory.AnalyticControl

abbrev FixedColorAssignments {N : ℕ} (S : Finset (Fin N)) (b : Bool) :=
  {f : Fin N → Bool // ∀ i ∈ S, f i = b}

/-- The event fiber is exactly the free assignment space on the complement. -/
def fixedColorComplementEquiv {N : ℕ} (S : Finset (Fin N)) (b : Bool) :
    FixedColorAssignments S b ≃ ({i : Fin N // i ∉ S} → Bool) where
  toFun f i := f.val i.val
  invFun g := ⟨fun i => if h : i ∈ S then b else g ⟨i, h⟩, by
    intro i hi
    simp [hi]⟩
  left_inv f := by
    apply Subtype.ext
    funext i
    change (if h : i ∈ S then b else f.val (⟨i, h⟩ : {i : Fin N // i ∉ S}).val) = f.val i
    by_cases hi : i ∈ S
    · simp [hi, f.property i hi]
    · simp [hi]
  right_inv g := by
    funext i
    change (if h : i.val ∈ S then b else g ⟨i.val, h⟩) = g i
    simp [i.property]

/-- Exact event numerator; no probability approximation or independence premise. -/
theorem fixedColorAssignments_card {N : ℕ} (S : Finset (Fin N)) (b : Bool) :
    Fintype.card (FixedColorAssignments S b) = 2 ^ (N - S.card) := by
  have h := Fintype.card_congr (fixedColorComplementEquiv S b)
  simpa only [Fintype.card_fun, Fintype.card_bool,
    Fintype.card_subtype_compl, Fintype.card_fin, Fintype.card_coe] using h

/-- Actual support, retaining distinct interval coordinates from the census. -/
def WindowAP.support {N k : ℕ} (p : WindowAP N k) : Finset (Fin N) :=
  Finset.univ.map ⟨p.point, p.point_injective⟩

theorem WindowAP.support_card {N k : ℕ} (p : WindowAP N k) :
    p.support.card = k := by
  simp [WindowAP.support]

/-- Exactly this many interval colorings give a prescribed color on an AP. -/
theorem WindowAP.fixedColor_card {N k : ℕ} (p : WindowAP N k) (b : Bool) :
    Fintype.card (FixedColorAssignments p.support b) = 2 ^ (N - k) := by
  rw [fixedColorAssignments_card, p.support_card]

end GRWTSK.Combinatorics.RamseyTheory.AnalyticControl
