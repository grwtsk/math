/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CriticalStripCores

/-!
# Exact RH and Dirichlet-GRH criteria from finite boundary certificates

RH is equivalent to a finite cover by actual residual-certified open patches
for EVERY right-strip core. Dirichlet GRH is equivalent to the corresponding
condition for EVERY positive modulus, EVERY character, and EVERY off-line core.
The domains and functions are exactly those already used in the repository.
The Dirichlet statement is not promoted to arbitrary automorphic/Dedekind GRH.

The effective-direction consumer accepts finite boundary samples PLUS a proved
all-boundary variation remainder with strict sum below one. The maximum modulus
principle proves region-wide nonvanishing; actual geometric coverage and the
existing exact reflection then return RH. The converse criterion uses true
reciprocals and compactness only to prove existence, not to compute witnesses.

This advances a source-exact certificate interface; it does NOT supply the
universal analytic estimates, approximation families, error enclosures, or
coverage witnesses needed to establish RH/GRH. The all-core hypothesis in the
equivalence is itself RH-equivalent. A finite cutoff is kept separate. An actual
off-line zero forces failure of some core's certificate-cover condition.

Analytic route: full multiplicative residual -> maximum modulus -> nonvanishing
on patches -> compact-core cover -> exact strip statement -> original RH/GRH.
The finite-observation counterexample in FiniteObservationObstruction separately
explains why sample values without a remainder do not establish this route.
No new theorem-level novelty or independent-proof claim is made.
Source baseline: 78d3de57395378dfc4164a75af7a844ea2806efc; Mathlib pin unchanged.
AI-assisted formalization. Compilation, fresh kernel checking, transitive axiom
audit and independent analytical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Set

namespace GRWTSK.NumberTheory.Conditional

open GRWTSK.Analysis.Division
open GRWTSK.Analysis.Division.Cover

universe u

/-- The criterion returns Mathlib's actual RiemannHypothesis. -/
theorem rh_iff_boundary_cover :
    _root_.RiemannHypothesis ↔ CertifiedOn riemannZeta rightCriticalStrip :=
  rh_iff_nonzero_rightStrip.trans
    (nonzero_iff_certifiedOn rightCriticalStrip_isOpen differentiableOn_zeta_rightStrip)

/-- Every compact core has its own finite certificate family; no single cutoff suffices here. -/
theorem rh_iff_finite_core_certificates :
    _root_.RiemannHypothesis ↔
      ∀ n : ℕ, FiniteCover riemannZeta rightCriticalStrip (rightCore n) := by
  constructor
  · intro h n
    have covered := rh_iff_boundary_cover.mp h
    exact finiteCover_of_compact (rightCore_isCompact n)
      (fun s hs => covered s (rightCore_subset n hs))
  · intro h
    apply rh_iff_nonzero_rightStrip.mpr
    intro s hs
    obtain ⟨n, hn⟩ := exists_rightCore hs
    exact finiteCover_nonzero (h n) s hn

/-- An actual patch family with sample remainders proves RH without taking RH as input. -/
theorem rh_of_sampled_boundary_patches {I : Type u}
    (regions : I → Set ℂ) (approximation : I → ℂ → ℂ)
    (samples : I → Finset ℂ) (ε η : I → ℝ)
    (bounded : ∀ i, Bornology.IsBounded (regions i))
    (contained : ∀ i, closure (regions i) ⊆ rightCriticalStrip)
    (regular : ∀ i, DiffContOnCl ℂ (approximation i) (regions i))
    (coverage : ∀ s ∈ rightCriticalStrip, ∃ i, s ∈ regions i)
    (sampled : ∀ i, ∀ w ∈ samples i,
      ‖residual (riemannZeta w) (approximation i w) 1‖ ≤ ε i)
    (variation : ∀ i, ∀ z ∈ frontier (regions i), ∃ w ∈ samples i,
      ‖residual (riemannZeta z) (approximation i z) 1 -
        residual (riemannZeta w) (approximation i w) 1‖ ≤ η i)
    (gap : ∀ i, ε i + η i < 1) : _root_.RiemannHypothesis := by
  apply rh_iff_nonzero_rightStrip.mpr
  intro s hs
  obtain ⟨i, inside⟩ := coverage s hs
  have hf : DiffContOnCl ℂ riemannZeta (regions i) :=
    (differentiableOn_zeta_rightStrip.mono (contained i)).diffContOnCl
  let certificate := Boundary.ofSamples riemannZeta (approximation i) (regions i)
    (samples i) hf (regular i) (sampled i) (variation i) (gap i)
  exact certificate.nonzero (bounded i) (subset_closure inside)

/-- Mesh geometry spends L*r of the residual budget; the between-sample proof is explicit. -/
theorem rh_of_boundary_meshes {I : Type u}
    (regions : I → Set ℂ) (approximation : I → ℂ → ℂ)
    (samples : I → Finset ℂ) (ε L r : I → ℝ)
    (bounded : ∀ i, Bornology.IsBounded (regions i))
    (contained : ∀ i, closure (regions i) ⊆ rightCriticalStrip)
    (regular : ∀ i, DiffContOnCl ℂ (approximation i) (regions i))
    (coverage : ∀ s ∈ rightCriticalStrip, ∃ i, s ∈ regions i)
    (nonnegative : ∀ i, 0 ≤ L i)
    (sampled : ∀ i, ∀ w ∈ samples i,
      ‖residual (riemannZeta w) (approximation i w) 1‖ ≤ ε i)
    (mesh : ∀ i, ∀ z ∈ frontier (regions i), ∃ w ∈ samples i, dist z w ≤ r i)
    (variation : ∀ i, ∀ z ∈ frontier (regions i), ∀ w ∈ samples i,
      ‖residual (riemannZeta z) (approximation i z) 1 -
        residual (riemannZeta w) (approximation i w) 1‖ ≤ L i * dist z w)
    (gap : ∀ i, ε i + L i * r i < 1) : _root_.RiemannHypothesis := by
  apply rh_of_sampled_boundary_patches regions approximation samples ε
    (fun i => L i * r i) bounded contained regular coverage sampled
  · intro i z hz
    obtain ⟨w, hw, nearby⟩ := mesh i z hz
    exact ⟨w, hw, (variation i z hz w hw).trans
      (mul_le_mul_of_nonneg_left nearby (nonnegative i))⟩
  · exact gap

/-- Both off-critical components are required for a fixed character. -/
theorem critical_line_iff_boundary_cover {N : ℕ} [NeZero N]
    (χ : DirichletCharacter ℂ N) :
    DirichletCriticalLine χ ↔ CertifiedOn χ.LFunction offCriticalStrip :=
  (critical_line_iff_nonzero_offStrip χ).trans
    (nonzero_iff_certifiedOn offCriticalStrip_isOpen
      (differentiableOn_dirichlet_offStrip χ))

theorem critical_line_iff_finite_core_certificates {N : ℕ} [NeZero N]
    (χ : DirichletCharacter ℂ N) :
    DirichletCriticalLine χ ↔
      ∀ n : ℕ, FiniteCover χ.LFunction offCriticalStrip (offCore n) := by
  constructor
  · intro h n
    have covered := (critical_line_iff_boundary_cover χ).mp h
    exact finiteCover_of_compact (offCore_isCompact n)
      (fun s hs => covered s (offCore_subset n hs))
  · intro h
    apply (critical_line_iff_nonzero_offStrip χ).mpr
    intro s hs
    obtain ⟨n, hn⟩ := exists_offCore hs
    exact finiteCover_nonzero (h n) s hn

/-- A character-specific quantitative consumer does not assume that character's GRH. -/
theorem critical_line_of_sampled_boundary_patches {N : ℕ} [NeZero N]
    (χ : DirichletCharacter ℂ N) {I : Type u}
    (regions : I → Set ℂ) (approximation : I → ℂ → ℂ)
    (samples : I → Finset ℂ) (ε η : I → ℝ)
    (bounded : ∀ i, Bornology.IsBounded (regions i))
    (contained : ∀ i, closure (regions i) ⊆ offCriticalStrip)
    (regular : ∀ i, DiffContOnCl ℂ (approximation i) (regions i))
    (coverage : ∀ s ∈ offCriticalStrip, ∃ i, s ∈ regions i)
    (sampled : ∀ i, ∀ w ∈ samples i,
      ‖residual (χ.LFunction w) (approximation i w) 1‖ ≤ ε i)
    (variation : ∀ i, ∀ z ∈ frontier (regions i), ∃ w ∈ samples i,
      ‖residual (χ.LFunction z) (approximation i z) 1 -
        residual (χ.LFunction w) (approximation i w) 1‖ ≤ η i)
    (gap : ∀ i, ε i + η i < 1) : DirichletCriticalLine χ := by
  apply (critical_line_iff_nonzero_offStrip χ).mpr
  intro s hs
  obtain ⟨i, inside⟩ := coverage s hs
  have hf : DiffContOnCl ℂ χ.LFunction (regions i) :=
    ((differentiableOn_dirichlet_offStrip χ).mono (contained i)).diffContOnCl
  let certificate := Boundary.ofSamples χ.LFunction (approximation i) (regions i)
    (samples i) hf (regular i) (sampled i) (variation i) (gap i)
  exact certificate.nonzero (bounded i) (subset_closure inside)

/-- Full positive-modulus and character quantifiers are retained explicitly. -/
theorem grh_iff_finite_core_certificates :
    DirichletGRH ↔ ∀ (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N) (n : ℕ),
      FiniteCover χ.LFunction offCriticalStrip (offCore n) := by
  constructor
  · intro h N hN χ n
    exact (critical_line_iff_finite_core_certificates χ).mp (h N χ) n
  · intro h N hN χ
    exact (critical_line_iff_finite_core_certificates χ).mpr (h N χ)

/-- A bounded range of moduli and core indices is not the full conjecture. -/
def BoundedDirichletCertificates (Q H : ℕ) : Prop :=
  ∀ (N : ℕ) [NeZero N], N ≤ Q → ∀ (χ : DirichletCharacter ℂ N),
    ∀ n : ℕ, n ≤ H → FiniteCover χ.LFunction offCriticalStrip (offCore n)

theorem bounded_certificates_mono {Q Q' H H' : ℕ}
    (moduli : Q ≤ Q') (cores : H ≤ H')
    (certified : BoundedDirichletCertificates Q' H') :
    BoundedDirichletCertificates Q H := by
  intro N hN hNQ χ n hnH
  exact certified N (hNQ.trans moduli) χ n (hnH.trans cores)

/-- All finite cutoffs suffice; no one cutoff is promoted to all conductors/heights. -/
theorem grh_iff_all_bounded_certificates :
    DirichletGRH ↔ ∀ Q H : ℕ, BoundedDirichletCertificates Q H := by
  constructor
  · intro h Q H N hN hNQ χ n hnH
    exact grh_iff_finite_core_certificates.mp h N χ n
  · intro h
    apply grh_iff_finite_core_certificates.mpr
    intro N hN χ n
    exact h N n N (Nat.le_refl N) χ n (Nat.le_refl n)

/-- A real counterexample forces failure of at least one exact core target. -/
theorem zeta_zero_obstructs_a_core {s : ℂ}
    (inside : s ∈ rightCriticalStrip) (zero : riemannZeta s = 0) :
    ∃ n : ℕ, ¬ FiniteCover riemannZeta rightCriticalStrip (rightCore n) := by
  obtain ⟨n, hn⟩ := exists_rightCore inside
  refine ⟨n, ?_⟩
  intro certified
  exact finiteCover_nonzero certified s hn zero

theorem dirichlet_zero_obstructs_a_core {N : ℕ} [NeZero N]
    {χ : DirichletCharacter ℂ N} {s : ℂ}
    (inside : s ∈ offCriticalStrip) (zero : χ.LFunction s = 0) :
    ∃ n : ℕ, ¬ FiniteCover χ.LFunction offCriticalStrip (offCore n) := by
  obtain ⟨n, hn⟩ := exists_offCore inside
  refine ⟨n, ?_⟩
  intro certified
  exact finiteCover_nonzero certified s hn zero

end GRWTSK.NumberTheory.Conditional
