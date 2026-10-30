/-
Local attribution: grwtsk contributors.
Source proof candidates; compilation, fresh kernel replay and axiom audit NOT_RUN.
The imported APAP sources retain their upstream authorship and Apache-2.0 license.
-/
import GRWTSK.Combinatorics.FiniteFieldProgressionWitness
import Mathlib.Algebra.Field.ZMod
import Mathlib.Algebra.GroupWithZero.Action.Units
import Mathlib.Data.Fin.VecNotation
import Mathlib.Tactic.Abel
import Mathlib.Tactic.FinCases

/-!
# Actual three-point affine supports from the finite-field APAP witness

The local Roth family uses `ThreeAPFree`, whose negation provides three points
with `a + c = b + b` and only `a ≠ b`. A finite configuration consumer needs an
injective three-point object. For a module over `ZMod q`, with prime `q ≥ 3`,
scalar `2` is invertible; this proves the missing first/third separation.

The construction then uses the actual step `r = b - a` and an embedding
`Fin 3 ↪ G`. Its mapped finite support has exactly three elements and lies in
the original set. The density theorem retains the exact source-normalized
`2^148 * (1 + log δ⁻¹)^9` threshold. That literal constant is an interface of
the pinned Lean source, not an attribution of an informal paper constant.

The characteristic-two boundary matters: `a + a = b + b` can hold with `a ≠ b`,
so the original witness convention alone does not give three distinct points.
No characteristic-two or integer theorem is asserted. In particular the admitted
`APAP.Integer.int` statement is not imported or used. The root Roth module is
not imported across the isolated Lean/Mathlib boundary.
-/

namespace GRWTSK.Combinatorics.FiniteFieldAffineProgression

/-- In odd prime characteristic, the nontrivial `ThreeAPFree` witness convention
also separates the remaining two pairs. No finiteness of `G` is needed here. -/
theorem endpoints_distinct_of_nontrivial_progression {G : Type*} [AddCommGroup G]
    {q : ℕ} [Module (ZMod q) G] {a b c : G}
    (hq₃ : 3 ≤ q) (hq : q.Prime) (habc : a + c = b + b) (hab : a ≠ b) :
    a ≠ c ∧ b ≠ c := by
  letI : Fact q.Prime := ⟨hq⟩
  have htwo : (2 : ZMod q) ≠ 0 := by
    intro hzero
    have hcastzero : ((2 : ℕ) : ZMod q) = 0 := by
      simpa only [Nat.cast_ofNat] using hzero
    have hq₂ : q ≤ 2 := Nat.le_of_dvd (by decide : 0 < 2)
      ((ZMod.natCast_eq_zero_iff 2 q).mp hcastzero)
    exact (not_le_of_gt (lt_of_lt_of_le (by decide : 2 < 3) hq₃)) hq₂
  constructor
  · intro hac
    have htwice : (2 : ZMod q) • a = (2 : ZMod q) • b := by
      simpa only [two_smul, ← hac] using habc
    have heq := congrArg (fun x : G => (2 : ZMod q)⁻¹ • x) htwice
    apply hab
    simpa only [inv_smul_smul₀ htwo] using heq
  · intro hbc
    apply hab
    exact add_right_cancel (by simpa only [← hbc] using habc)

/-- Normalize the actual three source points into a nonzero-step affine
embedding, retaining the identity of all three entries. -/
theorem affine_embedding_of_nontrivial_progression {G : Type*} [AddCommGroup G]
    {q : ℕ} [Module (ZMod q) G] {a b c : G}
    (hq₃ : 3 ≤ q) (hq : q.Prime) (habc : a + c = b + b) (hab : a ≠ b) :
    ∃ (r : G) (e : Fin 3 ↪ G), r ≠ 0 ∧
      e 0 = a ∧ e 1 = b ∧ e 2 = c ∧ ∀ i : Fin 3, e i = a + i.val • r := by
  obtain ⟨hac, hbc⟩ := endpoints_distinct_of_nontrivial_progression hq₃ hq habc hab
  let f : Fin 3 → G := ![a, b, c]
  have hf : Function.Injective f := by
    intro i j hij
    fin_cases i <;> fin_cases j <;> simp_all [f]
  let e : Fin 3 ↪ G := ⟨f, hf⟩
  refine ⟨b - a, e, sub_ne_zero.mpr hab.symm, rfl, rfl, rfl, ?_⟩
  intro i
  fin_cases i
  · change a = a + (0 : ℕ) • (b - a)
    simp
  · change b = a + (1 : ℕ) • (b - a)
    rw [one_smul]
    abel
  · change c = a + (2 : ℕ) • (b - a)
    rw [two_smul ℕ]
    calc
      c = (a + c) - a := by abel
      _ = (b + b) - a := by rw [habc]
      _ = a + ((b - a) + (b - a)) := by abel

/-- The exact finite-field density/rank threshold produces an injective affine
configuration whose mapped finite support has cardinality three and lies in
`A`. The density budget is the same external lower bound used by the existing
progression witness; no first/third distinctness premise is added. -/
theorem affine_support_of_density_lower_bound {G : Type*} [AddCommGroup G] [Fintype G]
    {q : ℕ} [Module (ZMod q) G] {A : Finset G} {δ : ℝ}
    (hq₃ : 3 ≤ q) (hq : q.Prime) (hA₀ : A.Nonempty)
    (hδ : 0 < δ) (hδA : δ ≤ (A.dens : ℝ))
    (hrank : 2 ^ 148 * (1 + Real.log δ⁻¹) ^ 9 <
      (Module.finrank (ZMod q) G : ℝ)) :
    ∃ (a r : G) (e : Fin 3 ↪ G), r ≠ 0 ∧
      (∀ i : Fin 3, e i = a + i.val • r) ∧
      (Finset.univ.map e) ⊆ A ∧ (Finset.univ.map e).card = 3 := by
  obtain ⟨a, ha, b, hb, c, hc, habc, hab⟩ :=
    FiniteFieldProgressionWitness.progression_of_density_lower_bound
      hq₃ hq hA₀ hδ hδA hrank
  obtain ⟨r, e, hr, he₀, he₁, he₂, he⟩ :=
    affine_embedding_of_nontrivial_progression hq₃ hq habc hab
  refine ⟨a, r, e, hr, he, ?_, ?_⟩
  · intro x hx
    obtain ⟨i, hi, rfl⟩ := Finset.mem_map.mp hx
    fin_cases i
    · simpa only [he₀] using ha
    · simpa only [he₁] using hb
    · simpa only [he₂] using hc
  · simp only [Finset.card_map, Finset.card_univ, Fintype.card_fin]

end GRWTSK.Combinatorics.FiniteFieldAffineProgression
