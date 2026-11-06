/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import TauCeti.Analysis.Complex.Conformal.Hurwitz

/-!
# Closed zero loci under a locally uniform holomorphic limit

Isolated adapter: use documentation/adapters/tauceti-connes, not the root
Mathlib-only environment. Reuses TauCeti.hurwitz_eventually_exists_eq_zero at
TauCetiProject/TauCeti 67aa17161ba1908f8a85182bfdf2d4ccaf21171c.
Upstream authors: The Tau Ceti contributors; upstream license Apache-2.0.
No upstream source is copied and the root toolchain is unchanged.

The proof is substantive zero transport: an off-locus zero has a ball disjoint
from the closed locus, while Hurwitz supplies an approximating zero in that
ball. The nonzero-limit premise is indispensable. This supplies the last
analytic implication of Connes arXiv:2602.04022v1 Section 6, not the convergence
or spectral simplicity premises. AI-assisted wrapper. Compilation, kernel
checking and transitive axiom audit: NOT_RUN, including the imported closure.
-/
set_option autoImplicit false
noncomputable section
open Complex Metric Filter Topology
namespace GRWTSK.Analysis.Complex.ZeroLimit

variable {ι : Type*} {l : Filter ι} [l.NeBot]
variable {Ω S : Set ℂ} {F : ι → ℂ → ℂ} {g : ℂ → ℂ}

/-- A nonzero holomorphic limit cannot acquire a zero off a closed locus that
contains all approximating zeros. An arbitrary nontrivial filter is supported. -/
theorem zeros_mem_closed_of_locally_uniform_limit
    (hΩ : IsOpen Ω) (connected : IsPreconnected Ω) (closed : IsClosed S)
    (holomorphic : ∀ᶠ i in l, DifferentiableOn ℂ (F i) Ω)
    (converges : TendstoLocallyUniformlyOn F g l Ω)
    (located : ∀ᶠ i in l, ∀ z ∈ Ω, F i z = 0 → z ∈ S)
    (nonzero : ∃ z ∈ Ω, g z ≠ 0) :
    ∀ z ∈ Ω, g z = 0 → z ∈ S := by
  intro z hz hgz
  by_contra outside
  obtain ⟨r, hr, hball⟩ := Metric.isOpen_iff.mp closed.isOpen_compl z outside
  have not_identically_zero : ¬ ∀ w ∈ Ω, g w = 0 := by
    intro h
    obtain ⟨w, hw, hn⟩ := nonzero
    exact hn (h w hw)
  have nearby := TauCeti.hurwitz_eventually_exists_eq_zero
    hΩ connected holomorphic converges hz hgz not_identically_zero hr
  obtain ⟨i, hi, hloc⟩ := (nearby.and located).exists
  obtain ⟨w, hw, hFw⟩ := hi
  exact (hball hw.2) (hloc w hw.1 hFw)

/-- In particular, real-zero approximants have a real-zero nonzero limit. -/
theorem real_zeros_of_locally_uniform_limit
    (hΩ : IsOpen Ω) (connected : IsPreconnected Ω)
    (holomorphic : ∀ᶠ i in l, DifferentiableOn ℂ (F i) Ω)
    (converges : TendstoLocallyUniformlyOn F g l Ω)
    (located : ∀ᶠ i in l, ∀ z ∈ Ω, F i z = 0 → z.im = 0)
    (nonzero : ∃ z ∈ Ω, g z ≠ 0) :
    ∀ z ∈ Ω, g z = 0 → z.im = 0 := by
  have closed : IsClosed {z : ℂ | z.im = 0} :=
    isClosed_eq Complex.continuous_im continuous_const
  exact zeros_mem_closed_of_locally_uniform_limit hΩ connected closed
    holomorphic converges located nonzero

end GRWTSK.Analysis.Complex.ZeroLimit
