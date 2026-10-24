# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Projectile.Variant4fdf0d3f64ab96e9b1389d5a1a855adbf5dee3189d1c00b5f29d038290d3520a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2be5ed28c3796011b0697e170ce1be77ebdcd0a` · SHA-256 `f15f33be4588129aa609f52cca5c18b0dd920e823b0b6668b6273b56e5e73a91`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.VsqUpper.Variantb99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.VsqUpper.Variantb99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0","mathematical_subject":"Analysis.Integration","original_sha256":"b99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/examples/Projectile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert

/-!
# Problem 5: Physics - Projectile Motion with Air Resistance

Domain: Classical mechanics / Engineering
Why it matters: Ballistics, sports physics, aerospace

## The Problem

With quadratic drag, the equations of motion are:
- dv/dt = g - k·v²  (vertical, upward positive)
- Terminal velocity: v_t = √(g/k)

For a baseball: g ≈ 9.8 m/s², k ≈ 0.0033 m⁻¹
Terminal velocity ≈ 54 m/s

## What We Prove

1. Energy bounds during flight
2. Velocity bounds at various heights
3. Drag force bounds
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.VsqUpper.Variantb99a8d10b7ecebb8c8b9fb024e0e0de74a91c1df8ec12e6f9eaa14502942e2b0

open LeanCert.Core LeanCert.Validity

/-! ## Part A: Drag Force Bounds

For velocity v ∈ [0, 50] m/s and k = 0.0033:
Drag acceleration = k·v² ∈ [0, 8.25] m/s²

Since k ≈ 1/300:
-/

-- v² bounds on [0, 50]
theorem vsq_upper :
    ∀ v ∈ Set.Icc (0:ℝ) 50, v * v ≤ (2500 : ℚ) := by
  certify_bound

-- Drag acceleration: (1/300)·v² ≤ 2500/300 = 25/3 ≈ 8.33
theorem drag_accel_upper :
    ∀ v ∈ Set.Icc (0:ℝ) 50, 1/300 * v * v ≤ (25/3 : ℚ) := by
  certify_bound

-- Drag is non-negative
theorem drag_nonneg :
    ∀ v ∈ Set.Icc (0:ℝ) 50, (0 : ℚ) ≤ 1/300 * v * v := by
  certify_bound

/-! ## Part B: Net Acceleration Bounds

Net acceleration = g - k·v² where g = 9.8

At v=0: a = 9.8 (maximum, free fall)
At v=v_t: a = 0 (terminal velocity)
At v>v_t: a < 0 (decelerating)

For v ∈ [0, 50]: a ∈ [9.8 - 8.33, 9.8] = [1.47, 9.8]
-/

-- Using g = 49/5 = 9.8 and k = 1/300
-- At v=50: 49/5 - 2500/300 = 9.8 - 8.33 ≈ 1.47
theorem net_accel_lower :
    ∀ v ∈ Set.Icc (0:ℝ) 50, (7/5 : ℚ) ≤ 49/5 - 1/300 * v * v := by
  certify_bound

theorem net_accel_upper :
    ∀ v ∈ Set.Icc (0:ℝ) 50, 49/5 - 1/300 * v * v ≤ (49/5 : ℚ) := by
  certify_bound

/-! ## Part C: Energy-like Quantity

During ascent, kinetic energy converts to potential:
E = ½v² + g·h (normalized mass = 1)

We can bound the kinetic energy term.
-/

-- Kinetic energy: ½v² on [0, 50]
theorem kinetic_energy_upper :
    ∀ v ∈ Set.Icc (0:ℝ) 50, 1/2 * v * v ≤ (1250 : ℚ) := by
  certify_bound

/-! ## Part D: Exponential Decay Model

For horizontal motion with linear drag: v(t) = v₀·e^(-kt)
If k = 0.1 and t ∈ [0, 10], then e^(-kt) ∈ [e^(-1), 1] ≈ [0.37, 1]
-/

-- e^t for t ∈ [-1, 0] gives velocity decay ratio
-- e^(-1) ≈ 0.368
theorem exp_decay_lower :
    ∀ t ∈ Set.Icc (-1:ℝ) 0, (36/100 : ℚ) ≤ Real.exp t := by
  certify_bound

theorem exp_decay_upper :
    ∀ t ∈ Set.Icc (-1:ℝ) 0, Real.exp t ≤ (1 : ℚ) := by
  certify_bound

/-! ## Part E: Discovery Commands -/

#bounds (fun v => v * v) on [0, 50]
#bounds (fun v => 49/5 - 1/300 * v * v) on [0, 50]
#bounds (fun t => Real.exp t) on [-1, 0]

/-! ## Summary: Projectile Motion Bounds ✓

Successfully proved:
1. Drag force bounds: F_drag/m ∈ [0, 8.33] m/s² for v ≤ 50 m/s
2. Net acceleration bounds: a ∈ [1.4, 9.8] m/s²
3. Kinetic energy upper bound: KE ≤ 1250 J/kg
4. Exponential velocity decay bounds: e^t ∈ [0.36, 1] for t ∈ [-1, 0]

Note: sin/cos bounds have precision issues with Taylor series on wide intervals.

These bounds are useful for:
- Trajectory prediction with uncertainty
- Safety envelope computation
- Numerical integration validation
-/
```
