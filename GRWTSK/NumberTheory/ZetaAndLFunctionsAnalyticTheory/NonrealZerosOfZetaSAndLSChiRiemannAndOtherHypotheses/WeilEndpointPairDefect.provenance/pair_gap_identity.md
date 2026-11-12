# pair_gap_identity — individual declaration provenance

By grwtsk contributors. Version 1, 2026-11-12.
Coordination: grwtsk/math#1801, scope comment 6829734479.

## Exact declaration

File: [WeilEndpointPairDefect.lean](../WeilEndpointPairDefect.lean).
Namespace: `GRWTSK.NumberTheory.WeilEndpointPairDefect`.
Declaration: `pair_gap_identity`.
For every x,y,u,v in R, with no further hypotheses,

    (x^2-y^2+u^2-v^2)^2+(2*x*y-2*u*v)^2
        -(2*(x*u-y*v))^2=(x^2+y^2-u^2-v^2)^2.

The source file Git blob is 84405748fa8de9e4b356d56f0ab2905154ee6c38.

## Complete proof and original-source consumer

Expand the left side and collect like monomials. The result is
(x^2+y^2)^2+(u^2+v^2)^2-2*(x^2+y^2)*(u^2+v^2), which is the right side.
The Lean body expresses this polynomial calculation with `ring`; no execution
of that tactic is claimed.

For a=x+i*y and b=u+i*v, the first two squared quantities are the real and
imaginary components of a^2+conj(b)^2, and 2*(x*u-y*v)=2Re(a*b).
Thus the identity computes the determinant of the literal polarized endpoint
contribution of rho and 1-conj(rho) in WEPD-v1-1, equations (4)-(8) of
[WeilEndpointPairDefect.md](../WeilEndpointPairDefect.md). The actual matrix
has an additional unit phase and the common analytic multiplicity m; its
determinant is -m^2*(|a|^2-|b|^2)^2. Norm squares here are determinant
algebra, not replacement of the signed Weil pairing by a positive form.

The direct formal consumer is `pair_determinant_neg_of_unequal_norms`.
The analytical consumer is the exact failure of termwise mixed endpoint
positivity, followed by the full-source cancellation identity and negative-tail
budget. Those complete complex, analytic and arithmetic statements remain
written, not additional declarations supplied by this algebra theorem.

## Source comparison and evidence

This is local elementary algebra, not a copied theorem body or a direct
formalization of a paper. The signed-pair interpretation comes from the
canonical WSEP endpoint transform calculation. WEPD section 6 records the
bounded primary-source comparison, including Suzuki's full Weil criterion
(arXiv:2606.09096v3, section 1.1), not a claim that Suzuki proves this endpoint
identity. No external seven-eighths theorem or isolated upstream environment
is imported. No originality claim is made; originality UNASSESSED.

Inspected main: 26e55b7937c2e4d6e92533903e263440b35990e0.
Lean: leanprover/lean4:v4.34.1.
Mathlib: d13f23b723b8a846827a245b89c10fc7d3f11612.
Status: SOURCE_PROOF_CANDIDATE, with complete written expansion.
Elaboration, complete dependency build, fresh kernel replay, transitive axiom
audit, certified computation and independent analytical review: NOT_RUN.
No sorry, admit or research axiom is introduced in the source body; this
observation is not a transitive axiom audit. No positivity of the total
arithmetic form, existence of an off-line zero, RH or GRH is concluded.
