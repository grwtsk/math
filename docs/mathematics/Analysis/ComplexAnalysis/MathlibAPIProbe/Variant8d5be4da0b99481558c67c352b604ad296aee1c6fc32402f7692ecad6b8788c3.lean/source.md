# Complete source: GRWTSK.Analysis.ComplexAnalysis.MathlibAPIProbe.Variant8d5be4da0b99481558c67c352b604ad296aee1c6fc32402f7692ecad6b8788c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8d57e0f6ed0b6d2bcffdf00c6eb15f1c9d98e9d` · SHA-256 `8d5be4da0b99481558c67c352b604ad296aee1c6fc32402f7692ecad6b8788c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.Meromorphic.Divisor
import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.Topology.Path
import Mathlib.Tactic.Find

/-!
# Pinned mathlib complex-analysis API probe

This file records compile-time reconnaissance against the mathlib version
pinned by Surface. It deliberately defines no mathematical declarations and
is not imported by the canonical `Surface.Core` aggregate.

Positive probes identify the existing meromorphic-order, compact-divisor,
circle-integral, rectangle-integral, filter, and path APIs. Negative probes
document that this pin does not yet expose a general analytic residue,
contour/path integral, winding number, Laurent-series, or principal-part API.

This file is diagnostic evidence only. It carries no theorem authority.
-/

open Filter Set Complex
open scoped Topology
noncomputable section

/-! ## Meromorphic functions and local order -/

#check MeromorphicAt
#check MeromorphicOn
#check MeromorphicAt.iff_eventuallyEq_zpow_smul_analyticAt
#check MeromorphicAt.eventually_eq_zero_or_eventually_ne_zero
#check meromorphicOrderAt
#check meromorphicOrderAt_eq_int_iff
#check meromorphicOrderAt_ne_top_iff
#check meromorphicOrderAt_ne_top_iff_eventually_ne_zero
#check meromorphicOrderAt_congr
#check analyticOrderAt
#check AnalyticAt.analyticOrderAt_eq_natCast
#check AnalyticAt.analyticOrderAt_ne_top

/-! ## Filters and germ-style eventual equality -/

#check Filter.EventuallyEq
#check Filter.Eventually
#check nhdsWithin
#check eventually_nhdsWithin_iff
#check eventuallyEq_nhds_of_eventuallyEq_nhdsNE
#check ContinuousAt.eventuallyEq_nhds_iff_eventuallyEq_nhdsNE

example (z : ℂ) : Filter ℂ := nhdsWithin z {z}ᶜ
example (f g : ℂ → ℂ) (z : ℂ) : Prop := f =ᶠ[nhdsWithin z {z}ᶜ] g

/-! ## Divisors and compact finiteness -/

#check MeromorphicOn.divisor
#check MeromorphicOn.divisor_apply
#check MeromorphicOn.divisor_support_finite_of_subset
#check divisor_sphere_support_finite
#check Function.locallyFinsuppWithin
#check Function.locallyFinsuppWithin.finiteSupport
#check MeromorphicOn.codiscrete_setOf_meromorphicOrderAt_eq_zero_or_top
#check MeromorphicOn.codiscreteWithin_setOf_meromorphicOrderAt_eq_zero_or_top

/-! ## Circle and rectangle integrals -/

#check circleIntegral
#check_failure Complex.circleIntegral
#check circleIntegral_def_Icc
#check circleIntegral.integral_sub_center_inv
#check Complex.circleIntegral_eq_zero_of_differentiable_on_off_countable
#check Complex.integral_boundary_rect_of_hasFDerivAt_real_off_countable
#check Complex.integral_boundary_rect_eq_zero_of_differentiable_on_off_countable
#check Complex.integral_boundary_rect_eq_zero_of_continuousOn_of_differentiableOn
#check Complex.integral_boundary_rect_eq_zero_of_differentiableOn
#check_failure Complex.integral_boundary_rect

/-! ## Topological paths -/

#check Path
#check Path.trans
#check Path.map

/-! ## Deliberate negative probes -/

#check_failure Complex.residue
#check_failure residue
#check_failure Complex.contourIntegral
#check_failure contourIntegral
#check_failure Complex.pathIntegral
#check_failure pathIntegral
#check_failure Complex.windingNumber
#check_failure windingNumber
#check_failure Path.windingNumber
#check_failure Complex.LaurentSeries
#check_failure LaurentSeries
#check_failure Complex.principalPart
#check_failure principalPart

/-! ## Focused declaration searches -/

#find meromorphicOrderAt _ _ = _ ↔ _
#find (MeromorphicOn.divisor _ _).support.Finite
#find circleIntegral (_ : ℂ → ℂ) _ _ = (0 : ℂ)
```
