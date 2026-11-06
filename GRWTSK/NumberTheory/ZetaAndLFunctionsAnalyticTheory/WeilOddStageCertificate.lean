/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddInclusionWindow
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddLiteralCofinal
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteRealHeatCertificate
import GRWTSK.Combinatorics.Lossless

/-!
# Rational finite observations to the literal odd dyadic stage

The payload consists of finite rational matrices and scalar budgets. The
source comparison is separate: a whole high-complement floor, exact
head matching, observed trial error, every finite residual row, and the
complete remote allowance. Its statement is fixed by the original source
and never contains `StageLower` or the desired lower-matrix sign as a field.

The lower matrix is the existing `assembleLowerMatrix`. Either the existing
rational Gram checker or the existing complex Euler-heat theorem supplies
its sign. Casting preserves the complete matrix identity before applying
the literal whole-window return. The scalar pole is retained unchanged;
the stage shift acts on physical mass only. No endpoint constraint is added.

This formalizes composition, not existence of passing source packets. In
particular a positive finite head does not inhabit `SourceBound`, and
neither a codec nor a heat-coverage kernel inhabits `Accepted`.
Sources: the repository literal-window, residual, remote and cofinal
modules at c5648c5a280d1cbdf4f98b594a450aaa5e4969c9; supplied low-Schur
note, sections 2 and 6. Their historical assurance is not upgraded.
AI-assisted manual source. Elaboration, kernel replay, transitive axiom
audit and independent analytical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Matrix
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddStageCertificate

open OddRootProjection OddSineForm OddWrapEnergy OddLiteralWindow
open OddInclusionWindow OddResidualSourceComparison OddResidualMajorant
open OddWindowLowerAssembly OddLiteralCofinal
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.Algebra.LinearAlgebra.FiniteLowerAssembly
open GRWTSK.Algebra.LinearAlgebra.FiniteRealHeatCertificate
open GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory

/-- A finitely described observation, indexed by its literal source stage. -/
structure Data (j : ℕ) where
  N : ℕ
  M : ℕ
  L : ℕ
  J : ℕ
  reconstruction : Matrix (Fin M) (Fin N ⊕ Unit) ℚ
  upper : Matrix (Fin N ⊕ Unit) (Fin N ⊕ Unit) ℚ
  rowError : Matrix (Fin N ⊕ Unit) (Fin N ⊕ Unit) ℚ
  remote : Matrix (Fin N ⊕ Unit) (Fin N ⊕ Unit) ℚ
  rows : Matrix (Fin (L - N)) (Fin N ⊕ Unit) ℚ
  upperError : ℚ
  highFloor : ℚ
  young : ℚ
  remoteSplit : ℚ

def coordinates {N : ℕ} (u : Fin N → ℝ) (a : ℝ) : Fin N ⊕ Unit → ℝ :=
  Sum.elim u (fun _ => a)

def Data.trial {j : ℕ} (p : Data j) (u : Fin p.N → ℝ) (a : ℝ) : ℕ → ℝ :=
  inclusionTrial ((p.reconstruction.map (Rat.castHom ℝ)).mulVec (coordinates u a))

def Data.lower {j : ℕ} (p : Data j) : Matrix (Fin p.N ⊕ Unit) (Fin p.N ⊕ Unit) ℚ :=
  assembleLowerMatrix p.upper (p.rows.transpose * p.rows)
    ((1 + p.young⁻¹) • p.rowError + p.remote)
    p.upperError p.highFloor (1 + p.young)

/-- Analytic comparisons to the unchanged source, independently of the finite sign. -/
structure SourceBound {j : ℕ} (p : Data j) : Prop where
  head_le_trial : p.N ≤ p.M
  trial_le_rows : p.M ≤ p.L
  rows_pos : 0 < p.L
  rows_le_remote : p.L ≤ p.J
  remoteSplit_pos : 0 < p.remoteSplit
  highFloor_pos : 0 < p.highFloor
  young_pos : 0 < p.young
  floor : HighFloor ((j : ℝ) + 1) (-((1 / 2 : ℝ) ^ j)) (p.highFloor : ℝ) p.N
  head_matches : ∀ u a (i : Fin p.N), p.trial u a (i.val + 1) = u i
  trial_error : ∀ u a,
    |shiftedOddBorderedEnergy ((j : ℝ) + 1) (-((1 / 2 : ℝ) ^ j))
      (finiteSine ((j : ℝ) + 1) (fun i : Fin p.M => p.trial u a (i.val + 1))) a -
        quadratic (p.upper.map (Rat.castHom ℝ)) (coordinates u a)| ≤
      (p.upperError : ℝ) * ∑ i, (coordinates u a i) ^ 2
  row_error : ∀ u a,
    (∑ i : Fin (p.L - p.N),
      (literalAugmentedRow p.M ((j : ℝ) + 1) (p.trial u a) a
        (-((1 / 2 : ℝ) ^ j)) (p.N + 1 + i.val) -
          (p.rows.map (Rat.castHom ℝ)).mulVec (coordinates u a) i) ^ 2) ≤
      quadratic (p.rowError.map (Rat.castHom ℝ)) (coordinates u a)
  remote_error : ∀ u a,
    completeRemoteAllowance p.M p.L p.J ((j : ℝ) + 1)
      (p.trial u a) a (p.remoteSplit : ℝ) ≤
      quadratic (p.remote.map (Rat.castHom ℝ)) (coordinates u a)

theorem Data.lower_realize {j : ℕ} (p : Data j) :
    p.lower.map (Rat.castHom ℝ) =
      assembleLowerMatrix (p.upper.map (Rat.castHom ℝ))
        ((p.rows.map (Rat.castHom ℝ)).transpose * p.rows.map (Rat.castHom ℝ))
        ((1 + (p.young : ℝ)⁻¹) • p.rowError.map (Rat.castHom ℝ) +
          p.remote.map (Rat.castHom ℝ))
        (p.upperError : ℝ) (p.highFloor : ℝ) (1 + (p.young : ℝ)) := by
  unfold Data.lower
  rw [assembleLowerMatrix_realizeRat, Matrix.map_mul, Matrix.transpose_map]
  congr 1
  · ext i k
    simp only [Matrix.map_apply, Matrix.add_apply, Matrix.smul_apply, smul_eq_mul,
      Rat.coe_castHom, Rat.cast_add, Rat.cast_mul, Rat.cast_inv, Rat.cast_one]
  · push_cast

theorem stageLower_of_lower_nonneg {j : ℕ} (p : Data j) (hs : SourceBound p)
    (hpositive : ∀ v, 0 ≤ quadratic (p.lower.map (Rat.castHom ℝ)) v) : StageLower j := by
  intro f hf hm ho hsupport he
  apply shiftedOddWeilEnergy_nonneg_of_assembledLower hs.head_le_trial hs.trial_le_rows
    hs.rows_pos hs.rows_le_remote ((j : ℝ) + 1) (by positivity)
    (-((1 / 2 : ℝ) ^ j)) (p.remoteSplit : ℝ) (p.highFloor : ℝ)
    (p.young : ℝ) (p.upperError : ℝ)
    (by exact_mod_cast hs.remoteSplit_pos) (by exact_mod_cast hs.highFloor_pos)
    (by exact_mod_cast hs.young_pos) hs.floor p.trial hs.head_matches
    (p.upper.map (Rat.castHom ℝ)) (p.rowError.map (Rat.castHom ℝ))
    (p.remote.map (Rat.castHom ℝ)) (p.rows.map (Rat.castHom ℝ))
    hs.trial_error hs.row_error hs.remote_error ?_ hf hm ho hsupport he
  intro v
  simpa only [p.lower_realize] using hpositive v

/-- No finite constraints are used to conceal missing directions. -/
def Data.problem {j : ℕ} (p : Data j) :
    Problem ℚ (Fin p.N ⊕ Unit) Empty Empty where
  target := p.lower
  equalities e := nomatch e
  inequalities e := nomatch e

theorem stageLower_of_checkedGram {j r : ℕ} (p : Data j) (hs : SourceBound p)
    (w : Certificate ℚ (Fin p.N ⊕ Unit) Empty Empty (Fin r))
    (hw : check p.problem w = true) : StageLower j := by
  apply stageLower_of_lower_nonneg p hs
  intro v
  exact checked_realizeRat_nonneg p.problem w hw v
    ⟨fun e => nomatch e, fun e => nomatch e⟩

theorem stageLower_of_eulerHeat {j : ℕ} (p : Data j) (hs : SourceBound p)
    (w : Witness (p.lower.map (Rat.castHom ℝ))) : StageLower j :=
  stageLower_of_lower_nonneg p hs w.nonnegative

/-- Finite Gram data are separate from the theorem that the source bounds hold. -/
structure Packet (j : ℕ) where
  data : Data j
  gramRows : ℕ
  gram : Certificate ℚ (Fin data.N ⊕ Unit) Empty Empty (Fin gramRows)

def Packet.Accepted {j : ℕ} (p : Packet j) : Prop :=
  SourceBound p.data ∧ check p.data.problem p.gram = true

theorem Packet.stageLower {j : ℕ} (p : Packet j) (h : p.Accepted) : StageLower j :=
  stageLower_of_checkedGram p.data h.1 p.gram h.2

/-- The stage index is part of the encoded object. -/
abbrev Payload := Σ j : ℕ, Packet j

theorem stageLower_of_lossless_readback {Code : Type*} (code : Lossless Payload Code)
    (original decoded : Payload)
    (hread : code.decode (code.encode original) = some decoded)
    (hvalid : decoded.2.Accepted) : StageLower original.1 := by
  have heq : decoded = original := code.decoded_eq_source hread
  subst decoded
  exact original.2.stageLower hvalid

end GRWTSK.NumberTheory.WeilQuadraticForm.OddStageCertificate
