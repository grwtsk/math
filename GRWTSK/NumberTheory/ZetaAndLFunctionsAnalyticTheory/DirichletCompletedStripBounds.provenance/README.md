# DirichletCompletedStripBounds

Local attribution: grwtsk contributors. Date: 2026-11-11.
Status: SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED.
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801), scope comment 6810945065.
Inspection base `a551bd9c1a17ec6c42eb373ac844a9a5d11931c2`; complete base tree `a20c245efb6b30839384d1aa02f7727b6cfd2ddb`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Elaboration/build, fresh kernel replay, transitive axiom audit, independent review,
and repository-wide verification: NOT_RUN. Imported candidates retain their evidence
status. These source bodies are not accepted formal proofs. No prior failure is
reclassified. Lean/Lake and verified local canonical skill checkouts were absent.
The required proof-automation skill returned 404 at Noe main
`f97b5ca1aa660fcc20ed6444e1448cffc9f3e247`; dependent execution stopped.
No runner, workflow, scheduler or cross-chat effect was dispatched. Ordinary source
publication remains separately authorized. Text/hashes/readback are not proof checks.

Maintained source: [../DirichletCompletedStripBounds.lean](../DirichletCompletedStripBounds.lean).
Namespace `GRWTSK.NumberTheory.DirichletStripBounds`. 189 lines, 9781 UTF-8 bytes.
Git blob `4a3de09ed9a906482beae04c1a5e8d44879344e6`; SHA-256 `25181e732f2671d89c4d087b4d3f38dd039dc1339aec4e3e40d4b756afe0d7e0`.

## Source constants, quantifiers and complete argument

Let M(P)=stripMass(P.f_modif,-1,2). These endpoint norm integrals genuinely
converge by modified_mellin_convergent for each of the literal Hurwitz FE pairs.
For a in R/Z define

    U(a)=M(hurwitzEvenFEPair(a))+M(hurwitzOddFEPair(a))+2,
    B_N=exp(2*log(N))*sum_(j in ZMod N) U(toAddCircle(j)).

N is a positive integer. This is a finite residue-class sum of convergent
integrals, independent of height and character at fixed N. It is not a list
of per-height compact maxima, an unevaluated growth hypothesis, a numerical
certificate or a conductor-uniform asymptotic estimate.

For -1<=Re(s)<=2, Re(s/2) and Re((s+1)/2) both lie between -1 and 2.
The pinned even entire contribution is Lambda0(s/2)/2; the odd completed
contribution is Lambda((s+1)/2)/2, with BOTH constant terms zero, so its
Lambda equals Lambda0. The Mellin theorem bounds both by their endpoint
budgets (loosening the factors 1/2 is harmless because the budgets are >=0).
The exact even formula is

    completedEven(a,s)=even0(a,s)-(if a=0 then 1 else 0)/s-1/(1-s).

Both pole orientations are kept. If abs(Im(s))>=2, each of the two rational
terms has norm at most 1. Hence the sum of the even and odd completed norms
is <=U(a). Nothing is asserted at either completed pole.

The ACTUAL ZMod.completedLFunction is

    N^(-s)*sum_j chi(j)*completedEven(j/N,s)
      + N^(-s)*sum_j chi(j)*completedOdd(j/N,s).

Use norm(chi(j))<=1, finite-sum triangle inequalities, and
norm(N^(-s))<=exp(2*log(N)), retaining the literal normalization, to obtain
norm(completedLFunction chi s)<=B_N. No arbitrary completed model is introduced.

The exact source identity LFunction=completedLFunction/gammaFactor is used only
after s!=0 follows from the height hypothesis. Splitting the REAL parity
predicate gives GammaR(s) or GammaR(s+1). The new reciprocal estimate covers
both and yields, for EVERY positive N, EVERY character chi and EVERY s with
-1<=Re(s)<=2 and abs(Im(s))>=2,

    norm(LFunction chi s)<=B_N*kappa*exp(pi*abs(Im(s))/2).

A separate theorem rewrites the level-one character literally to riemannZeta.
Generality of this analytic helper does not extend the primitive-GRH target.
The consumer is the central part of the original Jensen circle, not a new target.

Hostile checks: both parities, j=0, N=1 and both rational corrections are retained.
Low-height points are not falsely covered; the later circle geometry proves its
central part lies inside the high-height domain. All integral constants are
height-independent. Constants across different N are not claimed uniformly bounded.
A bounded-periodic-primitive continuation is a distinct alternative route; no
implementation or independent review of that alternative is claimed here.

## Primary-source comparison and declaration map

Dated comparison: 2026-11-11. These are classical Mellin, Gamma and zero-counting
arguments, adapted to the exact pinned arithmetic source. No novelty is claimed.
Primary Mathlib implementations, not unpinned search snippets, govern the API
correspondence. Focused searches are incomplete and establish no absence.
No new frontier claim ID, taxonomy or ontology migration is introduced.

David Loeffler, [Mathlib/NumberTheory/LSeries/AbstractFuncEq.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/AbstractFuncEq.lean), `WeakFEPair.f_modif, toStrongFEPair, isStrongFEPair_toStrongFEPair, Λ₀; IsStrongFEPair.hasMellin`; blob `786eaf38768954576399ea35b001bff35aa7138e`. Apache-2.0.

David Loeffler, [Mathlib/NumberTheory/LSeries/HurwitzZetaEven.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/HurwitzZetaEven.lean), `hurwitzEvenFEPair, completedHurwitzZetaEven₀, completedHurwitzZetaEven_eq`; blob `92ffff2cca27f74c6f2ef2925ea61dae82f90ba8`. Apache-2.0.

David Loeffler, [Mathlib/NumberTheory/LSeries/HurwitzZetaOdd.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/HurwitzZetaOdd.lean), `hurwitzOddFEPair, completedHurwitzZetaOdd`; blob `8a2e6b51e1118cd16f571158167a20554d1f510e`. Apache-2.0.

David Loeffler, [Mathlib/NumberTheory/LSeries/ZMod.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/ZMod.lean), `ZMod.completedLFunction`; blob `877b3290807830b2260b8959a1fbfd32a04f196b`. Apache-2.0.

David Loeffler and Michael Stoll, [DirichletContinuation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean), `completedLFunction, gammaFactor, LFunction_eq_completed_div_gammaFactor, LFunction_modOne_eq`; blob `89c72580697983d86706cff17ccbea2cee6475a3`. Apache-2.0.

Local source prerequisite [ComplexGammaGrowth.lean](https://github.com/grwtsk/math/blob/a551bd9c1a17ec6c42eb373ac844a9a5d11931c2/GRWTSK/SpecialFunctions/ComplexGammaGrowth.lean), `norm_Gamma_le_envelope, norm_ofReal_cpow_le_exp_abs, norm_cos_sin_le_exp_im`; blob `a0cdbf9175ed8956f6001e60c466ab2e12d58e3b`. Its own source-candidate evidence status is unchanged.

- `GRWTSK.NumberTheory.DirichletStripBounds.hurwitzStripMass`: [hurwitzStripMass.md](hurwitzStripMass.md).
- `GRWTSK.NumberTheory.DirichletStripBounds.hurwitzStripMass_nonneg`: [hurwitzStripMass_nonneg.md](hurwitzStripMass_nonneg.md).
- `GRWTSK.NumberTheory.DirichletStripBounds.norm_completedHurwitz_pair_le`: [norm_completedHurwitz_pair_le.md](norm_completedHurwitz_pair_le.md).
- `GRWTSK.NumberTheory.DirichletStripBounds.completedStripBound`: [completedStripBound.md](completedStripBound.md).
- `GRWTSK.NumberTheory.DirichletStripBounds.completedStripBound_nonneg`: [completedStripBound_nonneg.md](completedStripBound_nonneg.md).
- `GRWTSK.NumberTheory.DirichletStripBounds.norm_completedLFunction_le_strip`: [norm_completedLFunction_le_strip.md](norm_completedLFunction_le_strip.md).
- `GRWTSK.NumberTheory.DirichletStripBounds.norm_inv_gammaFactor_le_strip`: [norm_inv_gammaFactor_le_strip.md](norm_inv_gammaFactor_le_strip.md).
- `GRWTSK.NumberTheory.DirichletStripBounds.norm_LFunction_le_strip`: [norm_LFunction_le_strip.md](norm_LFunction_le_strip.md).
- `GRWTSK.NumberTheory.DirichletStripBounds.norm_riemannZeta_le_strip`: [norm_riemannZeta_le_strip.md](norm_riemannZeta_le_strip.md).

## Reproduction boundary

Use a clean checkout at the publication commit recorded in math#1801 and the
unchanged pins above. No default/root import is added by this increment.
The following is an UNEXECUTED targeted command, not a receipt:

```sh
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletCompletedStripBounds
```

Then query every individual declaration's transitive axioms and perform fresh
kernel replay and exact-statement review. All those gates remain NOT_RUN.
Ordinary source text/hash/diff/readback checks are recorded separately in the
coordinating issue. Local source is attributed to grwtsk contributors under MIT;
upstream authors and Apache-2.0 references remain attributed above.
