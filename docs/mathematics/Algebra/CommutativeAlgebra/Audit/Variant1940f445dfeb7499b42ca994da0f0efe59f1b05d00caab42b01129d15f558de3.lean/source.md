# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Audit.Variant1940f445dfeb7499b42ca994da0f0efe59f1b05d00caab42b01129d15f558de3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f075c84382f2a13ec727551c5f32ea769462f912` · SHA-256 `1940f445dfeb7499b42ca994da0f0efe59f1b05d00caab42b01129d15f558de3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import PhasePolynomialBudget

set_option linter.hashCommand false

open FormalResearch.RiemannHypothesis.SourcePhasePolynomialBudget

#check @phasePolynomialCoefficient
#print axioms phasePolynomialCoefficient

#check @phasePolynomialCoefficient_pos
#print axioms phasePolynomialCoefficient_pos

#check @positiveMass_ge_taylor
#print axioms positiveMass_ge_taylor

#check @positiveMass_gt_polynomial
#print axioms positiveMass_gt_polynomial

#check @positiveMass_eventually_gt_polynomial
#print axioms positiveMass_eventually_gt_polynomial

#check @positiveMass_not_eventually_polynomial_bounded
#print axioms positiveMass_not_eventually_polynomial_bounded

```
