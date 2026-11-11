# continuous_quadratic

Local attribution: grwtsk contributors.

## Exact source

Declaration: `GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.EvaluationModel.continuous_quadratic` in [WeightedConjugatePairingTopology.lean](../WeightedConjugatePairingTopology.lean).

Source blob: `3f2101e809d7d56a917a1283a3d3efe190cfad9b`.
Source SHA-256: `6b2f97b17a6d1efd920f58edf3bbc1bcda7e95ac94e22e6e7ee3a9dfc0bc0dd2`.
Inspection base: `grwtsk/math@5f66eb82a40921253664f53602851091ccd01d94`.
Lean: `leanprover/lean4:v4.34.1`. Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

```lean
theorem continuous_quadratic (D : EvaluationModel ι E) : Continuous D.quadratic
```

Here ι is any type; E is a normed additive group and complex normed space, not assumed complete. D supplies nonnegative m,w, an index map j preserving w, a summable family m_i w_i^2, and a complex-linear T with norm(T x i) <= norm(x) w_i for every x,i. The value is q(x)=Re(sum_i m_i T(x)_i conjugate(T(x)_(j i))). No real-zero, positivity, Hermitian-symmetry, Fourier-realization or arithmetic-source assumption is silently inserted.

## Primary argument and comparison

Let M be the full majorant mass. The preceding theorem proves |q(y)-q(x)| <= M(2 norm(x) norm(y-x)+norm(y-x)^2). For fixed x and epsilon>0 put C=M(2 norm(x)+1) and delta=min(1,epsilon/(C+1)). Then r=norm(y-x)<delta implies r^2<=r and |q(y)-q(x)|<=Cr<epsilon. The denominator C+1 also covers M=0. Thus continuity is derived rather than supplied as an extra premise.

This is a standard local consequence of [RP-OC-02 W1/W4, research issue #51](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/51), following the grwtsk contributors monograph *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0 (2026-11-10), section 19.3. It is not presented as an independently novel theorem or a direct formalization of an unstated literature result. Full novelty comparison remains UNASSESSED.

The canonical Program 2 dependency is WeightedConjugatePairing.lean, blob `727272783e1502265da0cb4281bd5c793a924e69`. The canonical Program 10 consumer is DenseNonnegativeApproximation.lean, blob `0c5c09eb72d363ad75ac6d4f731ecafcb239b4cc`, inspected at the base above. Existing source-candidate status is not promoted by import.

## Consumer and limitations

This discharges the continuity premise of the canonical dense-dictionary and shrinking-enclosure consumers for a supplied weighted evaluation model. Density and sound enclosures remain separate hypotheses. A fixed normed test-space result does not establish uniformity under changing support or conductor. The actual Fourier test norm, arithmetic divisor, multiplicity moment, Hermitian identity and full pole-inclusive arithmetic return remain to be constructed. No conductor, gamma/parity term, prime power or pole is discarded. No unconditional arithmetic positivity or GRH is claimed.

## Reproduction and evidence

Publication receipt and remaining obligations: [math issue #1801](https://github.com/grwtsk/math/issues/1801). From a clean checkout of the publication commit with the pinned toolchain and dependencies, build the imported project modules, then run `lake env lean GRWTSK/FunctionalAnalysis/WeightedConjugatePairingTopology.lean`. Inspect `#print axioms GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.EvaluationModel.continuous_quadratic` in the same environment. These are reproduction instructions, not executed commands.

Elaboration/build: NOT_RUN. Fresh kernel replay: NOT_RUN. Transitive axiom audit: NOT_RUN. Independent analytical review: NOT_RUN. Arithmetic certificate execution: NOT_RUN. A lexical scan and matching Git blob do not supply any of these checks. Publication is source-candidate preservation, not mathematical acceptance.
