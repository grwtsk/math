/-
Copyright (c) 2026 R.A. Jacob Martone. Released under the MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Canonical finite additive characters and analytic norm inequalities: Mathlib authors.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#653. Parent draft: PR #650 (issue #649).
-/
import GRWTSK.Analysis.Fourier.FiniteCharacterCylinder

/-!
# Finite homology character averaging: exact modular alias correction

The finite character projector detects equality of integral homology labels
modulo q. An exact integral-class projector detects literal equality in
(Z)^m. Their difference on an arbitrary finite source-indexed packet is
*exactly* the weighted sum of aliased, nonidentical integral classes.

The source identifier type is not the homology type: distinct source terms
may have the same homology class and their complex amplitudes are retained.
No surface, geodesic, Selberg trace formula, Haar integration, infinite
sum, Weil-Petersson average or spectral limit is built in this module.

This is a source-level Lean proof draft. No kernel audit has been run.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.Fourier.FiniteHolonomyAliasing

open scoped BigOperators
open GRWTSK.Analysis.Fourier.FiniteCharacterCylinder

/-- A genuinely finite weighted packet with integer, potentially signed,
homology coordinates. The index type carries actual source identities:
two different indices may have the same homology label. -/
structure FiniteHomologyPacket (α : Type*) (m : ℕ) where
  sources : Finset α
  homology : α → Fin m → ℤ
  amplitude : α → ℂ
  target : Fin m → ℤ

variable {α : Type*} {m : ℕ}

/-- Reduction of an integral homology coordinate tuple modulo a nonzero q.
This does not identify distinct integer tuples merely because they reduce
to the same residues. -/
def residueTuple (q : ℕ) [NeZero q] (u : Fin m → ℤ) : Fin m → ZMod q :=
  fun i => (u i : ZMod q)

/-- The actual sources whose integer labels are *not* the target but alias
with the target after reduction modulo q. No source IDs are merged. -/
def aliasSources (q : ℕ) [NeZero q]
    (p : FiniteHomologyPacket α m) : Finset α := by
  classical
  exact p.sources.filter
    (fun a => residueTuple q (p.homology a) = residueTuple q p.target ∧
      p.homology a ≠ p.target)

@[simp] theorem mem_aliasSources_iff (q : ℕ) [NeZero q]
    (p : FiniteHomologyPacket α m) (a : α) :
    a ∈ aliasSources q p ↔
      a ∈ p.sources ∧
        (residueTuple q (p.homology a) = residueTuple q p.target ∧
          p.homology a ≠ p.target) := by
  simp [aliasSources]

/-- Sum of actual finite character averages, retaining the full complex
amplitude and its source identity for each individual term. -/
def torsionProjection (q : ℕ) [NeZero q]
    (p : FiniteHomologyPacket α m) : ℂ :=
  ∑ a ∈ p.sources,
    p.amplitude a *
      tupleCharacterMean q m
        (residueTuple q (p.homology a)) (residueTuple q p.target)

/-- Exact integral-class selector. This is the finite algebraic counterpart
of continuous torus character orthogonality, *not* a Haar integral. -/
def integralProjection (p : FiniteHomologyPacket α m) : ℂ :=
  ∑ a ∈ p.sources,
    if p.homology a = p.target then p.amplitude a else 0

/-- All spurious contributions caused solely by reduction modulo q. -/
def aliasCorrection (q : ℕ) [NeZero q]
    (p : FiniteHomologyPacket α m) : ℂ :=
  ∑ a ∈ aliasSources q p, p.amplitude a

/-- An explicit, nonnegative finite L1 error budget. It can be large and
there is no implicit asymptotic smallness assumption. -/
def aliasMass (q : ℕ) [NeZero q]
    (p : FiniteHomologyPacket α m) : ℝ :=
  ∑ a ∈ aliasSources q p, ‖p.amplitude a‖

/-- Non-aliasing is a source-bound premise: among the *actual* packet
sources, a residue match forces an exact integer-class match. -/
def NoAlias (q : ℕ) [NeZero q]
    (p : FiniteHomologyPacket α m) : Prop :=
  ∀ a ∈ p.sources,
    residueTuple q (p.homology a) = residueTuple q p.target →
      p.homology a = p.target

/-- A restrictive but explicit sufficient no-wrap profile for signed
integer coordinates: every coordinate appearing in the packet, including
the target, has its chosen integer representative in [0,q). -/
def FundamentalBox (q : ℕ) [NeZero q]
    (p : FiniteHomologyPacket α m) : Prop :=
  (∀ a ∈ p.sources, ∀ i : Fin m,
      0 ≤ p.homology a i ∧ p.homology a i < (q : ℤ)) ∧
  (∀ i : Fin m, 0 ≤ p.target i ∧ p.target i < (q : ℤ))

/-- The individual finite Fourier summand splits exactly into an integer
equality contribution and a modular-alias contribution. -/
theorem weighted_character_projection_split (q : ℕ) [NeZero q]
    (p : FiniteHomologyPacket α m) (a : α) :
    p.amplitude a *
      tupleCharacterMean q m
        (residueTuple q (p.homology a)) (residueTuple q p.target) =
      (if p.homology a = p.target then p.amplitude a else 0) +
      (if residueTuple q (p.homology a) = residueTuple q p.target ∧
          p.homology a ≠ p.target then p.amplitude a else 0) := by
  rw [tupleCharacterMean_eq_indicator]
  by_cases heq : p.homology a = p.target
  · have hres : residueTuple q (p.homology a) = residueTuple q p.target := by
      rw [heq]
    simp [heq, hres]
  · by_cases hres : residueTuple q (p.homology a) = residueTuple q p.target
    · simp [heq, hres]
    · simp [heq, hres]

/-- Expand the filter without collapsing distinct source IDs that happen
to have the same integer or modular homology coordinates. -/
theorem aliasCorrection_eq_indicator_sum (q : ℕ) [NeZero q]
    (p : FiniteHomologyPacket α m) :
    aliasCorrection q p =
      ∑ a ∈ p.sources,
        if residueTuple q (p.homology a) = residueTuple q p.target ∧
          p.homology a ≠ p.target then p.amplitude a else 0 := by
  classical
  simp [aliasCorrection, aliasSources, Finset.sum_filter]

/-- Exact finite-torsion/integers error identity. This is the algebraic
comparison, not a limit, estimate of actual geodesic weights, or theorem
about continuous Haar integration. -/
theorem torsionProjection_eq_integral_add_alias (q : ℕ) [NeZero q]
    (p : FiniteHomologyPacket α m) :
    torsionProjection q p =
      integralProjection p + aliasCorrection q p := by
  classical
  rw [aliasCorrection_eq_indicator_sum]
  unfold torsionProjection integralProjection
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro a ha
  exact weighted_character_projection_split q p a

/-- Finite complex triangle inequality exposes the full L1 alias budget. -/
theorem aliasCorrection_norm_le (q : ℕ) [NeZero q]
    (p : FiniteHomologyPacket α m) :
    ‖aliasCorrection q p‖ ≤ aliasMass q p := by
  simpa only [aliasCorrection, aliasMass] using
    (norm_sum_le (aliasSources q p) p.amplitude)

/-- The finite q-torsion projector differs from the exact integral-class
selector by at most the full total amplitude of nonidentical aliases. -/
theorem torsionProjection_error_le (q : ℕ) [NeZero q]
    (p : FiniteHomologyPacket α m) :
    ‖torsionProjection q p - integralProjection p‖ ≤ aliasMass q p := by
  have hdiff : torsionProjection q p - integralProjection p =
      aliasCorrection q p := by
    rw [torsionProjection_eq_integral_add_alias]
    abel
  rw [hdiff]
  exact aliasCorrection_norm_le q p

/-- NoAlias precludes all alias source IDs, without quotienting them. -/
theorem aliasSources_eq_empty_of_noAlias (q : ℕ) [NeZero q]
    (p : FiniteHomologyPacket α m) (h : NoAlias q p) :
    aliasSources q p = ∅ := by
  classical
  apply Finset.eq_empty_iff_forall_not_mem.mpr
  intro a ha
  rcases (mem_aliasSources_iff q p a).mp ha with ⟨hs, hmod, hneq⟩
  exact hneq (h a hs hmod)

/-- When the actual packet has no modular aliases, its two finite algebraic
selectors agree *exactly*, not merely up to an uncomputed bound. -/
theorem torsionProjection_eq_integral_of_noAlias (q : ℕ) [NeZero q]
    (p : FiniteHomologyPacket α m) (h : NoAlias q p) :
    torsionProjection q p = integralProjection p := by
  rw [torsionProjection_eq_integral_add_alias]
  simp [aliasCorrection, aliasSources_eq_empty_of_noAlias q p h]

/-- Integer representatives within one shared fundamental domain are
recovered uniquely from their complete residue tuple. The integer labels
remain signed in the ambient type; these range bounds are extra premises. -/
theorem integer_tuple_eq_of_residue_eq_in_box (q : ℕ) [NeZero q]
    (u v : Fin m → ℤ)
    (hu : ∀ i, 0 ≤ u i ∧ u i < (q : ℤ))
    (hv : ∀ i, 0 ≤ v i ∧ v i < (q : ℤ))
    (hmod : residueTuple q u = residueTuple q v) :
    u = v := by
  funext i
  have hcoerce : (u i : ZMod q) = (v i : ZMod q) := by
    exact congrArg (fun f : Fin m → ZMod q => f i) hmod
  have hrem : u i % (q : ℤ) = v i % (q : ℤ) :=
    (ZMod.intCast_eq_intCast_iff' (u i) (v i) q).mp hcoerce
  rw [Int.emod_eq_of_lt (hu i).1 (hu i).2,
      Int.emod_eq_of_lt (hv i).1 (hv i).2] at hrem
  exact hrem

/-- A named sufficient criterion: source/target labels in a common
fundamental box force the exact non-aliasing predicate. -/
theorem noAlias_of_fundamentalBox (q : ℕ) [NeZero q]
    (p : FiniteHomologyPacket α m) (h : FundamentalBox q p) :
    NoAlias q p := by
  intro a ha hmod
  exact integer_tuple_eq_of_residue_eq_in_box q
    (p.homology a) p.target (h.1 a ha) h.2 hmod

/-- Fundamental-box control yields an exact finite projection equality. -/
theorem torsionProjection_eq_integral_of_fundamentalBox (q : ℕ) [NeZero q]
    (p : FiniteHomologyPacket α m) (h : FundamentalBox q p) :
    torsionProjection q p = integralProjection p :=
  torsionProjection_eq_integral_of_noAlias q p (noAlias_of_fundamentalBox q p h)

/-- With zero homology coordinates, there is only one integral class;
this special case needs no arbitrary positive-coordinate hypothesis. -/
theorem noAlias_zero_coordinates (q : ℕ) [NeZero q]
    (p : FiniteHomologyPacket α 0) : NoAlias q p := by
  intro a ha hmod
  funext i
  exact Fin.elim0 i

/-- The empty-coordinate case is exact even for modulus q = 1. -/
theorem torsionProjection_zero_coordinates (q : ℕ) [NeZero q]
    (p : FiniteHomologyPacket α 0) :
    torsionProjection q p = integralProjection p :=
  torsionProjection_eq_integral_of_noAlias q p (noAlias_zero_coordinates q p)

/-- Completely empty source families contribute no torsion or integer
projection and have no alias budget. -/
theorem empty_sources_zero (q : ℕ) [NeZero q]
    (p : FiniteHomologyPacket α m) (h : p.sources = ∅) :
    torsionProjection q p = 0 ∧
      integralProjection p = 0 ∧ aliasMass q p = 0 := by
  classical
  have hs : aliasSources q p = ∅ := by
    simp [aliasSources, h]
  simp [torsionProjection, integralProjection, aliasMass, h, hs]

/-- Hostile fixture: 2 and 0 are different integral homology labels but
identical in ZMod 2. This rejects unqualified integral equality transport. -/
theorem two_modulus_nontrivial_alias :
    residueTuple 2 (fun _ : Fin 1 => (2 : ℤ)) =
        residueTuple 2 (fun _ : Fin 1 => (0 : ℤ)) ∧
      (fun _ : Fin 1 => (2 : ℤ)) ≠ (fun _ : Fin 1 => (0 : ℤ)) := by
  constructor
  · funext i
    norm_num [residueTuple]
  · intro h
    have hi := congrArg (fun u : Fin 1 → ℤ => u 0) h
    norm_num at hi

end GRWTSK.Analysis.Fourier.FiniteHolonomyAliasing
