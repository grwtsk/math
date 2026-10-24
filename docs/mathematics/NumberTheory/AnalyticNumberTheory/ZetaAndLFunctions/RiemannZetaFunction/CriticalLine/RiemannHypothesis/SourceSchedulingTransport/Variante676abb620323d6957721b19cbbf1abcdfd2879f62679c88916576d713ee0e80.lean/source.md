# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSchedulingTransport.Variante676abb620323d6957721b19cbbf1abcdfd2879f62679c88916576d713ee0e80

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ab1008baa4e4946218b25fb5f45244582bb721a` · SHA-256 `e676abb620323d6957721b19cbbf1abcdfd2879f62679c88916576d713ee0e80`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Algebra.BigOperators.Module
import Mathlib.Tactic

/-!
# Complete finite scheduling and two-stage transport

CSE-RH16-20261007. grwtsk contributors supplied the conceptual direction,
theorem selection, corrections and evaluation. OpenAI Codex supplied these
finite proof adapters. Arithmetic signs are inputs, never selected signs.
The all-real arithmetic cap remains a separate premise.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceSchedulingTransport

open scoped BigOperators

section Reconstruction

/-- One permutation preserves the entire fixed signed readout. -/
theorem complete_schedule_sum {ι : Type*} [Fintype ι]
    (σ : Equiv.Perm ι) (work : ι → ℝ) :
    (∑ i, work (σ i)) = ∑ i, work i :=
  Fintype.sum_equiv σ (fun i => work (σ i)) work (fun _ => rfl)

/-- Fractional emphasis reconstructs every atom using exact column marginals. -/
theorem fractional_reconstruction {ι κ : Type*} [Fintype ι] [Fintype κ]
    (θ : κ → ι → ℝ) (work : ι → ℝ) (hθ : ∀ i, ∑ j, θ j i = 1) :
    (∑ j, ∑ i, θ j i * work i) = ∑ i, work i := by
  rw [Finset.sum_comm]
  simp only [← Finset.sum_mul, hθ, one_mul]

/-- All event and terminal terms remain in this finite telescope. -/
theorem potential_telescope (storage : ℕ → ℝ) (n : ℕ) :
    (∑ j ∈ Finset.range n, (storage j - storage (j + 1))) = storage 0 - storage n := by
  induction n with
  | zero => simp
  | succ n ih => rw [Finset.sum_range_succ, ih]; ring

/-- A certificate bounds total signed work only after terminal storage is paid. -/
theorem finite_potential_certificate (work storage error : ℕ → ℝ) (n : ℕ)
    (hstep : ∀ j ∈ Finset.range n,
      work j ≤ storage j - storage (j + 1) + error j)
    (hterminal : 0 ≤ storage n) :
    (∑ j ∈ Finset.range n, work j) ≤ storage 0 + ∑ j ∈ Finset.range n, error j := by
  calc
    _ ≤ ∑ j ∈ Finset.range n, (storage j - storage (j + 1) + error j) :=
      Finset.sum_le_sum hstep
    _ = storage 0 - storage n + ∑ j ∈ Finset.range n, error j := by
      rw [Finset.sum_add_distrib, potential_telescope]
    _ ≤ _ := by linarith

end Reconstruction

section Abel

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]

/-- Complete schedulePrefixes in one fixed legal ordering. -/
def schedulePrefix (v : ℕ → E) (n : ℕ) : E := ∑ i ∈ Finset.range n, v i

/-- Vector Abel identity, including the terminal term and all between-checkpoint variation. -/
theorem weighted_abel (a v : ℕ → E) (n : ℕ) :
    (∑ i ∈ Finset.range (n + 1), inner ℝ (a i) (v i)) =
      inner ℝ (a n) (schedulePrefix v (n + 1)) +
      ∑ k ∈ Finset.range n, inner ℝ (a k - a (k + 1)) (schedulePrefix v (k + 1)) := by
  induction n with
  | zero => simp [schedulePrefix]
  | succ n ih =>
      rw [Finset.sum_range_succ, ih, Finset.sum_range_succ]
      simp only [schedulePrefix, Finset.sum_range_succ, inner_add_right, inner_sub_left]
      ring

/-- A schedulePrefix bound only controls a readout after its reading variation is also priced. -/
theorem weighted_abel_abs_le (a v : ℕ → E) (n : ℕ) (B : ℝ) (_hB : 0 ≤ B)
    (hp : ∀ k ≤ n + 1, ‖schedulePrefix v k‖ ≤ B) :
    |∑ i ∈ Finset.range (n + 1), inner ℝ (a i) (v i)| ≤
      B * (‖a n‖ + ∑ k ∈ Finset.range n, ‖a k - a (k + 1)‖) := by
  rw [weighted_abel]
  calc
    _ ≤ |inner ℝ (a n) (schedulePrefix v (n + 1))| +
        |∑ k ∈ Finset.range n,
          inner ℝ (a k - a (k + 1)) (schedulePrefix v (k + 1))| := abs_add_le _ _
    _ ≤ ‖a n‖ * B + ∑ k ∈ Finset.range n, ‖a k - a (k + 1)‖ * B := by
      apply add_le_add
      · exact (abs_real_inner_le_norm _ _).trans
          (mul_le_mul_of_nonneg_left (hp _ (le_refl _)) (norm_nonneg _))
      · apply (Finset.abs_sum_le_sum_abs _ _).trans
        apply Finset.sum_le_sum
        intro k hk
        exact (abs_real_inner_le_norm _ _).trans
          (mul_le_mul_of_nonneg_left (hp _ (by
            have := Finset.mem_range.mp hk
            omega)) (norm_nonneg _))
    _ = _ := by rw [← Finset.sum_mul]; ring

variable [CompleteSpace E]

/-- Inverse-adjoint emphasis reconstructs the original pairing exactly. -/
theorem emphasis_pairing (W : E ≃L[ℝ] E) (a v : E) :
    inner ℝ ((W.symm.toContinuousLinearMap).adjoint a) (W v) = inner ℝ a v := by
  rw [ContinuousLinearMap.adjoint_inner_left]
  simp

/-- The emphasis is fixed throughout this finite calculation. -/
theorem weighted_emphasis_abs_le (W : E ≃L[ℝ] E) (a v : ℕ → E)
    (n : ℕ) (B : ℝ) (hB : 0 ≤ B)
    (hp : ∀ k ≤ n + 1, ‖W (schedulePrefix v k)‖ ≤ B) :
    |∑ i ∈ Finset.range (n + 1), inner ℝ (a i) (v i)| ≤
      B * (‖(W.symm.toContinuousLinearMap).adjoint (a n)‖ +
        ∑ k ∈ Finset.range n,
          ‖(W.symm.toContinuousLinearMap).adjoint (a k - a (k + 1))‖) := by
  have he : (∑ i ∈ Finset.range (n + 1), inner ℝ (a i) (v i)) =
      ∑ i ∈ Finset.range (n + 1),
        inner ℝ ((W.symm.toContinuousLinearMap).adjoint (a i)) (W (v i)) := by
    apply Finset.sum_congr rfl
    intro i _
    exact (emphasis_pairing W (a i) (v i)).symm
  rw [he]
  have hp' : ∀ k ≤ n + 1, ‖schedulePrefix (fun i => W (v i)) k‖ ≤ B := by
    intro k hk
    simpa [schedulePrefix, map_sum] using hp k hk
  simpa only [map_sub] using weighted_abel_abs_le
    (fun i => (W.symm.toContinuousLinearMap).adjoint (a i))
    (fun i => W (v i)) n B hB hp'

end Abel

section Transport

variable {ι : Type*} [Fintype ι]

/-- Both signed moments use their native coordinates; the derivative has a plus sign. -/
def readout (c b d : ι → ℝ) (f g : ℝ → ℝ) : ℝ :=
  ∑ i, (b i * f (c i) + d i * g (c i))

def mass (b : ι → ℝ) : ℝ := ∑ i, b i

def firstMoment (c b d : ι → ℝ) : ℝ := ∑ i, (c i * b i + d i)

/-- Exact affine carry, before any endpoint cancellation is invoked. -/
theorem affine_carry (c b d : ι → ℝ) (f g : ℝ → ℝ) (anchor : ℝ) :
    readout c b d f g = mass b * f anchor +
      (firstMoment c b d - anchor * mass b) * g anchor +
      ∑ i, (b i * (f (c i) - f anchor - (c i - anchor) * g anchor) +
        d i * (g (c i) - g anchor)) := by
  calc
    _ = ∑ i, (b i * f anchor +
        (c i * b i + d i - anchor * b i) * g anchor +
        (b i * (f (c i) - f anchor - (c i - anchor) * g anchor) +
          d i * (g (c i) - g anchor))) := by
      unfold readout
      apply Finset.sum_congr rfl
      intro i _
      ring
    _ = _ := by
      unfold mass firstMoment
      simp only [sub_mul, add_mul, Finset.sum_add_distrib,
        Finset.sum_sub_distrib, Finset.sum_mul, Finset.mul_sum]

/-- The centered residual annihilates every affine test, at arbitrary magnitudes. -/
theorem affine_test_readout (c b d : ι → ℝ) (x y : ℝ) :
    readout c b d (fun t => x + y * t) (fun _ => y) =
      mass b * x + firstMoment c b d * y := by
  calc
    _ = ∑ i, (b i * x + (c i * b i + d i) * y) := by
      unfold readout
      apply Finset.sum_congr rfl
      intro i _
      ring
    _ = _ := by
      unfold mass firstMoment
      rw [Finset.sum_add_distrib, Finset.sum_mul, Finset.sum_mul]

/-- The receiver drift includes the first transport's actual displacement. -/
def inducedDrift (c d : ι → ℝ) (P : ι → ι → ℝ) (j : ι) : ℝ :=
  d j + ∑ i, P i j * (c i - c j)

/-- Balance may be obtained from positive/negative marginals; no atom is discarded. -/
theorem first_transport_identity (c b d : ι → ℝ) (f g : ℝ → ℝ)
    (P : ι → ι → ℝ)
    (hb : ∀ i, b i = (∑ j, P i j) - ∑ j, P j i) :
    readout c b d f g =
      (∑ i, ∑ j, P i j * (f (c i) - f (c j) - (c i - c j) * g (c j))) +
      ∑ j, inducedDrift c d P j * g (c j) := by
  have hmass : (∑ i, b i * f (c i)) =
      ∑ i, ∑ j, P i j * (f (c i) - f (c j)) := by
    simp_rw [hb, sub_mul, Finset.sum_mul, mul_sub, Finset.sum_sub_distrib]
    rw [Finset.sum_comm (f := fun i j => P j i * f (c i))]
  have hd (j : ι) : inducedDrift c d P j * g (c j) =
      d j * g (c j) + ∑ i, P i j * ((c i - c j) * g (c j)) := by
    unfold inducedDrift
    rw [add_mul, Finset.sum_mul]
    congr 1
    apply Finset.sum_congr rfl
    intro i _
    ring
  have ht (i j : ι) :
      P i j * (f (c i) - f (c j) - (c i - c j) * g (c j)) =
        P i j * (f (c i) - f (c j)) - P i j * ((c i - c j) * g (c j)) := by ring
  unfold readout
  rw [Finset.sum_add_distrib, hmass]
  simp only [hd, ht, Finset.sum_sub_distrib, Finset.sum_add_distrib]
  rw [Finset.sum_comm (f := fun j i => P i j * ((c i - c j) * g (c j)))]
  ring

/-- Both affine identities force total induced drift zero, not receiverwise zero. -/
theorem inducedDrift_total (c b d : ι → ℝ) (P : ι → ι → ℝ)
    (hb : ∀ i, b i = (∑ j, P i j) - ∑ j, P j i) :
    (∑ j, inducedDrift c d P j) = firstMoment c b d := by
  unfold inducedDrift firstMoment
  simp_rw [hb, mul_sub]
  simp only [Finset.mul_sum, Finset.sum_add_distrib, Finset.sum_sub_distrib]
  rw [Finset.sum_comm (f := fun j i => P i j * c i)]
  simp_rw [mul_comm]
  ring

/-- First-stage quadratic displacement plus the second-stage derivative transport. -/
def transportCost (c : ι → ℝ) (P Q : ι → ι → ℝ) : ℝ :=
  (∑ i, ∑ j, P i j * (c i - c j) ^ 2) / 2 +
    ∑ j, ∑ k, Q j k * |c j - c k|

/-- Checkable two-stage certificate; Taylor and Lipschitz assumptions are stated separately. -/
theorem two_stage_abs_le (c b d : ι → ℝ) (f g : ℝ → ℝ)
    (P Q : ι → ι → ℝ) (L : ℝ)
    (hP : ∀ i j, 0 ≤ P i j) (hQ : ∀ j k, 0 ≤ Q j k)
    (hb : ∀ i, b i = (∑ j, P i j) - ∑ j, P j i)
    (hr : ∀ j, inducedDrift c d P j = (∑ k, Q j k) - ∑ k, Q k j)
    (ht : ∀ i j, |f (c i) - f (c j) - (c i - c j) * g (c j)| ≤
      L * (c i - c j) ^ 2 / 2)
    (hg : ∀ j k, |g (c j) - g (c k)| ≤ L * |c j - c k|) :
    |readout c b d f g| ≤ L * transportCost c P Q := by
  have hsecond : (∑ j, inducedDrift c d P j * g (c j)) =
      ∑ j, ∑ k, Q j k * (g (c j) - g (c k)) := by
    simp_rw [hr, sub_mul, Finset.sum_mul, Finset.sum_sub_distrib, mul_sub]
    rw [Finset.sum_comm (f := fun j k => Q k j * g (c j))]
    simp_rw [Finset.sum_sub_distrib]
  rw [first_transport_identity c b d f g P hb, hsecond]
  calc
    _ ≤ (∑ i, ∑ j,
        |P i j * (f (c i) - f (c j) - (c i - c j) * g (c j))|) +
        ∑ j, ∑ k, |Q j k * (g (c j) - g (c k))| := by
      apply (abs_add_le _ _).trans
      apply add_le_add
      all_goals
        apply (Finset.abs_sum_le_sum_abs _ _).trans
        exact Finset.sum_le_sum (fun i _ => Finset.abs_sum_le_sum_abs _ _)
    _ ≤ (∑ i, ∑ j, P i j * (L * (c i - c j) ^ 2 / 2)) +
        ∑ j, ∑ k, Q j k * (L * |c j - c k|) := by
      apply add_le_add
      · apply Finset.sum_le_sum
        intro i _
        apply Finset.sum_le_sum
        intro j _
        rw [abs_mul, abs_of_nonneg (hP i j)]
        exact mul_le_mul_of_nonneg_left (ht i j) (hP i j)
      · apply Finset.sum_le_sum
        intro j _
        apply Finset.sum_le_sum
        intro k _
        rw [abs_mul, abs_of_nonneg (hQ j k)]
        exact mul_le_mul_of_nonneg_left (hg j k) (hQ j k)
    _ = _ := by
      unfold transportCost
      rw [mul_add]
      apply congrArg₂ (· + ·)
      · rw [← mul_div_assoc]
        simp only [Finset.sum_div, Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro i _
        apply Finset.sum_congr rfl
        intro j _
        ring
      · simp only [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro j _
        apply Finset.sum_congr rfl
        intro k _
        ring


end Transport

end FormalResearch.RiemannHypothesis.SourceSchedulingTransport
```
