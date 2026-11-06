/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurPivotResidual

/-!
# Integer replay of rounded structured Schur pivots

The integer diagonal and generators have denominator `2^40`, while a
proposed pivot column has denominator `2^58`. The successor is supplied
as integer data. Cross-multiplication checks the column, diagonal and
generator residuals and the stored generator magnitudes.

The paid local quadratic error is the integer budget on denominator
`500 * 2^80`. The caller supplies the reciprocal node-separation bound
`21/250`, available for consecutive square nodes starting at 65. The
proof applies to any finite number of generator pairs and retains exact
state linkage in the chain step. A concrete input seed and a complete
chain remain separate replay obligations. Independent mathematical
review is pending.
-/

open scoped BigOperators
open GRWTSK.Algebra.LinearAlgebra
open StructuredSchurPivotResidual QuadraticCertificates FiniteSchurResidualChain

namespace GRWTSK.Algebra.LinearAlgebra.StructuredSchurIntegerReplay

set_option autoImplicit false
noncomputable section

variable {r : ℕ}

/-- The denominator of the integer diagonal and generator data. -/
def generatorScale : ℤ := 2^40
/-- The column denominator is the generator denominator times this factor. -/
def columnFactor : ℤ := 2^18
/-- The generator denominator divided by the column factor. -/
def displacementFactor : ℤ := 2^22

def decodeGenerator (z : ℤ) : ℝ := (z : ℝ) / (generatorScale : ℝ)
def decodeColumn (z : ℤ) : ℝ := (z : ℝ) / ((generatorScale : ℝ) * (columnFactor : ℝ))

structure RawState (r n : ℕ) where
  diag : Fin n → ℤ
  v : Fin n → Fin r → ℤ
  u : Fin n → Fin r → ℤ

structure StepPrices (r : ℕ) where
  colMag : ℕ
  colErr : ℕ
  colMul : ℕ
  diagRadius : ℕ
  vRadius : Fin r → ℕ
  uRadius : Fin r → ℕ
  maxV : Fin r → ℕ
  maxU : Fin r → ℕ

def decodeRadius (r : ℕ) : ℝ := (r : ℝ) / (2 * (generatorScale : ℝ))

def offNumerator (e : StepPrices r) : ℕ :=
  2 * e.colErr * e.colMul +
    ∑ l, (2 * e.vRadius l * e.maxU l + 2 * e.uRadius l * e.maxV l +
      3 * e.vRadius l * e.uRadius l)

def priceNumerator (e : StepPrices r) : ℕ := 250 * 2^40 * e.diagRadius + 21 * offNumerator e

def price (e : StepPrices r) : ℝ := (priceNumerator e : ℝ) / (500 * (generatorScale : ℝ)^2)

def rawNumerator (v u v' u' : Fin r → ℤ) : ℤ :=
  ∑ l, (v l * u' l - u l * v' l)

/-- The exact cross-multiplied checks on one proposed column and successor state. -/
def checkStep {n : ℕ} (node : Fin (n+1) → ℤ) (old : RawState r (n+1)) (next : RawState r n)
    (c : Fin n → ℤ) (e : StepPrices r) : Prop :=
  0 < old.diag 0 ∧ 1 ≤ e.colMul ∧
  2 * (e.colMag : ℤ) ≤ old.diag 0 * columnFactor * (e.colMul : ℤ) ∧
  ∀ i : Fin n,
    |c i| ≤ (e.colMag : ℤ) ∧
    |rawNumerator (old.v i.succ) (old.u i.succ) (old.v 0) (old.u 0) -
      (node i.succ - node 0) * displacementFactor * c i| ≤ (e.colErr : ℤ) ∧
    2 * |(c i)^2 + old.diag 0 * columnFactor^2 * (next.diag i - old.diag i.succ)| ≤
      old.diag 0 * columnFactor^2 * (e.diagRadius : ℤ) ∧
    ∀ l : Fin r,
      2 * |c i * old.v 0 l + old.diag 0 * columnFactor * (next.v i l - old.v i.succ l)| ≤
        old.diag 0 * columnFactor * (e.vRadius l : ℤ) ∧
      2 * |c i * old.u 0 l + old.diag 0 * columnFactor * (next.u i l - old.u i.succ l)| ≤
        old.diag 0 * columnFactor * (e.uRadius l : ℤ) ∧
      |next.v i l| ≤ (e.maxV l : ℤ) ∧ |next.u i l| ≤ (e.maxU l : ℤ)

instance {n : ℕ} (node : Fin (n+1) → ℤ) (old : RawState r (n+1)) (next : RawState r n)
    (c : Fin n → ℤ) (e : StepPrices r) : Decidable (checkStep node old next c e) := by
  unfold checkStep
  infer_instance

def decodeMatrix {n : ℕ} (node : Fin n → ℤ) (s : RawState r n) : Matrix (Fin n) (Fin n) ℝ :=
  cauchyMatrix (fun i => (node i : ℝ)) (decodeGenerator ∘ s.diag)
    (fun i l => decodeGenerator (s.v i l)) (fun i l => decodeGenerator (s.u i l))

private theorem cast_num (v u v' u' : Fin r → ℤ) :
    numerator (decodeGenerator ∘ v) (decodeGenerator ∘ u) (decodeGenerator ∘ v') (decodeGenerator ∘ u') =
      (rawNumerator v u v' u' : ℝ) / (generatorScale : ℝ)^2 := by
  simp only [numerator, rawNumerator, Int.cast_sum, Finset.sum_div, Function.comp_apply]
  apply Finset.sum_congr rfl
  intro l _
  push_cast
  unfold decodeGenerator
  ring

private theorem col_bound {c : ℤ} {a : ℕ} (h : |c| ≤ (a : ℤ)) :
    |decodeColumn c| ≤ (a : ℝ) / ((generatorScale : ℝ)*(columnFactor : ℝ)) := by
  have h' : |(c : ℝ)| ≤ (a : ℝ) := by exact_mod_cast h
  rw [decodeColumn, abs_div, abs_of_nonneg (show 0 ≤ (generatorScale : ℝ)*(columnFactor : ℝ) by norm_num [generatorScale,columnFactor])]
  exact div_le_div_of_nonneg_right h' (by norm_num [generatorScale,columnFactor])

private theorem diag_bound {p c old next : ℤ} {r : ℕ}
    (h : 2 * |c^2+p*columnFactor^2*(next-old)| ≤ p*columnFactor^2*(r : ℤ)) :
    |decodeGenerator p * (decodeGenerator next-decodeGenerator old) + (decodeColumn c)^2| ≤ decodeGenerator p * decodeRadius r := by
  have h' : 2 * |(c : ℝ)^2 + (p : ℝ)*(columnFactor : ℝ)^2*((next : ℝ)-(old : ℝ))| ≤
      (p : ℝ)*(columnFactor : ℝ)^2*(r : ℝ) := by exact_mod_cast h
  have he : decodeGenerator p * (decodeGenerator next-decodeGenerator old) + (decodeColumn c)^2 =
      ((c : ℝ)^2 + (p : ℝ)*(columnFactor : ℝ)^2*((next : ℝ)-(old : ℝ))) /
        ((generatorScale : ℝ)^2*(columnFactor : ℝ)^2) := by
    norm_num [decodeGenerator, decodeColumn, generatorScale, columnFactor]
    ring
  rw [he, abs_div, abs_of_nonneg (show 0 ≤ (generatorScale : ℝ)^2*(columnFactor : ℝ)^2 by norm_num [generatorScale,columnFactor])]
  norm_num [decodeGenerator, decodeRadius, generatorScale, columnFactor] at h' ⊢
  linarith only [h']

private theorem update_bound {p c anchor old next : ℤ} {r : ℕ}
    (h : 2 * |c*anchor+p*columnFactor*(next-old)| ≤ p*columnFactor*(r : ℤ)) :
    |decodeGenerator p * (decodeGenerator next-decodeGenerator old) + decodeColumn c * decodeGenerator anchor| ≤ decodeGenerator p * decodeRadius r := by
  have h' : 2 * |(c : ℝ)*(anchor : ℝ) + (p : ℝ)*(columnFactor : ℝ)*((next : ℝ)-(old : ℝ))| ≤
      (p : ℝ)*(columnFactor : ℝ)*(r : ℝ) := by exact_mod_cast h
  have he : decodeGenerator p * (decodeGenerator next-decodeGenerator old) + decodeColumn c * decodeGenerator anchor =
      ((c : ℝ)*(anchor : ℝ) + (p : ℝ)*(columnFactor : ℝ)*((next : ℝ)-(old : ℝ))) /
        ((generatorScale : ℝ)^2*(columnFactor : ℝ)) := by
    norm_num [decodeGenerator, decodeColumn, generatorScale, columnFactor]
    ring
  rw [he, abs_div, abs_of_nonneg (show 0 ≤ (generatorScale : ℝ)^2*(columnFactor : ℝ) by norm_num [generatorScale,columnFactor])]
  norm_num [decodeGenerator, decodeRadius, generatorScale, columnFactor] at h' ⊢
  linarith only [h']

private theorem gen_bound {z : ℤ} {a r : ℕ} (h : |z| ≤ (a : ℤ)) :
    |decodeGenerator z| + decodeRadius r ≤ (a : ℝ) / (generatorScale : ℝ) + decodeRadius r := by
  have h' : |(z : ℝ)| ≤ (a : ℝ) := by exact_mod_cast h
  rw [decodeGenerator, abs_div, abs_of_nonneg (show 0 ≤ (generatorScale : ℝ) by norm_num [generatorScale])]
  exact add_le_add (div_le_div_of_nonneg_right h' (by norm_num [generatorScale])) le_rfl

private theorem generator_price (e : StepPrices r) :
    2 * (∑ l, (decodeRadius (e.vRadius l) * ((e.maxU l : ℝ) / (generatorScale : ℝ) + decodeRadius (e.uRadius l)) +
      decodeRadius (e.uRadius l) * ((e.maxV l : ℝ) / (generatorScale : ℝ) + decodeRadius (e.vRadius l)) +
      decodeRadius (e.vRadius l) * decodeRadius (e.uRadius l))) =
    ((∑ l, (2 * e.vRadius l * e.maxU l + 2 * e.uRadius l * e.maxV l +
      3 * e.vRadius l * e.uRadius l) : ℕ) : ℝ) / (2 * (generatorScale : ℝ)^2) := by
  rw [Finset.mul_sum, Nat.cast_sum, Finset.sum_div]
  apply Finset.sum_congr rfl
  intro l _
  push_cast
  norm_num [decodeRadius,generatorScale]
  ring

private theorem local_price (e : StepPrices r) :
    decodeRadius e.diagRadius + ((offNumerator e : ℝ) / (2 * (generatorScale : ℝ)^2)) * (21/250) = price e := by
  simp only [decodeRadius, price, priceNumerator]
  push_cast
  norm_num [generatorScale]
  ring

/-- The integer checks pay the complete local quadratic residual. -/
theorem checkStep_sound {n : ℕ} (node : Fin (n+1) → ℤ) (old : RawState r (n+1)) (next : RawState r n)
    (c : Fin n → ℤ) (e : StepPrices r) (h : checkStep node old next c e)
    (hnode : Function.Injective node)
    (hsep : ∀ i, ∑ j, (|(node i : ℝ) - (node j : ℝ)|)⁻¹ ≤ 21/250)
    (x : Fin (n+1) → ℝ) :
    -price e * ∑ i, (x i)^2 ≤ quadratic
      (decodeMatrix node old - reassemblePivot (decodeGenerator (old.diag 0)) (decodeColumn ∘ c)
        (decodeMatrix (node ∘ Fin.succ) next)) x := by
  obtain ⟨hp, hm, hmul, hrow⟩ := h
  have hpr : 0 < (old.diag 0 : ℝ) := by exact_mod_cast hp
  have hpG : 0 < decodeGenerator (old.diag 0) := div_pos hpr (by norm_num [generatorScale])
  have hmr : (1 : ℝ) ≤ e.colMul := by exact_mod_cast hm
  have hmulr : (2 : ℝ) * (e.colMag : ℝ) ≤ (old.diag 0 : ℝ)*(columnFactor : ℝ)*(e.colMul : ℝ) := by
    exact_mod_cast hmul
  have hcol (i : Fin n) :
      |numerator (decodeGenerator ∘ old.v i.succ) (decodeGenerator ∘ old.u i.succ) (decodeGenerator ∘ old.v 0) (decodeGenerator ∘ old.u 0) -
        ((node i.succ : ℝ) - (node 0 : ℝ)) * decodeColumn (c i)| ≤ (e.colErr : ℝ)/(generatorScale : ℝ)^2 := by
    have hi : |(rawNumerator (old.v i.succ) (old.u i.succ) (old.v 0) (old.u 0) : ℝ) -
      ((node i.succ : ℝ)-(node 0 : ℝ))*(displacementFactor : ℝ)*(c i : ℝ)| ≤ (e.colErr : ℝ) := by
        exact_mod_cast (hrow i).2.1
    rw [cast_num, show (rawNumerator (old.v i.succ) (old.u i.succ) (old.v 0) (old.u 0) : ℝ) /
        (generatorScale : ℝ)^2 - ((node i.succ : ℝ)-(node 0 : ℝ))*decodeColumn (c i) =
        ((rawNumerator (old.v i.succ) (old.u i.succ) (old.v 0) (old.u 0) : ℝ) -
        ((node i.succ : ℝ)-(node 0 : ℝ))*(displacementFactor : ℝ)*(c i : ℝ)) / (generatorScale : ℝ)^2 by
          norm_num [decodeColumn,generatorScale,columnFactor,displacementFactor]
          ring, abs_div, abs_of_nonneg (sq_nonneg (generatorScale : ℝ))]
    exact div_le_div_of_nonneg_right hi (sq_nonneg _)
  let ev : Fin r → ℝ := fun l => decodeRadius (e.vRadius l)
  let eu : Fin r → ℝ := fun l => decodeRadius (e.uRadius l)
  let gv : Fin r → ℝ := fun l => (e.maxV l : ℝ)/(generatorScale : ℝ) + ev l
  let gu : Fin r → ℝ := fun l => (e.maxU l : ℝ)/(generatorScale : ℝ) + eu l
  let er : ℝ := (e.colErr : ℝ)/(generatorScale : ℝ)^2
  let cm : ℝ := (e.colMag : ℝ)/((generatorScale : ℝ)*(columnFactor : ℝ))
  have he : 0 ≤ er := by dsimp [er]; positivity
  have hlocal := quadratic_lower_of_roundedPivot
    (fun i => (node i : ℝ)) (decodeGenerator ∘ old.diag)
    (fun i l => decodeGenerator (old.v i l)) (fun i l => decodeGenerator (old.u i l))
    (decodeGenerator ∘ next.diag) (decodeColumn ∘ c) (fun i l => decodeGenerator (next.v i l)) (fun i l => decodeGenerator (next.u i l))
    ev eu gv gu cm er (decodeRadius e.diagRadius) (21/250) hpG
    (fun i j hij => hnode (by
      change (node i : ℝ) = (node j : ℝ) at hij
      exact_mod_cast hij))
    (by unfold decodeRadius; norm_num [generatorScale]; positivity) he
    (fun i => col_bound (hrow i).1) hcol (fun i => diag_bound (hrow i).2.2.1)
    (fun i l => update_bound ((hrow i).2.2.2 l).1)
    (fun i l => update_bound ((hrow i).2.2.2 l).2.1)
    (fun i l => gen_bound ((hrow i).2.2.2 l).2.2.1)
    (fun i l => gen_bound ((hrow i).2.2.2 l).2.2.2)
    hsep x
  dsimp only [Function.comp_apply] at hlocal
  have hm' : 2 * cm / decodeGenerator (old.diag 0) ≤ (e.colMul : ℝ) := by
    apply (div_le_iff₀ hpG).2
    unfold cm decodeGenerator
    norm_num [generatorScale,columnFactor] at hmulr ⊢
    linarith only [hmulr]
  have hcm : 2*cm*er/decodeGenerator (old.diag 0) ≤ er*(e.colMul : ℝ) := by
    rw [show 2*cm*er/decodeGenerator (old.diag 0) = (2*cm/decodeGenerator (old.diag 0))*er by ring, mul_comm er]
    exact mul_le_mul_of_nonneg_right hm' he
  have he' : er ≤ er * (e.colMul : ℝ) := by
    simpa using mul_le_mul_of_nonneg_left hmr he
  have hg : 2 * ∑ l, (ev l * gu l + eu l * gv l + ev l * eu l) =
      ((∑ l, (2 * e.vRadius l * e.maxU l + 2 * e.uRadius l * e.maxV l +
        3 * e.vRadius l * e.uRadius l) : ℕ) : ℝ) / (2 * (generatorScale : ℝ)^2) := generator_price e
  have hsplit : (offNumerator e : ℝ) / (2 * (generatorScale : ℝ)^2) =
      er * (e.colMul : ℝ) + 2 * ∑ l, (ev l * gu l + eu l * gv l + ev l * eu l) := by
    rw [hg, offNumerator]
    push_cast
    unfold er
    ring
  have hg0 : 0 ≤ 2 * ∑ l, (ev l * gu l + eu l * gv l + ev l * eu l) := by
    rw [hg]
    positivity
  have hoff : max er (2*cm*er/decodeGenerator (old.diag 0) +
      2 * ∑ l, (ev l * gu l + eu l * gv l + ev l * eu l)) ≤
      (offNumerator e : ℝ)/(2 * (generatorScale : ℝ)^2) := by
    rw [hsplit]
    exact max_le (he'.trans (le_add_of_nonneg_right hg0)) (add_le_add hcm le_rfl)
  have hprice := add_le_add (le_refl (decodeRadius e.diagRadius))
    (mul_le_mul_of_nonneg_right hoff (by norm_num : (0 : ℝ) ≤ 21/250))
  rw [local_price] at hprice
  have hmass : 0 ≤ ∑ i, (x i)^2 := Finset.sum_nonneg fun i _ => sq_nonneg _
  refine (mul_le_mul_of_nonneg_right (neg_le_neg hprice) hmass).trans ?_
  exact hlocal


/-- A checked integer pivot supplies one step of the finite residual chain. -/
theorem checkStep_chainStep {n : ℕ} (node : Fin (n+1) → ℤ)
    (old : RawState r (n+1)) (next : RawState r n) (c : Fin n → ℤ) (e : StepPrices r)
    (h : checkStep node old next c e) (hnode : Function.Injective node)
    (hsep : ∀ i, ∑ j, (|(node i : ℝ) - (node j : ℝ)|)⁻¹ ≤ 21/250) :
    0 < decodeGenerator (old.diag 0) ∧ 0 ≤ price e ∧
      ∀ x : Fin (n+1) → ℝ, -price e * ∑ i, (x i)^2 ≤ quadratic
        (decodeMatrix node old - reassemblePivot (decodeGenerator (old.diag 0))
          (decodeColumn ∘ c) (decodeMatrix (node ∘ Fin.succ) next)) x := by
  have hp : 0 < (old.diag 0 : ℝ) := by exact_mod_cast h.1
  exact ⟨div_pos hp (by norm_num [generatorScale]), by unfold price; positivity,
    checkStep_sound node old next c e h hnode hsep⟩

end
end GRWTSK.Algebra.LinearAlgebra.StructuredSchurIntegerReplay
