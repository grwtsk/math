# ReciprocalGammaStrip

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

Maintained source: [../ReciprocalGammaStrip.lean](../ReciprocalGammaStrip.lean).
Namespace `GRWTSK.SpecialFunctions.ReciprocalGammaStrip`. 146 lines, 6524 UTF-8 bytes.
Git blob `ed73e42a597153c4168308c8192b2d02890cb1a7`; SHA-256 `f9ba5b0102cbc3efcc6378a7d158ee9614e765d8a34944bdb67220961897338a`.

## Quantifiers and complete argument

For -1<=Re(z)<=2 and abs(Im(z))>=1, z and 1-z avoid every real nonpositive
integer. Pinned Gamma nonvanishing and reflection show sin(pi*z)!=0 and yield

    1/Gamma(z) = Gamma(1-z) * sin(pi*z) / pi.

The proof supplies the nonzero factors before rearranging the equality. Both
norm(1-z) and norm(2-z) are >=1. Two recurrence steps therefore give
norm(Gamma(1-z)) <= norm(Gamma(3-z)). Here 1<=Re(3-z)<=4, so the already
published Euler-integral bound with R=4 is 2*exp(4*log(8)). The sine norm is
at most exp(pi*abs(Im(z))). Thus

    norm(1/Gamma(z)) <= (2/pi)*exp(4*log(8))*exp(pi*abs(Im(z))).

For -2<=Re(w)<=4 and abs(Im(w))>=2, take z=w/2. The literal factor
GammaR(w)=pi^(-w/2)*Gamma(w/2) and the positive-real complex-power bound give

    norm(1/GammaR(w)) <= kappa*exp(pi*abs(Im(w))/2),
    kappa=(2/pi)*exp(4*log(8)+2*abs(log(pi))) > 0.

This covers BOTH parity factors GammaR(s) and GammaR(s+1) on the later strip.
No gamma lower bound, Stirling estimate or point-dependent constant is assumed.
Consumer: the uncompletion step in DirichletCompletedStripBounds.

Hostile checks: real poles are excluded by the stated imaginary-part lower bound;
no division is justified from totalized Gamma values at poles. Strip edges are
included; both signs of height occur. The recurrence proof uses norms and
positive denominators, not critical-line localization. A reciprocal-Gamma product
representation offers another classical route, but is not implemented or claimed
as independent verification here.

## Primary-source comparison and declaration map

Dated comparison: 2026-11-11. These are classical Mellin, Gamma and zero-counting
arguments, adapted to the exact pinned arithmetic source. No novelty is claimed.
Primary Mathlib implementations, not unpinned search snippets, govern the API
correspondence. Focused searches are incomplete and establish no absence.
No new frontier claim ID, taxonomy or ontology migration is introduced.

David Loeffler, [Mathlib/Analysis/SpecialFunctions/Gamma/Beta.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Gamma/Beta.lean), `Complex.Gamma_ne_zero, Gamma_mul_Gamma_one_sub`; blob `612bc27a5af0f7c696a7ed1a4a84f67b3d91979e`. Apache-2.0.

David Loeffler, [Mathlib/Analysis/SpecialFunctions/Gamma/Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Gamma/Basic.lean), `Complex.Gamma_add_one`; blob `8aea69baf716966861315823d437f041abc7b9a4`. Apache-2.0.

David Loeffler, [Mathlib/Analysis/SpecialFunctions/Gamma/Deligne.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Gamma/Deligne.lean), `Complex.Gammaℝ_def`; blob `09568288ef9897b1e3b0e0763dd31a9421b77616`. Apache-2.0.

Local source prerequisite [ComplexGammaGrowth.lean](https://github.com/grwtsk/math/blob/a551bd9c1a17ec6c42eb373ac844a9a5d11931c2/GRWTSK/SpecialFunctions/ComplexGammaGrowth.lean), `norm_Gamma_le_envelope, norm_ofReal_cpow_le_exp_abs, norm_cos_sin_le_exp_im`; blob `a0cdbf9175ed8956f6001e60c466ab2e12d58e3b`. Its own source-candidate evidence status is unchanged.

- `GRWTSK.SpecialFunctions.ReciprocalGammaStrip.gamma_ne_zero_of_im_ne`: [gamma_ne_zero_of_im_ne.md](gamma_ne_zero_of_im_ne.md).
- `GRWTSK.SpecialFunctions.ReciprocalGammaStrip.norm_inv_Gamma_le_strip`: [norm_inv_Gamma_le_strip.md](norm_inv_Gamma_le_strip.md).
- `GRWTSK.SpecialFunctions.ReciprocalGammaStrip.reciprocalStripConstant`: [reciprocalStripConstant.md](reciprocalStripConstant.md).
- `GRWTSK.SpecialFunctions.ReciprocalGammaStrip.reciprocalStripConstant_pos`: [reciprocalStripConstant_pos.md](reciprocalStripConstant_pos.md).
- `GRWTSK.SpecialFunctions.ReciprocalGammaStrip.norm_inv_GammaR_le_strip`: [norm_inv_GammaR_le_strip.md](norm_inv_GammaR_le_strip.md).

## Reproduction boundary

Use a clean checkout at the publication commit recorded in math#1801 and the
unchanged pins above. No default/root import is added by this increment.
The following is an UNEXECUTED targeted command, not a receipt:

```sh
lake build GRWTSK.SpecialFunctions.ReciprocalGammaStrip
```

Then query every individual declaration's transitive axioms and perform fresh
kernel replay and exact-statement review. All those gates remain NOT_RUN.
Ordinary source text/hash/diff/readback checks are recorded separately in the
coordinating issue. Local source is attributed to grwtsk contributors under MIT;
upstream authors and Apache-2.0 references remain attributed above.
