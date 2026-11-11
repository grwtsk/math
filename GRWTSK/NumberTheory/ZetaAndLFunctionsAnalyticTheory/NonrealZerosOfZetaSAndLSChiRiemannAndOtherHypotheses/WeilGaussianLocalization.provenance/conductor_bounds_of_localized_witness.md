# `GRWTSK.NumberTheory.WeilNegativeWitness.GaussianLocalization.conductor_bounds_of_localized_witness`

Local mathematical attribution: grwtsk contributors.

Source: [WeilGaussianLocalization.lean](../WeilGaussianLocalization.lean), blob `4dd56d11b74f7b4e63b64c29e8a8c0485cd4ba0c`, based on math@8d7c8b8084caa6ff3cf6b254da449042617519f8. Direct composition with Program 7's conductor_bounds_of_pairing_budget; no new arithmetic form.

Statement/domain: a supported smooth test identified with the localized-and-perturbed signed pairing has positive energy, conductor bounded by conductorThreshold(T,-m0/energy(f)), and conductor below conductorCutoff(T), when its total budget leaves m0>0. The character is primitive NONPRINCIPAL. Admissible f, support in [-T,T], MemLp, archimedean integrability, pointwise cutoff-error envelope, total budget and exact identity to primitiveArithmeticValue are explicit premises. The principal sector and both poles remain separate.

Primary argument: pass the proved Gaussian head/tail bound and Seed.damped_bound to the EXISTING Program 7 theorem. Its original active prime powers, conductor and gamma/parity terms are unchanged. The support/admissibility premises express the intended source domain; they do not claim to construct the test. Consumer: the existing conductor-filtered arithmetic problem, not a GRH theorem.

[Exact dependency pins, source comparison, hashes, hostile checks, missing bridges and reproduction](../../../../FunctionalAnalysis/GaussianConjugatePairing.provenance/README.md). Coordination: math#1801 and #1804; research#51. Novelty UNASSESSED. Elaboration/build, fresh kernel replay, transitive axiom audit, arithmetic execution, independent reproduction and independent analytical review: NOT_RUN.
