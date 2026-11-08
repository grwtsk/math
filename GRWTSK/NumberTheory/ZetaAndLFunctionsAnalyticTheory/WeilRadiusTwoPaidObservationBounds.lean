/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPaidLowerBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoObservedStage

/-!
# Radius-two paid intervals from arbitrary source-bound observations

The raw observations here are arbitrary rational centres and radii on the actual
1984-by-513 residual rectangle.  Their soundness compares every physical and
scalar-pole entry with `literalTrialResidualMatrix 2 (-1/2) 64 512 2048`.
The head intervals compare with the actual 64-mode bordered source at the same
physical shift.  Neither observation uses a `ScalarTables` parameter or requires
equality with the canonical 40-bit observations.

The signed interval arithmetic first reconstructs the two overlap terms of the
literal trial form.  The same rational reconstruction multiplies the observed
centres; its entrywise absolute value propagates the raw radii.  The exact Gram,
Young price 1/32, floor price 1/5 and complete remote allowance at L=2048,
J=8192, split 1/8 are then charged once.  The resulting intervals enclose a split
matrix with the same quadratic as `RadiusTwoObservedStage.paidLower` whenever
the reconstruction preserves every retained head coordinate and the pole.

A separately checked finite interval-sign packet can consume these intervals
through an explicit outward containment comparison.  This supplies the entry
bridge needed by an alternative rank-four observation packet without identifying
its observations or reconstruction with an older frozen packet.  The final stage
consumer still requires the actual source head/raw/remote comparisons, numerical
interval containment, exact retained-coordinate match, finite packet sign, and
the independent literal high floor.  No particular archived packet is bound by
this file, and no frozen reconstruction norm bound is reused.

The argument is the signed finite-sum and matrix version of the existing
scalar-table return; those returns share the same source quadratic identities
and are not independent analytic proofs.  Changing an observation radius, the
pole column, reconstruction or remote matrix requires the corresponding source
comparison again.  Independent analytical review and novelty assessment remain
pending.  Formal assurance and source-bound receipts are tracked separately in
grwtsk/noeaaeue `docs/verification.md`.
-/

set_option autoImplicit false
set_option maxRecDepth 4096
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPaidObservationBounds

open Matrix
open RadiusTwoCandidateEntries RadiusTwoTrialProjection
open OddTrialResidualMatrix OddInclusionWindow OddRemoteAllowanceMatrix
open OddSchurAccounting
open RadiusTwoPaidLowerBounds (symmetricBounds symmetricBounds_sound quadratic_symmetrized)
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.Algebra.LinearAlgebra.FiniteLowerAssembly
open GRWTSK.LinearAlgebra.SchurObserver

private abbrev residual : Matrix ResidualRows Trial ℝ :=
  literalTrialResidualMatrix 2 (-1 / 2) 64 512 2048

/-- The interval represented by an arbitrary rational centre and radius. -/
def rawBounds (centre radius : ℚ) : Bounds := (centre - radius, centre + radius)

theorem rawBounds_sound {centre radius : ℚ} {x : ℝ}
    (h : |x - (centre : ℝ)| ≤ (radius : ℝ)) :
    Encloses (rawBounds centre radius) x := by
  rw [abs_le] at h
  simp only [rawBounds, Encloses, Rat.cast_sub, Rat.cast_add]
  exact ⟨by linarith only [h.1], by linarith only [h.2]⟩

/-- Signed interval multiplication for an overlap row of the reconstruction. -/
def overlapProductBounds (centres radii : Matrix ResidualRows Trial ℚ)
    (X : Matrix Trial Head ℚ) (k : Fin 448) (j : Head) : Bounds :=
  sum Finset.univ (fun l => scale (X l j)
    (rawBounds (centres (overlapRow k) l) (radii (overlapRow k) l)))

theorem overlapProductBounds_sound (centres radii : Matrix ResidualRows Trial ℚ)
    (hEntry : ∀ i j, |residual i j - (centres i j : ℝ)| ≤ (radii i j : ℝ))
    (X : Matrix Trial Head ℚ) (k : Fin 448) (j : Head) :
    Encloses (overlapProductBounds centres radii X k j)
      ((residual.submatrix overlapRow id * X.map (Rat.castHom ℝ)) k j) := by
  change Encloses (overlapProductBounds centres radii X k j)
    (∑ l, residual (overlapRow k) l * (X l j : ℝ))
  simpa only [overlapProductBounds, mul_comm] using
    sum_sound Finset.univ (fun l _ => scale_sound (X l j)
      (rawBounds_sound (hEntry (overlapRow k) l)))

/-- Intervals for the split trial form, using actual head observations and the
same raw overlap rectangle that supplies the whole residual comparison. -/
def splitTrialBounds (head : Head → Head → Bounds)
    (centres radii : Matrix ResidualRows Trial ℚ) (X : Matrix Trial Head ℚ)
    (i j : Head) : Bounds :=
  add (add (head i j)
    (sum Finset.univ (fun k : Fin 448 => scale (X (overlapSlot k) j)
      (rawBounds (centres (overlapRow k) (headSlot i))
        (radii (overlapRow k) (headSlot i))))))
    (sum Finset.univ (fun k : Fin 448 => scale (X (overlapSlot k) i)
      (overlapProductBounds centres radii X k j)))

theorem splitTrialBounds_sound (head : Head → Head → Bounds)
    (hHead : ∀ i j, Encloses (head i j)
      (shiftedBlock (borderedSourceMatrix 2 64) poleShiftMetric (-1 / 2) i j))
    (centres radii : Matrix ResidualRows Trial ℚ)
    (hEntry : ∀ i j, |residual i j - (centres i j : ℝ)| ≤ (radii i j : ℝ))
    (X : Matrix Trial Head ℚ) (i j : Head) :
    Encloses (splitTrialBounds head centres radii X i j)
      (splitTrialUpper (X.map (Rat.castHom ℝ)) i j) := by
  have hCross := sum_sound (Finset.univ : Finset (Fin 448)) (fun k _ =>
    scale_sound (X (overlapSlot k) j) (rawBounds_sound (hEntry (overlapRow k) (headSlot i))))
  have hOverlap := sum_sound (Finset.univ : Finset (Fin 448)) (fun k _ =>
    scale_sound (X (overlapSlot k) i)
      (overlapProductBounds_sound centres radii hEntry X k j))
  unfold splitTrialBounds splitTrialUpper
  simp only [Matrix.add_apply, Matrix.mul_apply, Matrix.transpose_apply,
    Matrix.submatrix_apply, Matrix.map_apply, Rat.coe_castHom, id_eq, overlapHead] at *
  simpa only [mul_comm] using add_sound (add_sound (hHead i j) hCross) hOverlap

/-- Reconstruct the rational observed centres without changing their grid. -/
def observedRows (centres : Matrix ResidualRows Trial ℚ) (X : Matrix Trial Head ℚ) :
    Matrix ResidualRows Head ℚ := centres * X

/-- Exact squared sum of the propagated raw entry radii. -/
def observationPrice (radii : Matrix ResidualRows Trial ℚ) (X : Matrix Trial Head ℚ) : ℚ :=
  ∑ i : ResidualRows, ∑ j : Head,
    ((radii * Matrix.of (fun k l => |X k l|)) i j) ^ 2

theorem observedRows_cast (centres : Matrix ResidualRows Trial ℚ)
    (X : Matrix Trial Head ℚ) :
    (observedRows centres X).map (Rat.castHom ℝ) =
      centres.map (Rat.castHom ℝ) * X.map (Rat.castHom ℝ) := by
  unfold observedRows
  rw [Matrix.map_mul]

theorem observationPrice_cast (radii : Matrix ResidualRows Trial ℚ)
    (X : Matrix Trial Head ℚ) :
    (observationPrice radii X : ℝ) =
      RadiusTwoObservedResidual.observationPrice (radii.map (Rat.castHom ℝ))
        (X.map (Rat.castHom ℝ)) := by
  have habs : (Matrix.of (fun k l => |X k l|)).map (Rat.castHom ℝ) =
      Matrix.of (fun k l => |(X.map (Rat.castHom ℝ)) k l|) := by
    ext k l
    change (↑|X k l| : ℝ) = |(X k l : ℝ)|
    exact Rat.cast_abs _
  unfold observationPrice RadiusTwoObservedResidual.observationPrice
  push_cast
  congr 1
  funext i
  congr 1
  funext j
  have h := congrArg (fun A : Matrix ResidualRows Head ℝ => A i j)
    (Matrix.map_mul (L := radii) (M := Matrix.of (fun k l => |X k l|))
      (f := Rat.castHom ℝ))
  rw [habs] at h
  simpa only [Matrix.map_apply, Rat.coe_castHom] using congrArg (fun z : ℝ => z ^ 2) h

/-- The observed Gram and propagated radius price before division by the floor. -/
def observedCharge (centres radii : Matrix ResidualRows Trial ℚ)
    (X : Matrix Trial Head ℚ) : Matrix Head Head ℚ :=
  let rows := observedRows centres X
  (33 / 32 : ℚ) • (rows.transpose * rows) + (33 * observationPrice radii X) • 1

private theorem observedCharge_cast (centres radii : Matrix ResidualRows Trial ℚ)
    (X : Matrix Trial Head ℚ) (i j : Head) :
    (observedCharge centres radii X i j : ℝ) =
      ((1 + (1 / 32 : ℝ)) • reconstructionGram
          (centres.map (Rat.castHom ℝ) * X.map (Rat.castHom ℝ)) +
        (1 + (1 / 32 : ℝ)⁻¹) •
          (RadiusTwoObservedResidual.observationPrice (radii.map (Rat.castHom ℝ))
            (X.map (Rat.castHom ℝ)) • 1)) i j := by
  have hg := congrArg (fun A : Matrix Head Head ℝ => A i j)
    (Matrix.map_mul (L := (observedRows centres X).transpose)
      (M := observedRows centres X) (f := Rat.castHom ℝ))
  rw [show ((observedRows centres X).transpose).map (Rat.castHom ℝ) =
    ((observedRows centres X).map (Rat.castHom ℝ)).transpose by rfl,
    observedRows_cast] at hg
  change (↑(((observedRows centres X).transpose * observedRows centres X) i j) : ℝ) = _ at hg
  unfold observedCharge reconstructionGram
  by_cases hij : i = j
  · subst j
    simp only [Matrix.add_apply, Matrix.smul_apply, smul_eq_mul, Matrix.one_apply, ite_true,
      Rat.cast_add, Rat.cast_mul, Rat.cast_div, Rat.cast_ofNat, Rat.cast_one,
      observationPrice_cast, hg]
    ring
  · simp only [Matrix.add_apply, Matrix.smul_apply, smul_eq_mul, Matrix.one_apply, hij, ite_false,
      Rat.cast_add, Rat.cast_mul, Rat.cast_div, Rat.cast_ofNat, Rat.cast_zero,
      observationPrice_cast, hg]
    ring

/-- The split source matrix charged by the arbitrary raw observations. -/
def splitPaidLower (centres radii : Matrix ResidualRows Trial ℚ)
    (X : Matrix Trial Head ℚ) : Matrix Head Head ℝ :=
  splitTrialUpper (X.map (Rat.castHom ℝ)) - (5 : ℝ) •
    ((observedCharge centres radii X).map (Rat.castHom ℝ) +
      congruence (X.map (Rat.castHom ℝ))
        (completeRemoteMatrix 512 2048 8192 2 (1 / 8)))

/-- The interval split and the generic observed stage comparison have the same
quadratic when the reconstruction preserves the actual head and pole. -/
theorem quadratic_splitPaidLower (centres radii : Matrix ResidualRows Trial ℚ)
    (X : Matrix Trial Head ℚ) (v : Head → ℝ)
    (hmatch : ∀ i : Head, (X.map (Rat.castHom ℝ)).mulVec v (headSlot i) = v i) :
    quadratic (splitPaidLower centres radii X) v =
      quadratic (RadiusTwoObservedStage.paidLower (centres.map (Rat.castHom ℝ))
        (radii.map (Rat.castHom ℝ)) (X.map (Rat.castHom ℝ))) v := by
  have hCharge : (observedCharge centres radii X).map (Rat.castHom ℝ) =
      (1 + (1 / 32 : ℝ)) • reconstructionGram
        (centres.map (Rat.castHom ℝ) * X.map (Rat.castHom ℝ)) +
      (1 + (1 / 32 : ℝ)⁻¹) •
        (RadiusTwoObservedResidual.observationPrice (radii.map (Rat.castHom ℝ))
          (X.map (Rat.castHom ℝ)) • 1) := by
    ext i j
    exact observedCharge_cast centres radii X i j
  have hSub (A B : Matrix Head Head ℝ) : quadratic (A - B) v =
      quadratic A v - quadratic B v := by
    simp only [quadratic, Matrix.sub_mulVec, dotProduct_sub]
  unfold splitPaidLower RadiusTwoObservedStage.paidLower
  rw [hCharge, hSub, RadiusTwoTrialProjection.quadratic_splitTrialUpper _ _ hmatch,
    quadratic_assembleLowerMatrix, quadratic_smul]
  simp only [quadratic_add, quadratic_smul, zero_mul, sub_zero]
  ring

/-- Outward paid entries, preserving signed head/overlap products and charging
the complete remote matrix once. -/
def paidBounds (head : Head → Head → Bounds)
    (centres radii : Matrix ResidualRows Trial ℚ) (X : Matrix Trial Head ℚ)
    (remote : Head → Head → Bounds) (i j : Head) : Bounds :=
  sub (splitTrialBounds head centres radii X i j)
    (scale 5 (add (point (observedCharge centres radii X i j)) (remote i j)))

theorem paidBounds_sound (head : Head → Head → Bounds)
    (hHead : ∀ i j, Encloses (head i j)
      (shiftedBlock (borderedSourceMatrix 2 64) poleShiftMetric (-1 / 2) i j))
    (centres radii : Matrix ResidualRows Trial ℚ)
    (hEntry : ∀ i j, |residual i j - (centres i j : ℝ)| ≤ (radii i j : ℝ))
    (X : Matrix Trial Head ℚ) (remote : Head → Head → Bounds)
    (hRemote : ∀ i j, Encloses (remote i j)
      (congruence (X.map (Rat.castHom ℝ))
        (completeRemoteMatrix 512 2048 8192 2 (1 / 8)) i j)) (i j : Head) :
    Encloses (paidBounds head centres radii X remote i j)
      (splitPaidLower centres radii X i j) := by
  simpa only [paidBounds, splitPaidLower, Matrix.sub_apply, Matrix.smul_apply,
    Matrix.add_apply, Matrix.map_apply, Rat.coe_castHom, smul_eq_mul, Rat.cast_ofNat] using
    sub_sound (splitTrialBounds_sound head hHead centres radii hEntry X i j)
      (scale_sound 5 (add_sound (point_sound (observedCharge centres radii X i j))
        (hRemote i j)))

/-- An outward rational interval comparison transports an actual entry bound. -/
theorem enclosure_of_containment {inner outer : Bounds} {x : ℝ}
    (h : outer.1 ≤ inner.1 ∧ inner.2 ≤ outer.2) (hx : Encloses inner x) :
    Encloses outer x := by
  have hLo : (outer.1 : ℝ) ≤ (inner.1 : ℝ) := by exact_mod_cast h.1
  have hHi : (inner.2 : ℝ) ≤ (outer.2 : ℝ) := by exact_mod_cast h.2
  exact ⟨hLo.trans hx.1, hx.2.trans hHi⟩

/-- Return an arbitrary checked interval-sign packet to the generic observed
stage.  The packet's source containment and the actual high floor remain explicit. -/
theorem stageLower_one_of_intervalSign (head : Head → Head → Bounds)
    (hHead : ∀ i j, Encloses (head i j)
      (shiftedBlock (borderedSourceMatrix 2 64) poleShiftMetric (-1 / 2) i j))
    (centres radii : Matrix ResidualRows Trial ℚ)
    (hEntry : ∀ i j, |residual i j - (centres i j : ℝ)| ≤ (radii i j : ℝ))
    (X : Matrix Trial Head ℚ) (remote : Head → Head → Bounds)
    (hRemote : ∀ i j, Encloses (remote i j)
      (congruence (X.map (Rat.castHom ℝ))
        (completeRemoteMatrix 512 2048 8192 2 (1 / 8)) i j))
    (hmatch : ∀ (v : Head → ℝ) (i : Head),
      (X.map (Rat.castHom ℝ)).mulVec v (headSlot i) = v i)
    (packet : Head → Head → Bounds)
    (hCover : ∀ i j,
      (packet i j).1 ≤ (symmetricBounds (paidBounds head centres radii X remote) i j).1 ∧
      (symmetricBounds (paidBounds head centres radii X remote) i j).2 ≤ (packet i j).2)
    (hSign : ∀ A : Matrix Head Head ℝ, (∀ i j, Encloses (packet i j) (A i j)) →
      ∀ v : Head → ℝ, 0 ≤ quadratic A v)
    (hfloor : OddLiteralWindow.HighFloor 2 (-1 / 2) (1 / 5) 64) :
    OddLiteralCofinal.StageLower 1 := by
  refine RadiusTwoObservedStage.stageLower_one_of_paidLower
    (centres.map (Rat.castHom ℝ)) (radii.map (Rat.castHom ℝ)) hEntry
    (X.map (Rat.castHom ℝ)) (fun v i => hmatch v (.inl i))
    (fun v => hmatch v (.inr ())) hfloor ?_
  intro v
  have hEnclose := symmetricBounds_sound
    (paidBounds_sound head hHead centres radii hEntry X remote hRemote)
  have hPaid := hSign ((1 / 2 : ℝ) •
      (splitPaidLower centres radii X + (splitPaidLower centres radii X).transpose))
    (fun i j => enclosure_of_containment (hCover i j) (hEnclose i j)) v
  rw [quadratic_symmetrized, quadratic_splitPaidLower centres radii X v (hmatch v)] at hPaid
  exact hPaid

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPaidObservationBounds
