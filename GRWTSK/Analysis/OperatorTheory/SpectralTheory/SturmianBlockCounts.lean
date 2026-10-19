/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Finite spectral facts retain Mathlib authorship and upstream licenses. -/
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.DirichletCut

/-!
# Actual Sturmian block counts with accumulated boundary and remainder error

Every count is the inclusive eigenvalue count of the literal finite Dirichlet
matrix. Blocks keep their actual integer origins. Each joining edge costs at
most two counts; the omitted remainder costs at most its dimension. No word
frequency, infinite-volume IDS, spectral gap or arithmetic cancellation is assumed.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Spectral.SturmianBlockCounts
open GRWTSK.Spectral.SturmianFiniteVolume
open GRWTSK.Spectral.MatrixCountComparison GRWTSK.Spectral.DirichletCut
open GRWTSK.LinearAlgebra.Sturmian

/-- Exact integer-origin shift of the literal half-open coding. -/
theorem bit_origin_to_phase (α ξ : ℝ) (origin n : ℤ) :
    bit α ξ (origin+n) = bit α (ξ+(origin:ℝ)*α) n := by
  unfold bit
  rw [show ξ+((origin+n:ℤ):ℝ)*α = (ξ+(origin:ℝ)*α)+(n:ℝ)*α by push_cast; ring]

theorem potential_origin_to_phase (α V ξ : ℝ) (origin n : ℤ) :
    potential α V ξ (origin+n) = potential α V (ξ+(origin:ℝ)*α) n := by
  unfold potential
  rw [bit_origin_to_phase]

theorem hamiltonian_origin_to_phase (N : ℕ) (α V ξ : ℝ) (origin : ℤ) :
    hamiltonian N α V ξ origin = hamiltonian N α V (ξ+(origin:ℝ)*α) 0 := by
  have hd : (fun i : Fin N ↦ potential α V ξ (origin+(i.val:ℤ))) =
      (fun i : Fin N ↦ potential α V (ξ+(origin:ℝ)*α) (0+(i.val:ℤ))) := by
    funext i
    simp only [zero_add]
    exact potential_origin_to_phase α V ξ origin (i.val:ℤ)
  unfold hamiltonian
  rw [hd]

/-- Transport actual eigenvalue counts through the matrix equality, retaining
their multiplicities through the characteristic-root count. -/
theorem count_origin_to_phase (N : ℕ) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    sturmianCount N α V ξ origin E = sturmianCount N α V (ξ+(origin:ℝ)*α) 0 E := by
  unfold sturmianCount
  rw [eigenvalueCount_eq_roots_card, eigenvalueCount_eq_roots_card,
    hamiltonian_origin_to_phase N α V ξ origin]

theorem count_le_volume (N : ℕ) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    sturmianCount N α V ξ origin E ≤ N := by
  unfold sturmianCount eigenvalueCount eigenvalueCut
  simpa using (Finset.card_filter_le (Finset.univ : Finset (Fin N))
    (fun i ↦ (hamiltonian_isHermitian N α V ξ origin).eigenvalues i ≤ E))

/-- Sum of actual equal-length consecutive block counts, before normalization. -/
def blockCountSum (q L : ℕ) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) : ℝ :=
  ∑ j ∈ Finset.range q, (sturmianCount L α V ξ (origin + ((j * L : ℕ) : ℤ)) E : ℝ)

/-- The true block sampling step is L*alpha, with the original phase retained. -/
theorem blockCountSum_phase (q L : ℕ) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    blockCountSum q L α V ξ origin E = ∑ j ∈ Finset.range q,
      (sturmianCount L α V ((ξ+(origin:ℝ)*α)+(j:ℝ)*((L:ℝ)*α)) 0 E : ℝ) := by
  unfold blockCountSum
  apply Finset.sum_congr rfl
  intro j _
  rw [count_origin_to_phase]
  have hp : ξ+((origin+((j*L:ℕ):ℤ):ℤ):ℝ)*α =
      (ξ+(origin:ℝ)*α)+(j:ℝ)*((L:ℝ)*α) := by push_cast; ring
  rw [hp]

theorem blockCountSum_succ (q L : ℕ) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    blockCountSum (q+1) L α V ξ origin E =
      (sturmianCount L α V ξ origin E : ℝ) +
        blockCountSum q L α V ξ (origin + (L : ℤ)) E := by
  unfold blockCountSum
  rw [Finset.sum_range_succ']
  simp only [zero_mul, Nat.cast_zero, add_zero]
  rw [add_comm]
  congr 1
  apply Finset.sum_congr rfl
  intro j _
  have hj : origin + (((j+1)*L : ℕ) : ℤ) =
      origin + (L : ℤ) + ((j*L : ℕ) : ℤ) := by push_cast; ring
  rw [hj]

/-- Repeated use of the actual rank-two cut, with the final remainder retained. -/
theorem block_count_error_with_remainder (q L r : ℕ) (hL : 0 < L)
    (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    |blockCountSum q L α V ξ origin E +
      (sturmianCount r α V ξ (origin + ((q*L : ℕ) : ℤ)) E : ℝ) -
      (sturmianCount (q*L+r) α V ξ origin E : ℝ)| ≤ 2*(q : ℝ) := by
  induction q generalizing origin with
  | zero => simp [blockCountSum]
  | succ q ih =>
    have hv : (q+1)*L+r = L+(q*L+r) := by ring
    have ho : origin + (((q+1)*L : ℕ) : ℤ) =
        origin + (L : ℤ) + ((q*L : ℕ) : ℤ) := by push_cast; ring
    rw [blockCountSum_succ, hv, ho]
    have hcut := adjacent_count_error L (q*L+r) hL α V ξ origin E
    calc
      _ = |(blockCountSum q L α V ξ (origin+(L:ℤ)) E +
          (sturmianCount r α V ξ (origin+(L:ℤ)+((q*L:ℕ):ℤ)) E : ℝ) -
          (sturmianCount (q*L+r) α V ξ (origin+(L:ℤ)) E : ℝ)) +
          ((sturmianCount L α V ξ origin E : ℝ) +
          (sturmianCount (q*L+r) α V ξ (origin+(L:ℤ)) E : ℝ) -
          (sturmianCount (L+(q*L+r)) α V ξ origin E : ℝ))| := by congr 1; ring
      _ ≤ |blockCountSum q L α V ξ (origin+(L:ℤ)) E +
          (sturmianCount r α V ξ (origin+(L:ℤ)+((q*L:ℕ):ℤ)) E : ℝ) -
          (sturmianCount (q*L+r) α V ξ (origin+(L:ℤ)) E : ℝ)| +
          |(sturmianCount L α V ξ origin E : ℝ) +
          (sturmianCount (q*L+r) α V ξ (origin+(L:ℤ)) E : ℝ) -
          (sturmianCount (L+(q*L+r)) α V ξ origin E : ℝ)| := abs_add_le _ _
      _ ≤ 2*(q:ℝ)+2 := add_le_add (ih (origin+(L:ℤ))) hcut
      _ = 2*((q+1:ℕ):ℝ) := by push_cast; ring

/-- For q complete blocks there are only q-1 joining edges. -/
theorem complete_block_count_error (q L : ℕ) (hL : 0 < L)
    (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    |blockCountSum q L α V ξ origin E - (sturmianCount (q*L) α V ξ origin E : ℝ)| ≤
      2*((q-1:ℕ):ℝ) := by
  cases q with
  | zero =>
    have hc : sturmianCount 0 α V ξ origin E = 0 :=
      Nat.eq_zero_of_le_zero (count_le_volume 0 α V ξ origin E)
    simp [blockCountSum, hc]
  | succ q =>
    have h := block_count_error_with_remainder q L L hL α V ξ origin E
    rw [show (q+1)*L = q*L+L by ring]
    simp only [Nat.add_sub_cancel]
    unfold blockCountSum at h ⊢
    rw [Finset.sum_range_succ]
    exact h

/-- Omitting the actual final block pays its full dimension, not zero. -/
theorem block_count_error (q L r : ℕ) (hL : 0 < L)
    (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    |blockCountSum q L α V ξ origin E -
      (sturmianCount (q*L+r) α V ξ origin E : ℝ)| ≤ 2*(q:ℝ)+(r:ℝ) := by
  have hr : 0 ≤ (sturmianCount r α V ξ (origin+((q*L:ℕ):ℤ)) E : ℝ) := Nat.cast_nonneg _
  have hb : (sturmianCount r α V ξ (origin+((q*L:ℕ):ℤ)) E : ℝ) ≤ r := by
    exact_mod_cast count_le_volume r α V ξ (origin+((q*L:ℕ):ℤ)) E
  calc
    _ = |(blockCountSum q L α V ξ origin E +
        (sturmianCount r α V ξ (origin+((q*L:ℕ):ℤ)) E : ℝ) -
        (sturmianCount (q*L+r) α V ξ origin E : ℝ)) +
        -(sturmianCount r α V ξ (origin+((q*L:ℕ):ℤ)) E : ℝ)| := by congr 1; ring
    _ ≤ |blockCountSum q L α V ξ origin E +
        (sturmianCount r α V ξ (origin+((q*L:ℕ):ℤ)) E : ℝ) -
        (sturmianCount (q*L+r) α V ξ origin E : ℝ)| +
        |-(sturmianCount r α V ξ (origin+((q*L:ℕ):ℤ)) E : ℝ)| := abs_add_le _ _
    _ ≤ 2*(q:ℝ)+(r:ℝ) := by
      rw [abs_neg, abs_of_nonneg hr]
      exact add_le_add (block_count_error_with_remainder q L r hL α V ξ origin E) hb

theorem normalized_block_count_error (q L r : ℕ) (hL : 0 < L)
    (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    |sturmianNormalizedCount (q*L+r) α V ξ origin E -
      blockCountSum q L α V ξ origin E / (q*L+r:ℕ)| ≤
      (2*(q:ℝ)+(r:ℝ))/(q*L+r:ℕ) := by
  rw [sturmianNormalizedCount, ← sub_div, abs_div, abs_of_nonneg (Nat.cast_nonneg (q*L+r) : (0:ℝ) ≤ (q*L+r:ℕ)),
    abs_sub_comm]
  exact div_le_div_of_nonneg_right (block_count_error q L r hL α V ξ origin E)
    (Nat.cast_nonneg _)

/-- Complete blocks use N/L and the true remainder N%L. The denominator is the
whole volume N, so this is a weighted block total rather than a q-block average. -/
theorem finite_block_approximation (N L : ℕ) (hN : 0 < N) (hL : 0 < L)
    (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    |sturmianNormalizedCount N α V ξ origin E -
      blockCountSum (N/L) L α V ξ origin E / N| ≤ 2/(L:ℝ)+(L:ℝ)/N := by
  have hn : (0:ℝ) < N := Nat.cast_pos.mpr hN
  have hl : (0:ℝ) < L := Nat.cast_pos.mpr hL
  have hd : N/L*L+N%L = N := by
    simpa [Nat.mul_comm, Nat.add_comm] using Nat.mod_add_div N L
  have hq : (N/L:ℕ)*L ≤ N := by omega
  have hqr : ((N/L:ℕ):ℝ)*(L:ℝ) ≤ N := by exact_mod_cast hq
  have hqbound : (2*(N/L:ℕ):ℝ)/(N:ℝ) ≤ 2/(L:ℝ) := by
    apply (div_le_div_iff₀ hn hl).mpr
    nlinarith
  have hr : (N%L:ℕ) ≤ L := (Nat.mod_lt N hL).le
  have hrr : ((N%L:ℕ):ℝ) ≤ L := by exact_mod_cast hr
  have h := normalized_block_count_error (N/L) L (N%L) hL α V ξ origin E
  rw [hd] at h
  calc
    _ ≤ (2*(N/L:ℕ)+(N%L:ℕ):ℝ)/N := h
    _ = (2*(N/L:ℕ):ℝ)/N+(N%L:ℕ)/N := by rw [add_div]
    _ ≤ 2/(L:ℝ)+(L:ℝ)/N :=
      add_le_add hqbound (div_le_div_of_nonneg_right hrr hn.le)

end GRWTSK.Spectral.SturmianBlockCounts
