# Source-bound finite Hermite negative-inertia increment

Local mathematical attribution: grwtsk contributors.

Canonical source: [../HermiteNegativeInertia.lean](../HermiteNegativeInertia.lean). Namespace `GRWTSK.LinearAlgebra.HermiteNegativeInertia`. 10 theorem declarations; every declaration has its own adjacent record. Exact UTF-8 source: Git blob `94aa4411b6714d3879de83e98a4deb39028a30c3`, SHA-256 `50bfc7e8e7d70baa47ef1492db497d80f8f28a96d3fa405480fa0de66103026f`.

## Pinned inputs and source ownership

Inspection and cross-program comparison: `grwtsk/math@8d7c8b8084caa6ff3cf6b254da449042617519f8` (2026-11-11). The final publication commit and complete-tree comparison are recorded in math issue #1808. No existing source file is replaced, no default import is promoted, and no dependency pin is changed.

- `HermiteRealRootCriterion.lean`: Git blob `dfdecb18ca898fa46e22e7745826fb4d56cee204`; `exists_real_interpolant`, `evaluation`, `evaluation_re`, `evaluation_im`, and `supportMatrix`.
- `HermiteMomentCertificates.lean`: unchanged complete finite moment identity, real/imaginary evaluation, and real-node evaluation theorem.
- `NegativeIndexBounds.lean`: Git blob `99f3b23af092dc3d74b6f2e55b5dcf66f3c51211`; strict-negative-frame and matching finite-observation bounds. The original scalar-explicit `negativeIndex` is unchanged.
- `ZeroDivisorHermiteReturn.lean`: Git blob `3db00cc8c884acfe5ce8db3d8d79ceaf05fcfac0`; the original divisor matrix and `support_card_le_totalCount`.
- Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Pinned finite-basis coordinates and finite-dimensional injection APIs are reused, with upstream authorship/license unchanged.
- Existing program source: *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, grwtsk contributors, Edition 1.0 (2026-11-10), RP-OC-03. Research issue #43; no Lean source is mirrored into the research repository.

## Mathematical argument and comparison

For the unchanged Program 6 real-part Hermite matrix, Q(v) is the sum over the finite support S of w(z)(Re p_v(z)^2 - Im p_v(z)^2). Its coefficients are real, so evaluations at conjugate points are conjugate. The finite observation O consists of Im p_v(z) at the upper-half-plane nodes. On ker O all imaginary evaluations vanish, including those on the lower half-plane and real axis. Nonnegative weights give Q >= 0 there. The existing finite-observation theorem therefore bounds the real negative index above by the number of upper nodes, without a degree-budget assumption.

For the matching lower bound, n >= S.card and conjugation closure permit Program 6's real interpolation. For each upper node choose one real coefficient vector with evaluations i, -i at that pair and zero elsewhere. These fixed vectors are synthesized by a single real-linear map F from all upper-node coefficients. All support evaluations of F(x) are purely imaginary, and upper imaginary evaluations recover x. For x != 0, one upper evaluation is nonzero and strictly positive weights give Q(F(x)) < 0. This simultaneously controls every linear combination, not only the chosen generators. A finite basis turns F into the existing Fin n-frame format, and the matching upper and lower certificates prove equality.

An equivalent coordinate calculation combines each conjugate pair into (w(z)+w(conj z))((Re p(z))^2-(Im p(z))^2). This clarifies that positive multiplicities change scale, not the count of negative directions. It shares the interpolation premise and is NOT an independent proof audit. The code does not need equality of conjugate weights because it concerns the real-part matrix. Such equality would be an additional issue when identifying the original complex moments as real.

The mechanism is classical Hermite inertia; no mathematical novelty is claimed. The inspected primary-source metadata for Melvyn B. Nathanson, *The Hermite-Sylvester criterion for real-rooted polynomials*, arXiv:1911.01745v2 (revision submitted 2019-11-24; journal The Mathematical Gazette 105 (2021), 122-125), describes the classical positivity/reality criterion. Program 6's pinned source supplies the concrete Lemmas 1-2/Theorem 1 interpolation comparison. This increment extends that existing source to negative-index counting using already-maintained dimension bounds; it does not claim the external note states this exact weighted signature.

## Hostile cases and boundaries

Program 6 already supplies `undersized_pair_nonnegative`, `unpaired_node_counterexample`, and `zero_weight_counterexample`. Their hypotheses explain why the equality needs a sufficient degree budget, conjugation closure and strictly positive weights. The upper bound alone needs only nonnegative weights. Program 3's prior `separate_negative_vectors_counterexample` explains the simultaneous-frame construction. Empty support is allowed, n can be zero when S is empty, and positive repeated weights are allowed. Collision changes the DISTINCT support; index constancy through a collision is not asserted. Excess coefficient dimensions do not force extra negative directions and may create a radical.

No theorem here identifies this finite real coefficient form with the full complex arithmetic Weil form, supplies the Krein completion, proves compactness, establishes spectral flow, or implies all-window arithmetic positivity. Numerical enclosures, operator-domain identities and arithmetic source return remain separate suppliers.

## Clean-checkout reproduction and evidence

At the published commit recorded in math#1808, obtain the pinned dependencies using the repository's supported setup. With the current applicable canonical proof-execution skill and execution authorization available, check the module explicitly (it is intentionally not added to root imports):

```sh
lake build GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.HermiteNegativeInertia
lake env lean GRWTSK/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermiteNegativeInertia.lean
```

Then import the module in an audit file and request `#print axioms` for each of:

```lean
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.HermiteNegativeInertia
#print axioms GRWTSK.LinearAlgebra.HermiteNegativeInertia.evaluation_conj
#print axioms GRWTSK.LinearAlgebra.HermiteNegativeInertia.imagEvaluation_conj
#print axioms GRWTSK.LinearAlgebra.HermiteNegativeInertia.imagEvaluation_zero_of_observer_zero
#print axioms GRWTSK.LinearAlgebra.HermiteNegativeInertia.nonnegative_on_observer_kernel
#print axioms GRWTSK.LinearAlgebra.HermiteNegativeInertia.negativeIndex_supportMatrix_le
#print axioms GRWTSK.LinearAlgebra.HermiteNegativeInertia.exists_pair_interpolant
#print axioms GRWTSK.LinearAlgebra.HermiteNegativeInertia.exists_imaginary_section
#print axioms GRWTSK.LinearAlgebra.HermiteNegativeInertia.negative_of_pure_imaginary_evaluations
#print axioms GRWTSK.LinearAlgebra.HermiteNegativeInertia.negativeIndex_supportMatrix_eq
#print axioms GRWTSK.LinearAlgebra.HermiteNegativeInertia.negativeIndex_independent_of_positive_weights
```

Bind any eventual receipt to exact source/toolchain/dependency identities and exit codes. Fresh replay and a transitive dependency/axiom audit require their own evidence; an import or static scan is not a substitute. No generated evaluator, floating-point result, proof certificate, seed or runtime lockfile is claimed by this pure-source increment.

At authoring, no local Lean/Lake executable or verified canonical local skill checkout was found. The prescribed proof-automation skill returned 404 at Noe main `0126ba445446dea25047a89884df1adf6b10251a`; dependent automation was not dispatched. Elaboration/build, fresh kernel replay, transitive axiom audit, independent analytical review, hosted CI and arithmetic numerical certification remain NOT_RUN. Text, source hashes, record coverage and relative links are static publication checks only; their actual outcomes and final branch/commit readback are in math#1808. Existing imported evidence statuses are not promoted.
