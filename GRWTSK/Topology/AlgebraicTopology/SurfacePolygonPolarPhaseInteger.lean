/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #991 exact head ea26d00b9129894872237aadb04553367afab6f9.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarPhase
import Mathlib.Analysis.SpecialFunctions.Complex.CircleMap
import Mathlib.Tactic

/-!
# Phase equality modulo integer winding

This module uses Mathlib's complex exponential equality criterion
to express the missing integer-winding bridge. No quotient equality
is assumed by fiat. The real-angle normalization is 2π, not π or 1.
All proofs are source candidates awaiting pinned Lean elaboration.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarPhaseInteger

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk

/-- Equality of complex unit phases forces integral angular difference.
This statement is deliberately separated from the subsequent AddCircle
quotient equality and requires Mathlib's exponential-period criterion. -/
theorem phase_eq_iff_integer_winding (θ φ : ℝ) :
    Complex.exp ((2 * Real.pi * θ : ℝ) * Complex.I) =
        Complex.exp ((2 * Real.pi * φ : ℝ) * Complex.I) ↔
      ∃ n : ℤ, θ = φ + n := by
  constructor
  · intro h
    have hphase :
        Complex.circleMap 0 1 (2 * Real.pi * θ) =
          Complex.circleMap 0 1 (2 * Real.pi * φ) := by
      simpa [Complex.circleMap, mul_assoc, mul_comm, mul_left_comm] using h
    rcases (Complex.circleMap_eq_circleMap_iff (0 : ℂ)
      (by norm_num : (1 : ℝ) ≠ 0)).mp hphase with ⟨n, hn⟩
    have hi : (2 * Real.pi * θ : ℂ) * Complex.I =
        (2 * Real.pi * φ : ℂ) * Complex.I +
          (n : ℂ) * ((2 * Real.pi : ℂ) * Complex.I) := by
      simpa only [Complex.ofReal_mul, Complex.ofReal_ofNat,
        Complex.ofReal_mul, mul_assoc] using hn
    have hreal : θ = φ + (n : ℝ) := by
      have hpi : (2 * Real.pi : ℝ) ≠ 0 := by positivity
      apply (mul_left_cancel₀ hpi)
      have hc := congrArg (fun z : ℂ => z / Complex.I) hi
      have hc' : (2 * Real.pi * θ : ℂ) =
          (2 * Real.pi * (φ + (n : ℝ)) : ℂ) := by
        convert hc using 1 <;> push_cast <;> ring
      exact_mod_cast (by
        apply (mul_left_cancel₀ hpi)
        exact_mod_cast hc' : 2 * Real.pi * θ =
          2 * Real.pi * (φ + (n : ℝ)))
    exact ⟨n, hreal⟩
  · rintro ⟨n, rfl⟩
    have h := GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarPeriodicity.realAnglePolar_add_int
      φ 1 n
    have hc := congrArg (fun z : ℂ => z) h
    simpa [realAnglePolar, mul_assoc, mul_comm, mul_left_comm] using hc

/-
Remaining gates:
* verify this source against exact pinned Mathlib API;
* relate ∃ n : ℤ, θ=φ+n to equality in UnitAddCircle;
* construct continuous quotient-descended polar map;
* prove cone fiber criterion and disk homeomorphism.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarPhaseInteger
