/- Copyright (c) 2026 grwtsk contributors. MIT.
Original arithmetic source and mathematical direction: grwtsk contributors.
Source formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPrimeFreeSlopeSignLedger
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletOriginalQuarticCollision
import Mathlib.NumberTheory.ArithmeticFunction.Liouville
import Mathlib.Tactic

/-!
# NO-ALIAS exact rational-slope quartic Möbius collisions are TERM-WISE positive

Pinned Mathlib defines the genuine completely multiplicative Liouville
function λ(n), equal to μ(n) on SQUAREFREE integers. If four ORIGINAL
positive integers satisfy m*s=n*r, their fourfold Möbius sign product
  μ(m)*μ(n)*μ(r)*μ(s)
is always NONNEGATIVE:
- if any of m,n,r,s is squareful, this product is literally 0;
- otherwise μ(x)=λ(x), λ(ms)=λ(nr), and hence the product is
  λ(ms)*λ(nr)=λ(ms)^2=1.

The two ORIGINAL causal response Gram factors are nonnegative for
physical time T>=0. Thus each exact integer-slope collision weight
of the ORIGINAL quartic packet is nonnegative INDIVIDUALLY, even
before summation into ratio fibers.

For Dirichlet ratio keys mod q, this stronger termwise conclusion
holds only when the source no-alias hypothesis
  floor(exp T)^2 <= q
is met, using the previous exact ratio-to-integer-slope theorem.
It does NOT apply to a fixed q as T grows: distinct integer slopes
can collide modulo q, allowing signed four-index products.

This removes any prospective within-rational-slope Möbius cancellation
from the large-modulus quartic-character energy route. It does NOT
bound the size of that positive collision sum or supply RH/GRH.

All Lean bodies SOURCE PROOF CANDIDATES. Native pinned compilation,
expected types, fresh kernel replay, transitive axioms NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.ExactSlopeQuarticTermwisePositive

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.DirichletOriginalQuarticCollision
open GRWTSK.NumberTheory.Moebius.DirichletSignedCrossRatioMoment

/-- The original real Möbius coefficient equals the true Liouville
value exactly when the original index is squarefree. -/
private theorem originalMoebius_eq_liouville_of_squarefree
    (n : ℕ) (hn : Squarefree n) :
    moebiusReal n = ((ArithmeticFunction.liouville n : ℤ) : ℝ) := by
  unfold moebiusReal
  rw [ArithmeticFunction.moebius_apply_of_squarefree hn,
    ArithmeticFunction.liouville_apply hn.ne_zero]

/-- A fourfold exact rational-slope collision has a nonnegative product
of FOUR ORIGINAL Möbius coefficients, including squareful zeros. -/
theorem original_four_moebius_nonneg_of_exactSlope
    (m n r s : ℕ) (hcross : m * s = n * r) :
    0 ≤ moebiusReal m * moebiusReal n *
        moebiusReal r * moebiusReal s := by
  by_cases hm : Squarefree m
  · by_cases hn : Squarefree n
    · by_cases hr : Squarefree r
      · by_cases hs : Squarefree s
        · have hprod :
            (ArithmeticFunction.liouville m : ℤ) *
              ArithmeticFunction.liouville n *
              ArithmeticFunction.liouville r *
              ArithmeticFunction.liouville s =
              (ArithmeticFunction.liouville (m * s) : ℤ) ^ 2 := by
            calc
              (ArithmeticFunction.liouville m : ℤ) *
                ArithmeticFunction.liouville n *
                ArithmeticFunction.liouville r *
                ArithmeticFunction.liouville s =
                  ((ArithmeticFunction.liouville m : ℤ) *
                    ArithmeticFunction.liouville s) *
                  (ArithmeticFunction.liouville n *
                    ArithmeticFunction.liouville r) := by ring
              _ = ArithmeticFunction.liouville (m * s) *
                  ArithmeticFunction.liouville (n * r) := by
                    rw [ArithmeticFunction.liouville_apply_mul m s,
                      ArithmeticFunction.liouville_apply_mul n r]
              _ = (ArithmeticFunction.liouville (m * s) : ℤ) ^ 2 := by
                rw [← hcross]
                ring
          have hreal :
              moebiusReal m * moebiusReal n *
                moebiusReal r * moebiusReal s =
              (((ArithmeticFunction.liouville (m * s) : ℤ) : ℝ)) ^ 2 := by
            rw [originalMoebius_eq_liouville_of_squarefree m hm,
              originalMoebius_eq_liouville_of_squarefree n hn,
              originalMoebius_eq_liouville_of_squarefree r hr,
              originalMoebius_eq_liouville_of_squarefree s hs]
            exact_mod_cast hprod
          rw [hreal]
          positivity
        · have hz : moebiusReal s = 0 := by
            unfold moebiusReal
            exact_mod_cast ArithmeticFunction.moebius_eq_zero_of_not_squarefree hs
          simp [hz]
      · have hz : moebiusReal r = 0 := by
          unfold moebiusReal
          exact_mod_cast ArithmeticFunction.moebius_eq_zero_of_not_squarefree hr
        simp [hz]
    · have hz : moebiusReal n = 0 := by
        unfold moebiusReal
        exact_mod_cast ArithmeticFunction.moebius_eq_zero_of_not_squarefree hn
      simp [hz]
  · have hz : moebiusReal m = 0 := by
      unfold moebiusReal
      exact_mod_cast ArithmeticFunction.moebius_eq_zero_of_not_squarefree hm
    simp [hz]

/-- The ORIGINAL causal Grams have no sign change. Their product
preserves the nonnegative fourfold exact-slope Möbius factor. -/
theorem signed_original_gram_collision_nonneg
    (T : ℝ) (hT : 0 ≤ T) (m n r s : ℕ)
    (hm : 1 ≤ m) (hn : 1 ≤ n) (hr : 1 ≤ r) (hs : 1 ≤ s)
    (hcross : m * s = n * r) :
    0 ≤ (moebiusReal m * moebiusReal n *
        pickupResponseGram T m n) *
      (moebiusReal r * moebiusReal s *
        pickupResponseGram T r s) := by
  have hsign := original_four_moebius_nonneg_of_exactSlope
    m n r s hcross
  have hgram1 : 0 ≤ pickupResponseGram T m n :=
    responseGram_nonneg hm hn hT
  have hgram2 : 0 ≤ pickupResponseGram T r s :=
    responseGram_nonneg hr hs hT
  calc
    0 ≤ (moebiusReal m * moebiusReal n *
        moebiusReal r * moebiusReal s) *
        (pickupResponseGram T m n * pickupResponseGram T r s) :=
      mul_nonneg hsign (mul_nonneg hgram1 hgram2)
    _ = (moebiusReal m * moebiusReal n *
        pickupResponseGram T m n) *
      (moebiusReal r * moebiusReal s *
        pickupResponseGram T r s) := by ring

/-- Each actual ratio-weight PRODUCT with equal INTEGER rational slope
is nonnegative, including every original nonunit-denominator and
offdiagonal mask (those masked terms are literally zero). -/
theorem original_ratio_pair_weights_mul_nonneg_of_exactSlope
    (q : ℕ) [NeZero q] (T : ℝ) (hT : 0 ≤ T)
    (p t : ℕ × ℕ)
    (hp : p ∈ GRWTSK.NumberTheory.Moebius.DirichletSignedCrossRatioMoment.originalPairInventory T)
    (ht : t ∈ GRWTSK.NumberTheory.Moebius.DirichletSignedCrossRatioMoment.originalPairInventory T)
    (hcross : p.1 * t.2 = p.2 * t.1) :
    0 ≤ originalRealRatioPairWeight q T p *
        originalRealRatioPairWeight q T t := by
  have hm : 1 ≤ p.1 :=
    (Finset.mem_Icc.mp (Finset.mem_product.mp hp).1).1
  have hn : 1 ≤ p.2 :=
    (Finset.mem_Icc.mp (Finset.mem_product.mp hp).2).1
  have hr : 1 ≤ t.1 :=
    (Finset.mem_Icc.mp (Finset.mem_product.mp ht).1).1
  have hs : 1 ≤ t.2 :=
    (Finset.mem_Icc.mp (Finset.mem_product.mp ht).2).1
  by_cases hpMask : p.1 ≠ p.2 ∧ IsUnit (p.2 : ZMod q)
  · by_cases htMask : t.1 ≠ t.2 ∧ IsUnit (t.2 : ZMod q)
    · have hpos := signed_original_gram_collision_nonneg T hT
        p.1 p.2 t.1 t.2 hm hn hr hs hcross
      simpa [originalRealRatioPairWeight, hpMask, htMask] using hpos
    · simp [originalRealRatioPairWeight, htMask]
  · simp [originalRealRatioPairWeight, hpMask]

/-- Strengthens the previous global quartic positivity:
every exact integer-slope signed FOUR-index summand is nonnegative
before any ratio-class square or character average is formed. -/
theorem originalExactSlopeQuartic_each_term_nonneg
    (q : ℕ) [NeZero q] (T : ℝ) (hT : 0 ≤ T)
    (p t : ℕ × ℕ)
    (hp : p ∈ GRWTSK.NumberTheory.Moebius.DirichletSignedCrossRatioMoment.originalPairInventory T)
    (ht : t ∈ GRWTSK.NumberTheory.Moebius.DirichletSignedCrossRatioMoment.originalPairInventory T) :
    0 ≤ (if p.1 * t.2 = p.2 * t.1 ∧
          originalPairRatioKey q p ∈ originalUnitRatioSet q
        then originalRealRatioPairWeight q T p *
          originalRealRatioPairWeight q T t else 0) := by
  by_cases hsel : p.1 * t.2 = p.2 * t.1 ∧
      originalPairRatioKey q p ∈ originalUnitRatioSet q
  · simpa only [if_pos hsel] using
      (original_ratio_pair_weights_mul_nonneg_of_exactSlope
        q T hT p t hp ht hsel.1)
  · simp [hsel]

/-- Strictly stronger than the previous "globally nonnegative"
source assertion; the exact-slope quartic is a sum of individually
nonnegative ORIGINAL signed products, for every q and T>=0. -/
theorem originalExactSlopeQuartic_nonneg_termwise
    (q : ℕ) [NeZero q] (T : ℝ) (hT : 0 ≤ T) :
    0 ≤ originalExactSlopeQuartic q T := by
  unfold originalExactSlopeQuartic
  apply Finset.sum_nonneg
  intro p hp
  apply Finset.sum_nonneg
  intro t ht
  exact originalExactSlopeQuartic_each_term_nonneg q T hT p t hp ht

/-- In the actual original MODULAR ratio quartic source, the
no-alias condition q >= N(T)^2 converts every surviving ratio-key
collision into a literal integer-slope equation. A selected term
with a nonunit denominator is already zero by the ORIGINAL mask. -/
theorem originalQuarticCollision_each_term_nonneg_of_noAlias
    (q : ℕ) [NeZero q] (T : ℝ) (hT : 0 ≤ T)
    (hq : ⌊Real.exp T⌋₊ * ⌊Real.exp T⌋₊ ≤ q)
    (p t : ℕ × ℕ)
    (hp : p ∈ originalPairInventory T)
    (ht : t ∈ originalPairInventory T) :
    0 ≤ (if originalPairRatioKey q p = originalPairRatioKey q t ∧
          originalPairRatioKey q p ∈ originalUnitRatioSet q
        then originalRealRatioPairWeight q T p *
          originalRealRatioPairWeight q T t else 0) := by
  by_cases hsel : originalPairRatioKey q p = originalPairRatioKey q t ∧
      originalPairRatioKey q p ∈ originalUnitRatioSet q
  · by_cases hdenP : IsUnit (p.2 : ZMod q)
    · by_cases hdenT : IsUnit (t.2 : ZMod q)
      · have hcross := collision_key_eq_implies_exact_slope
          q T p t hp ht hq hdenP hdenT hsel.1
        simpa only [if_pos hsel] using
          (original_ratio_pair_weights_mul_nonneg_of_exactSlope
            q T hT p t hp ht hcross)
      · have hzero : originalRealRatioPairWeight q T t = 0 := by
          simp [originalRealRatioPairWeight, hdenT]
        simp [hsel, hzero]
    · have hzero : originalRealRatioPairWeight q T p = 0 := by
        simp [originalRealRatioPairWeight, hdenP]
      simp [hsel, hzero]
  · simp [hsel]

/-- The LARGE-q original ratio collision inherits termwise
nonnegativity, since the maintained no-alias theorem identifies
the actual modular source with the above integer-slope packet.
This does NOT hold without q>=N(T)^2. -/
theorem originalQuarticCollision_nonneg_via_exactSlope
    (q : ℕ) [NeZero q] (T : ℝ) (hT : 0 ≤ T)
    (hq : ⌊Real.exp T⌋₊ * ⌊Real.exp T⌋₊ ≤ q) :
    0 ≤ originalQuarticCollision q T := by
  unfold originalQuarticCollision
  apply Finset.sum_nonneg
  intro p hp
  apply Finset.sum_nonneg
  intro t ht
  exact originalQuarticCollision_each_term_nonneg_of_noAlias
    q T hT hq p t hp ht

end GRWTSK.NumberTheory.Moebius.ExactSlopeQuarticTermwisePositive
