# Counting supplies the full Fourier moment and dyadic tails

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801), scope comment 6807318064.
Canonical source: [DyadicDecayMoment.lean](../DyadicDecayMoment.lean).
Namespace: `GRWTSK.MeasureAndIntegration.DyadicDecayMoment`.

## Source and exact hypotheses

Inspected main `1a73ca294d739654a9ecaa33d2116e78c3beff98`, complete root tree
`379841171098b1d17d3216395cb36725c862c6b5`. Lean `leanprover/lean4:v4.34.1`;
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No root import or pin changes.
Source: 303 lines, 14,184 UTF-8 bytes; Git blob `95cb8454fc11ecab6c954cf67de9b0a9e293031d`;
SHA-256 `6755bf6ee3e9058dc5ed30ed6b6291197d792f49fa2b1043503eabbe65ad4707`.
There are twelve theorem bodies (eleven public and one private) and three definitions;
each has its own adjacent record. The enclosing commit binds all maintained files.

This is a locally authored classical consequence of the research execution mandate,
RP-OC-01 and workstream B, not a direct formalization of an identified paper theorem.
The mandate explicitly requests density-weighted dyadic tails and the height/radius
distinction. The original manuscript archive and supplement REVIEW were not recovered
in this run; no claim of exact correspondence to an unseen supplementary theorem is made.
Novelty UNASSESSED; no new frontier claim ID. The existing Fourier bound is reused.

Let I be an arbitrary index type, m:I->R nonnegative, z:I->C, A,C,c>=0,
and assume |Im(z_i)|<=B for every i. Let k>=1 be a natural number. The counting input is

    for every n>=0 and every finite S with 1+norm(z_i)<2^(n+1) for i in S,
    sum_(i in S) m_i <= C*(n+c)*2^n.

This is a quantified multiplicity-mass hypothesis over ALL finite subsets, not a
finite computation and not a disguised summability premise. It permits arbitrary
nonnegative real weights; its arithmetic application must use actual zero multiplicities.
The existing weight is

    w_(A,k)(z)^2 = exp(2*A*abs(Im z))/(1+norm(z))^(2*k).

The module defines no Fourier transform, arithmetic form, zero divisor, or RH statement.
The three new definitions only specify a shell index, the geometric ratio, and the budget.

## Complete analytical argument

1. Since 1+norm(z)>=1, the Archimedean power lemma supplies a natural shell index n
with 2^n<=1+norm(z)<2^(n+1). Monotonicity of powers proves that a point lies beyond
the inclusive cutoff 2^N exactly when its index is at least N. This includes zero
and assigns equality at a dyadic boundary to the upper shell.
2. In shell n, the strip assumption bounds the numerator by E=exp(2*A*B), and the
lower radial bound gives denominator at least (2^n)^(2*k). Sum over any finite
subset of that shell and apply the stated counting bound. Its moment is at most

    E*C*(n+c)*r^n,             r=2/2^(2*k).

The exponential factor remains dependent on support A and strip width B. Multiplicity
is a weight, not a collection of independently prescribed evaluations.
3. k>=1 gives 0<r<=1/2<1. The geometric and n-weighted geometric HasSum theorems,
addition and multiplication by r^N give the exact entire-series identity

    sum_(j>=0) (j+N+c)*r^(j+N)
      = r^N*((N+c)/(1-r) + r/(1-r)^2).

The affine identity itself holds for every real c and 0<=r<1. Nonnegativity of c
is imposed only for the subsequent finite-subset domination. Division is therefore
used only with 1-r>0 in its interpretation as a convergent geometric budget.
4. Partition an arbitrary finite radial-tail subset S by j=index(z_i)-N. First prove
N<=index for each member, so truncated natural subtraction loses no information.
A finite image of the shell-index map suffices; the sum is exactly the sum of its
filtered fibers. Compare each fiber with step 2, and the resulting finite sum of
nonnegative terms with the full HasSum in step 3. This yields the uniform finite bound

    sum_(i in S) m_i*w(z_i)^2 <= B_N,
    B_N=E*C*r^N*((N+c)/(1-r)+r/(1-r)^2).

5. Apply the real all-finite-subsets summability theorem to the nonnegative tail
indicator. Thus the full tail is genuinely summable, and its tsum is at most B_N.
Only after this proof is the infinite sum used. At N=0, every location is included,
so the complete moment is summable and bounded by B_0. No low-frequency or central
term is deleted, and no countability or enumeration of locations is assumed.
6. A source may instead supply a HEIGHT count: for D,L>=0, every H>=2 and every
finite S with |Re(z_i)|<H, assume sum m_i<=D*H*(log H+L). A radial ball is contained
in this height strip because |Re z|<=norm(z)<1+norm(z). At H=2^(n+1), use
log(2)<=1 to get log H+L <= (n+1)*(L+1). This yields step 2's counting input with
C=2*D*(L+1), c=1. Height and radial cutoffs are compared, never identified.
7. For k=1, exact rational simplification gives B_N=2*E*C*(N+c+1)*2^(-N).
For any fixed constants and k>=1, r^N and N*r^N tend to zero (both corresponding
series are summable). Algebraically decomposing B_N into these terms proves
B_N->0. This is fixed-support, fixed-count-constant tail control, not a joint theorem
for growing support or derivative costs of interpolants depending on N.

## Consumer and arithmetic boundary

[WeilCorrelationMoment](../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilCorrelationMoment.lean)
feeds the derived moment to the ORIGINAL correlation consumer and bounds its entire
complex-valued remainder by derivativeL1Cost(f,k)^2*B_N. The prior summable-moment
premise is replaced by a substantive all-height counting premise, not silently discharged
for the zeta or Dirichlet source. The source-specific zero-counting theorem, actual
divisor/multiplicity construction, and full explicit-formula equality remain separate.
No sign of the full arithmetic form is inferred from a positive norm majorant.

For rho in the closed critical strip, the companion theorem proves for the EXISTING
spectral coordinate zrho=-I*(rho-1/2) that abs(Im zrho)<=1/2 and
abs(Im rho)<=norm(zrho)<=abs(Im rho)+1/2. In particular the count is in the true height
abs(Im rho)=abs(Re zrho), while the retained weight uses the full complex norm and
imaginary displacement. No critical-line localization is assumed.

## Prior-art and exact dependency comparison

This is the classical dyadic comparison test and affine-geometric summation, not a novel
zero-count theorem. The proof's alternative organization is partial summation of a
counting function against the radial weight; that route is not implemented or counted as
an independent proof. Searches of available GitHub code and supplied file indexes did
not establish an existing exact local result; incomplete searches prove no absence.
The pinned Mathlib ZetaZeros module was inspected for arithmetic input: it provides
zero-set discreteness and compact finiteness. That observation does not establish an
all-height growth estimate, nor claim absence of such an estimate elsewhere.

All primary Mathlib sources below are pinned at
`d13f23b723b8a846827a245b89c10fc7d3f11612`. Upstream authorship and Apache-2.0 remain
with their sources; local work is MIT.

- Mario Carneiro, [Archimedean/Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Algebra/Order/Archimedean/Basic.lean), `exists_nat_pow_near`; blob `3e71969f4a459709b7a6bba807291c45c7ba81d4`.
- Anatole Dedecker, Sébastien Gouëzel, Yury Kudryashov, Dylan MacKenzie, Patrick Massot, [SpecificLimits/Normed.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecificLimits/Normed.lean), `hasSum_geometric_of_norm_lt_one`, `hasSum_coe_mul_geometric_of_norm_lt_one`; blob `b033d8917bbd2c274f2bb55e6b07c46c9204db5b`.
- Sébastien Gouëzel and Yury Kudryashov, [InfiniteSum/Real.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Topology/Algebra/InfiniteSum/Real.lean), `summable_of_sum_le`, `Real.tsum_le_of_sum_le`; blob `82131f71d8c5c0b14cb5d23cd6da8543422a4e3b`.
- Mathlib contributors, [InfiniteSum/NatInt.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Topology/Algebra/InfiniteSum/NatInt.lean), `Summable.tendsto_atTop_zero`; blob `068846239a74b9cff04c456bcba142809ac58eca`. The additive declaration is generated from the source's `Multipliable.tendsto_atTop_one`.
- Huanyu Zheng, [LSeries/ZetaZeros.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/ZetaZeros.lean), `IsCompact.inter_riemannZetaZeros_finite`; blob `a061262f567eb33cac8ef5f52e5212246254e708`. Comparison only, not an imported counting supplier.
- grwtsk contributors, [FourierDerivativeDecay.lean](https://github.com/grwtsk/math/blob/1a73ca294d739654a9ecaa33d2116e78c3beff98/GRWTSK/MeasureAndIntegration/FourierDerivativeDecay.lean), `decayWeight`, `decayWeight_sq`; blob `1df24b0bdcc1be9ca263a4a5fa16da04a74a9e82`. Imported candidate status is unchanged.

## Hostile checks and verification scope

k=0 gives r=2 and does not justify a convergent geometric budget. Finiteness on every
compact set without quantitative growth is insufficient for weighted summability.
Dropping multiplicity or the exp(2*A*abs(Im z)) factor changes the requested moment.
Counting only positive heights cannot be silently substituted for the absolute-height
hypothesis. Boundary equality, the n=0 shell, and zero weights are retained.
For nonempty data the strip condition forces B>=0; no nonempty source is asserted by
an arbitrary-index theorem. No uniformity in characters is claimed without uniform D,L.
The known earlier analytic-order versus smooth-order failure remains in its versioned
migration record; this increment does not modify or promote that historical evidence.

Elaboration/build, fresh kernel replay, transitive axiom audit, independent analytic
review, actual arithmetic certificate execution, and repository-wide checks: NOT_RUN.
Source-only lexical, coverage and integrity observations are recorded in the coordinating
issue at the exact publication commit; they are not Lean parsing or acceptance.

Proposed commands, NOT executed:

```sh
lake build GRWTSK.MeasureAndIntegration.DyadicDecayMoment
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCorrelationMoment
```

After elaboration, inspect transitive axioms of every public theorem and definition,
including the private ratio_pow helper through its consumers, and perform fresh kernel
replay. No axiom closure is asserted here. Local Lean/Lake and verified canonical skill
checkouts are absent. Required proof-automation access returned 404 at Noe main
`3a47b54b8941fe74a74d39278349c23dcac29aa9`; dependent execution stopped. No runner,
workflow, scheduler or cross-chat message was dispatched. No new execution authority
follows from ordinary source publication. Mathematical acceptance remains unresolved.
