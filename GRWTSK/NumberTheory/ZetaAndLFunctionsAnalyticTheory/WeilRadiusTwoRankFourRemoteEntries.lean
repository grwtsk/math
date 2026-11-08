/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Formal assurance is tracked in grwtsk/noeaaeue docs/verification.md with
exact-source receipts. Independent analytical review and novelty assessment
remain pending. This is a source-bound finite component, not a high-floor,
whole-window, cofinal, RH or Dirichlet-GRH theorem.
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourRemoteInteger
import Batteries.Tactic.OpenPrivate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoSchurPaidReconstruction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRemoteDyadicProducts
import R2RemoteInputBindingsAll
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRankFourRemoteScalars

/-!
# Six source-bound remote observations of the radius-two rank-four reconstruction

The consumer is a complete remote-congruence comparison for the actual
maintained rank-four reconstruction. This module discharges six selected
source observations: the signed first traces at physical head coordinates
0 and 63 and the pole, and the physical weighted-Gram corners (0,0), (0,pole),
and (pole,pole). All quantifiers remain on these three-element selectors.

First, six literal array identities identify the copied integer factors and
64-bit endpoint/weight tables with their actual source declarations. The
common 24-bit map identifies the integer coefficient matrix with the actual
rational reconstruction, including exact retained head and pole rows. The
closed `InputTables.Sound 64` premise combines the signed first-trace and
physical remainder bounds with the three checked scalar moments. Its boundary
recipe retains 1024 terms and the proved positive tail; its prime inventory
extends through mode 8192, with complete linear and derivative tail allowances.

The primary argument is interval linearity: signed centres use coefficients,
radii use their absolute values, and weighted-Gram radii use absolute values
of the actual rank-four products. `project_sound` returns these quantities to
the source before exact integer-product equalities replace their values. The
first endpoint precision is 24+64+1 = 89; the Gram precision is 2*24+64+1 = 113.
The negative scalar pole belongs to the signed trace, while the Gram includes
physical modes only. Dropping that sign or adding a pole weight would change
the source. The exact array identities, rather than numerical resemblance,
are the comparison that licenses this return.

The archived scalar checks share the original boundary, prime, and tail
lemmas. Exact integer arithmetic is an additional finite check, not a second
independent analytic proof. This 64-bit/K1024 recipe is not identified with
the separate 45-bit/K2048 recipe. The remaining first-vector and Gram entries,
the assembled complete remote congruence, containment in the paid packet,
the 1/5 high floor at N=64, and the whole-window/cofinal theorem remain open.
Neither the old-X products nor its old 2/3 residual bound is reused here.
Novelty and independent analytical review remain unassessed. Source adaptation
and symbolic proof assembly were AI assisted; kernel verification is a separate
source-bound evidence facet recorded by the external verification receipts.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 10000000
noncomputable section
namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourRemoteEntries
open Matrix
open GRWTSK.NumberTheory.WeilQuadraticForm
open RadiusTwoCandidateEntries RadiusTwoRemoteProjection RadiusTwoRemoteDyadicProducts
open GRWTSK.Algebra.LinearAlgebra.FiniteDyadicIntervalProducts
open GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open private middleNumerator from
  GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoSchurPaidReconstruction

def integerX : Matrix Trial Head ℤ
  | .inl i, .inl j => if h : i.val < 64 then
      if i.val = j.val then 2^24 else 0
    else middleNumerator ⟨i.val-64,by have := i.isLt; omega⟩ (.inl j)
  | .inl i, .inr _ => if h : i.val < 64 then 0
    else middleNumerator ⟨i.val-64,by have := i.isLt; omega⟩ (.inr ())
  | .inr _, .inl _ => 0
  | .inr _, .inr _ => 2^24

/-- Exact source arrays; no copied array is assumed equal. -/
theorem factor_left_source : RadiusTwoSchurPaidReconstructionData.left = RadiusTwoRankFourRemoteInteger.left := rfl
theorem factor_right_source : RadiusTwoSchurPaidReconstructionData.right = RadiusTwoRankFourRemoteInteger.right := rfl
theorem first_lower_array_source : R2RemoteTrace.firstLowerData = RadiusTwoRankFourRemoteInteger.firstLowerData := rfl
theorem first_upper_array_source : R2RemoteTrace.firstUpperData = RadiusTwoRankFourRemoteInteger.firstUpperData := rfl
theorem weight_centre_array_source : R2RemoteGramCentre.weightData = RadiusTwoRankFourRemoteInteger.weightCentreData := rfl
theorem weight_radius_array_source : R2RemoteGramRadius.weightData = RadiusTwoRankFourRemoteInteger.weightRadiusData := rfl

theorem coefficient_source : integerX = RadiusTwoRankFourRemoteInteger.coeff := rfl

theorem integerX_map : integerX.map (dyadic 24) =
    RadiusTwoSchurPaidReconstruction.reconstructionQ := by
  ext i j
  rcases i with i | ⟨⟩ <;> rcases j with j | ⟨⟩
  · simp only [Matrix.map_apply, integerX, RadiusTwoSchurPaidReconstruction.reconstructionQ]
    split_ifs <;> norm_num [dyadic, RadiusTwoSchurPaidReconstruction.reconstructionScale,
      RadiusTwoSchurPaidReconstruction.reconstructionBits]
  · simp only [Matrix.map_apply, integerX, RadiusTwoSchurPaidReconstruction.reconstructionQ]
    split_ifs <;> norm_num [dyadic, RadiusTwoSchurPaidReconstruction.reconstructionScale,
      RadiusTwoSchurPaidReconstruction.reconstructionBits]
  · norm_num [integerX, Matrix.map_apply, RadiusTwoSchurPaidReconstruction.reconstructionQ, dyadic]
  · norm_num [integerX, Matrix.map_apply, RadiusTwoSchurPaidReconstruction.reconstructionQ, dyadic]

theorem integerX_real : (integerX.map (dyadic 24)).map (Rat.castHom ℝ) =
    RadiusTwoSchurPaidReconstruction.reconstruction := by
  rw [integerX_map]
  rfl

def inputs : InputTables :=
  ⟨R2RemoteInputBindings.firstLower, R2RemoteInputBindings.firstUpper,
    R2RemoteInputBindings.weightLower, R2RemoteInputBindings.weightUpper,
    RadiusTwoRankFourRemoteScalars.storedC11, RadiusTwoRankFourRemoteScalars.storedC12,
    RadiusTwoRankFourRemoteScalars.storedC22⟩

theorem inputs_sound : inputs.Sound 64 :=
  ⟨R2RemoteInputBindings.first_sound, R2RemoteInputBindings.weight_sound,
    RadiusTwoRankFourRemoteScalars.stored11_sound, RadiusTwoRankFourRemoteScalars.stored12_sound,
    RadiusTwoRankFourRemoteScalars.stored22_sound⟩


theorem first_lower_source : inputs.firstLower = RadiusTwoRankFourRemoteInteger.firstLower := by
  funext t
  rcases t with t | ⟨⟩ <;> rfl

theorem first_upper_source : inputs.firstUpper = RadiusTwoRankFourRemoteInteger.firstUpper := by
  funext t
  rcases t with t | ⟨⟩ <;> rfl

theorem weight_centre_source (t : Fin 512) :
    inputs.weightLower t+inputs.weightUpper t = RadiusTwoRankFourRemoteInteger.weightCentre t := by
  change ((R2RemoteGramCentre.weightValues t-R2RemoteGramRadius.weightValues t)/2 +
    (R2RemoteGramCentre.weightValues t+R2RemoteGramRadius.weightValues t)/2) = _
  change ((RadiusTwoRankFourRemoteInteger.weightCentre t-RadiusTwoRankFourRemoteInteger.weightRadius t)/2 +
    (RadiusTwoRankFourRemoteInteger.weightCentre t+RadiusTwoRankFourRemoteInteger.weightRadius t)/2) = _
  exact (RadiusTwoRankFourRemoteInteger.weight_identities t).1

theorem weight_radius_source (t : Fin 512) :
    inputs.weightUpper t-inputs.weightLower t = RadiusTwoRankFourRemoteInteger.weightRadius t := by
  change ((R2RemoteGramCentre.weightValues t+R2RemoteGramRadius.weightValues t)/2 -
    (R2RemoteGramCentre.weightValues t-R2RemoteGramRadius.weightValues t)/2) = _
  change ((RadiusTwoRankFourRemoteInteger.weightCentre t+RadiusTwoRankFourRemoteInteger.weightRadius t)/2 -
    (RadiusTwoRankFourRemoteInteger.weightCentre t-RadiusTwoRankFourRemoteInteger.weightRadius t)/2) = _
  exact (RadiusTwoRankFourRemoteInteger.weight_identities t).2

def trialHead (k : Fin 3) : Head :=
  if k.val=0 then .inl 0 else if k.val=1 then .inl 63 else .inr ()
def pairLeft (k : Fin 3) : Head := if k.val<2 then .inl 0 else .inr ()
def pairRight (k : Fin 3) : Head := if k.val=0 then .inl 0 else .inr ()

def firstCentre (k : Fin 3) : ℤ := if k.val=0 then (-1406194160135410479080695408) else if k.val=1 then 147587331416188742022533554 else (-742062250372367686351974258)
def firstRadius (k : Fin 3) : ℤ := if k.val=0 then 26497391559108196971301516 else if k.val=1 then 18484950127970219887363064 else 13952230496815344305723128
def gramCentre (k : Fin 3) : ℤ := if k.val=0 then 64739786067446068506062528466474788233 else if k.val=1 then 34129884746395765127071952188535616193 else 18024565867686901622077111182526455590
def gramRadius (k : Fin 3) : ℤ := if k.val=0 then 155186829267092880982053320157577973 else if k.val=1 then 81963880065662236829237758466881297 else 43290798293580348948387347058187666

theorem first_products : ∀ k : Fin 3,
    integerX.transpose.mulVec (fun t => inputs.firstLower t + inputs.firstUpper t) (trialHead k) = firstCentre k ∧
    (Matrix.of fun j t => |integerX t j| : Matrix Head Trial ℤ).mulVec
      (fun t => inputs.firstUpper t-inputs.firstLower t) (trialHead k) = firstRadius k := by
  intro k
  rw [coefficient_source, first_lower_source, first_upper_source]
  have h := RadiusTwoRankFourRemoteInteger.first_products k
  simpa only [Matrix.mulVec, dotProduct, Matrix.transpose, Matrix.of_apply,
    trialHead, RadiusTwoRankFourRemoteInteger.trialHead, firstCentre, firstRadius,
    RadiusTwoRankFourRemoteInteger.firstCentre, RadiusTwoRankFourRemoteInteger.firstRadius,
    RadiusTwoRankFourRemoteInteger.firstCentreValue, RadiusTwoRankFourRemoteInteger.firstRadiusValue,
    ← Int.natCast_natAbs, Int.ofNat_eq_natCast] using h


theorem gram_products : ∀ k : Fin 3,
    weightedGram (physicalRows integerX)
      (fun t => inputs.weightLower t+inputs.weightUpper t) (pairLeft k) (pairRight k) = gramCentre k ∧
    weightedGram (Matrix.of fun t j => |physicalRows integerX t j|)
      (fun t => inputs.weightUpper t-inputs.weightLower t) (pairLeft k) (pairRight k) = gramRadius k := by
  intro k
  have hc : (fun t => inputs.weightLower t+inputs.weightUpper t) =
      RadiusTwoRankFourRemoteInteger.weightCentre := funext weight_centre_source
  have hr : (fun t => inputs.weightUpper t-inputs.weightLower t) =
      RadiusTwoRankFourRemoteInteger.weightRadius := funext weight_radius_source
  rw [coefficient_source, hc, hr]
  have h := RadiusTwoRankFourRemoteInteger.gram_products k
  simpa only [weightedGram, physicalRows, Matrix.mul_apply, Matrix.transpose_apply,
    Matrix.of_apply, pairLeft, pairRight, RadiusTwoRankFourRemoteInteger.pairLeft,
    RadiusTwoRankFourRemoteInteger.pairRight, gramCentre, gramRadius, RadiusTwoRankFourRemoteInteger.gramCentre,
    RadiusTwoRankFourRemoteInteger.gramRadius, RadiusTwoRankFourRemoteInteger.gramCentreValue,
    RadiusTwoRankFourRemoteInteger.gramRadiusValue, ← Int.natCast_natAbs, Int.ofNat_eq_natCast] using h


theorem first_source (k : Fin 3) :
    Encloses (endpoints 89 (firstCentre k-firstRadius k) (firstCentre k+firstRadius k))
      (RadiusTwoSchurPaidReconstruction.reconstruction.transpose.mulVec
        (OddRemoteAllowanceMatrix.firstTraceRow 512 2) (trialHead k)) := by
  have h := (project_sound 64 24 integerX inputs_sound).first (trialHead k)
  change Encloses (endpoints 89
    (integerX.transpose.mulVec (fun t => inputs.firstLower t+inputs.firstUpper t) (trialHead k) -
      (Matrix.of fun j t => |integerX t j| : Matrix Head Trial ℤ).mulVec
        (fun t => inputs.firstUpper t-inputs.firstLower t) (trialHead k))
    (integerX.transpose.mulVec (fun t => inputs.firstLower t+inputs.firstUpper t) (trialHead k) +
      (Matrix.of fun j t => |integerX t j| : Matrix Head Trial ℤ).mulVec
        (fun t => inputs.firstUpper t-inputs.firstLower t) (trialHead k))) _ at h
  rw [(first_products k).1,(first_products k).2,integerX_real] at h
  exact h

theorem gram_source (k : Fin 3) :
    Encloses (endpoints 113 (gramCentre k-gramRadius k) (gramCentre k+gramRadius k))
      (congruence RadiusTwoSchurPaidReconstruction.reconstruction
        (OddRemoteAllowanceMatrix.remainderDiagonal 512 2048 2) (pairLeft k) (pairRight k)) := by
  have h := (project_sound 64 24 integerX inputs_sound).remainder (pairLeft k) (pairRight k)
  change Encloses (endpoints 113
    (weightedGram (physicalRows integerX) (fun t => inputs.weightLower t+inputs.weightUpper t)
       (pairLeft k) (pairRight k) - weightedGram (Matrix.of fun t j => |physicalRows integerX t j|)
       (fun t => inputs.weightUpper t-inputs.weightLower t) (pairLeft k) (pairRight k))
    (weightedGram (physicalRows integerX) (fun t => inputs.weightLower t+inputs.weightUpper t)
       (pairLeft k) (pairRight k) + weightedGram (Matrix.of fun t j => |physicalRows integerX t j|)
       (fun t => inputs.weightUpper t-inputs.weightLower t) (pairLeft k) (pairRight k))) _ at h
  rw [(gram_products k).1,(gram_products k).2,integerX_real] at h
  exact h

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourRemoteEntries
