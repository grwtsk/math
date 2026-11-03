/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / PINNED_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusRatioCollisionFiniteOn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletRatioCollisionModulus
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletSignedCrossReality
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exact FOUR original Möbius coefficients in a ratio collision

The previously published exact real Dirichlet second moment is
  sum_(chi mod q) familyCross_chi(T)^2
    = phi(q) * sum_(a unit)|originalRatioPacket(q,T,a)|^2.

This module expands the unit-ratio packet squares using only
finite arithmetic. For every ordered original pair p=(m,n),
the COMPLEX prior packet requires n to be a unit. Its
REAL weight in this source is
  if m!=n and unit(n) then mu(m)*mu(n)*K_T(m,n) else 0.
The ratio key is (m mod q)*(n mod q)^(-1).

The FOUR-index collision is therefore
  sum_(p,t original ordered pairs)
    1_(ratio p=ratio t and ratio p unit)*w(p)*w(t).
Each nonzero term has four literal Möbius factors and two
literal birth-gated original response Gram kernels.

The result is NONNEGATIVE AS A WHOLE because it is the
actual source ratio-class square sum. Individual signed
four-index terms need not be nonnegative.

The denominator-unit mask is kept INSIDE w. The ratio-unit
mask is imposed OUTSIDE in the selected key set. This avoids
silently deleting composite-modulus nonunit source terms.

When q>=N(T)^2, every nonzero colliding quartet has the
ACTUAL INTEGER rational-slope equation m*s=n*r, not merely
a congruence. The modulus grows with physical T, so the
fixed-modulus all-rate fourth-order arithmetic remains OPEN.

No substitute Gram, random signs, fixed-character GRH,
signed low-gcd bound or new positivity assumption.
All Lean bodies SOURCE PROOF CANDIDATES; native replay NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Moebius.DirichletOriginalQuarticCollision

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.DirichletPairRatioFinite
open GRWTSK.NumberTheory.Moebius.DirichletSignedCrossRatioMoment
open GRWTSK.NumberTheory.Moebius.DirichletSignedCrossReality
open GRWTSK.NumberTheory.Moebius.RatioCollisionFinite
open GRWTSK.NumberTheory.Moebius.RatioCollisionFiniteOn
open GRWTSK.NumberTheory.Moebius.DirichletRatioCollisionModulus

variable (q : ℕ) [NeZero q]
classical

/-- Literal multiplicative ratio of an ordered positive-index
pair; this is the SAME key as the previous character Fourier. -/
def originalPairRatioKey (p : ℕ × ℕ) : ZMod q :=
  (p.1 : ZMod q)*(p.2 : ZMod q)⁻¹

/-- Actual original real signed offdiagonal Möbius Gram value,
with the TRUE denominator-unit mask from the prior packet.
A nonunit numerator is still kept here, since only Parseval's
ratio-unit selection removes it. -/
def originalRealRatioPairWeight
    (T : ℝ) (p : ℕ × ℕ) : ℝ :=
  if p.1 ≠ p.2 ∧ IsUnit (p.2 : ZMod q)
  then moebiusReal p.1 * moebiusReal p.2 *
    pickupResponseGram T p.1 p.2
  else 0

def originalRealRatioPacket (T : ℝ) (a : ZMod q) : ℝ :=
  fiberMass (originalPairInventory T)
    (originalPairRatioKey q)
    (originalRealRatioPairWeight q T) a

/-- Exactly the unit ratio set used by the previous finite
character Parseval theorem, principal and imprimitive included. -/
def originalUnitRatioSet : Finset (ZMod q) :=
  Finset.univ.filter IsUnit

/-- The explicit complete signed FOUR-index collision sum.
It includes all ordered quadruples in the original endpoint,
with the original two separate offdiagonal and unit-denominator
masks retained in each real pair weight. -/
def originalQuarticCollision (T : ℝ) : ℝ :=
  ∑ p ∈ originalPairInventory T,
    ∑ t ∈ originalPairInventory T,
      if originalPairRatioKey q p =
            originalPairRatioKey q t ∧
          originalPairRatioKey q p ∈ originalUnitRatioSet q
      then originalRealRatioPairWeight q T p *
        originalRealRatioPairWeight q T t
      else 0

private theorem originalPair_real_cast (T : ℝ) (p : ℕ × ℕ) :
    originalOffdiagPairWeight T p =
      (((if p.1 ≠ p.2 then
        moebiusReal p.1 * moebiusReal p.2 *
          pickupResponseGram T p.1 p.2
      else 0 : ℝ)) : ℂ) := by
  unfold originalOffdiagPairWeight
  by_cases h : p.1 ≠ p.2
  · simp only [if_pos h]
    unfold originalSourcePair moebiusReal
    push_cast
    ring
  · simp [h]

/-- The previous genuine COMPLEX ratio packet is EXACTLY
the complex cast of this literal real signed packet at every
residue a, including nonunits. Unit restriction occurs later. -/
theorem originalRatioPacket_eq_realCast
    (T : ℝ) (a : ZMod q) :
    originalRatioPacket q T a =
      (originalRealRatioPacket q T a : ℂ) := by
  unfold originalRatioPacket pairRatioCoefficient
  unfold originalRealRatioPacket fiberMass
  let S : Finset (ℕ × ℕ) := originalPairInventory T
  let key : ℕ × ℕ → ZMod q := originalPairRatioKey q
  let w : ℕ × ℕ → ℝ := originalRealRatioPairWeight q T
  change
    (∑ p ∈ S,
      if IsUnit (p.2 : ZMod q) ∧ key p = a
      then originalOffdiagPairWeight T p else 0) =
    ((∑ p ∈ S, if key p = a then w p else 0 : ℝ) : ℂ)
  have hterms (p : ℕ × ℕ) :
      (if IsUnit (p.2 : ZMod q) ∧ key p = a
        then originalOffdiagPairWeight T p else 0) =
      (((if key p = a then w p else 0 : ℝ)) : ℂ) := by
    by_cases hd : IsUnit (p.2 : ZMod q)
    · by_cases heq : key p = a
      · simp [hd,heq,w,originalRealRatioPairWeight,
          originalPair_real_cast]
      · simp [heq]
    · simp [hd,w,originalRealRatioPairWeight]
  calc
    _ = ∑ p ∈ S,
          (((if key p = a then w p else 0 : ℝ)) : ℂ) := by
      apply Finset.sum_congr rfl
      intro p hp
      exact hterms p
    _ = ((∑ p ∈ S, if key p = a then w p else 0 : ℝ) : ℂ) := by
      push_cast
      rfl

/-- The genuine previous unit-ratio squared norm is the
square of the real source packet; no false complex sign loss. -/
private theorem ratioPacket_norm_sq_eq_real_sq (T : ℝ)
    (a : ZMod q) :
    ‖originalRatioPacket q T a‖^2 =
      (originalRealRatioPacket q T a)^2 := by
  rw [originalRatioPacket_eq_realCast]
  simp [Complex.norm_real, Real.norm_eq_abs, sq_abs]

/-- EXACT source-specific fourth-order expansion of the REAL
Dirichlet-character signed-cross second moment, including
every original Möbius sign and both ordered pair orientations.
All modulus q>=1, all real T, no RH or GRH premise. -/
theorem allCharactersRealCross_secondMoment_eq_quartic
    (T : ℝ) :
    (∑ χ : DirichletCharacter ℂ q,
      (familyCross (dirichletCharacterCoefficients χ) T)^2) =
      (q.totient : ℝ) * originalQuarticCollision q T := by
  have hmoment := allCharactersRealCross_secondMoment q T
  have hselected :
      (∑ a : ZMod q,
        if IsUnit a then ‖originalRatioPacket q T a‖^2
        else 0) =
      ∑ a ∈ originalUnitRatioSet q,
        (originalRealRatioPacket q T a)^2 := by
    simp only [originalUnitRatioSet, Finset.sum_filter]
    apply Finset.sum_congr rfl
    intro a ha
    by_cases hu : IsUnit a
    · simp [hu, ratioPacket_norm_sq_eq_real_sq]
    · simp [hu]
  rw [hselected] at hmoment
  have hcollision :
      (∑ a ∈ originalUnitRatioSet q,
        (originalRealRatioPacket q T a)^2) =
        originalQuarticCollision q T :=
    fiberMass_sq_sum_on_eq_collision
      (originalPairInventory T)
      (originalUnitRatioSet q)
      (originalPairRatioKey q)
      (originalRealRatioPairWeight q T)
  rw [hcollision] at hmoment
  exact hmoment

/-- The full quartic collision is nonnegative but NO individual
signed four-index summand is assumed positive. -/
theorem originalQuarticCollision_nonneg (T : ℝ) :
    0 ≤ originalQuarticCollision q T := by
  unfold originalQuarticCollision
  exact selected_collision_nonneg
    (originalPairInventory T)
    (originalUnitRatioSet q)
    (originalPairRatioKey q)
    (originalRealRatioPairWeight q T)

/-- Genuine full endpoint membership supplies all four positive
integer source-index bounds with NO angle or gcd masks. -/
private theorem pair_endpoint_bounds
    (T : ℝ) {p : ℕ × ℕ}
    (hp : p ∈ originalPairInventory T) :
    1 ≤ p.1 ∧ 1 ≤ p.2 ∧
      p.1 ≤ ⌊Real.exp T⌋₊ ∧
      p.2 ≤ ⌊Real.exp T⌋₊ := by
  obtain ⟨hm,hn⟩ := Finset.mem_product.mp hp
  obtain ⟨hm1,hmN⟩ := Finset.mem_Icc.mp hm
  obtain ⟨hn1,hnN⟩ := Finset.mem_Icc.mp hn
  exact ⟨hm1,hn1,hmN,hnN⟩

/-- In the no-alias regime q>=N(T)^2, equality of genuine
unit-denominator ratio keys is the integer rational slope
equation p.1*t.2=p.2*t.1. This does NOT require q prime,
but the denominator-unit premises must remain explicit. -/
theorem collision_key_eq_implies_exact_slope
    (T : ℝ) (p t : ℕ × ℕ)
    (hp : p ∈ originalPairInventory T)
    (ht : t ∈ originalPairInventory T)
    (hq : ⌊Real.exp T⌋₊*⌊Real.exp T⌋₊ ≤ q)
    (hn : IsUnit (p.2 : ZMod q))
    (hs : IsUnit (t.2 : ZMod q))
    (heq : originalPairRatioKey q p =
      originalPairRatioKey q t) :
    p.1*t.2 = p.2*t.1 := by
  obtain ⟨hm1,hn1,hmN,hnN⟩ := pair_endpoint_bounds T hp
  obtain ⟨hr1,hs1,hrN,hsN⟩ := pair_endpoint_bounds T ht
  exact ratio_eq_implies_integer_slope_eq q
    ⌊Real.exp T⌋₊ p.1 p.2 t.1 t.2 hq
    hm1 hn1 hr1 hs1 hmN hnN hrN hsN hn hs heq

/-- Original real signed FOUR-index source, now indexed by
the exact INTEGER rational-slope equality rather than by
a modular ratio collision. The denominator-unit and
unit-ratio masks are STILL retained for composite q. -/
def originalExactSlopeQuartic (T : ℝ) : ℝ :=
  ∑ p ∈ originalPairInventory T,
    ∑ t ∈ originalPairInventory T,
      if p.1*t.2 = p.2*t.1 ∧
          originalPairRatioKey q p ∈ originalUnitRatioSet q
      then originalRealRatioPairWeight q T p *
        originalRealRatioPairWeight q T t
      else 0

/-- For q >= N(T)^2 the EXACT original signed fourth-order
modular collision is precisely the rational-slope collision,
with all original terms, masks and orientations unchanged.
No characterwise cancellation follows when q is fixed. -/
theorem originalQuarticCollision_eq_exactSlope_of_large_modulus
    (T : ℝ)
    (hq : ⌊Real.exp T⌋₊*⌊Real.exp T⌋₊ ≤ q) :
    originalQuarticCollision q T =
      originalExactSlopeQuartic q T := by
  unfold originalQuarticCollision originalExactSlopeQuartic
  apply Finset.sum_congr rfl
  intro p hp
  apply Finset.sum_congr rfl
  intro t ht
  by_cases hn : IsUnit (p.2 : ZMod q)
  · by_cases hs : IsUnit (t.2 : ZMod q)
    · obtain ⟨hm1,hn1,hmN,hnN⟩ :=
        pair_endpoint_bounds T hp
      obtain ⟨hr1,hs1,hrN,hsN⟩ :=
        pair_endpoint_bounds T ht
      have hiff :
          (originalPairRatioKey q p =
            originalPairRatioKey q t) ↔
          p.1*t.2 = p.2*t.1 := by
        exact ratio_collision_iff_integer_slope q
          ⌊Real.exp T⌋₊ p.1 p.2 t.1 t.2
          hq hm1 hn1 hr1 hs1 hmN hnN hrN hsN hn hs
      simp only [hiff]
    · have hw : originalRealRatioPairWeight q T t = 0 := by
        simp [originalRealRatioPairWeight,hs]
      simp [hw]
  · have hw : originalRealRatioPairWeight q T p = 0 := by
      simp [originalRealRatioPairWeight,hn]
    simp [hw]

/-- For large enough q, the genuinely signed REAL
Dirichlet character second moment is an exact positive
quadratic expressed as a FOUR-INDEX rational-slope collision.
The positivity is global, not termwise in the Möbius signs. -/
theorem allCharactersRealCross_secondMoment_eq_exactSlope
    (T : ℝ)
    (hq : ⌊Real.exp T⌋₊*⌊Real.exp T⌋₊ ≤ q) :
    (∑ χ : DirichletCharacter ℂ q,
      (familyCross (dirichletCharacterCoefficients χ) T)^2) =
    (q.totient : ℝ) * originalExactSlopeQuartic q T := by
  rw [allCharactersRealCross_secondMoment_eq_quartic,
    originalQuarticCollision_eq_exactSlope_of_large_modulus q T hq]

end GRWTSK.NumberTheory.Moebius.DirichletOriginalQuarticCollision
