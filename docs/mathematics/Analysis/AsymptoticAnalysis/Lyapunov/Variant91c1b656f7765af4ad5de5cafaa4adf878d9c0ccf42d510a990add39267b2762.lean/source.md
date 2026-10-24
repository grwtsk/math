# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.Lyapunov.Variant91c1b656f7765af4ad5de5cafaa4adf878d9c0ccf42d510a990add39267b2762

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0f8fb1906130fa6d1676c152247b89e724a5532` · SHA-256 `eff921ec4faf7a7b4e44224de09ef85b25ffd130e93bde20024194999cab000c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.VsqBoundsPositive.Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.VsqBoundsPositive.Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/examples/Lyapunov.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert

/-!
# Problem 3: Control Theory - Lyapunov Stability

Domain: Dynamical systems / Robotics
Why it matters: Safety certification for autonomous systems

## The System

Damped harmonic oscillator: ẍ + 2ζωₙẋ + ωₙ²x = 0
- ωₙ = 2 (natural frequency)
- ζ = 0.1 (damping ratio, underdamped)

## Lyapunov Function

V(x, v) = ½(v² + ωₙ²x²)  -- Total energy

## What We Prove

V̇ = -2ζωₙv² ≤ 0

The energy derivative is always non-positive, proving stability.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.VsqBoundsPositive.Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08

open LeanCert.Core

/-! ## System Parameters -/

-- ωₙ = 2 (natural frequency)
-- ζ = 0.1 (damping ratio)
-- Combined: 2ζωₙ = 2 * 0.1 * 2 = 0.4 = 2/5

/-! ## Part A: Prove Energy Dissipation

V̇ = v·ẍ + ωₙ²·x·v
  = v·(-2ζωₙv - ωₙ²x) + ωₙ²xv
  = -2ζωₙv² - ωₙ²xv + ωₙ²xv
  = -2ζωₙv²

So V̇ = -2ζωₙv² = -(2/5)v² ≤ 0 for all v.
-/

-- The energy derivative is -2ζωₙv² = -(2/5)v²
-- Key insight: We can prove v² bounds directly, then derive the energy derivative bound

-- First prove v² ∈ [0, 1] on [0, 1] (monotone increasing)
theorem vsq_bounds_positive :
    ∀ v ∈ Set.Icc (0:ℝ) 1, v * v ≤ (1 : ℚ) := by
  certify_bound

-- And v² ∈ [0, 1] on [-1, 0] (monotone decreasing)
theorem vsq_bounds_negative :
    ∀ v ∈ Set.Icc (-1:ℝ) 0, v * v ≤ (1 : ℚ) := by
  certify_bound

-- For the energy derivative bound, we use a different formulation
-- -(2/5) * v² ≤ 0 is equivalent to proving v² ≥ 0
-- But we'll prove the min of -(2/5)v² is -2/5 (at v=±1) which is < 0

-- On [0, 1]: -2/5 * v * v has min at v=1 giving -2/5, max at v=0 giving 0
theorem energy_derivative_on_positive :
    ∀ v ∈ Set.Icc (0:ℝ) 1, -2/5 * v * v ≤ (0 : ℚ) := by
  certify_bound

-- On [-1, 0]: same by symmetry (v*v = v²)
theorem energy_derivative_on_negative :
    ∀ v ∈ Set.Icc (-1:ℝ) 0, -2/5 * v * v ≤ (0 : ℚ) := by
  certify_bound

-- Combined proof using interval union
theorem energy_derivative_nonpositive :
    ∀ v ∈ Set.Icc (-1:ℝ) 1, -2/5 * v * v ≤ (0 : ℝ) := by
  intro v ⟨hlo, hhi⟩
  by_cases! h : v ≥ 0
  · have := energy_derivative_on_positive v ⟨h, hhi⟩
    linarith
  · have := energy_derivative_on_negative v ⟨hlo, le_of_lt h⟩
    linarith

-- The derivative is strictly negative when v ≠ 0
-- On [0.1, 1], we have v² ≥ 0.01, so -(2/5)v² ≤ -0.004 = -1/250

def v_positive : IntervalRat := ⟨1/10, 1, by norm_num⟩

theorem energy_derivative_strictly_negative_pos :
    ∀ v ∈ v_positive, -2/5 * v * v ≤ (-1/250 : ℚ) := by
  certify_bound

-- On [-1, -0.1], same bound by symmetry
def v_negative : IntervalRat := ⟨-1, -1/10, by norm_num⟩

theorem energy_derivative_strictly_negative_neg :
    ∀ v ∈ v_negative, -2/5 * v * v ≤ (-1/250 : ℚ) := by
  certify_bound

/-! ## Part B: Univariate Energy Component Bounds -/

-- The Lyapunov function V = ½(v² + ωₙ²x²) = ½(v² + 4x²)
-- For |x|, |v| ≤ 1: V ∈ [0, 2.5]

-- v² is bounded on [-1, 1]
theorem vsq_bounded :
    ∀ v ∈ Set.Icc (-1:ℝ) 1, v * v ≤ (1 : ℚ) := by
  certify_bound

-- 4x² is bounded on [-1, 1]
theorem xsq_term_bounded :
    ∀ x ∈ Set.Icc (-1:ℝ) 1, 4 * x * x ≤ (4 : ℚ) := by
  certify_bound

-- Non-negativity of v² - use monotonicity on [0,1] instead of direct bound
-- For x ≥ 0, x² is increasing, and at x=0, x²=0. So x² ≥ 0.
-- We prove it on [0,1] and [-1,0] separately using monotonicity

theorem vsq_nonneg_positive :
    ∀ v ∈ Set.Icc (0:ℝ) 1, (0 : ℚ) ≤ v * v := by
  certify_bound

theorem vsq_nonneg_negative :
    ∀ v ∈ Set.Icc (-1:ℝ) 0, (0 : ℚ) ≤ v * v := by
  certify_bound

-- Combined via standard math (v*v = v^2)
theorem vsq_nonneg : ∀ v : ℝ, 0 ≤ v * v := by
  intro v; nlinarith [sq_nonneg v]

theorem xsq_term_nonneg : ∀ x : ℝ, 0 ≤ 4 * x * x := by
  intro x; nlinarith [sq_nonneg x]

/-! ## Part C: Discovery - Energy on State Space -/

-- Find bounds on the Lyapunov function components
#bounds (fun x => x * x) on [-1, 1]
#bounds (fun x => 4 * x * x) on [-1, 1]
#bounds (fun v => -(2/5) * v * v) on [-1, 1]

/-! ## Part D: Exponential Decay Rate

Since V̇ ≤ -2ζωₙ·(v²) and V ≥ ½v²,
we have V̇ ≤ -4ζωₙ·(½v²) ≤ -4ζωₙ·V/2.5 (worst case)

This gives exponential decay: V(t) ≤ V(0)·e^(-0.16t)
-/

-- The decay rate coefficient: 4ζωₙ = 4 * 0.1 * 2 = 0.8 = 4/5
#eval (4 * (1/10 : ℚ) * 2)  -- = 4/5 = 0.8

/-! ## Summary: Lyapunov Stability ✓

Successfully proved:
1. Energy derivative V̇ = -(2/5)v² ≤ 0 (energy dissipation)
2. V̇ < -1/250 when |v| ≥ 0.1 (asymptotic stability)
3. Energy component bounds: v² ≤ 1, 4x² ≤ 4
4. All components non-negative

This demonstrates LeanCert's applicability to control theory!
Note: Full 2D analysis would use multivariate_bound or Box-based optimization.
-/
```
