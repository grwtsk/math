/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported project and Mathlib results retain their upstream credit and licenses.
Owner: #942. Stacked parent: draft PR #1070 at
dc0d2d7cc6e0f18ac45fd32fcfa1f7e34b25a23a.
Evidence: SOURCE_DRAFT / NOT_ELABORATED / NOT_KERNEL_CHECKED.
-/
import GRWTSK.NumberTheory.Moebius.AnchoredAuthenticCenteredDefectComparison
import Mathlib.Tactic

/-!
# Four-family finite centered matrix and the actual thin Green Fourier head

The four labels are the two *actual* endpoint parities r=0,1 and the
even/odd positive-half-shift sets already defined by the regular-orbit
source. At endpoint b=2X, every positive anchored factor a divides some
target n in (X,2X] and has one unique selected (parity,shift-parity,center)
cell. In that selected cell, the original centered amplitude is the
anchored pair coefficient PLUS the explicitly retained other-shift defect.

This module defines the exact finite REAL coefficient matrix with:
  rows: Green arithmetic target n in (X,2X];
  columns: four canonical family labels times centers 0 <= c <= 2X;
  entry: signed divisor-log weights of precisely the anchored factors
         selecting that column.
Its linear application to the genuine centered-amplitude vector, MINUS
the signed other-shift defect and PLUS the earlier a=1,2 zero-shift
boundary, equals the literal von Mangoldt coefficient.

The identical formula is transported, preserving the original 1/n,
complex cast, Fourier test at n/X-1 and the independent continuum
background, to the *thin* Fourier readout. The finite Fourier head uses
the historical shell order k=j and k=-(j+1) for j in [0,N).

IMPORTANT: the distinct historical DyadicGreenArithmeticFourierCoordinate
source also declares greenFourierBackgroundCoordinate in this namespace.
It is not imported here. Therefore equality of this thin head with
greenArithmeticFourierHead / fullGreenArithmeticCoordinateStage is still
a separately named cross-import compatibility obstruction. Neither
this signed matrix nor its finite head proves a uniform estimate or RH.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open GRWTSK.RiemannHypothesis

/-- Exactly four labels: endpoint parity and positive-half-shift parity. -/
abbrev CanonicalFourFamily := Bool × Bool

/-- The actual even or odd positive shift family at one endpoint, with NO
support enlargement. -/
def canonicalFourFamilyShiftSet (b : ℕ) (F : CanonicalFourFamily) :
    Finset ℕ :=
  if F.2 then positiveEndpointOddShiftSet b
  else positiveEndpointEvenShiftSet b

/-- Endpoint parity corresponding to a family label, literally 0 or 1. -/
def canonicalFourFamilyEndpointParity (F : CanonicalFourFamily) : ℕ :=
  if F.1 then 1 else 0

/-- The unique label of an actual anchored pair: original endpoint parity
and the parity of the original (not doubled) half-shift. -/
def canonicalFourFamilyOfAnchor (a : ℕ) : CanonicalFourFamily :=
  (decide ((anchoredMobiusPair a).r = 1),
    decide ((anchoredMobiusPair a).h % 2 = 1))

theorem canonicalFourFamilyEndpointParity_of_anchor (a : ℕ) :
    canonicalFourFamilyEndpointParity (canonicalFourFamilyOfAnchor a) =
      (anchoredMobiusPair a).r := by
  by_cases he : a % 2 = 0
  · simp [canonicalFourFamilyEndpointParity, canonicalFourFamilyOfAnchor,
      anchoredMobiusPair, he]
  · simp [canonicalFourFamilyEndpointParity, canonicalFourFamilyOfAnchor,
      anchoredMobiusPair, he]

/-- For every actual positive-shift anchored factor, the selected
even/odd canonical family contains its shift, including the endpoint
and integer-parity constraints. -/
theorem canonicalFourFamily_selected_shift_mem
    {b a : ℕ} (ha : 0 < a) (hab : a ≤ b)
    (hpos : 0 < (anchoredMobiusPair a).h) :
    (anchoredMobiusPair a).h ∈
      canonicalFourFamilyShiftSet b (canonicalFourFamilyOfAnchor a) := by
  classical
  have hright := anchored_center_add_shift_add_parity_eq_right a
  rw [anchoredMobiusPair_right ha] at hright
  have hle : (anchoredMobiusPair a).h ≤ b := by omega
  have hbase :
      (anchoredMobiusPair a).h ∈ positiveEndpointShiftSet b := by
    unfold positiveEndpointShiftSet
    exact Finset.mem_Ico.mpr ⟨by omega, by omega⟩
  by_cases hodd : (anchoredMobiusPair a).h % 2 = 1
  · have hs :
        (anchoredMobiusPair a).h ∈ positiveEndpointOddShiftSet b :=
      Finset.mem_filter.mpr ⟨hbase, hodd⟩
    simpa [canonicalFourFamilyShiftSet, canonicalFourFamilyOfAnchor,
      hodd] using hs
  · have heven : (anchoredMobiusPair a).h % 2 = 0 := by omega
    have hs :
        (anchoredMobiusPair a).h ∈ positiveEndpointEvenShiftSet b :=
      Finset.mem_filter.mpr ⟨hbase, heven⟩
    simpa [canonicalFourFamilyShiftSet, canonicalFourFamilyOfAnchor,
      hodd] using hs

/-- The selected anchor center lies in the literal closed center range
0 <= c <= 2X. -/
theorem canonicalFourFamily_anchor_center_mem_range
    {X a : ℕ} (ha : 0 < a) (haX : a ≤ 2 * X) :
    (anchoredMobiusPair a).center ∈ Finset.range (2 * X + 1) := by
  have hright := anchored_center_add_shift_add_parity_eq_right a
  rw [anchoredMobiusPair_right ha] at hright
  apply Finset.mem_range.mpr
  omega

/-- The four by (2X+1) TRUE integer-center source amplitude vector. -/
def canonicalFourFamilyCenteredData
    (X : ℕ) (F : CanonicalFourFamily) (c : ℕ) : ℝ :=
  parityCenteredIntegerCoordinateAmplitude (2 * X)
    (canonicalFourFamilyEndpointParity F)
    (canonicalFourFamilyShiftSet (2 * X) F) c

/-- The source-specific residual identity on the unique selected family
cell. The other-shift defect has its EXACT signed source meaning. -/
theorem canonicalFourFamily_anchor_cell_minus_other_eq_coefficient
    {X a : ℕ} (ha : 0 < a) (haX : a ≤ 2 * X)
    (hpos : 0 < (anchoredMobiusPair a).h) :
    canonicalFourFamilyCenteredData X (canonicalFourFamilyOfAnchor a)
        (anchoredMobiusPair a).center -
      anchoredAuthenticOtherShiftDefect (2 * X) a
        (canonicalFourFamilyShiftSet (2 * X) (canonicalFourFamilyOfAnchor a)) =
          (anchoredMobiusPair a).coefficient := by
  have hH := canonicalFourFamily_selected_shift_mem ha haX hpos
  have hsource :=
    authentic_center_amplitude_eq_anchor_add_other_shift
      ha haX
      (canonicalFourFamilyShiftSet (2 * X) (canonicalFourFamilyOfAnchor a))
  rw [if_pos hH] at hsource
  unfold canonicalFourFamilyCenteredData
  rw [canonicalFourFamilyEndpointParity_of_anchor]
  linarith

/-- Literal source-indexed real matrix:
rows n, columns (one of four families, center c).
The entry is the signed Möbius-log DIVISOR-INCIDENCE weight, and
contains no Möbius coefficient or unproved source energy. -/
def canonicalFourFamilyGreenMatrixEntry
    (X n : ℕ) (F : CanonicalFourFamily) (c : ℕ) : ℝ :=
  ∑ p ∈ n.divisorsAntidiagonal,
    if p.1 ∈ anchoredDyadicSourceIndices X ∧
        0 < (anchoredMobiusPair p.1).h ∧
        F = canonicalFourFamilyOfAnchor p.1 ∧
        c = (anchoredMobiusPair p.1).center then
      anchoredPairSign p.1 * (ArithmeticFunction.log p.2 : ℝ)
    else 0

/-- Exact finite matrix multiplication on a four-family center vector. -/
def canonicalFourFamilyGreenMatrixApply
    (X n : ℕ) (v : CanonicalFourFamily → ℕ → ℝ) : ℝ :=
  ∑ F : CanonicalFourFamily,
    ∑ c ∈ Finset.range (2 * X + 1),
      canonicalFourFamilyGreenMatrixEntry X n F c * v F c

/-- A one-hot (family,center) cell is counted ONCE, not four times. -/
private theorem canonicalFourFamily_oneHot
    {X a : ℕ} (ha : 0 < a) (haX : a ≤ 2 * X)
    (w : ℝ) (v : CanonicalFourFamily → ℕ → ℝ) :
    (∑ F : CanonicalFourFamily,
      ∑ c ∈ Finset.range (2 * X + 1),
        (if F = canonicalFourFamilyOfAnchor a ∧
            c = (anchoredMobiusPair a).center then w else 0) * v F c) =
      w * v (canonicalFourFamilyOfAnchor a)
        (anchoredMobiusPair a).center := by
  classical
  have hc := canonicalFourFamily_anchor_center_mem_range ha haX
  calc
    _ = ∑ F : CanonicalFourFamily,
      if F = canonicalFourFamilyOfAnchor a then
        w * v F (anchoredMobiusPair a).center else 0 := by
          apply Finset.sum_congr rfl
          intro F _hF
          by_cases hF : F = canonicalFourFamilyOfAnchor a
          · simp [hF, hc, Finset.sum_ite_eq']
          · simp [hF]
    _ = _ := by simp

/-- Finite matrix semantics: explicit multiplication of the four-family
center vector equals the one-hot anchored-factor sum. All rows and
columns are source-indexed, with exact integer center multiplicity. -/
theorem canonicalFourFamilyGreenMatrixApply_eq_divisor
    (X n : ℕ) (v : CanonicalFourFamily → ℕ → ℝ) :
    canonicalFourFamilyGreenMatrixApply X n v =
      ∑ p ∈ n.divisorsAntidiagonal,
        if p.1 ∈ anchoredDyadicSourceIndices X ∧
            0 < (anchoredMobiusPair p.1).h then
          (anchoredPairSign p.1 * (ArithmeticFunction.log p.2 : ℝ)) *
            v (canonicalFourFamilyOfAnchor p.1)
              (anchoredMobiusPair p.1).center
        else 0 := by
  classical
  unfold canonicalFourFamilyGreenMatrixApply
    canonicalFourFamilyGreenMatrixEntry
  simp_rw [Finset.sum_mul]
  calc
    (∑ F : CanonicalFourFamily,
      ∑ c ∈ Finset.range (2 * X + 1),
        ∑ p ∈ n.divisorsAntidiagonal,
          (if p.1 ∈ anchoredDyadicSourceIndices X ∧
              0 < (anchoredMobiusPair p.1).h ∧
              F = canonicalFourFamilyOfAnchor p.1 ∧
              c = (anchoredMobiusPair p.1).center then
            anchoredPairSign p.1 * (ArithmeticFunction.log p.2 : ℝ)
           else 0) * v F c) =
      ∑ F : CanonicalFourFamily,
        ∑ p ∈ n.divisorsAntidiagonal,
          ∑ c ∈ Finset.range (2 * X + 1),
            (if p.1 ∈ anchoredDyadicSourceIndices X ∧
                0 < (anchoredMobiusPair p.1).h ∧
                F = canonicalFourFamilyOfAnchor p.1 ∧
                c = (anchoredMobiusPair p.1).center then
              anchoredPairSign p.1 * (ArithmeticFunction.log p.2 : ℝ)
             else 0) * v F c := by
               apply Finset.sum_congr rfl
               intro F _hF
               rw [Finset.sum_comm]
    _ = ∑ p ∈ n.divisorsAntidiagonal,
        ∑ F : CanonicalFourFamily,
          ∑ c ∈ Finset.range (2 * X + 1),
            (if p.1 ∈ anchoredDyadicSourceIndices X ∧
                0 < (anchoredMobiusPair p.1).h ∧
                F = canonicalFourFamilyOfAnchor p.1 ∧
                c = (anchoredMobiusPair p.1).center then
              anchoredPairSign p.1 * (ArithmeticFunction.log p.2 : ℝ)
             else 0) * v F c := by rw [Finset.sum_comm]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro p hp
      by_cases hs : p.1 ∈ anchoredDyadicSourceIndices X
      · by_cases hpos : 0 < (anchoredMobiusPair p.1).h
        · have ha : 0 < p.1 := by
            have hzero := Nat.left_ne_zero_of_mem_divisorsAntidiagonal hp
            omega
          have haX : p.1 ≤ 2 * X :=
            (Finset.mem_Icc.mp hs).2
          have hone :=
            canonicalFourFamily_oneHot ha haX
              (anchoredPairSign p.1 * (ArithmeticFunction.log p.2 : ℝ)) v
          simpa [hs, hpos] using hone
        · simp [hs, hpos]
      · simp [hs]

/-- The omitted OTHER-SHIFT channel, with the canonical family chosen
at every single factor. This signed channel need not be small. -/
def canonicalFourFamilyOtherShiftDivisor
    (X n : ℕ) : ℝ :=
  ∑ p ∈ n.divisorsAntidiagonal,
    if p.1 ∈ anchoredDyadicSourceIndices X ∧
        0 < (anchoredMobiusPair p.1).h then
      (anchoredPairSign p.1 * (ArithmeticFunction.log p.2 : ℝ)) *
        anchoredAuthenticOtherShiftDefect (2 * X) p.1
          (canonicalFourFamilyShiftSet (2 * X) (canonicalFourFamilyOfAnchor p.1))
    else 0

/-- Exactly correct the finite matrix on its TRUE arithmetic data.
No absolute values or independent Cauchy bounds are introduced. -/
theorem canonicalFourFamilyMatrix_minus_other_eq_positiveAnchored
    {X n : ℕ} (hn : n ∈ centeredGreenWindow X) :
    canonicalFourFamilyGreenMatrixApply X n
        (canonicalFourFamilyCenteredData X) -
      canonicalFourFamilyOtherShiftDivisor X n =
        anchoredPositiveShiftDivisorTransform X n
          (fun a => (anchoredMobiusPair a).coefficient) := by
  rw [canonicalFourFamilyGreenMatrixApply_eq_divisor]
  unfold canonicalFourFamilyOtherShiftDivisor
    anchoredPositiveShiftDivisorTransform
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro p hp
  by_cases hs : p.1 ∈ anchoredDyadicSourceIndices X
  · by_cases hpos : 0 < (anchoredMobiusPair p.1).h
    · have ha : 0 < p.1 := by
        have hzero := Nat.left_ne_zero_of_mem_divisorsAntidiagonal hp
        omega
      have haX : p.1 ≤ 2 * X :=
        (Finset.mem_Icc.mp hs).2
      have hcell :=
        canonicalFourFamily_anchor_cell_minus_other_eq_coefficient ha haX hpos
      simp only [hs, hpos, and_self, if_true]
      calc
        _ = (anchoredPairSign p.1 * (ArithmeticFunction.log p.2 : ℝ)) *
            (canonicalFourFamilyCenteredData X (canonicalFourFamilyOfAnchor p.1)
              (anchoredMobiusPair p.1).center -
              anchoredAuthenticOtherShiftDefect (2 * X) p.1
                (canonicalFourFamilyShiftSet (2 * X)
                  (canonicalFourFamilyOfAnchor p.1))) := by ring
        _ = (anchoredPairSign p.1 * (ArithmeticFunction.log p.2 : ℝ)) *
              (anchoredMobiusPair p.1).coefficient := by rw [hcell]
        _ = _ := by ring
    · simp [hs, hpos]
  · simp [hs]

/-- Inherited a=1,2 zero-shift correction with no sign or domain changes. -/
def canonicalFourFamilyZeroShiftBoundary (n : ℕ) : ℝ :=
  Real.log (n : ℝ) -
    (if 2 ∣ n then Real.log ((n / 2 : ℕ) : ℝ) else 0)

/-- The signed matrix and TWO exact correction channels (other shifts,
zero shift) recover the literal von Mangoldt input at every source window
point. This is ONE exact coefficient-level supplier. -/
theorem vonMangoldt_eq_canonicalFourFamilyMatrix_corrected
    {X n : ℕ} (hn : n ∈ centeredGreenWindow X) :
    ArithmeticFunction.vonMangoldt n =
      canonicalFourFamilyGreenMatrixApply X n
          (canonicalFourFamilyCenteredData X) -
        canonicalFourFamilyOtherShiftDivisor X n +
        canonicalFourFamilyZeroShiftBoundary n := by
  calc
    ArithmeticFunction.vonMangoldt n =
        anchoredPositiveShiftDivisorTransform X n
          (fun a => (anchoredMobiusPair a).coefficient) +
          canonicalFourFamilyZeroShiftBoundary n := by
            simpa [canonicalFourFamilyZeroShiftBoundary] using
              vonMangoldt_eq_positiveAnchored_add_boundary hn
    _ = _ := by
      rw [← canonicalFourFamilyMatrix_minus_other_eq_positiveAnchored hn]

/-- The finite complex Fourier row of the exact source coefficient matrix,
with original 1/n, complex casting and location n/X-1. -/
def canonicalFourFamilyFourierMatrixEntry
    (X : ℕ) (k : ℤ) (F : CanonicalFourFamily) (c : ℕ) : ℂ :=
  ∑ n ∈ centeredGreenWindow X,
    (((canonicalFourFamilyGreenMatrixEntry X n F c) / (n : ℝ) : ℝ) : ℂ) *
      fourierModeValue k (centeredGreenLocation X n)

/-- Exact finite thin Green coordinate reconstructed from the four-family
real coefficient matrix, signed other-shift defect and zero-shift boundary.
The continuum background is an independent complex scalar. -/
def canonicalFourFamilyThinFourierCoordinate (X : ℕ) (k : ℤ) : ℂ :=
  greenFourierBackgroundCoordinate k -
    ∑ n ∈ centeredGreenWindow X,
      (((canonicalFourFamilyGreenMatrixApply X n
            (canonicalFourFamilyCenteredData X) -
          canonicalFourFamilyOtherShiftDivisor X n +
          canonicalFourFamilyZeroShiftBoundary n) / (n : ℝ) : ℝ) : ℂ) *
        fourierModeValue k (centeredGreenLocation X n)

/-- The matrix/readout EXACTLY reproduces the named existing thin Green
Fourier coordinate, without an analytic bound or zero theorem. -/
theorem canonicalFourFamilyThinFourierCoordinate_eq_thinGreen
    (X : ℕ) (k : ℤ) :
    canonicalFourFamilyThinFourierCoordinate X k =
      thinGreenArithmeticFourierCoordinate X k := by
  unfold canonicalFourFamilyThinFourierCoordinate
    thinGreenArithmeticFourierCoordinate
  have hprime :
      (∑ n ∈ centeredGreenWindow X,
        (((canonicalFourFamilyGreenMatrixApply X n
              (canonicalFourFamilyCenteredData X) -
            canonicalFourFamilyOtherShiftDivisor X n +
            canonicalFourFamilyZeroShiftBoundary n) / (n : ℝ) : ℝ) : ℂ) *
          fourierModeValue k (centeredGreenLocation X n)) =
        centeredGreenPrimeCoordinate X (fourierModeValue k) := by
    unfold centeredGreenPrimeCoordinate
    apply Finset.sum_congr rfl
    intro n hn
    unfold centeredGreenArithmeticCoefficient
    rw [vonMangoldt_eq_canonicalFourFamilyMatrix_corrected hn]
  rw [hprime]

/-- The finite shell uses the actual historical order:
k=j and k=-(j+1), including the zero mode only in the first shell. -/
def canonicalFourFamilyThinFourierShell (X j : ℕ) : ℝ :=
  ‖canonicalFourFamilyThinFourierCoordinate X (j : ℤ)‖ ^ 2 +
    ‖canonicalFourFamilyThinFourierCoordinate X (-((j : ℤ) + 1))‖ ^ 2

def canonicalFourFamilyThinFourierHead (X N : ℕ) : ℝ :=
  ∑ j ∈ Finset.range N, canonicalFourFamilyThinFourierShell X j

/-- Head of the ACTUAL named thin Fourier coordinate in the same original
finite positive/negative frequency order. Kept distinct from the historical
greenArithmeticFourierHead pending a cross-stack declaration comparison. -/
def originalThinGreenFourierHead (X N : ℕ) : ℝ :=
  ∑ j ∈ Finset.range N,
    (‖thinGreenArithmeticFourierCoordinate X (j : ℤ)‖ ^ 2 +
      ‖thinGreenArithmeticFourierCoordinate X (-((j : ℤ) + 1))‖ ^ 2)

/-- No truncation loss, missing negative mode or shell renormalization. -/
theorem canonicalFourFamilyThinFourierHead_eq_originalThinHead
    (X N : ℕ) :
    canonicalFourFamilyThinFourierHead X N =
      originalThinGreenFourierHead X N := by
  unfold canonicalFourFamilyThinFourierHead
    originalThinGreenFourierHead canonicalFourFamilyThinFourierShell
  apply Finset.sum_congr rfl
  intro j _hj
  rw [canonicalFourFamilyThinFourierCoordinate_eq_thinGreen,
    canonicalFourFamilyThinFourierCoordinate_eq_thinGreen]

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.canonicalFourFamily_selected_shift_mem
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.canonicalFourFamilyGreenMatrixApply_eq_divisor
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.canonicalFourFamilyMatrix_minus_other_eq_positiveAnchored
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.vonMangoldt_eq_canonicalFourFamilyMatrix_corrected
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.canonicalFourFamilyThinFourierCoordinate_eq_thinGreen
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.canonicalFourFamilyThinFourierHead_eq_originalThinHead
