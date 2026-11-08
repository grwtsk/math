# Canonical prime typing through Automircron frames and existing RH reformulations

Local mathematical attribution: grwtsk contributors. Date: 2026-10-31.

## Source inspection and what the active branches actually establish

The current `grwtsk/math/main` inspection was refreshed after the existing
Automircron candidate (`28510ce3346cfe7b2b255d0ed2d2d472b26cecd0`).
Concurrent main published `MoebiusDenseSignedGapComplementFrontier.lean`
(blob `61d626c267fa11f1b6e53a9837076cc4c6e039a0`) and its canonical review.
Its all-positive-rate signed-complement equivalence shows that reindexing
the dense core is **not** an independent arithmetic estimate.

Existing exact source modules and blobs inspected:

* `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/AutomircronPrimeKernel.lean`, `23477d9664830bed7e15989c2bbc4ece324ac828`: `AutomircronKernel`, dependent `PrimeIndex`, `sourceIndex`, `primeFrame` and `gramDefect` on the literal Möbius causal Gram. It leaves complete prime support and n=1 open and proves rigidity for injective source indices. The proposed research name is **not** a pre-existing Mathlib theorem.
* `.../AutomircronDirichletFrame.lean`, `b253db8bbbec58db78cbe2744484583f9348edfc`: literal `Aj`, `(parity, floor(n/2) mod d²)` readouts, actual `DirichletCharacter ℂ q`, `flic`, `windDirichlet`, odd reflection cancellation and source Abel increment. Character winding kills nonunits and is not a complete unitary Fourier transform of the arithmetic source.
* `.../PrimeFiberFiniteTestTransport.lean`, `53efabe82d6a3bca895e125072c7efba65add1d1`: `PrimeIndex={p : ℕ // p.Prime}`, dependent `Sigma Fiber`, and a finite-test transport with an **externally supplied** test selector. It does not supply source identification or the missing cancellation estimate.
* `.../PrimeFiberOrderedAddress.lean`, `2122f4c91ad0b925941ea67e7aa94787797ede86`: full `Sigma Fiber` occurrences remain in an ordered list, each prime selects its local `ZMod p` cyclic address; serialization is injective, with address cardinality the ordered product of prime **radices**. Repeated prime axes are retained. A mixed-radix coordinate is not a prime-power additive-group identification.
* `GRWTSK/NumberTheory/ElementaryNumberTheory/OrderedPrimeGroupAddress.lean`, `72c08a3c1d7b0a8069d01c3d9bfa4d764ef82dc2`: exact ordered address equivalence with `Fin(cardinality)`; the `[2,2]` versus `ZMod 4` hostile group counterexample.
* `.../LiouvilleResidueDefectFrame.lean`, `d2b922fadb951937117962091d39d8949f6a80e0`: source-Liouville prime dilation, affine/residue defects; `ResidueStratumScaling` remains a named open proposition.
* `.../SignedWaveformEnergyTarget.lean`, `daafa00030fe8bc95720486aab93ef7a4463155e`, and `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean`, `45e06c371d67bcf8c939d20a95fcbc63570546fa`: actual source coefficient, causal response `pickupResponse`, causal Gram and source waveform.
* `.../LiouvilleCausalEnergyTarget.lean`, `a00aaa07c067b4c88203372870b5d5d151de0de4`: original signed Liouville response.
* `.../PrimePowerExplicitFormulaSourceCore.lean`, `14ba22a3e6b9a82d402beedfdf447e7534b374aa`, and `.../CanonicalPrimePowerSelector.lean`, `56f4c01b06a99914a60146a2f5a2b92c2e28ac0a`: a separate, actual prime-power source with canonical exponent and factorization, not silently identified with this complete-composite Möbius source.
* Earlier canonical `DyadicSignedResidueWaveform.lean`, `07dfdae4a60b05f5da55cc20882411c85444fa82`: parity and all nonunit square-modulus residues reconstruct the **original** signed source before squaring; both ordered cross sectors remain.

## What the new canonical Lean adapter actually constructs

For each existing prime index `p : PrimeIndex` define the dependent source
fiber

    CanonicalPrimeFiber p = {n : Nat // 2 <= n ∧ Nat.minFac n = p.val}.

Set `PrimeAtom=Sigma CanonicalPrimeFiber`, and `SourceAtom=Option PrimeAtom`,
where `none` denotes the original index 1. For n>=2 take its canonical least
prime factor `minFac n` and attach the **entire original n**. This is a
proven-at-source-candidate-level bijection between `SourceAtom` and the
positive natural numbers, not a quotient that identifies two indices.

The selected prime divides n. The original `n.factorization` is retained
*definitionally*, including all other primes and their multiplicities. In
particular, the state for n=6 is tagged by 2 but still represents the whole
integer 6, including its factor 3. It is not a `prime-power` state and must
not replace the explicit-formula source's `(p,e)` prime-power atoms.

A genuinely useful consumer is the **finite sum transport**:

    sum_{a in typedInventory N} f(sourceIndex a)
      = sum_{n=1}^N f(n)

for arbitrary real observations f. Both sides use exactly one copy of each
positive source index, including index 1; nothing is inferred by averaging.
It yields the unchanged five-moment `A_j`, original causal waveform, full
ordered signed Gram and two-orientation off-diagonal `pickupCross` for all
real T. No support window, signed coefficient, zero entry or diagonal is
silently altered. In particular, the order of `m,n` is retained; there is no
positivity claim for `pickupCross`.

### Character-unit and nonunit sectors

For any positive character modulus q, define the **readout** flag
`IsUnit ((sourceIndex a : Nat) : ZMod q)`. The four ordered sectors
`(unit,unit)`, `(unit,nonunit)`, `(nonunit,unit)`, `(nonunit,nonunit)`
reconstruct the **actual** full signed Gram and ordered off-diagonal Gram.
This is an exact pair-by-pair partition, not a sum of independent positive
energies. It prevents a Dirichlet character's zero-on-nonunits convention
from accidentally deleting the physical nonunit source coefficients or the
mixed terms. It also supports the existing `flic`/`windDirichlet` readout
without identifying `ZMod q` (a character modulus) with a prime address
`ZMod p` (a local phase group).

### The real automorphic phase space

Define the prime-dependent phase extension

    PhaseFiber p = CanonicalPrimeFiber p × ZMod p.

The `flic`-style frame `(n,z) -> (n,-z)` is an actual involutive equivalence
in **each** prime fiber, and a valid instance of the existing
`AutomircronKernel`. It is source-preserving: it never changes the original
integer n, hence its source-signed causal Gram defect is exactly zero.
For p>=3 the local phase can move nontrivially, but this is internal phase
symmetry, not arithmetic cancellation. Existing odd-character reflection
then cancels the **wound readout**, not the original unweighted source.
The combined group address on a finite ordered list is similarly reflected
by taking negatives in the existing abelian mixed-prime local group. The
address serializer remains injective, but its size is the product of the
**tag primes**, not the product of original composite source indices.

The Liouville consumer proves the same literal positive-index transport for
`LiouvilleCausalEnergy.waveform` and its integrated energy. No
Liouville-to-Möbius equality is asserted or obtained.

## Mathematical comparison, boundaries and the open analytic problem

**What is proved mathematically at the stated finite scope** follows from
unique least-prime-factor tags, basic finite sum reindexing, and pairwise
Boolean partition. The source uses actual imported coefficient and causal
kernel names. The proof is a mathematical derivation for finite inventories;
new Lean source is a proof candidate pending elaboration and trust audit.

**Hostile cases.** n=1 has no prime tag; n=0 is outside the source and the
auxiliary `encode 0=none` is not a bijection on all Nat. n=6 retains both
prime factors despite the selected tag 2. Repeated same prime tags in an
ordered *sample* are distinct positions. `ZMod 2 × ZMod 2` is not the
additive group `ZMod 4`. The frame's nontrivial phase reflection changes no
signed Gram coefficient. The nonunit and ordered mixed sectors can be
nonzero and signed. A Dirichlet character on units is **not** an orthogonal
basis for all nonunit source labels without a separate extension.

Finite independent diagnostic at q=9:

| N | A_N | original off-diagonal Gram X(log N) | unit-unit | unit-nonunit + nonunit-unit | nonunit-nonunit |
|--:|--:|--:|--:|--:|--:|
| 1 | +1.00000000 | +0.00000000 | +0.00000000 | +0.00000000 | +0.00000000 |
| 3 | -0.28445705 | -0.08285881 | -0.08285881 | +0.00000000 | +0.00000000 |
| 8 | -0.70138683 | -1.48123780 | -1.24153510 | -0.22642629 | -0.01327642 |
| 20 | -0.91051173 | -4.49679267 | -3.92033174 | -0.27772033 | -0.29874060 |
| 50 | -0.82820727 | -9.05408275 | -7.76342481 | -0.19925316 | -1.09140478 |

This is a floating-point evaluation of the exact causal kernel integral,
not a Lean receipt or global arithmetic bound. Numerical differences after
reconstruction were below 5e-12. The tested dependence on N is not an
asymptotic estimate.

The primary remaining mathematical obligation is STILL the exact one-sided
all-positive-rate upper estimate for the original signed endpoint sum on
adequately covering scales (attached RH proof-path review), or a source-bound
upper certificate for it. The existing 1/4 endpoint quadrature allowance,
all five moments and all directed cross terms remain unchanged. No
nontrivial automorphism of the faithful integer source is obtained; to get
new arithmetic cancellation one must bound a genuinely new nonprincipal
sector together with the **full principal, nonunit, mixed and frame-defect
complement**, not merely express the same quantity in a different type.

## Source files, qualification and next experimental controls

Two new source candidates:

* `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/AutomircronCanonicalPrimeTyping.lean`.
* `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/AutomircronPrimeSourceAddressBridge.lean`.

Current repo toolchain: Lean `leanprover/lean4:v4.34.1`; Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

At source publication: file readback DONE; Lean compilation NOT_RUN;
expected theorem type checking NOT_RUN; fresh kernel NOT_RUN; transitive
axiom audit NOT_RUN; independent proof comparison / novelty NOT_ASSESSED.
No remote native verifier is authorized or dispatched by this research
source addition. The earlier source's verification issue #1540 remains
independent and does not confer acceptance upon changed modules.

Next formalization: optional separate prime-**power atom** bridge using
`PrimePowerEvent` and actual von Mangoldt prime-power coefficients, with exact
multiplicity and correction; formal `ResidueStratumScaling` for Liouville;
quantitative principal/nonunit/mixed sector estimates for the unchanged
`pickupCross`/`endpointSum`; and explicit application of the established
`PrimeFiberFiniteTestTransport` test selector only once the true source
square-tent observation map is supplied. No arbitrary operator
identification, automorphic functional equation or full RH assertion is
licensed by these finite identities.
