/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.SpinHolonomyDiffusion
import GRWTSK.Combinatorics.GraphTheory.SpinHolonomyFiniteDiffusion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimePhaseSignedReturn
import Mathlib.Tactic

/-!
# Exact spin-pair diffusion and source-faithful Weil return

Sources inspected at grwtsk/math@fef4eef2d7e1ccb24ecd1e413c9ced316ecf7a01:
SpinHolonomyDiffusion blob a177ba700f8a6287d364f0c765a8e1d321449fc3;
SpinHolonomyFiniteDiffusion blob eea70aeef808b735b73477408da214efbfb6998e;
WeilRadiusTwoSignedDiffusion blob f1e7336299045197d84671d66b1c9337020a7bb8;
WeilRadiusTwoDiagonalResidual blob 131d82dc6b7d640e8b2158ae6820952e3661842a;
WeilPrimePhaseSignedReturn blob 5a6801dbcd2e1f5cebbe99df9c041408f6a2c247.

The original Head has 64 physical odd sine modes and ONE separate
scalar zeta pole. Its residual-paid signed matrix is unchanged:
RadiusTwoDiagonalResidual.paidLower centres radii X.

An arbitrary symmetric unit real link epsilon_i=+1 or -1 on 32
disjoint two-vertex pairs yields
 L f(i)=(f(i)-epsilon_i*f(partner i))/4,
 H=I-L,   H(a,b)=((3a+epsilon*b)/4,(epsilon*a+3b)/4),
 R=H^-1,  R(a,b)=((3a-epsilon*b)/2,(-epsilon*a+3b)/2).
The pole is fixed. The magnetic energy is
 (1/8)*sum_i (f(i)-epsilon_i*f(partner i))^2.
This is the SpinHolonomyDiffusion gradient-square convention applied
to the twice-oriented matching graph; a full generic tagged event
inventory identification remains an explicit adapter premise.

The same signed Weil quadratic is read AFTER exact recovery:
 Q^epsilon_M(w)=quadratic (paidLower centres radii X) (R w).
Hence Q^epsilon_M(H v)=Q_M(v), and universal nonnegativity of the
two forms is equivalent; negative source directions survive.
At unit link this recovers the actual Weil heatHead/recoverHead.
The original PPNC complex prime Fourier phase is preserved by
recovery through PrimePhaseSignedReturn, not replaced with Bool signs.

Every two-edge matching return has product epsilon_i^2=1.
This geometry has NO frustrated loop and does not reconstruct
prime Frobenius or the CM period connection. More broadly the
source EventDiffusion signed step is row-stochastic only before
sign insertion, and is not automatically this symmetric Laplacian.
The theta-weighted reference heat and countable coverage heat
are distinct operators on different mathematical carriers.

Primary source context: Connes--Consani--Moscovici, Zeta Spectral
Triples, arXiv:2511.22755v1, equations (3.19)--(3.20).
Connes--Consani, Knots, primes and class field theory,
arXiv:2501.06560. This is classical finite linear algebra, with
no mathematical novelty asserted. Neither the actual missing
infinite Weil positivity nor RH or Dirichlet GRH is proved.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.WeilSpinHolonomyDiffusionBridge

open Matrix
open GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSignedDiffusion
open GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateEntries
open GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoDiagonalResidual
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

structure PairSigns where
  link : Fin 64 → ℝ
  symmetric : ∀ i, link (partner i) = link i
  square_one : ∀ i, link i * link i = 1

def pairLaplacian (s : PairSigns) (f : Fin 64 → ℝ) (i : Fin 64) : ℝ :=
  (f i - s.link i * f (partner i)) / 4

def pairEnergy (s : PairSigns) (f : Fin 64 → ℝ) : ℝ :=
  ∑ i : Fin 64, (1 / 8 : ℝ) * (f i - s.link i * f (partner i)) ^ 2

theorem pairEnergy_nonneg (s : PairSigns) (f : Fin 64 → ℝ) :
    0 ≤ pairEnergy s f := by
  unfold pairEnergy
  apply Finset.sum_nonneg
  intro i _
  exact mul_nonneg (by norm_num) (sq_nonneg _)

theorem two_edge_holonomy (s : PairSigns) (i : Fin 64) :
    s.link i * s.link (partner i) = 1 := by
  rw [s.symmetric i]
  exact s.square_one i

def gaugePairSigns (s : PairSigns) (σ : Fin 64 → ℝ)
    (hσ : ∀ i, σ i * σ i = 1) : PairSigns where
  link := fun i => σ i * s.link i * σ (partner i)
  symmetric := by
    intro i
    change σ (partner i) * s.link (partner i) *
        σ (partner (partner i)) =
      σ i * s.link i * σ (partner i)
    rw [partner_involutive, s.symmetric i]
    ring
  square_one := by
    intro i
    change (σ i * s.link i * σ (partner i)) *
        (σ i * s.link i * σ (partner i)) = 1
    calc
      _ = (σ i * σ i) * (s.link i * s.link i) *
          (σ (partner i) * σ (partner i)) := by ring
      _ = 1 := by rw [hσ i, s.square_one i, hσ (partner i)]; ring

def gaugePhysical (σ : Fin 64 → ℝ) (f : Fin 64 → ℝ) : Fin 64 → ℝ :=
  fun i => σ i * f i

theorem pairGradient_gauge (s : PairSigns) (σ : Fin 64 → ℝ)
    (hσ : ∀ i, σ i * σ i = 1)
    (f : Fin 64 → ℝ) (i : Fin 64) :
    gaugePhysical σ f i -
      (gaugePairSigns s σ hσ).link i * gaugePhysical σ f (partner i) =
    σ i * (f i - s.link i * f (partner i)) := by
  change σ i * f i -
      (σ i * s.link i * σ (partner i)) *
      (σ (partner i) * f (partner i)) =
      σ i * (f i - s.link i * f (partner i))
  calc
    _ = σ i * f i - σ i * s.link i *
          (σ (partner i) * σ (partner i)) * f (partner i) := by ring
    _ = _ := by rw [hσ (partner i)]; ring

theorem pairEnergy_gauge (s : PairSigns) (σ : Fin 64 → ℝ)
    (hσ : ∀ i, σ i * σ i = 1) (f : Fin 64 → ℝ) :
    pairEnergy (gaugePairSigns s σ hσ) (gaugePhysical σ f) =
      pairEnergy s f := by
  unfold pairEnergy
  apply Finset.sum_congr rfl
  intro i _
  rw [pairGradient_gauge]
  calc
    (1 / 8 : ℝ) * (σ i * (f i - s.link i * f (partner i))) ^ 2 =
        (1 / 8 : ℝ) * (σ i * σ i) *
          (f i - s.link i * f (partner i)) ^ 2 := by ring
    _ = (1 / 8 : ℝ) * (f i - s.link i * f (partner i)) ^ 2 := by
      rw [hσ i]
      ring

def signedHeatHead (s : PairSigns) (v : Head → ℝ) : Head → ℝ
  | .inl i => (3 * v (.inl i) + s.link i * v (.inl (partner i))) / 4
  | .inr _ => v (.inr ())

def signedRecoverHead (s : PairSigns) (v : Head → ℝ) : Head → ℝ
  | .inl i => (3 * v (.inl i) - s.link i * v (.inl (partner i))) / 2
  | .inr _ => v (.inr ())

theorem signedHeat_eq_graphEuler (s : PairSigns) (v : Head → ℝ)
    (i : Fin 64) :
    signedHeatHead s v (.inl i) =
      v (.inl i) - pairLaplacian s (fun j => v (.inl j)) i := by
  change (3 * v (.inl i) + s.link i * v (.inl (partner i))) / 4 =
    v (.inl i) - (v (.inl i) - s.link i * v (.inl (partner i))) / 4
  ring

theorem signedRecover_signedHeat (s : PairSigns) (v : Head → ℝ) :
    signedRecoverHead s (signedHeatHead s v) = v := by
  funext k
  rcases k with i | ⟨⟩
  · change
      (3 * ((3 * v (.inl i) + s.link i * v (.inl (partner i))) / 4) -
       s.link i * ((3 * v (.inl (partner i)) +
          s.link (partner i) * v (.inl (partner (partner i)))) / 4)) / 2 =
        v (.inl i)
    rw [partner_involutive, s.symmetric i]
    calc
      _ = v (.inl i) +
          (1 - s.link i * s.link i) * v (.inl i) / 8 := by ring
      _ = v (.inl i) := by rw [s.square_one i]; ring
  · rfl

theorem signedHeat_signedRecover (s : PairSigns) (w : Head → ℝ) :
    signedHeatHead s (signedRecoverHead s w) = w := by
  funext k
  rcases k with i | ⟨⟩
  · change
      (3 * ((3 * w (.inl i) - s.link i * w (.inl (partner i))) / 2) +
       s.link i * ((3 * w (.inl (partner i)) -
          s.link (partner i) * w (.inl (partner (partner i)))) / 2)) / 4 =
        w (.inl i)
    rw [partner_involutive, s.symmetric i]
    calc
      _ = w (.inl i) +
          (1 - s.link i * s.link i) * w (.inl i) / 8 := by ring
      _ = w (.inl i) := by rw [s.square_one i]; ring
  · rfl

def unitSigns : PairSigns where
  link := fun _ => 1
  symmetric := by intro _; rfl
  square_one := by intro _; norm_num

theorem unit_signedHeat_eq_WeilHeat (v : Head → ℝ) :
    signedHeatHead unitSigns v = heatHead v := by
  funext k
  rcases k with i | ⟨⟩
  · change (3 * v (.inl i) + 1 * v (.inl (partner i))) / 4 =
      (3 * v (.inl i) + v (.inl (partner i))) / 4
    ring
  · rfl

theorem unit_signedRecover_eq_WeilRecover (v : Head → ℝ) :
    signedRecoverHead unitSigns v = recoverHead v := by
  funext k
  rcases k with i | ⟨⟩
  · change (3 * v (.inl i) - 1 * v (.inl (partner i))) / 2 =
      (3 * v (.inl i) - v (.inl (partner i))) / 2
    ring
  · rfl

def signedPaidQuadratic (s : PairSigns)
    (centres radii : Matrix ResidualRows Trial ℝ)
    (X : Matrix Trial Head ℝ) (w : Head → ℝ) : ℝ :=
  quadratic (RadiusTwoDiagonalResidual.paidLower centres radii X)
    (signedRecoverHead s w)

theorem signedPaid_source_return (s : PairSigns)
    (centres radii : Matrix ResidualRows Trial ℝ)
    (X : Matrix Trial Head ℝ) (v : Head → ℝ) :
    signedPaidQuadratic s centres radii X (signedHeatHead s v) =
      quadratic (RadiusTwoDiagonalResidual.paidLower centres radii X) v := by
  simp only [signedPaidQuadratic, signedRecover_signedHeat]

theorem signedPaid_nonneg_iff_source_nonneg (s : PairSigns)
    (centres radii : Matrix ResidualRows Trial ℝ)
    (X : Matrix Trial Head ℝ) :
    (∀ w, 0 ≤ signedPaidQuadratic s centres radii X w) ↔
      (∀ v, 0 ≤ quadratic (RadiusTwoDiagonalResidual.paidLower centres radii X) v) := by
  constructor
  · intro h v
    have hv := h (signedHeatHead s v)
    simpa only [signedPaid_source_return] using hv
  · intro h w
    exact h (signedRecoverHead s w)

theorem signedPaid_negative_survives (s : PairSigns)
    (centres radii : Matrix ResidualRows Trial ℝ)
    (X : Matrix Trial Head ℝ) (v : Head → ℝ)
    (hneg : quadratic (RadiusTwoDiagonalResidual.paidLower centres radii X) v < 0) :
    signedPaidQuadratic s centres radii X (signedHeatHead s v) < 0 := by
  simpa only [signedPaid_source_return] using hneg

theorem signedPaid_implies_existingWeilHeatSign (s : PairSigns)
    (centres radii : Matrix ResidualRows Trial ℝ)
    (X : Matrix Trial Head ℝ)
    (h : ∀ w, 0 ≤ signedPaidQuadratic s centres radii X w) :
    ∀ w, 0 ≤ diffusedPaidQuadratic centres radii X w := by
  have hs : ∀ v, 0 ≤ quadratic
      (RadiusTwoDiagonalResidual.paidLower centres radii X) v :=
    (signedPaid_nonneg_iff_source_nonneg s centres radii X).mp h
  exact (diffusedPaid_nonneg_iff centres radii X).mpr hs

def signedRecoveredPrimePhaseObservation (s : PairSigns)
    (labels : Fin 64 → ℕ) (xi : ℝ) (w : Head → ℝ) : ℂ :=
  GRWTSK.NumberTheory.WeilQuadraticForm.PrimePhaseSignedReturn.originalPhysicalPhaseObservation
    labels xi (signedRecoverHead s w)

theorem fullSignedWeilAndPrimePhase_source_return (s : PairSigns)
    (centres radii : Matrix ResidualRows Trial ℝ)
    (X : Matrix Trial Head ℝ) (labels : Fin 64 → ℕ)
    (xi : ℝ) (v : Head → ℝ) :
    signedPaidQuadratic s centres radii X (signedHeatHead s v) =
        quadratic (RadiusTwoDiagonalResidual.paidLower centres radii X) v ∧
    signedHeatHead s v (.inr ()) = v (.inr ()) ∧
    signedRecoveredPrimePhaseObservation s labels xi (signedHeatHead s v) =
      GRWTSK.NumberTheory.WeilQuadraticForm.PrimePhaseSignedReturn.originalPhysicalPhaseObservation
        labels xi v := by
  refine ⟨signedPaid_source_return s centres radii X v, rfl, ?_⟩
  simp only [signedRecoveredPrimePhaseObservation, signedRecover_signedHeat]

section TaggedSourceComparison
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyEventWalk
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyFiniteDiffusion

variable [Quiver (Fin 64)] [Fintype (Event (Fin 64))]

/-- These predicates are genuine outstanding MATCH obligations, not
existence theorems for a spin/Weil or prime/physical equivalence. -/
def MatchingLaplacian (s : PairSigns) (W c : Event (Fin 64) → ℝ) : Prop :=
  ∀ (f : Fin 64 → ℝ) (i : Fin 64),
    GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyDiffusion.laplace
      W c f i = pairLaplacian s f i

def eventMagneticHead (W c : Event (Fin 64) → ℝ)
    (v : Head → ℝ) : Head → ℝ
  | .inl i =>
      GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyDiffusion.diffuse
        W c 1 (fun j => v (.inl j)) i
  | .inr _ => v (.inr ())

theorem eventMagneticHead_eq_signedHead (s : PairSigns)
    (W c : Event (Fin 64) → ℝ)
    (hLap : MatchingLaplacian s W c) (v : Head → ℝ) :
    eventMagneticHead W c v = signedHeatHead s v := by
  funext k
  rcases k with i | ⟨⟩
  · change v (.inl i) -
      GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyDiffusion.laplace
        W c (fun j => v (.inl j)) i = signedHeatHead s v (.inl i)
    rw [hLap (fun j => v (.inl j)) i]
    exact (signedHeat_eq_graphEuler s v i).symm
  · rfl

def MatchingSignedStep (s : PairSigns) (D : EventDiffusion (Fin 64)) : Prop :=
  ∀ (f : Fin 64 → ℝ) (i : Fin 64),
    D.signedStep f i = (3 * f i + s.link i * f (partner i)) / 4

def eventTwoSheetOddHead (D : EventDiffusion (Fin 64))
    (v : Head → ℝ) : Head → ℝ
  | .inl i => D.signedStep (fun j => v (.inl j)) i
  | .inr _ => v (.inr ())

theorem eventTwoSheetOddHead_eq_signedHead (s : PairSigns)
    (D : EventDiffusion (Fin 64))
    (hStep : MatchingSignedStep s D) (v : Head → ℝ) :
    eventTwoSheetOddHead D v = signedHeatHead s v := by
  funext k
  rcases k with i | ⟨⟩
  · change D.signedStep (fun j => v (.inl j)) i =
      (3 * v (.inl i) + s.link i * v (.inl (partner i))) / 4
    exact hStep _ i
  · rfl

end TaggedSourceComparison

end GRWTSK.NumberTheory.WeilQuadraticForm.WeilSpinHolonomyDiffusionBridge
