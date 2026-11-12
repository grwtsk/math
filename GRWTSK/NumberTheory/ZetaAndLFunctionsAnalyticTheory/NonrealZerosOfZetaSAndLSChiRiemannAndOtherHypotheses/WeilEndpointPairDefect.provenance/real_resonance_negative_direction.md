# real_resonance_negative_direction — individual declaration provenance

By grwtsk contributors. Version 1, 2026-11-12.
Coordination: grwtsk/math#1801, scope comment 6829734479.

## Exact declaration

File: [WeilEndpointPairDefect.lean](../WeilEndpointPairDefect.lean).
Fully qualified declaration:
`GRWTSK.NumberTheory.WeilEndpointPairDefect.real_resonance_negative_direction`.
For every x,y in R, if x!=y then

    2*(2*x*y-(x^2+y^2)) < 0.

Source Git blob: 84405748fa8de9e4b356d56f0ab2905154ee6c38.

## Complete proof and exact consumer

The left side equals -2*(x-y)^2. The hypothesis makes (x-y)^2 positive,
so the expression is strictly negative. The Lean proof uses
`sq_pos_of_ne_zero (sub_ne_zero.mpr h)` and `nlinarith`; no execution of
either is claimed.

The consumer is WEPD-v1-2, equation (14), in
[WeilEndpointPairDefect.md](../WeilEndpointPairDefect.md). For a same-character
off-line pair at shifted height tau=gamma+eta=0, both rescaled endpoint
transforms a,b0 are positive real. WEPD-v1-1's strict monotonicity calculation
proves a!=b0. The pair's value on the endpoint difference u-v is
2m*(2*a*b0-a^2-b0^2), so multiplication by its positive analytic multiplicity
m gives the strict negative sign. Modulation eta=-gamma changes only the test.

This is also checked independently by direct transform evaluation at the
SYNTHETIC pair 1/4,3/4, L=4log2: the pair matrix is [[84,85],[85,84]]/18,
with Q_j(u-v)=-1/9 despite both positive diagonal entries. These are exact
written identities, not a computer interval certificate and not a claim that
1/4 or 3/4 is an arithmetic zero. All other zero contributions remain in the
full source, and an indefinite pair alone proves no negative full-form value.

## Source comparison and remaining obligations

This is locally written elementary algebra, not a new general theorem about
Weil positivity, not copied external Lean, and not a direct formalization of
a named paper. The actual endpoint transform and signed pairing come from the
canonical WSEP/WEGR notes; WEPD section 6 gives the bounded primary-source
comparison. The exact arithmetic prime/gamma/pole source return is equation
(3) there. The full cancellation inequality remains unproved.

The ordinary-strip sign result needs no external zero-free supplier. The
separate seven-eighths input is used only for the optional sharper tail bound
in WEPD-v1-6; it is not imported by this source. Originality UNASSESSED.

Inspected main: 26e55b7937c2e4d6e92533903e263440b35990e0.
Lean: leanprover/lean4:v4.34.1.
Mathlib: d13f23b723b8a846827a245b89c10fc7d3f11612.
Status: SOURCE_PROOF_CANDIDATE. Written negative-square proof supplied.
Elaboration, complete dependency build, fresh kernel replay, transitive axiom
audit, certified computation and independent analytical review: NOT_RUN.
No sorry, admit or new research axiom is introduced in the source body;
this observation is not a transitive axiom audit or passing formal check.
