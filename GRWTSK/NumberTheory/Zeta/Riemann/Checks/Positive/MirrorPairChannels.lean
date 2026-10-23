/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMirrorPairChannels

set_option autoImplicit false

/-!
# Symmetric-pair algebra, repeated-zero controls and exact source ports

All polynomial examples are SYNTHETIC, not claims about zeta zeros. These fixtures
are written Lean scripts, NOT executed tests. External rational checks do not
replace elaboration or a transitive axiom audit.
-/
namespace GRWTSK.RiemannHypothesis.Checks.MirrorPairChannels
open Complex Set
open GRWTSK.Analysis.Complex.SymmetricPair
open CriticalStripHeightDescent CriticalStripHeightDescent.ZeroIsolation
noncomputable section

example (F : ℂ → ℂ) (c d : ℂ) :
    energy F c d=(‖F (c+d)‖^2+‖F (c-d)‖^2)/2 := energy_identity F c d

example (a0 a1 a2 c : ℂ) {x : ℝ} (hx : x ≠ 0) :
    energy (quadratic a0 a1 a2 c) c (x : ℂ) =
      ‖a2‖^2*x^4+(2*(a0*(starRingEnd ℂ) a2).re+‖a1‖^2)*x^2+‖a0‖^2 :=
  quadratic_energy a0 a1 a2 c hx

/-- An even repeated central zero passes the pair criterion away from the center. -/
def repeated (c z : ℂ) : ℂ := (z-c)^2

lemma repeated_channels (c d : ℂ) : even (repeated c) c d=d^2 ∧ odd (repeated c) c d=0 := by
  unfold even odd repeated
  constructor <;> ring

lemma repeated_derivative (c : ℂ) : deriv (repeated c) c=0 := by
  have h : HasDerivAt (repeated c) 0 c := by
    simpa [repeated] using ((hasDerivAt_id c).sub_const c).pow 2
  exact h.deriv

def exactRepeated (c d : ℂ) : Enclosure (repeated c) (repeated c) c d where
  valueError := 0
  secantError := 0
  value_nonneg := le_rfl
  secant_nonneg := le_rfl
  even_error := by simp
  odd_error := by simp

theorem repeated_gap (c : ℂ) {d : ℂ} (hd : d ≠ 0) :
    (exactRepeated c d).valueError^2+‖d‖^2*(exactRepeated c d).secantError^2 <
      energy (repeated c) c d := by
  obtain ⟨he,ho⟩ := repeated_channels c d
  have hp : 0 < ‖d‖ := norm_pos_iff.mpr hd
  simp only [exactRepeated,energy,he,ho,norm_zero,zero_pow,mul_zero,add_zero,norm_pow]
  positivity

theorem repeated_pair_excluded (c : ℂ) {d : ℂ} (hd : d ≠ 0) :
    ¬ (repeated c (c+d)=0 ∧ repeated c (c-d)=0) :=
  (exactRepeated c d).excludes_pair (repeated_gap c hd)

example (c : ℂ) : repeated c c=0 ∧ deriv (repeated c) c=0 :=
  ⟨by simp [repeated],repeated_derivative c⟩

/-- The older strict derivative-disk supplier rejects this repeated central zero. -/
example (c : ℂ) {U : Set ℂ} (hc : c ∈ U) : ¬ Nonempty (DerivativeDisk (repeated c) U) := by
  rintro ⟨C⟩
  exact C.deriv_ne_zero hc (repeated_derivative c)

-- Omitting the d^2*odd(F)*odd(G) term makes multiplication false.
example : even (fun z : ℂ => z*z) 0 1=1 ∧
    even (fun z : ℂ => z) 0 1*even (fun z : ℂ => z) 0 1=0 := by norm_num [even]

-- A genuinely distinct symmetric zero pair has zero coupled energy.
example : energy (fun z : ℂ => z^2-1) 0 1=0 := by norm_num [energy,even,odd]
example : (fun z : ℂ => z^2-1) 1=0 ∧ (fun z : ℂ => z^2-1) (-1)=0 := by norm_num

-- A nonnegative quartic can have a negative cross coefficient and can vanish.
example (x : ℝ) : (x^2-1)^2=x^4-2*x^2+1 := by ring
example : ((1 : ℝ)^2-1)^2=0 := by norm_num

-- The zero-displacement odd convention is not the derivative value.
example : odd (fun z : ℂ => z) 0 0=0 := odd_zero _ _
example : deriv (fun z : ℂ => z) 0=1 := (hasDerivAt_id (0 : ℂ)).deriv

-- Subtracting squared radii does NOT give a lower bound on true source energy.
example : energy (fun _ : ℂ => (1 : ℂ)) 0 1=1 ∧
    energy (fun _ : ℂ => (2 : ℂ)) 0 1-(1 : ℝ)^2=3 := by norm_num [energy,even,odd]

example {N : ℕ} {z : ℂ} (hN : 1 ≤ N) (hx : 0 < z.re)
    (hx1 : z.re < 1) (hoff : z.re ≠ 1/2) :
    even poleNormalizedZeta (MirrorChannels.center z) (MirrorChannels.offset z)-
      even (CenteredMellin.SexticPrimitive.finiteModel N)
        (MirrorChannels.center z) (MirrorChannels.offset z) =
      -(even CenteredMellin.SexticPrimitive.multiplier
          (MirrorChannels.center z) (MirrorChannels.offset z)*
        even (CenteredMellin.SexticPrimitive.tail (N : ℝ))
          (MirrorChannels.center z) (MirrorChannels.offset z)+
        (MirrorChannels.offset z)^2*
        odd CenteredMellin.SexticPrimitive.multiplier
          (MirrorChannels.center z) (MirrorChannels.offset z)*
        odd (CenteredMellin.SexticPrimitive.tail (N : ℝ))
          (MirrorChannels.center z) (MirrorChannels.offset z)) :=
  (MirrorChannels.arithmetic_residual_channels hN hx hx1 hoff).1

example {z : ℂ} (hx : 0 < z.re) (hx1 : z.re < 1)
    (ht : (14 : ℝ) ≤ z.im) (ht1 : z.im ≤ 15) (hoff : z.re ≠ 1/2) :
    (1 : ℝ) ≤ ‖odd poleNormalizedZeta (MirrorChannels.center z) (MirrorChannels.offset z)‖ :=
  MirrorChannels.fifteen_odd_channel_lower hx hx1 ht ht1 hoff

-- The conditional port retains the complete new supplier and the previous window.
example {N : ℕ} (hbase : WindowRH N) (P : ℂ → ℂ → ℂ)
    (C : ∀ z, z ∈ HeightFiber.successorBox N → z.re ≠ 1/2 →
      Enclosure poleNormalizedZeta (P z) (MirrorChannels.center z) (MirrorChannels.offset z))
    (hgap : ∀ z hz hoff,
      (C z hz hoff).valueError^2+‖MirrorChannels.offset z‖^2*(C z hz hoff).secantError^2 <
        energy (P z) (MirrorChannels.center z) (MirrorChannels.offset z)) : WindowRH (N+1) :=
  MirrorChannels.window_successor_of_pair_enclosures hbase P C hgap

end
end GRWTSK.RiemannHypothesis.Checks.MirrorPairChannels
