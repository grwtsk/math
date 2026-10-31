/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib measurable equivalences and product measures retain upstream attribution
and Apache-2.0 licensing. -/
import GRWTSK.MeasureAndIntegration.TwoArcKernelProduct

/-!
# The actual product measure of two-arc history coordinates

Coordinates stay grouped as ((x,u),(y,v)); no endpoint/internal reassociation
is implicit. This concerns the unweighted product measure, not independence
under the cyclic Gibbs density. SOURCE_PROOF_CANDIDATE; compilation, fresh
replay, transitive axioms and expected-interface checks NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Integration.TwoArcHistoryMeasure
open MeasureTheory
open GRWTSK.Analysis.Integration.TwoArcKernelProduct
variable {X : Type*} [MeasurableSpace X]

/-- Prepending one endpoint is the inverse of the maintained first-coordinate split. -/
def segmentEquiv (p : ℕ) : (X × (Fin p → X)) ≃ᵐ (Fin (p+1) → X) :=
  (MeasurableEquiv.piFinSuccAbove (fun _ : Fin (p+1) => X) 0).symm

/-- Assemble the two contiguous segments in their original coordinate order. -/
def historyEquiv (p q : ℕ) :
    ((X × (Fin p → X)) × (X × (Fin q → X))) ≃ᵐ
      (Fin ((p+1)+(q+1)) → X) :=
  ((MeasurableEquiv.prodCongr (segmentEquiv p) (segmentEquiv q)).trans
    (MeasurableEquiv.sumPiEquivProdPi (fun _ : Fin (p+1) ⊕ Fin (q+1) => X)).symm).trans
    (MeasurableEquiv.piCongrLeft (fun _ : Fin ((p+1)+(q+1)) => X) finSumFinEquiv)

theorem segmentEquiv_apply (p : ℕ) (x : X) (u : Fin p → X) :
    segmentEquiv p (x,u) = Fin.cons x u := by
  simp only [segmentEquiv, MeasurableEquiv.piFinSuccAbove_symm_apply,
    Fin.insertNthEquiv, Fin.insertNth_zero, Equiv.coe_fn_mk]

/-- The measurable construction assembles exactly the previously defined history. -/
theorem historyEquiv_apply (p q : ℕ) (x y : X) (u : Fin p → X) (v : Fin q → X) :
    historyEquiv p q ((x,u),(y,v)) = history p q x y u v := by
  ext i
  cases i using Fin.addCases with
  | left i =>
    simp [historyEquiv, history, segmentEquiv_apply, MeasurableEquiv.piCongrLeft,
      MeasurableEquiv.sumPiEquivProdPi, finSumFinEquiv_symm_apply_castAdd]
  | right i =>
    simp [historyEquiv, history, segmentEquiv_apply, MeasurableEquiv.piCongrLeft,
      MeasurableEquiv.sumPiEquivProdPi, finSumFinEquiv_symm_apply_natAdd]

variable (μ : Measure X) [IsProbabilityMeasure μ]

theorem segment_preserving (p : ℕ) :
    MeasurePreserving (segmentEquiv (X := X) p)
      (μ.prod (Measure.pi (fun _ : Fin p => μ)))
      (Measure.pi (fun _ : Fin (p+1) => μ)) := by
  exact (measurePreserving_piFinSuccAbove (fun _ : Fin (p+1) => μ) 0).symm

/-- The actual homogeneous product measure is preserved with its exact association. -/
theorem history_preserving (p q : ℕ) :
    MeasurePreserving (historyEquiv (X := X) p q)
      ((μ.prod (Measure.pi (fun _ : Fin p => μ))).prod
        (μ.prod (Measure.pi (fun _ : Fin q => μ))))
      (Measure.pi (fun _ : Fin ((p+1)+(q+1)) => μ)) := by
  exact (measurePreserving_piCongrLeft
    (fun _ : Fin ((p+1)+(q+1)) => μ) finSumFinEquiv).comp
    ((measurePreserving_sumPiEquivProdPi_symm
      (fun _ : Fin (p+1) ⊕ Fin (q+1) => μ)).comp
      ((segment_preserving μ p).prod (segment_preserving μ q)))

end GRWTSK.Analysis.Integration.TwoArcHistoryMeasure
