# `GRWTSK.FunctionalAnalysis.GaussianConjugatePairing.Seed.fixed_head_remainder_le`

Local mathematical attribution: grwtsk contributors.

Source: [GaussianConjugatePairing.lean](../GaussianConjugatePairing.lean), blob `dab527d567428d1e4b2072ee8b86bf398e7ea319`, based on math@8d7c8b8084caa6ff3cf6b254da449042617519f8. Local analytical consequence, not a new Weil criterion.

Statement/domain: the complete damped pairing differs from the ORIGINAL fixed seed head by norm <=S^2*M*exp(-2*a*(R^2+delta^2-B^2)). Primary argument: instantiate summable_and_remainder_le with energy_ge_of_strip and rewrite using head_preserved. The strip/far bounds cover every omitted index; the seed head condition is explicit. No interpolation, arithmetic divisor or compact test is constructed. Consumer: WeilGaussianLocalization.pairing_re_le_head_add and logarithmic-horizon negativity.

[Shared source comparison, hashes, dependency pins, hostile checks and reproduction](README.md). Coordination: math#1801; research#51. Novelty UNASSESSED. Elaboration/build, fresh kernel replay, transitive axiom audit, arithmetic execution, independent reproduction and independent analytical review: NOT_RUN.
