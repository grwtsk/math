# DirichletZeroCounting

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

Maintained source: [../DirichletZeroCounting.lean](../DirichletZeroCounting.lean).
Namespace `GRWTSK.NumberTheory.WeilNegativeWitness`. 195 lines, 10221 UTF-8 bytes.
Git blob `9a9fc7bcf6f16b8953ce4d69cf86cbe1b161614a`; SHA-256 `7f73b08b2d3cab644d22063c94722d119ac249d645d81a0fba33780adc1abb9f`.

## Exact target and complete argument

The definitions CriticalStripZero, zeroMultiplicity, heightWindow, heightCount,
poleClearedLFunction, spectralCoordinate, Admissible and correlation are the
existing arithmetic objects. There is no new zero model, no assumption of RH,
and no proof of critical-line localization. Work at positive level N; counting
and correlation retain chi.IsPrimitive, including conductor-one zeta.

On the original outer circle norm(s-2)=2(H+2), H>=2, with -1<=Re(s)<=2,

    2(H+2)<=abs(Re(s)-2)+abs(Im(s))<=3+abs(Im(s)),
    abs(Im(s))<=2(H+2)<=4H,
    norm(s-1)<=2(H+2)+1<=5H.

In particular abs(Im(s))>=2 (in fact >=5). Thus EVERY central-circle point
is in the proved high-height strip domain, even at H=2 and strip endpoints.
There is no separate small-height gap, compactness supplier or exceptional circle.

Write A_N=B_N*kappa>=0 and C_N=5+A_N+2*pi>=0. The preceding source estimate
and the exact pole-cleared identity away from 1 give

    norm(F_chi(s))<=5H*A_N*exp(2*pi*H).

Use 5H<=exp(5H) and A_N<=exp(A_N*H), valid for H>=2. Multiplying gives
exp(C_N*H), and log(H)>=0 enlarges this to exp(C_N*H*(log(H)+1)). This proves
the formerly assumed hstrip, rather than transporting it into another interface.

Reuse the published far-left estimate (with its original dual character,
parity, level and root-number cost K_chi=farLeftGrowthConstant chi) and the
published right-circle estimate. The existing three-region theorem yields

    norm(F_chi(s))<=exp((C_N+K_chi+8)*H*(log(H)+2))

on EVERY outer-circle point and EVERY H>=2. Neither of those existing
source candidates is duplicated or retroactively revalidated by this change.

The previously implemented source-Jensen theorem, original multiplicity
comparison, and character-independent centre bound give the explicit constant

    D_chi=(C_N+K_chi+8+log(4))/log(2)>=0,
    heightCount chi hprim H <= D_chi*H*(log(H)+3)  for EVERY H>=2.

The original count uses strict abs(Im(rho))<H and the open strip 0<Re(rho)<1,
and sums the genuine analytic orders of the continued source. It retains both
height signs, possible central zeros and all multiplicities. No simple-zero,
separation, arbitrary-weight or finite-check hypothesis is introduced. The
existence theorem supplies witnesses D_chi,3 explicitly.

The unchanged count-to-moment/correlation consumer is then applied with k=1.
For EVERY canonical admissible compact-smooth f, A>=0 and tsupport(f) subset
[-A,A], this gives Summable of the norm of

    m_chi(rho)*integral C_f(r)*exp(i*z_rho*r) dr,
    z_rho=-i*(rho-1/2), C_f(r)=integral conjugate(f(t))*f(t+r) dt.

Its existing transform identity is F_f(z_rho)*conjugate(F_f(conjugate(z_rho))),
not an off-axis norm square. Separate source-count and correlation declarations
specialize explicitly to the level-one source. No growth, counting or moment
summability premise remains in these NEW statements. Source-only evidence is
still not elaboration or a checked axiom closure.

## Remaining arithmetic return and falsification boundaries

The complete pole-inclusive arithmetic Weil identity is NOT proved here. One
must still identify the absolutely convergent actual zero sum with the existing
arithmetic form on the true test domain, retaining ALL prime powers, phases,
conductor, gamma/parity and dual-character terms, multiplicities and both zeta
pole orientations. Arithmetic positivity and simultaneous varying-test cost/tail
control are distinct obligations. Convergence is not nonvanishing; an upper
count is not a lower sign bound. Clearing a pole for Jensen deletes no Weil term.
No RH or GRH theorem is supplied.

The constants are finite analytic expressions, not evaluated certificates or
claimed effective conductor-uniform bounds. Falsification checks cover H=2,
Re(s)=-1 and 2, both signs of Im(s), N=1, all parity cases and the introduced
nonprincipal zero at 1 (which can only increase the analytic disk upper count).
No integer-rounded cutoff or finite sampled collection replaces the all-height
quantifier. The existing source divisor is not identified with a projected one.
No distinct second proof or independent review is claimed.

## Program scope

RP-OC-01/B receive the missing source growth/counting argument. RP-OC-02 receives
its original-correlation convergence application. A receives individual provenance,
not checked formal admission. RP-OC-03--10, C--F and all four higher-realization
extensions are untouched. No program is complete while formal verification and
its further arithmetic return/positivity obligations remain unresolved.

## Primary-source comparison and declaration map

Dated comparison: 2026-11-11. These are classical Mellin, Gamma and zero-counting
arguments, adapted to the exact pinned arithmetic source. No novelty is claimed.
Primary Mathlib implementations, not unpinned search snippets, govern the API
correspondence. Focused searches are incomplete and establish no absence.
No new frontier claim ID, taxonomy or ontology migration is introduced.

Local source prerequisite [DirichletLFunctionLeftBounds.lean](https://github.com/grwtsk/math/blob/a551bd9c1a17ec6c42eb373ac844a9a5d11931c2/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletLFunctionLeftBounds.lean), `circle_growth_of_strip_growth, heightCount_le_of_strip_growth, farLeftGrowthConstant_ge_four`; blob `2c47565053a5f684e543f03da4d3f7181b2d0493`. This preserves the dual-character equation, parity and root number. Its own evidence status is unchanged.

Stefan Kebekus, [JensenFormula.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/JensenFormula.lean), `AnalyticOnNhd.sum_divisor_le`; blob `3dd78e234df51703431c913f5bc6081233542e97`. Apache-2.0. Used through the existing source Jensen/count consumers, not re-proved here.

David Loeffler and Michael Stoll, [DirichletContinuation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean), `completedLFunction, gammaFactor, LFunction_eq_completed_div_gammaFactor, LFunction_modOne_eq`; blob `89c72580697983d86706cff17ccbea2cee6475a3`. Apache-2.0.

- `GRWTSK.NumberTheory.WeilNegativeWitness.central_jensen_circle_geometry`: [central_jensen_circle_geometry.md](central_jensen_circle_geometry.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.centralStripGrowthConstant`: [centralStripGrowthConstant.md](centralStripGrowthConstant.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.centralStripGrowthConstant_nonneg`: [centralStripGrowthConstant_nonneg.md](centralStripGrowthConstant_nonneg.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.poleClearedLFunction_central_circle_growth`: [poleClearedLFunction_central_circle_growth.md](poleClearedLFunction_central_circle_growth.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.poleClearedLFunction_circle_growth`: [poleClearedLFunction_circle_growth.md](poleClearedLFunction_circle_growth.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.sourceCountConstant`: [sourceCountConstant.md](sourceCountConstant.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.sourceCountConstant_nonneg`: [sourceCountConstant_nonneg.md](sourceCountConstant_nonneg.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.heightCount_le_source_bound`: [heightCount_le_source_bound.md](heightCount_le_source_bound.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.exists_heightCount_bound`: [exists_heightCount_bound.md](exists_heightCount_bound.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.summable_primitive_correlation_source_bound`: [summable_primitive_correlation_source_bound.md](summable_primitive_correlation_source_bound.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.zeta_heightCount_le_source_bound`: [zeta_heightCount_le_source_bound.md](zeta_heightCount_le_source_bound.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.summable_zeta_correlation_source_bound`: [summable_zeta_correlation_source_bound.md](summable_zeta_correlation_source_bound.md).

## Reproduction boundary

Use a clean checkout at the publication commit recorded in math#1801 and the
unchanged pins above. No default/root import is added by this increment.
The following is an UNEXECUTED targeted command, not a receipt:

```sh
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletZeroCounting
```

Then query every individual declaration's transitive axioms and perform fresh
kernel replay and exact-statement review. All those gates remain NOT_RUN.
Ordinary source text/hash/diff/readback checks are recorded separately in the
coordinating issue. Local source is attributed to grwtsk contributors under MIT;
upstream authors and Apache-2.0 references remain attributed above.
