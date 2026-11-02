/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib.NumberTheory.DirichletCharacter.Orthogonality
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionSingleBirthIntegralClosure
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Dirichlet-character orthogonality on the EXACT original physical source

For a positive modulus q, the pinned Mathlib theorem
DirichletCharacter.sum_char_inv_mul_char_eq gives the finite
orthogonality relation for ALL DirichletCharacter ℂ q, including
principal and imprimitive characters.

The original coefficients mu(n) and the immutable physical
birth-gated response pickupResponse n u are partitioned into
actual ZMod q residue fibers. Every twisted family response is
their finite character Fourier transform, with nonunit fibers
automatically annihilated by chi.

The new character-pair kernel is
  sum_(chi mod q) chi(a)*conj(chi(b))
    = phi(q)*1_(a=b and b is a unit).
It uses the PINNED MulChar.star_apply' and
DirichletCharacter.sum_char_inv_mul_char_eq, not an artificial
orthogonality premise.

Consequently the exact finite ordered Hermitian Gram summed over
all characters projects onto SAME-RESIDUE UNIT pairs of the
ORIGINAL Möbius K_T(m,n). The offdiagonal averaged character source
therefore vanishes for q>N=floor(exp T), since residues of
distinct integers 1<=m,n<=N cannot coincide modulo q.

This is genuine cross-character cancellation but NOT cancellation
of the signed source for any individual fixed chi, fixed q,
or a primitive-only family. It cannot imply GRH by itself.
All new theorem bodies are source proof candidates until
pinned compilation, expected types, fresh kernel replay, and
complete transitive axiom audit (ALL NOT_RUN).
-/

namespace GRWTSK.NumberTheory.Moebius.DirichletResidueOrthogonality

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup

variable (q : ℕ) [NeZero q]
classical

/-- Exact complex character orthogonality, even for nonunits,
where all original Dirichlet characters vanish. The complex
conjugation is essential; no real-only approximation. -/
theorem character_pair_orthogonality (a b : ZMod q) :
    (∑ χ : DirichletCharacter ℂ q, χ a * star (χ b)) =
      if IsUnit b ∧ a = b then (q.totient : ℂ) else 0 := by
  by_cases hb : IsUnit b
  · have hstar (χ : DirichletCharacter ℂ q) :
        star (χ b) = χ b⁻¹ := by
      rw [MulChar.star_apply' χ b, MulChar.inv_apply' χ b]
    have hcomm :
        (∑ χ : DirichletCharacter ℂ q, χ a * star (χ b)) =
        ∑ χ : DirichletCharacter ℂ q, χ b⁻¹ * χ a := by
      apply Finset.sum_congr rfl
      intro χ hχ
      rw [hstar]
      ring
    rw [hcomm, DirichletCharacter.sum_char_inv_mul_char_eq ℂ hb a]
    by_cases h : a = b
    · subst a
      simp [hb]
    · have h' : b ≠ a := Ne.symm h
      simp [hb, h, h']
  · have hzero (χ : DirichletCharacter ℂ q) : χ b = 0 :=
      MulChar.map_nonunit χ hb
    simp [hzero, hb]

/-- Purely finite source-independent Hermitian pair projector.
No asymptotic input and no analytic L-function continuation. -/
theorem sum_character_hermitian_pairs
    (S : Finset ℕ) (H : ℕ → ℕ → ℂ) :
    (∑ χ : DirichletCharacter ℂ q,
      ∑ m ∈ S, ∑ n ∈ S,
        χ (m : ZMod q) * star (χ (n : ZMod q)) * H m n) =
      (q.totient : ℂ) *
        ∑ m ∈ S, ∑ n ∈ S,
          if IsUnit (n : ZMod q) ∧
             (m : ZMod q) = (n : ZMod q)
          then H m n else 0 := by
  calc
    _ = ∑ m ∈ S, ∑ χ : DirichletCharacter ℂ q,
        ∑ n ∈ S,
          χ (m : ZMod q) * star (χ (n : ZMod q)) * H m n := by
      exact Finset.sum_comm
    _ = ∑ m ∈ S, ∑ n ∈ S,
        ∑ χ : DirichletCharacter ℂ q,
          χ (m : ZMod q) * star (χ (n : ZMod q)) * H m n := by
      apply Finset.sum_congr rfl
      intro m hm
      exact Finset.sum_comm
    _ = ∑ m ∈ S, ∑ n ∈ S,
        (∑ χ : DirichletCharacter ℂ q,
          χ (m : ZMod q) * star (χ (n : ZMod q))) * H m n := by
      apply Finset.sum_congr rfl
      intro m hm
      apply Finset.sum_congr rfl
      intro n hn
      rw [Finset.sum_mul]
    _ = ∑ m ∈ S, ∑ n ∈ S,
        if IsUnit (n : ZMod q) ∧
           (m : ZMod q) = (n : ZMod q)
        then (q.totient : ℂ) * H m n else 0 := by
      apply Finset.sum_congr rfl
      intro m hm
      apply Finset.sum_congr rfl
      intro n hn
      rw [character_pair_orthogonality q]
      split_ifs <;> ring
    _ = (q.totient : ℂ) *
        (∑ m ∈ S, ∑ n ∈ S,
          if IsUnit (n : ZMod q) ∧
             (m : ZMod q) = (n : ZMod q)
          then H m n else 0) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro m hm
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n hn
      split_ifs <;> ring

/-- Source-independent finite Fourier coefficient on the
ACTUAL residue group ZMod q. -/
def finiteCharacterFourier
    (χ : DirichletCharacter ℂ q) (f : ZMod q → ℂ) : ℂ :=
  ∑ a : ZMod q, χ a * f a

/-- Ordinary classical arithmetic Möbius source separated by its
TRUE residue class, retaining original causal birth gate. -/
def originalResidueWave
    (a : ZMod q) (T u : ℝ) : ℂ :=
  ∑ n ∈ endpointIndex T,
    if (n : ZMod q) = a then
      (ArithmeticFunction.moebius n : ℂ) *
        (pickupResponse n u : ℂ) else 0

/-- The EXACT Dirichlet-character twist of the ORIGINAL
Möbius physical response, with no replacement pickup kernel. -/
def originalCharacterWave
    (χ : DirichletCharacter ℂ q) (T u : ℝ) : ℂ :=
  ∑ n ∈ endpointIndex T,
    χ (n : ZMod q) *
      ((ArithmeticFunction.moebius n : ℂ) *
        (pickupResponse n u : ℂ))

/-- Transport the original Dirichlet-character source to its
finite residue-class Fourier coefficients. Nonunit classes
are automatically ignored by the true character values. -/
theorem originalCharacterWave_eq_residueFourier
    (χ : DirichletCharacter ℂ q) (T u : ℝ) :
    originalCharacterWave q χ T u =
      finiteCharacterFourier q χ
        (fun a => originalResidueWave q a T u) := by
  let S : Finset ℕ := endpointIndex T
  let w : ℕ → ℂ := fun n =>
    (ArithmeticFunction.moebius n : ℂ) *
      (pickupResponse n u : ℂ)
  unfold originalCharacterWave finiteCharacterFourier originalResidueWave
  change (∑ n ∈ S, χ (n : ZMod q) * w n) =
    ∑ a : ZMod q, χ a *
      (∑ n ∈ S, if (n : ZMod q) = a then w n else 0)
  calc
    (∑ n ∈ S, χ (n : ZMod q) * w n) =
        ∑ n ∈ S, ∑ a : ZMod q,
          χ a * (if (n : ZMod q) = a then w n else 0) := by
      apply Finset.sum_congr rfl
      intro n hn
      simp
    _ = ∑ a : ZMod q, ∑ n ∈ S,
          χ a * (if (n : ZMod q) = a then w n else 0) := by
      exact Finset.sum_comm
    _ = ∑ a : ZMod q, χ a *
        (∑ n ∈ S, if (n : ZMod q) = a then w n else 0) := by
      apply Finset.sum_congr rfl
      intro a ha
      rw [Finset.mul_sum]

/-- Exact existing generalized Möbius coefficient identity
specialized to the original causal source. -/
theorem originalCharacterWave_eq_familyResponse
    (χ : DirichletCharacter ℂ q) (T u : ℝ) :
    originalCharacterWave q χ T u =
      familyFiniteResponse (dirichletCharacterCoefficients χ) T u := by
  unfold originalCharacterWave familyFiniteResponse
  apply Finset.sum_congr rfl
  intro n hn
  rw [dirichletCharacter_mobius_apply]
  ring

/-- The original two-orientation causal Gram weight in ℂ,
still with its true physical K_T and classical arithmetic μ. -/
def originalSourcePair (T : ℝ) (m n : ℕ) : ℂ :=
  (ArithmeticFunction.moebius m : ℂ) *
    (ArithmeticFunction.moebius n : ℂ) *
      (pickupResponseGram T m n : ℂ)

/-- Exact ORIGINAL source full ordered Gram, projected by the
finite Dirichlet character family onto UNIT SAME-RESIDUE pairs.
The right side retains diagonal and both orientations. -/
theorem originalFullGram_characterAverage (T : ℝ) :
    (∑ χ : DirichletCharacter ℂ q,
      ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
        χ (m : ZMod q) * star (χ (n : ZMod q)) *
          originalSourcePair T m n) =
      (q.totient : ℂ) *
        (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
          if IsUnit (n : ZMod q) ∧
             (m : ZMod q) = (n : ZMod q)
          then originalSourcePair T m n else 0) :=
  sum_character_hermitian_pairs q (endpointIndex T)
    (originalSourcePair T)

/-- Exact SOURCE offdiagonal character average. The residue
projector is the only surviving source, with real Möbius signs
and exact original pickupResponseGram. -/
theorem originalOffdiag_characterAverage (T : ℝ) :
    (∑ χ : DirichletCharacter ℂ q,
      ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
        χ (m : ZMod q) * star (χ (n : ZMod q)) *
          (if m ≠ n then originalSourcePair T m n else 0)) =
      (q.totient : ℂ) *
        (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
          if IsUnit (n : ZMod q) ∧
             (m : ZMod q) = (n : ZMod q) ∧ m ≠ n
          then originalSourcePair T m n else 0) := by
  have h := sum_character_hermitian_pairs q
    (endpointIndex T)
    (fun m n => if m ≠ n then originalSourcePair T m n else 0)
  calc
    _ = (q.totient : ℂ) *
        (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
          if IsUnit (n : ZMod q) ∧
             (m : ZMod q) = (n : ZMod q)
          then (if m ≠ n then originalSourcePair T m n else 0)
          else 0) := h
    _ = (q.totient : ℂ) *
        (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
          if IsUnit (n : ZMod q) ∧
             (m : ZMod q) = (n : ZMod q) ∧ m ≠ n
          then originalSourcePair T m n else 0) := by
      congr 1
      apply Finset.sum_congr rfl
      intro m hm
      apply Finset.sum_congr rfl
      intro n hn
      by_cases hu : IsUnit (n : ZMod q)
      · by_cases heq : (m : ZMod q) = (n : ZMod q)
        · by_cases hne : m ≠ n
          · simp [hu, heq, hne]
          · simp [hu, heq, hne]
        · simp [hu, heq]
      · simp [hu]

/-- When the modulus is larger than the entire original endpoint
inventory, two DISTINCT positive original source indices cannot
share a residue. Consequently the sum of the signed FULL
offdiagonal source over ALL characters is exactly zero.
This says NOTHING about an individual character or fixed q
as T tends to infinity. -/
theorem originalOffdiag_characterAverage_zero_of_largeModulus
    (T : ℝ) (hq : ⌊Real.exp T⌋₊ < q) :
    (∑ χ : DirichletCharacter ℂ q,
      ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
        χ (m : ZMod q) * star (χ (n : ZMod q)) *
          (if m ≠ n then originalSourcePair T m n else 0)) = 0 := by
  rw [originalOffdiag_characterAverage q T]
  have hz :
      (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
        if IsUnit (n : ZMod q) ∧
           (m : ZMod q) = (n : ZMod q) ∧ m ≠ n
        then originalSourcePair T m n else 0) = 0 := by
    apply Finset.sum_eq_zero
    intro m hm
    apply Finset.sum_eq_zero
    intro n hn
    have hm_lt : m < q := (Finset.mem_Icc.mp hm).2.trans_lt hq
    have hn_lt : n < q := (Finset.mem_Icc.mp hn).2.trans_lt hq
    have hinj :
        (m : ZMod q) = (n : ZMod q) → m = n := by
      intro hmn
      have hmod := (ZMod.natCast_eq_natCast_iff' m n q).mp hmn
      simpa [Nat.mod_eq_of_lt hm_lt,
        Nat.mod_eq_of_lt hn_lt] using hmod
    by_cases hcond :
        IsUnit (n : ZMod q) ∧
          (m : ZMod q) = (n : ZMod q) ∧ m ≠ n
    · exact False.elim (hcond.2.2 (hinj hcond.2.1))
    · simp [hcond]
  rw [hz, mul_zero]

end GRWTSK.NumberTheory.Moebius.DirichletResidueOrthogonality
