# HermiteMomentCertificates: declaration-level provenance

2026-11-11 · grwtsk contributors · coordination: [math issue 1806](https://github.com/grwtsk/math/issues/1806).

**FORMAL_SOURCE_CANDIDATE.** Source publication is not successful elaboration, kernel replay, an axiom audit, arithmetic certification, or independent review.

Canonical source: [HermiteMomentCertificates.lean](HermiteMomentCertificates.lean). Source SHA-256: `746b400fccac6296646851543ec2bbc1a59067c887c555d6af8b35b25c8ca905`.
Inspected canonical base: `6cab1fb0725c00a9d06b112ffc215e3523396c50`. Required existing toolchain: `leanprover/lean4:v4.34.1`; mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Root dependencies/imports are unchanged.

## Source identity and scope

Primary mathematical source: grwtsk contributors, *ZCERT-1: Program 6 backward from Dirichlet GRH*, authored 2026-11-10, [pinned research note](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/b8c773f7847126518bcc20f3e37d1223af889cf4/research/06-weil-spectral/certified-zero-counts/README.md), SHA-256 `5d04f2e5ef684592884fba349171b33d5b3fca21136c18f83f74a67c117220f3`. Each record below gives its exact section/lemma locator. This is locally authored written research, not a peer-reviewed paper or an upstream Lean adaptation.
The source-preserving [Rouché correction](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/8b37baad8279af3c539579487dbfaa53f0ff964f/artifacts/reproducibility/zero-certification/2026-11-10/receipts/integration-42982783204.json) is retained. Neither the original unqualified meromorphic equal-zero-count wording nor a Rouché theorem is formalized here.
The originating monograph is grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, edition 1.0, November 10, 2026, section 20.2, printed pp. 43–44 / PDF pp. 52–53, SHA-256 `ad73ead982fb2bb80c89e4c0a0373edf37385b8716ac6c4a71481c68faebca15`. Its RP-OC-06 specifies a research target, not a proved arithmetic certificate theorem. The declarations below formalize local ZCERT-1 consequences and conditional interfaces, not a newly attributed monograph theorem.
The argument-principle/Hermite ingredients are standard prior mathematics. No novelty is claimed. Canonical-repository code search was incomplete, so no absence of existing declarations is inferred. The pinned mathlib Lagrange and complex-polynomial sources were inspected as possible later dependencies; no interpolation theorem is claimed completed by this increment.

## Verification and publication boundary

The declarations have authored proof bodies and no added proof placeholders or axioms. A source-text scan checked that claim only; it did not parse or elaborate Lean. No Lean executable is available locally. Canonical proof-automation skill lookup at `grwtsk/noeaaeue@0126ba445446dea25047a89884df1adf6b10251a`, path `workflows/research/orchestration/skills/noe-proof-automation/SKILL.md`, and its parent directory returned 404. No dependent proof automation was launched.
Elaboration/typechecking: `NOT_RUN`. Fresh kernel replay: `NOT_RUN`. Transitive axiom audit: `NOT_RUN`. Independent analytical review: `NOT_RUN`. Independent reproduction: `NOT_RUN`. Arithmetic L-function contour computation: `NOT_RUN`. No theorem is promoted to verified status. Exact publication identities are recorded in issue 1806 rather than self-referential commit fields.
Remaining scope: General Hermite converse/inertia, polynomial interpolation with multiplicities, source-exact analytic contour moments, and uniform arithmetic positivity remain unformalized.
Lean-source ownership is only grwtsk/math; the research repository receives references, not copied Lean. The documentation view uses relative links to these same maintained bytes.

## Individual theorem records

### `GRWTSK.HermiteMomentCertificates.quadraticValue_le_add_errorBudget`

Source locator: ZCERT-1 §8, entrywise perturbation bound. Classification: **Local finite-dimensional consequence**.

**Exact scope.** For arbitrary finite real matrices H, M, E and a vector v, the hypotheses |H_ij-M_ij| <= E_ij imply q_H(v) <= q_M(v)+sum E_ij|v_i v_j|. Neither symmetry nor positivity is assumed.

**Analytical argument.** Each signed error term is at most its absolute value, which factors as |H_ij-M_ij||v_i v_j|. Apply the entrywise bound and sum.

**Consumer.** The one-sided enclosure consumer used by every negative certificate.

### `GRWTSK.HermiteMomentCertificates.abs_quadraticValue_sub_le_errorBudget`

Source locator: ZCERT-1 §8, entrywise perturbation bound. Classification: **Local finite-dimensional consequence**.

**Exact scope.** The same hypotheses imply |q_H(v)-q_M(v)| <= the same budget.

**Analytical argument.** Apply the upper-bound theorem twice, with H and M exchanged, and use |a-b|=|b-a|.

**Consumer.** A two-sided value enclosure without an eigenvalue approximation.

### `GRWTSK.HermiteMomentCertificates.negative_of_errorBudget`

Source locator: ZCERT-1 §8, robust negative certificates. Classification: **Direct formalization of the finite inequality**.

**Exact scope.** The entrywise enclosure and q_M(v)+budget < 0 imply q_H(v)<0.

**Analytical argument.** Transitivity of <= with the strict upper margin.

**Consumer.** Exact negative quadratic value; not yet an arithmetic zero.

### `GRWTSK.HermiteMomentCertificates.not_nonnegative_of_errorBudget`

Source locator: ZCERT-1 §8, robust negative certificates. Classification: **Local consequence**.

**Exact scope.** Under the preceding hypotheses, the exact quadratic form cannot be nonnegative on every real vector.

**Analytical argument.** Evaluate presumed universal nonnegativity at the witnessed negative vector.

**Consumer.** Rejects the exact nonnegativity predicate, not a floating-point surrogate.

### `GRWTSK.HermiteMomentCertificates.hermiteMatrix_symmetric`

Source locator: ZCERT-1 §6, definition H_D=(p_(i+j)). Classification: **Definition consequence**.

**Exact scope.** The real moment matrix is symmetric for all nodes, real weights and dimensions.

**Analytical argument.** Commutativity of addition of the two exponent indices.

**Consumer.** Makes the quadratic-form nonnegativity condition the ordinary real PSD condition.

### `GRWTSK.HermiteMomentCertificates.evaluation_square`

Source locator: ZCERT-1 §6, ordinary-square calculation. Classification: **Direct finite algebraic calculation**.

**Exact scope.** For any complex z and finite real coefficient vector, ReEval(z,v)^2-ImEval(z,v)^2 equals the double sum v_i Re(z^(i+j)) v_j.

**Analytical argument.** Expand both squares as double sums. Use z^(i+j)=z^i z^j and Re(uv)=Re(u)Re(v)-Im(u)Im(v); then rearrange products.

**Consumer.** The crucial ordinary-square identity. Replacing it by an absolute square would invalidate the negative witness.

### `GRWTSK.HermiteMomentCertificates.hermite_quadratic_identity`

Source locator: ZCERT-1 §6, proof of Theorem ZCERT-1.D, quadratic identity only. Classification: **Direct formalization of the finite algebraic identity; not the full inertia theorem**.

**Exact scope.** For arbitrary finite complex nodes, arbitrary real weights and any dimension n, q_H(v)=sum_a w_a(ReEval(z_a,v)^2-ImEval(z_a,v)^2). Repeated nodes and signed weights are allowed for this identity.

**Analytical argument.** Expand the literal moment entries, commute the finite sums, factor each weight, and apply evaluation_square.

**Consumer.** Connects the matrix to the specified finite divisor. No analytic contour identity is proved.

### `GRWTSK.HermiteMomentCertificates.imagEvaluation_eq_zero_of_real`

Source locator: ZCERT-1 §6, real-root contribution. Classification: **Local consequence**.

**Exact scope.** A node with imaginary part zero gives zero imaginary polynomial evaluation for every real coefficient vector.

**Analytical argument.** Write the node as the complex embedding of its real part; every power and its real scalar multiple is real.

**Consumer.** Forward real-root nonnegativity.

### `GRWTSK.HermiteMomentCertificates.hermite_nonnegative_of_real`

Source locator: ZCERT-1 §6, forward implication of Hermite criterion. Classification: **Direct formalization of one direction**.

**Exact scope.** Nonnegative weights and real nodes imply nonnegativity of every real quadratic value of H, in any dimension. Distinctness, simplicity and strictly positive weights are unnecessary.

**Analytical argument.** The moment identity becomes a sum of nonnegative weights times real squares.

**Consumer.** Forward implication and the contrapositive witness consumer. Does not establish the Hermite converse.

### `GRWTSK.HermiteMomentCertificates.exists_nonreal_of_negative`

Source locator: ZCERT-1 §6 and 8, negative-direction source return. Classification: **Local consequence**.

**Exact scope.** With nonnegative weights, any negative exact quadratic value forces at least one listed node to have nonzero imaginary part.

**Analytical argument.** If every node were real, hermite_nonnegative_of_real would contradict the negative value.

**Consumer.** A finite nonreal-node existence theorem. Does not infer source membership without a separate premise.

### `GRWTSK.HermiteMomentCertificates.exists_nonreal_of_enclosed_moments`

Source locator: ZCERT-1 §8, robust negative witness. Classification: **Composed conditional interface**.

**Exact scope.** Nonnegative weights, entrywise enclosures of this exact moment matrix and a strict negative upper margin imply a nonreal listed node.

**Analytical argument.** First certify negativity by negative_of_errorBudget, then apply exists_nonreal_of_negative.

**Consumer.** Consumer for rigorously evaluated, source-identified contour moments.

### `GRWTSK.HermiteMomentCertificates.hermiteMatrix_pairNodes`

Source locator: ZCERT-1 §8, roots a +/- i*b control. Classification: **Local symbolic control**.

**Exact scope.** The moments of the literal pair a +/- i*b with unit weights give the displayed 2-by-2 matrix.

**Analytical argument.** Expand the four entries, the two-term sums and the powers through degree two. The imaginary contributions cancel.

**Consumer.** Ensures the control matrix really comes from its stated nodes; no arithmetic root search.

### `GRWTSK.HermiteMomentCertificates.pairMatrix_value`

Source locator: ZCERT-1 §8, near-real conjugate-pair example. Classification: **Direct symbolic generalization**.

**Exact scope.** The vector (-a,1) has quadratic value -2*b^2 on the pair matrix.

**Analytical argument.** Expand the two-dimensional quadratic expression and cancel the a terms.

**Consumer.** A negative direction with an explicit quadratic separation scale.

### `GRWTSK.HermiteMomentCertificates.pairMatrix_negative`

Source locator: ZCERT-1 §8, near-real conjugate-pair example. Classification: **Local consequence**.

**Exact scope.** For b != 0 the displayed value is strictly negative.

**Analytical argument.** b^2>0 and pairMatrix_value.

**Consumer.** Shows that an arbitrarily small nonzero off-real separation is not a zero margin.

### `GRWTSK.HermiteMomentCertificates.pairMatrix_nonnegative_iff`

Source locator: ZCERT-1 §8, pair and singular-limit examples. Classification: **Local two-point converse**.

**Exact scope.** The pair matrix is nonnegative iff b=0. This is a two-point result, not the general Hermite converse.

**Analytical argument.** For b!=0 use the explicit negative vector. At b=0 the value is exactly 2*(v_0+a*v_1)^2.

**Consumer.** An exact singular positive limit and a counterexample to certifying nearby sign from a midpoint.
