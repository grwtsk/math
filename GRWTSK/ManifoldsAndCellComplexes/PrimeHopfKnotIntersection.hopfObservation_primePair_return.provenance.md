# `hopfObservation_primePair_return` provenance

Local attribution: grwtsk contributors.

## Exact declaration and source

- File: [PrimeHopfKnotIntersection.lean](PrimeHopfKnotIntersection.lean).
- Fully qualified declaration: `GRWTSK.Topology.GeometricTopology.PrimeLinkGeometrization.PrimeHopfKnotIntersection.hopfObservation_primePair_return`.
- Checked local source Git blob: `9fb9b1863207192e2d695e8bbca8c687c22e5c0e`.
- Prior source: [grwtsk/math at `6e6578240b29`](https://github.com/grwtsk/math/blob/6e6578240b290ee838a8d4f2d0afc5cf8b73e726/GRWTSK/ManifoldsAndCellComplexes/PrimeHopfKnotIntersection.lean), declaration `hopfObservation_primePair_return`, prior blob `451f9711e6af57b52140b20e330557f6e82fed3c`.
- Source authors: grwtsk contributors. This is a local source-bound proof repair or verification of a local algebraic construction, not an adaptation attributed to an external paper. Historical source comments do not supply a paper-specific derivation for this declaration.
- Upstream library: [Lean mathlib4 revision d13f23b723b8a846827a245b89c10fc7d3f11612](https://github.com/leanprover-community/mathlib4/tree/d13f23b723b8a846827a245b89c10fc7d3f11612), under the project pin; Lean `leanprover/lean4:v4.34.1`.

## Hypotheses and representation

The existing PrimePair pair, retaining its exact prime_p, prime_q and ordered fields, and one Circle parameter u. No consecutive-prime hypothesis.

No proof or statement change in this follow-up: this exact consumer now elaborates with the full project dependency chain, not replacement declarations.

## Analytical argument and consumer

Primality gives positivity of each label, allowing hopfObservation_chosenKnot at pair.p and pair.q. The existing winding_difference gives the natural exponent difference 2*gap pair. The imported displacement_source_gap identifies the actual stereographic displacement with the rational cast of gap pair; casting multiplication completes the equality.

Consumer: Explicit joint return from the two chosen Hopf observations to the original PrimePair and PrimeSphericalDisplacement stereographic displacement.

Stereographic displacement is not round distance. Winding is tied to the chosen representative and Hopf convention. No simultaneous disjoint link, isotopy invariant, topological degree, or prime-distribution result follows.

## Scoped evidence

On 2026-11-09, `lake build GRWTSK.ManifoldsAndCellComplexes.PrimeHopfKnotIntersection`
succeeded against the project pins, compiling this exact declaration in its
maintained source with the actual project imports. This is native Lean
elaboration/compilation evidence; dependencies may use cached compiled artifacts.
The earlier isolated diagnostic does not supply the evidence for this record.
No theorem statement was weakened and no new axiom or `sorry` was added.

- Native exact-source elaboration/compilation: PASS.
- Separate fresh kernel replay: NOT_RUN.
- Full transitive axiom audit: NOT_RUN.
- Independent analytical review: NOT_RUN.
- Novelty assessment: NOT_RUN; no novelty claim.

This record does not promote unrelated theorems or the written continuum claims.
