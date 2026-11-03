/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalGcdTimeShift
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEnergyMatchedWeakResidual
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongEarlyIndexCollar
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# TRUE energy-matched physical strong mask after gcd/time shift

The original source-labelled Euclidean Tube 2 shadings have TRUE
intersection area
    pi*min(sourceDiagonal(T,m),sourceDiagonal(T,n)).
At the ORIGINAL integer horizon and for distinct indices,
the genuine source angular collar is AUTOMATIC outside the
already-paid Putnam additive gap H. Therefore the previously
geometric-appearing original strong predicate is EQUIVALENT to
the precise arithmetic SOURCE:
    |m-n|>H and min(d_m(T),d_n(T))>=q_N(T),
where q_N=(floor(exp T)+1)^(-6), and n,m are true original
endpoint indices.

For squarefree m=g*a and n=g*b, the newly proved-as-source
causal Gram time shift yields
    d_(g*a)(T)=(1/g)*d_a(T-log g)
and likewise for b. Hence the physical overlap threshold
becomes the shifted-source inequality
    min(d_a(T-log g),d_b(T-log g)) >= g*q_N(T).
The original gap condition remains g*|a-b|>H.

This is an EXACT SOURCE MASK COMPARISON, not a replacement
of original energy by a hypothetical geometry and NOT a
proof of any two-point Mobius cancellation. In particular,
the original threshold q_N(T) does not become q_(N/g)
unless a separate arithmetic identity is proved.

All theorems remain Lean proof candidates; source masks,
physical-time normalization and original labels are preserved.
-/

namespace GRWTSK.NumberTheory.Moebius.PrimitiveGcdOriginalMask

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.StrongEarlyIndexCollar
open GRWTSK.NumberTheory.Moebius.StrongPacketEnergyReturn
open GRWTSK.NumberTheory.Moebius.EnergyMatchedArithmeticTube
open GRWTSK.NumberTheory.Moebius.EnergyMatchedWeakResidual
open GRWTSK.NumberTheory.Moebius.StereographicTubeResidual
open GRWTSK.NumberTheory.Moebius.PutnamKakeyaSignedResidual
open GRWTSK.NumberTheory.Moebius.CausalGcdTimeShift
open GRWTSK.NumberTheory.Moebius.FareyFaryKakeyaIncidence

classical

/-- For the ORIGINAL actual positive integer indices, the
physical/projective strong relation is EXACTLY the arithmetic
far-gap and genuine original diagonal-energy condition.
The requirement m!=n is essential: Nat.dist m m=0 is not in
shortGapSet, but the positive angular collar excludes it. -/
theorem strong_iff_far_and_true_diagonals
    {T : ℝ} (hT : 0 ≤ T)
    (H m n : ℕ)
    (hm : m ∈ endpointIndex T) (hn : n ∈ endpointIndex T)
    (hmn : m ≠ n) :
    originalStrongRelation H T m n ↔
      H < Nat.dist m n ∧
        weakEnergyThreshold T ≤
          min (sourceDiagonal T m) (sourceDiagonal T n) := by
  have hdistpos : 1 ≤ Nat.dist m n := by
    have hne : Nat.dist m n ≠ 0 := by
      intro hz
      exact hmn (Nat.dist_eq_zero.mp hz)
    omega
  have hmass :=
    originalEnergyFamily_pair_mass hT m n hm hn
  constructor
  · intro h
    obtain ⟨hgap,hangle,hmass_ge⟩ := h
    have hfar : H < Nat.dist m n := by
      have hnot : Nat.dist m n ∉ shortGapSet H := hgap
      simp only [shortGapSet, Finset.mem_Icc] at hnot
      omega
    have henergy :
        Real.pi * weakEnergyThreshold T ≤
          Real.pi *
            min (sourceDiagonal T m) (sourceDiagonal T n) := by
      simpa only [hmass, weakPhysicalThreshold] using hmass_ge
    exact ⟨hfar,(mul_le_mul_left Real.pi_pos).mp henergy⟩
  · rintro ⟨hfar,hdiag⟩
    have hnot : Nat.dist m n ∉ shortGapSet H := by
      simp only [shortGapSet, Finset.mem_Icc]
      omega
    refine ⟨hnot,
      energyLongGap_separated T H m n hm hn hfar,?_⟩
    rw [hmass]
    exact mul_le_mul_of_nonneg_left hdiag Real.pi_pos.le

/-- The ACTUAL Euclidean physical pair mass of the two original
squarefree gcd-shared source indices is the old area pi times
1/g times the diagonal min at SHIFTED physical time. No chosen
Boolean or probability overlap is substituted. -/
theorem physicalMass_gcd_shifted
    {T : ℝ} (hT : 0 ≤ T)
    (g a b : ℕ) (hg : 1 ≤ g) (ha : 1 ≤ a) (hb : 1 ≤ b)
    (hga : Squarefree (g*a)) (hgb : Squarefree (g*b))
    (hgaMem : g*a ∈ endpointIndex T)
    (hgbMem : g*b ∈ endpointIndex T) :
    originalPhysicalPairMass (originalEnergyFamily T) (g*a) (g*b) =
      Real.pi * (g : ℝ)⁻¹ *
        min (sourceDiagonal (T - Real.log (g : ℝ)) a)
            (sourceDiagonal (T - Real.log (g : ℝ)) b) := by
  have hgpos : (0 : ℝ) < g := by exact_mod_cast (by omega : 0 < g)
  have hginv : 0 ≤ (g : ℝ)⁻¹ := inv_nonneg.mpr hgpos.le
  have hpair := originalEnergyFamily_pair_mass
    hT (g*a) (g*b) hgaMem hgbMem
  rw [sourceDiagonal_gcd_timeShift T g a hg ha hga,
      sourceDiagonal_gcd_timeShift T g b hg hb hgb] at hpair
  have hmin :
      min ((g : ℝ)⁻¹ *
            sourceDiagonal (T - Real.log (g : ℝ)) a)
          ((g : ℝ)⁻¹ *
            sourceDiagonal (T - Real.log (g : ℝ)) b) =
      (g : ℝ)⁻¹ *
        min (sourceDiagonal (T - Real.log (g : ℝ)) a)
            (sourceDiagonal (T - Real.log (g : ℝ)) b) := by
    rcases le_total
      (sourceDiagonal (T - Real.log (g : ℝ)) a)
      (sourceDiagonal (T - Real.log (g : ℝ)) b) with h | h
    · rw [min_eq_left h, min_eq_left
        (mul_le_mul_of_nonneg_left h hginv)]
    · rw [min_eq_right h, min_eq_right
        (mul_le_mul_of_nonneg_left h hginv)]
  rw [hmin] at hpair
  nlinarith [hpair]

/-- The exact scalar physical overlap threshold at the original
horizon can be read as a shifted-energy inequality with a factor g.
This does not bound its frequency or prove sign cancellation. -/
theorem original_strong_gcd_mask_iff_shifted
    {T : ℝ} (hT : 0 ≤ T)
    (H g a b : ℕ)
    (hg : 1 ≤ g) (ha : 1 ≤ a) (hb : 1 ≤ b)
    (hga : Squarefree (g*a)) (hgb : Squarefree (g*b))
    (hgaMem : g*a ∈ endpointIndex T)
    (hgbMem : g*b ∈ endpointIndex T)
    (hneq : g*a ≠ g*b) :
    originalStrongRelation H T (g*a) (g*b) ↔
      H < Nat.dist (g*a) (g*b) ∧
        (g : ℝ) * weakEnergyThreshold T ≤
          min (sourceDiagonal (T - Real.log (g : ℝ)) a)
              (sourceDiagonal (T - Real.log (g : ℝ)) b) := by
  have hgpos : (0 : ℝ) < g := by exact_mod_cast (by omega : 0 < g)
  have hb := strong_iff_far_and_true_diagonals
    hT H (g*a) (g*b) hgaMem hgbMem hneq
  have hdia_a := sourceDiagonal_gcd_timeShift T g a hg ha hga
  have hdia_b := sourceDiagonal_gcd_timeShift T g b hg hb hgb
  rw [hdia_a, hdia_b] at hb
  have hmin :
      min ((g : ℝ)⁻¹ *
            sourceDiagonal (T - Real.log (g : ℝ)) a)
          ((g : ℝ)⁻¹ *
            sourceDiagonal (T - Real.log (g : ℝ)) b) =
        (g : ℝ)⁻¹ *
          min (sourceDiagonal (T - Real.log (g : ℝ)) a)
              (sourceDiagonal (T - Real.log (g : ℝ)) b) := by
    have hc : 0 ≤ (g : ℝ)⁻¹ := inv_nonneg.mpr hgpos.le
    rcases le_total
      (sourceDiagonal (T - Real.log (g : ℝ)) a)
      (sourceDiagonal (T - Real.log (g : ℝ)) b) with h | h
    · rw [min_eq_left h, min_eq_left
        (mul_le_mul_of_nonneg_left h hc)]
    · rw [min_eq_right h, min_eq_right
        (mul_le_mul_of_nonneg_left h hc)]
  rw [hmin] at hb
  let z : ℝ :=
    min (sourceDiagonal (T - Real.log (g : ℝ)) a)
        (sourceDiagonal (T - Real.log (g : ℝ)) b)
  have hscale :
      weakEnergyThreshold T ≤ (g : ℝ)⁻¹ * z ↔
        (g : ℝ)*weakEnergyThreshold T ≤ z := by
    have heq : (g : ℝ)⁻¹ * z = z / (g : ℝ) := by ring
    rw [heq, le_div_iff₀ hgpos]
    simp only [mul_comm]
  rw [hb]
  constructor
  · rintro ⟨hfar,henergy⟩
    exact ⟨hfar, hscale.mp henergy⟩
  · rintro ⟨hfar,henergy⟩
    exact ⟨hfar, hscale.mpr henergy⟩

end GRWTSK.NumberTheory.Moebius.PrimitiveGcdOriginalMask
