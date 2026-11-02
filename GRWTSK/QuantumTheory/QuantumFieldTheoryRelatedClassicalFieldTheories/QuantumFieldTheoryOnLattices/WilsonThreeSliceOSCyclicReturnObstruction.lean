/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonThreeSliceOSTwiceShift
import Mathlib

/-!
# Quantitative no-go for a raw cyclic extension of the finite Wilson OS transfer

Local attribution: grwtsk contributors.

The actual four-dimensional SU(2) Wilson time-circle has six slices at T=3.
The source raw link translation is cyclic on this finite period, while
the separately proved reflection-positive first-time transfer is defined
only from the COMPLETE two-step-supported complex OS Hilbert K into the
full complex OS Hilbert H. Its precise squared norm loss is an ORIGINAL
Wilson observable quantity, through the literal first and second shifts.

Suppose a bounded global operator S : H -> H is a contraction and agrees
with the ORIGINAL supported first-time transfer after the ORIGINAL
isometric inclusion J : K -> H. We show that the amount by which S^6
fails to return a supported state is bounded BELOW by its actual Wilson
squared shift-separation defect:

  ||Jx - J2x||^2 <= 4 ||x|| ||Jx - S^6(Jx)||.

Consequently exact cyclic return S^6=I forces the supported transfer to
be isometric and forces J2=J on all K. If the literal first/second source
embeddings differ on a state, no contractive cyclic global lift agreeing
with the source first step can exist.

These theorems do NOT assert an actual global S exists, nor prove a
strictly positive uniform excitation gap or that any specific source state
has nonzero shift separation. A physically dissipative forward-time
semigroup must not be identified with literal finite-circle cyclicity.
Full boundary-corrected OS reconstruction and continuum Yang--Mills
remain separate open mathematical requirements.

SOURCE_PROOF_CANDIDATE; LEAN_COMPILATION_NOT_RUN; EXPECTED_TYPES_NOT_RUN;
FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOMS_NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSCyclicReturnObstruction

open GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSDefect
open GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSExcitationIntertwining
open GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSTwiceShift

variable (β : ℝ) (hβ : 0 ≤ β)

/-- Exactly six iterations of a candidate global map on the FULL completed
OS Hilbert. A candidate with this return equal to the identity implements
the finite source circle, NOT an infinite-time forward semigroup. -/
def sixStepReturn
    (S : FullOSHilbert β hβ →L[ℂ] FullOSHilbert β hβ)
    (y : FullOSHilbert β hβ) : FullOSHilbert β hβ :=
  S (S (S (S (S (S y)))))

/-- Any proposed full-space contraction has no norm increase at any
intermediate step around the true six-slice Wilson circle. -/
theorem sixStep_norm_le_first
    (S : FullOSHilbert β hβ →L[ℂ] FullOSHilbert β hβ)
    (hcontract : ∀ y : FullOSHilbert β hβ, ‖S y‖ ≤ ‖y‖)
    (y : FullOSHilbert β hβ) :
    ‖sixStepReturn β hβ S y‖ ≤ ‖S y‖ := by
  unfold sixStepReturn
  calc
    ‖S (S (S (S (S (S y)))))‖ ≤
        ‖S (S (S (S (S y))))‖ := hcontract _
    _ ≤ ‖S (S (S (S y)))‖ := hcontract _
    _ ≤ ‖S (S (S y))‖ := hcontract _
    _ ≤ ‖S (S y)‖ := hcontract _
    _ ≤ ‖S y‖ := hcontract _

/-- A CONTRACTIVE global finite-cyclic operator must be an isometry.
This is the precise obstruction to interpreting raw six-periodicity as
strict forward-time physical excitation decay. -/
theorem cyclic_contraction_is_isometric
    (S : FullOSHilbert β hβ →L[ℂ] FullOSHilbert β hβ)
    (hcontract : ∀ y : FullOSHilbert β hβ, ‖S y‖ ≤ ‖y‖)
    (hcyclic : ∀ y, sixStepReturn β hβ S y = y)
    (y : FullOSHilbert β hβ) :
    ‖S y‖ = ‖y‖ := by
  apply le_antisymm (hcontract y)
  calc
    ‖y‖ = ‖sixStepReturn β hβ S y‖ := by rw [hcyclic y]
    _ ≤ ‖S y‖ := sixStep_norm_le_first β hβ S hcontract y

/-- A hypothetical global time-translation agrees with the actual
physical supported Wilson source ONLY when this equality is supplied.
No unsupported boundary sector is assigned an artificial value. -/
def AgreesWithOriginalSource
    (S : FullOSHilbert β hβ →L[ℂ] FullOSHilbert β hβ) : Prop :=
  ∀ x : SupportedHilbert β hβ,
    S (originalEmbedding β hβ x) = actualSupportedTransfer β hβ x

/-- A global norm-one cyclic lift respecting the actual source would force
the ORIGINAL supported first step to preserve EVERY source norm. -/
theorem cyclic_lift_forces_supported_isometry
    (S : FullOSHilbert β hβ →L[ℂ] FullOSHilbert β hβ)
    (hcontract : ∀ y, ‖S y‖ ≤ ‖y‖)
    (hcyclic : ∀ y, sixStepReturn β hβ S y = y)
    (hsource : AgreesWithOriginalSource β hβ S)
    (x : SupportedHilbert β hβ) :
    ‖actualSupportedTransfer β hβ x‖ = ‖x‖ := by
  rw [← hsource x]
  exact (cyclic_contraction_is_isometric β hβ S hcontract
    hcyclic (originalEmbedding β hβ x)).trans
    (originalEmbedding_norm β hβ x)

/-- Original Wilson source returns an even STRONGER no-go:
a globally cyclic contractive first-time lift would identify its original
and literal twice-translated source isometries on ALL supported states. -/
theorem cyclic_lift_forces_twice_shift_equality
    (S : FullOSHilbert β hβ →L[ℂ] FullOSHilbert β hβ)
    (hcontract : ∀ y, ‖S y‖ ≤ ‖y‖)
    (hcyclic : ∀ y, sixStepReturn β hβ S y = y)
    (hsource : AgreesWithOriginalSource β hβ S)
    (x : SupportedHilbert β hβ) :
    originalEmbedding β hβ x = twiceTransportComplete β hβ x := by
  have hsourceeq := exact_loss_as_twice_shift_distance β hβ x
  rw [cyclic_lift_forces_supported_isometry β hβ S
    hcontract hcyclic hsource x] at hsourceeq
  have hz :
      ‖originalEmbedding β hβ x -
        twiceTransportComplete β hβ x‖ ^ 2 = 0 := by
    linarith
  have hnorm :
      ‖originalEmbedding β hβ x -
        twiceTransportComplete β hβ x‖ = 0 := by
    nlinarith [norm_nonneg (originalEmbedding β hβ x -
      twiceTransportComplete β hβ x)]
  exact sub_eq_zero.mp (norm_eq_zero.mp hnorm)

/-- The full source-supported one-step loss cannot exceed the error
of returning to the source state after six hypothetical full-space steps.
This is a concrete unavoidable boundary/periodicity correction budget. -/
theorem sixStep_return_ge_source_norm_loss
    (S : FullOSHilbert β hβ →L[ℂ] FullOSHilbert β hβ)
    (hcontract : ∀ y, ‖S y‖ ≤ ‖y‖)
    (hsource : AgreesWithOriginalSource β hβ S)
    (x : SupportedHilbert β hβ) :
    ‖x‖ - ‖actualSupportedTransfer β hβ x‖ ≤
      ‖originalEmbedding β hβ x -
        sixStepReturn β hβ S (originalEmbedding β hβ x)‖ := by
  have hnorm :
      ‖sixStepReturn β hβ S (originalEmbedding β hβ x)‖ ≤
        ‖actualSupportedTransfer β hβ x‖ := by
    calc
      _ ≤ ‖S (originalEmbedding β hβ x)‖ :=
        sixStep_norm_le_first β hβ S hcontract _
      _ = ‖actualSupportedTransfer β hβ x‖ := congrArg norm (hsource x)
  have htri : ‖x‖ ≤
      ‖originalEmbedding β hβ x -
        sixStepReturn β hβ S (originalEmbedding β hβ x)‖ +
        ‖actualSupportedTransfer β hβ x‖ := by
    calc
      ‖x‖ = ‖originalEmbedding β hβ x‖ :=
        (originalEmbedding_norm β hβ x).symm
      _ = ‖(originalEmbedding β hβ x -
          sixStepReturn β hβ S (originalEmbedding β hβ x)) +
          sixStepReturn β hβ S (originalEmbedding β hβ x)‖ := by
        rw [sub_add_cancel]
      _ ≤ ‖originalEmbedding β hβ x -
          sixStepReturn β hβ S (originalEmbedding β hβ x)‖ +
          ‖sixStepReturn β hβ S (originalEmbedding β hβ x)‖ :=
        norm_add_le _ _
      _ ≤ ‖originalEmbedding β hβ x -
          sixStepReturn β hβ S (originalEmbedding β hβ x)‖ +
          ‖actualSupportedTransfer β hβ x‖ :=
        add_le_add_left hnorm _
  linarith

/-- QUANTITATIVE source-level obstruction: a global contractive first-time
extension has to pay the ORIGINAL Wilson twice-shift separation as a
NONZERO six-step failure to close the periodic circle whenever this
separation is nonzero. No unknown gap constant appears in the formula. -/
theorem original_twice_shift_le_four_times_return_error
    (S : FullOSHilbert β hβ →L[ℂ] FullOSHilbert β hβ)
    (hcontract : ∀ y, ‖S y‖ ≤ ‖y‖)
    (hsource : AgreesWithOriginalSource β hβ S)
    (x : SupportedHilbert β hβ) :
    ‖originalEmbedding β hβ x -
        twiceTransportComplete β hβ x‖ ^ 2 ≤
      4 * ‖x‖ *
        ‖originalEmbedding β hβ x -
          sixStepReturn β hβ S (originalEmbedding β hβ x)‖ := by
  have hsourceeq := exact_loss_as_twice_shift_distance β hβ x
  have hc : ‖actualSupportedTransfer β hβ x‖ ≤ ‖x‖ :=
    completedRestrictedTranslation_contracts β hβ x
  have hr := sixStep_return_ge_source_norm_loss β hβ S hcontract hsource x
  have hsum : ‖x‖ + ‖actualSupportedTransfer β hβ x‖ ≤
      2 * ‖x‖ := by linarith
  have hprod1 :
      (‖x‖ - ‖actualSupportedTransfer β hβ x‖) *
        (‖x‖ + ‖actualSupportedTransfer β hβ x‖) ≤
      (‖x‖ - ‖actualSupportedTransfer β hβ x‖) *
        (2 * ‖x‖) :=
    mul_le_mul_of_nonneg_left hsum (sub_nonneg.mpr hc)
  have hprod2 :
      (‖x‖ - ‖actualSupportedTransfer β hβ x‖) *
        (2 * ‖x‖) ≤
      ‖originalEmbedding β hβ x -
        sixStepReturn β hβ S (originalEmbedding β hβ x)‖ *
        (2 * ‖x‖) :=
    mul_le_mul_of_nonneg_right hr (by positivity)
  have heq :
      ‖originalEmbedding β hβ x -
        twiceTransportComplete β hβ x‖ ^ 2 =
      2 * ((‖x‖ - ‖actualSupportedTransfer β hβ x‖) *
        (‖x‖ + ‖actualSupportedTransfer β hβ x‖)) := by
    nlinarith [hsourceeq]
  calc
    ‖originalEmbedding β hβ x - twiceTransportComplete β hβ x‖ ^ 2 =
        2 * ((‖x‖ - ‖actualSupportedTransfer β hβ x‖) *
          (‖x‖ + ‖actualSupportedTransfer β hβ x‖)) := heq
    _ ≤ 2 * ((‖x‖ - ‖actualSupportedTransfer β hβ x‖) *
          (2 * ‖x‖)) :=
      mul_le_mul_of_nonneg_left hprod1 (by norm_num)
    _ ≤ 2 * (‖originalEmbedding β hβ x -
          sixStepReturn β hβ S (originalEmbedding β hβ x)‖ *
          (2 * ‖x‖)) :=
      mul_le_mul_of_nonneg_left hprod2 (by norm_num)
    _ = 4 * ‖x‖ * ‖originalEmbedding β hβ x -
          sixStepReturn β hβ S (originalEmbedding β hβ x)‖ := by ring

/-- An actual supported state for which the source first and second
embeddings differ forbids an EXACT cyclic return of any global
contractive extension. The existence of such a physical state is an
independent source obligation, not assumed to hold automatically. -/
theorem nontrivial_source_difference_forces_noncyclic_return
    (S : FullOSHilbert β hβ →L[ℂ] FullOSHilbert β hβ)
    (hcontract : ∀ y, ‖S y‖ ≤ ‖y‖)
    (hsource : AgreesWithOriginalSource β hβ S)
    (x : SupportedHilbert β hβ)
    (hdiff : originalEmbedding β hβ x ≠ twiceTransportComplete β hβ x) :
    sixStepReturn β hβ S (originalEmbedding β hβ x) ≠
      originalEmbedding β hβ x := by
  intro hreturn
  have hbound := original_twice_shift_le_four_times_return_error
    β hβ S hcontract hsource x
  rw [hreturn, sub_self, norm_zero, mul_zero] at hbound
  have hpos :
      0 < ‖originalEmbedding β hβ x -
        twiceTransportComplete β hβ x‖ ^ 2 := by
    have hz : originalEmbedding β hβ x -
        twiceTransportComplete β hβ x ≠ 0 :=
      sub_ne_zero.mpr hdiff
    exact sq_pos_of_pos (norm_pos_iff.mpr hz)
  linarith

/-- A HYPOTHETICAL uniform supported-excitation gap quantitatively forces
a periodicity/boundary correction on EVERY nonzero complete source
excitation. Its coefficient is exactly the SAME missing δ; this
theorem neither manufactures that coefficient nor constructs the
global transfer S. -/
theorem uniform_excitation_gap_forces_period_error
    (δ : ℝ)
    (hgap : ∀ x : supportedExcitationSpace β hβ,
      ‖actualSupportedTransfer β hβ (x : SupportedHilbert β hβ)‖ ^ 2 ≤
        (1 - δ) * ‖(x : SupportedHilbert β hβ)‖ ^ 2)
    (S : FullOSHilbert β hβ →L[ℂ] FullOSHilbert β hβ)
    (hcontract : ∀ y, ‖S y‖ ≤ ‖y‖)
    (hsource : AgreesWithOriginalSource β hβ S)
    (x : supportedExcitationSpace β hβ) :
    δ * ‖x‖ ≤ 2 *
      ‖originalEmbedding β hβ (x : SupportedHilbert β hβ) -
        sixStepReturn β hβ S
          (originalEmbedding β hβ (x : SupportedHilbert β hβ))‖ := by
  by_cases hx : x = 0
  · subst x
    simp
  · have hp : 0 < ‖x‖ := norm_pos_iff.mpr hx
    have hsep := (uniform_contraction_iff_twice_shift_separation β hβ δ).mp
      hgap x
    have herr := original_twice_shift_le_four_times_return_error
      β hβ S hcontract hsource (x : SupportedHilbert β hβ)
    have hsq :
        2 * δ * ‖x‖ ^ 2 ≤
          4 * ‖x‖ *
            ‖originalEmbedding β hβ (x : SupportedHilbert β hβ) -
              sixStepReturn β hβ S
                (originalEmbedding β hβ (x : SupportedHilbert β hβ))‖ :=
      hsep.trans herr
    by_contra hn
    have hlt : 2 *
        ‖originalEmbedding β hβ (x : SupportedHilbert β hβ) -
          sixStepReturn β hβ S
            (originalEmbedding β hβ (x : SupportedHilbert β hβ))‖ <
        δ * ‖x‖ := lt_of_not_ge hn
    have hpos :
        0 < (δ * ‖x‖ - 2 *
          ‖originalEmbedding β hβ (x : SupportedHilbert β hβ) -
            sixStepReturn β hβ S
              (originalEmbedding β hβ (x : SupportedHilbert β hβ))‖) *
          ‖x‖ :=
      mul_pos (sub_pos.mpr hlt) hp
    nlinarith

/-- A strictly positive source-excitation gap on a NONZERO excitation
cannot coexist with a genuinely six-periodic, contractive full-space
extension of the ORIGINAL Wilson supported first time shift.
This is a no-go, not a proof that the positive gap actually exists. -/
theorem positive_excitation_gap_forbids_cyclic_lift
    (δ : ℝ) (hδ : 0 < δ)
    (hgap : ∀ x : supportedExcitationSpace β hβ,
      ‖excitationTransfer β hβ x‖ ^ 2 ≤ (1 - δ) * ‖x‖ ^ 2)
    (x : supportedExcitationSpace β hβ) (hx : x ≠ 0)
    (S : FullOSHilbert β hβ →L[ℂ] FullOSHilbert β hβ)
    (hcontract : ∀ y, ‖S y‖ ≤ ‖y‖)
    (hcyclic : ∀ y, sixStepReturn β hβ S y = y)
    (hsource : AgreesWithOriginalSource β hβ S) : False := by
  have hs := cyclic_lift_forces_supported_isometry
    β hβ S hcontract hcyclic hsource (x : SupportedHilbert β hβ)
  have heq : ‖excitationTransfer β hβ x‖ = ‖x‖ := by
    simpa only [excitationTransfer_coe] using hs
  have hp : 0 < ‖x‖ := norm_pos_iff.mpr hx
  have h := hgap x
  rw [heq] at h
  nlinarith

end GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSCyclicReturnObstruction
