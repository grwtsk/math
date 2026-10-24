# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceBumpLaplaceProofsOrdinary.Variant2f2d803bc6a280a33cb3c39e5a931fdf468228cfe8abfd815e0c6a94052a2dac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd2cb9f2dbf8f50c8c71a23664fd29db1a5f7941` · SHA-256 `2f2d803bc6a280a33cb3c39e5a931fdf468228cfe8abfd815e0c6a94052a2dac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceBumpLaplace
set_option linter.style.header false
set_option linter.hashCommand false
set_option linter.style.setOption false
set_option pp.all true
set_option pp.maxSteps 100000000
set_option maxHeartbeats 10000000
set_option maxRecDepth 100000
set_option pp.rawOnError false
set_option pp.fullNames false
open FormalResearch.RiemannHypothesis.SourceBumpLaplace
#print bumpLaplace
#print bumpLaplaceMoment
#print bump_laplace_moment_interval_integrable
#print bump_laplace_moment_zero
#print bump_laplace_even
#print bump_laplace_at_zero
#print bump_laplace_zero_ne_zero
#print bump_moment_factor_norm_le_one
#print bump_laplace_moment_has_deriv_at
#print bump_laplace_moment_continuous
#print bump_laplace_moment_ode
#print radialBump
#print radialBumpSlope
#print radialBumpFlux
#print radial_moment_has_deriv_at
#print radial_bump_has_deriv_at
#print radial_bump_slope_has_deriv_at
#print radial_bump_flux_has_deriv_at
#print radial_bump_continuous
#print radial_bump_slope_continuous
#print radial_bump_flux_continuous
#print radialBumpMass
#print radialBumpEnergy
#print radial_bump_mass_interval_integrable
#print radial_bump_energy_interval_integrable
#print radial_bump_energy_nonneg
#print radial_bump_mass_pos
#print bump_laplace_radial_energy_of_zero
#print re_eq_zero_of_energy
#print bump_laplace_ne_zero_of_re_ne_zero
```
