/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and upstream geometric sources retain their authorship and licenses.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.FiniteLabelledPickupCocycle
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMScaleResidueHilbertAttachment
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMSelectedSignedWaveReturn
import Mathlib.Analysis.InnerProductSpace.l2Space
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Tactic

/-!
# A direct labelled-to-selected Hilbert *isometry* with winding retained

For an injection e between index sets and a finite source type, the finite
Euclidean coordinate vector x is sent to the l2 sum of `lp.single 2 (e i)
(x i)` at DISTINCT destination addresses. The norm is exactly preserved:
`lp.norm_sum_single` plus injectivity proves this without a supplied
isometry axiom or a uniform-in-scale arithmetic bound.

The source is the ACTUAL labelled finite Hilbert state C_j = L2 of the
original finite integer inventory, twice: once for latent Mobius coefficients,
once for observed pickupResponse. Mathlib's existing PiLp L2 sum/product
isometry identifies it with finite coefficients indexed by the disjoint sum.

For the ACTUAL CM selected H, reserve the initial finite basis-stage indices
0,...,rank-1 for the already constructed genuine original rational Betti
cycle classes. Place all source latent and observed coordinates at DISTINCT
later stage addresses `rank+i` and `rank+2^j+i`, always using residue zero.
Thus this is a source-preserving injective *address* comparison, not a
periodization or a claim that the CM Betti metric is canonical. It must NOT
be confused with the earlier lossy additive-residue wavepacket. There is no
isometry claim between full arbitrary Betti and labelled Hilbert spaces.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledAddressIsometry

open _root_.CategoryTheory _root_.AlgebraicGeometry
open OAI.AlgebraicGeometry
open OAI.AlgebraicGeometry.ComplexPoint
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMGeometricCycleHilbert
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleResidueHilbertAttachment
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSelectedSignedWaveReturn
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.FiniteLabelledPickupCocycle

universe u v
variable {ι : Type u} {α : Type v} [Fintype ι] [DecidableEq ι] [DecidableEq α]

/-- A linear finite-support placement of source coordinates into l2. -/
def finiteAddressLinear (e : ι ↪ α) :
    EuclideanSpace ℂ ι →ₗ[ℂ] lp (fun _ : α => ℂ) 2 where
  toFun x := ∑ i : ι, lp.single 2 (e i) (x i)
  map_add' x y := by
    change (∑ i : ι, lp.single 2 (e i) ((x + y) i)) = _
    simp only [PiLp.add_apply, lp.single_add, Finset.sum_add_distrib]
  map_smul' c x := by
    change (∑ i : ι, lp.single 2 (e i) ((c • x) i)) = _
    simp only [PiLp.smul_apply, lp.single_smul, Finset.smul_sum]

/-- The source coordinate is unchanged at its own UNIQUE address. -/
theorem finiteAddressLinear_apply (e : ι ↪ α)
    (x : EuclideanSpace ℂ ι) (i : ι) :
    finiteAddressLinear e x (e i) = x i := by
  classical
  simp [finiteAddressLinear, lp.single_apply, e.injective.eq_iff]

/-- Extend finite values to the image of e, zero off that image. This is
solely used for the norm proof, not as an arbitrary inverse decoder. -/
private def addressValue (e : ι ↪ α) (x : EuclideanSpace ℂ ι)
    (a : α) : ℂ :=
  if h : ∃ i : ι, e i = a then x (Classical.choose h) else 0

private theorem addressValue_at (e : ι ↪ α) (x : EuclideanSpace ℂ ι)
    (i : ι) : addressValue e x (e i) = x i := by
  classical
  dsimp [addressValue]
  split_ifs with h
  · have he : Classical.choose h = i :=
      e.injective (Classical.choose_spec h)
    rw [he]
  · exact (h ⟨i, rfl⟩).elim

/-- Actual finite-coordinate norm identity: no quotient, cancellation,
nonunit deletion or unpriced Gram conversion is made. -/
theorem finiteAddressLinear_norm_sq (e : ι ↪ α)
    (x : EuclideanSpace ℂ ι) :
    ‖finiteAddressLinear e x‖ ^ 2 = ‖x‖ ^ 2 := by
  classical
  let f := addressValue e x
  have hf (i : ι) : f (e i) = x i := addressValue_at e x i
  have hsum : finiteAddressLinear e x =
      ∑ a ∈ (Finset.univ.image e), lp.single 2 a (f a) := by
    unfold finiteAddressLinear
    rw [Finset.sum_image (fun i _ k _ h => e.injective h)]
    apply Finset.sum_congr rfl
    intro i _
    rw [hf]
  rw [hsum, lp.norm_sum_single (by norm_num : 0 < (2 : ℝ≥0∞).toReal)]
  rw [Finset.sum_image (fun i _ k _ h => e.injective h)]
  simpa only [hf] using (EuclideanSpace.norm_sq_eq x).symm

/-- A true *isometric* linear embedding, with explicit complete-Hilbert
metric and source-coordinate theorem. -/
def finiteAddressIsometry (e : ι ↪ α) :
    EuclideanSpace ℂ ι →ₗᵢ[ℂ] lp (fun _ : α => ℂ) 2 where
  toLinearMap := finiteAddressLinear e
  norm_map' x := by
    have h := finiteAddressLinear_norm_sq e x
    have hn1 : 0 ≤ ‖finiteAddressLinear e x‖ := norm_nonneg _
    have hn2 : 0 ≤ ‖x‖ := norm_nonneg _
    nlinarith

/-- The original double finite-inventory Hilbert product is Mathlib-
isometric to a finite Euclidean space indexed by TWO disjoint copies of
its unchanged integer labels. -/
def labelledFiniteCoordinates (j : ℕ) :
    LabelledState j ≃ₗᵢ[ℂ]
      EuclideanSpace ℂ (SourceLabels j ⊕ SourceLabels j) :=
  (PiLp.sumPiLpEquivProdLpPiLp (𝕜 := ℂ) (2 : ℝ≥0∞)
     (fun _ : SourceLabels j ⊕ SourceLabels j => ℂ)).symm

/-- The source's latent ORIGINAL integer coefficients are retained under
the Mathlib sum/product isometry; no residue quotient is involved. -/
theorem labelledFiniteCoordinates_inl (j : ℕ)
    (z : LabelledState j) (i : SourceLabels j) :
    labelledFiniteCoordinates j z (.inl i) = z.fst i := by
  rfl

/-- Observed literal pickup responses occupy a separate channel. -/
theorem labelledFiniteCoordinates_inr (j : ℕ)
    (z : LabelledState j) (i : SourceLabels j) :
    labelledFiniteCoordinates j z (.inr i) = z.snd i := by
  rfl

section CM
variable (X : Over (Spec ↧ℂ)) [IsIntegral X.left] [Smooth X.hom]
  [OAI.AlgebraicGeometry.Foundations.ProjectiveSpaceIs.IsProjective X.hom]
  [GrpObj X]
variable (p : ℕ) [FiniteDimensional ℚ (OriginalBetti X p)]
variable (d : ℕ) [NeZero d]

/-- Explicit disjoint addresses beyond ALL selected Betti basis stages.
Retain the integer i rather than reducing it modulo the arithmetic q=d². -/
def originalLabelAddress (j : ℕ) :
    (SourceLabels j ⊕ SourceLabels j) ↪
      ScaleResidueIndex (squareProfile d) where
  toFun := fun i =>
    match i with
    | .inl k => ⟨Module.finrank ℚ (OriginalBetti X p) + k.val,
                   (0 : ZMod (d * d))⟩
    | .inr k => ⟨Module.finrank ℚ (OriginalBetti X p) + 2 ^ j + k.val,
                   (0 : ZMod (d * d))⟩
  inj' := by
    intro a b hab
    cases a with
    | inl i =>
      cases b with
      | inl k =>
        have h := congrArg Sigma.fst hab
        have hi : i.val = k.val := by omega
        simpa using congrArg Sum.inl (Fin.ext hi)
      | inr k =>
        have h := congrArg Sigma.fst hab
        have hi := i.isLt
        omega
    | inr i =>
      cases b with
      | inl k =>
        have h := congrArg Sigma.fst hab
        have hk := k.isLt
        omega
      | inr k =>
        have h := congrArg Sigma.fst hab
        have hi : i.val = k.val := by omega
        simpa using congrArg Sum.inr (Fin.ext hi)

/-- The new source addresses cannot collide with the OLD chosen Betti
basis coordinates. This is an exact address fact, NOT a theorem that a
physical wave preserves either subspace or its canonical polarization. -/
theorem originalLabelAddress_disjoint_Betti (j : ℕ)
    (i : BettiFinIndex X p) (k : SourceLabels j ⊕ SourceLabels j) :
    basisStageIndex X p (squareProfile d) i ≠
      originalLabelAddress X p d j k := by
  intro h
  have hs := congrArg Sigma.fst h
  have hi := i.isLt
  cases k with
  | inl k => omega
  | inr k => omega

/-- DIRECT source-dependent isometric placement of BOTH actual causal
channels into the SAME selected CM all-scale Hilbert space. The CM basis
rank sets the offset; no additive residue collision can occur. -/
def labelledToSelectedIsometry (j : ℕ) :
    LabelledState j →ₗᵢ[ℂ] AllScaleHilbert (squareProfile d) :=
  (finiteAddressIsometry (originalLabelAddress X p d j)).comp
    (labelledFiniteCoordinates j).toLinearIsometry

/-- The exact chosen source coordinate is recoverable in the target Hilbert
space at its original, collision-free label address. No decoder for the
older ADDITIVELY aggregated residue quotient is claimed. -/
theorem labelledToSelected_at_address (j : ℕ) (z : LabelledState j)
    (k : SourceLabels j ⊕ SourceLabels j) :
    labelledToSelectedIsometry X p d j z
      (originalLabelAddress X p d j k) =
        labelledFiniteCoordinates j z k := by
  change finiteAddressLinear (originalLabelAddress X p d j)
      (labelledFiniteCoordinates j z) (originalLabelAddress X p d j k) = _
  exact finiteAddressLinear_apply _ _ _

/-- Coherent readout from the EMBEDDED, original observed source labels.
This sums full integer-address coordinates, NOT additive residue buckets. -/
def selectedLabelledReadout (j : ℕ)
    (v : AllScaleHilbert (squareProfile d)) : ℂ :=
  ∑ i : SourceLabels j,
    v (originalLabelAddress X p d j (.inr i))

/-- Source-preserving readout is an exact equality for EVERY labelled state.
In particular this map does not replace coherent scalar energy by l2 norm. -/
theorem selectedLabelledReadout_isometry (j : ℕ) (z : LabelledState j) :
    selectedLabelledReadout X p d j
      (labelledToSelectedIsometry X p d j z) = originalReadout j z.snd := by
  rw [originalReadout_apply]
  unfold selectedLabelledReadout
  apply Finset.sum_congr rfl
  intro i _
  rw [labelledToSelected_at_address, labelledFiniteCoordinates_inr]

/-- Genuine ORIGINAL real Mobius response returned from the selected CM
Hilbert carrier, including squareful zeros, every integer birth and sign. -/
theorem selectedLabelledReadout_original (j : ℕ) (u : ℝ) :
    selectedLabelledReadout X p d j
      (labelledToSelectedIsometry X p d j (originalLabelledState j u)) =
        (originalFixedWave j u : ℂ) := by
  rw [selectedLabelledReadout_isometry, originalLabelledState_observed]
  exact originalReadout_actualLabelResponse j u

/-- Under the original closed dyadic window this exact embedded readout is
the literal causal wholePickup, not a smoothed replacement. -/
theorem selectedLabelledReadout_wholePickup (j : ℕ) {u : ℝ}
    (hu : 0 ≤ u) (huT : u ≤ dyadicTime j) :
    selectedLabelledReadout X p d j
      (labelledToSelectedIsometry X p d j (originalLabelledState j u)) =
        (wholePickup u : ℂ) := by
  rw [selectedLabelledReadout_original]
  exact congrArg (fun x : ℝ => (x : ℂ))
    ((wholePickup_eq_completeWave j d hu huT).trans
      (completeWave_eq_originalFixedWave j d u)) |>.symm

/-- The actual finite, causal integer-labelled state retains its FULL
positive source Hilbert norm after the selected-scale placement. -/
theorem labelledToSelected_norm (j : ℕ) (z : LabelledState j) :
    ‖labelledToSelectedIsometry X p d j z‖ = ‖z‖ :=
  (labelledToSelectedIsometry X p d j).norm_map z

end CM
end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledAddressIsometry
