# MellinVerticalStrip

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

Maintained source: [../MellinVerticalStrip.lean](../MellinVerticalStrip.lean).
Namespace `GRWTSK.IntegralTransformsOperationalCalculus.MellinVerticalStrip`. 98 lines, 4651 UTF-8 bytes.
Git blob `e7471c128758b41d509e22c435446d714edc4756`; SHA-256 `b78202a6e418c94a43b7e9bb68021bb38e89679f2eb35f96f8a36fa5543ce66b`.

## Quantifiers and complete argument

For every f:R->C, real endpoints a,b, complex s with a<=Re(s)<=b and t>0,

    norm(t^(s-1) * f(t))
      <= norm(t^(a-1) * f(t)) + norm(t^(b-1) * f(t)).

The norm of the positive-real complex power is t^(Re(s)-1). On 0<t<=1,
log(t)<=0 reverses the exponent comparison and the a endpoint dominates.
On t>1, log(t)>=0 and the b endpoint dominates. Equality at t=1 belongs
to the first branch. No assumption on Im(s) or the sign of either endpoint occurs.

`stripMass` is the sum of the two endpoint norm integrals on (0,infinity).
The general norm theorem explicitly requires convergence at a,b,s, then applies
norm-of-integral, almost-everywhere comparison, and additivity of integrals.
Nonnegativity of stripMass alone does NOT establish convergence: a totalized
integral definition is not an analytic certificate.

For the concrete WeakFEPair P, the existing modified kernel P.f_modif is the
f field of P.toStrongFEPair. Its proved strong-pair property and hasMellin give
convergence at EVERY complex exponent. The new concrete theorem derives all
three convergence facts before using the general bound. Since P.Lambda0 is
literally the Mellin integral of P.f_modif, the source return is definitional,
not a supplied comparison isomorphism or a renamed arbitrary entire function.

Consumer: the actual even/odd Hurwitz kernels in DirichletCompletedStripBounds.
This closes a genuine uniform-in-height norm estimate, not arithmetic positivity.

Hostile checks: endpoints a=b, t=1, negative exponents, nonreal s, and divergent
arbitrary input f. The generic convergence assumptions and the concrete derived
convergence prevent default-zero integrals from supplying a false upper bound.
An alternative route splits the Mellin integral into (0,1) and (1,infinity);
it is mathematically equivalent domination, not an independent second proof.

## Primary-source comparison and declaration map

Dated comparison: 2026-11-11. These are classical Mellin, Gamma and zero-counting
arguments, adapted to the exact pinned arithmetic source. No novelty is claimed.
Primary Mathlib implementations, not unpinned search snippets, govern the API
correspondence. Focused searches are incomplete and establish no absence.
No new frontier claim ID, taxonomy or ontology migration is introduced.

David Loeffler, [Mathlib/Analysis/MellinTransform.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/MellinTransform.lean), `mellin, MellinConvergent, HasMellin`. Apache-2.0.

David Loeffler, [Mathlib/NumberTheory/LSeries/AbstractFuncEq.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/AbstractFuncEq.lean), `WeakFEPair.f_modif, toStrongFEPair, isStrongFEPair_toStrongFEPair, Λ₀; IsStrongFEPair.hasMellin`; blob `786eaf38768954576399ea35b001bff35aa7138e`. Apache-2.0.

- `GRWTSK.IntegralTransformsOperationalCalculus.MellinVerticalStrip.stripMass`: [stripMass.md](stripMass.md).
- `GRWTSK.IntegralTransformsOperationalCalculus.MellinVerticalStrip.stripMass_nonneg`: [stripMass_nonneg.md](stripMass_nonneg.md).
- `GRWTSK.IntegralTransformsOperationalCalculus.MellinVerticalStrip.norm_kernel_le_endpoints`: [norm_kernel_le_endpoints.md](norm_kernel_le_endpoints.md).
- `GRWTSK.IntegralTransformsOperationalCalculus.MellinVerticalStrip.norm_mellin_le_stripMass`: [norm_mellin_le_stripMass.md](norm_mellin_le_stripMass.md).
- `GRWTSK.IntegralTransformsOperationalCalculus.MellinVerticalStrip.modified_mellin_convergent`: [modified_mellin_convergent.md](modified_mellin_convergent.md).
- `GRWTSK.IntegralTransformsOperationalCalculus.MellinVerticalStrip.norm_Lambda0_le_stripMass`: [norm_Lambda0_le_stripMass.md](norm_Lambda0_le_stripMass.md).

## Reproduction boundary

Use a clean checkout at the publication commit recorded in math#1801 and the
unchanged pins above. No default/root import is added by this increment.
The following is an UNEXECUTED targeted command, not a receipt:

```sh
lake build GRWTSK.IntegralTransformsOperationalCalculus.MellinVerticalStrip
```

Then query every individual declaration's transitive axioms and perform fresh
kernel replay and exact-statement review. All those gates remain NOT_RUN.
Ordinary source text/hash/diff/readback checks are recorded separately in the
coordinating issue. Local source is attributed to grwtsk contributors under MIT;
upstream authors and Apache-2.0 references remain attributed above.
