# GRWTSK.LinearAlgebra.NegativeIndexBounds.negativeIndex_le_of_energy_budget

Local mathematical attribution: grwtsk contributors.
Source: [NegativeIndexBounds.lean](../NegativeIndexBounds.lean). Exact hashes, source comparison, dependency pins and reproduction: [source record](source.md).

**Statement/hypotheses:** loss>=0, energy>=0, Q(v)>=energy(v)-loss*mass(v), and mass(v)<=error*energy(v) on the exact observation kernel; loss*error<=1; finite-dimensional observation space.

**Primary argument:** On that kernel Q(v)>=(1-loss*error)*energy(v)>=0. Apply the finite-observation bound. No norm or positivity property is silently imposed on the parameter named mass: the inequalities are exactly the mathematical inputs used.

**Consumer:** A quantitative interface for a future source-identified compact embedding or high-energy approximation estimate.

**Hostile control/limits:** The approximation inequality and full source lower bound remain premises. This does not construct the finite observer or prove any Weil/gamma/prime estimate. Equality in this upper-bound budget is permitted.

FORMAL_SOURCE_CANDIDATE. Elaboration, kernel replay, axiom audit and independent review: NOT_RUN. Novelty UNASSESSED; no novelty claim. Publication does not establish GRH.
