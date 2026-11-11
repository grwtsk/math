# `GRWTSK.AlgebraicGeometry.HaradaTwistedEulerProduct.hasProd_primeFactor`

Local attribution: grwtsk contributors. MSC2020: 14G15, 11G25, 11M41.
Disposition: source proof candidate; no novelty or GRH claim.

## Exact statement and objects

For every positive modulus N, every actual `DirichletCharacter C N` chi, and
s with Re(s)>3, the product over all `Nat.Primes` of the existing local factor
`localFactor p m_p (chi(p)*p^(-s))` has product

`LFunction chi s ^ 2 * LFunction chi (s-2) * (1-chi(2)*2^(-s))`,

where m_p=1 for p=2 and m_p=2 otherwise. `HasProd` expresses convergence of
finite-subset products, not the default value of an unproved total product.
Neither primitivity nor nonprincipality is needed in this half-plane.
The character twist is substitution into the exact local rational factor;
this is not an asserted construction of a sheaf on a link complement.

## Primary mathematical argument

The preceding `HaradaLocalZeta` module derives the point counts q^(2r)+m_K
for genuine degree-r finite field algebras and the all-degree local series.
`residualMultiplicity_zmod` identifies its characteristic condition at the
prime field with p=2, and `primeFactor_eq_primeField` identifies the factor
with that exact local source. The shifted argument identity is
p^2*chi(p)*p^(-s)=chi(p)*p^(-(s-2)), using the complex-power addition rule
only with the nonzero positive integer base p. Each prime factor is the
square of the ordinary Dirichlet factor at s times the ordinary factor at
s-2; at p=2 multiply by the missing denominator factor 1-chi(2)*2^(-s).

Re(s)>3 implies both Re(s)>1 and Re(s-2)>1. Apply the pinned Mathlib
Dirichlet Euler-product theorem twice at s and once at s-2. The correction
is a single-supported product, proved with `hasProd_ite_eq`. Multiplication
of these four convergent products and the pointwise factor identity give
the conclusion. `LFunction_eq_LSeries` identifies the actual continued
L-function with the series only in this justified half-plane.

## Source comparison and exact dependencies

Shinya Harada, *Hasse-Weil zeta functions of SL2-character varieties of
arithmetic two-bridge link complements*, arXiv:1207.6177v2 (31 January 2014),
p.1, Introduction, f2 and the unnumbered theorem for L2=(12/5):
https://arxiv.org/abs/1207.6177v2 . The untwisted formula is a known source
result; the character-weighted factorization here is its elementary local
Euler-product consequence, not a claim to formalize all of Harada's paper.
No new PDF snapshot was downloaded or hashed in this increment.

Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Primary declarations inspected at this pin:
- `DirichletCharacter.LSeries_eulerProduct_hasProd`,
  Mathlib/NumberTheory/EulerProduct/DirichletLSeries.lean,
  blob `ca6aec6b78d565a5239855953de9829f1aacd6d4` (Michael Stoll).
- `DirichletCharacter.LFunction_eq_LSeries` and `LFunction_modOne_eq`,
  Mathlib/NumberTheory/LSeries/DirichletContinuation.lean,
  blob `89c72580697983d86706cff17ccbea2cee6475a3`
  (David Loeffler, Michael Stoll).
- `hasProd_ite_eq` and `HasProd.congr_fun`,
  Mathlib/Topology/Algebra/InfiniteSum/Basic.lean,
  blob `05d24f2c6408866a80625bf444417750aa84d5cd`.
- `Complex.cpow_add` and `cpow_two`,
  Mathlib/Analysis/SpecialFunctions/Pow/Complex.lean,
  blob `a67149c846e38a48c4824fc1df3161feee9bb495`.

Canonical math inspected at `8d7c8b8084caa6ff3cf6b254da449042617519f8`:
`HaradaCharacterSurface.lean` blob `e13c9ddea795c98e1aa7ffb5b2f0b52e67102a9f`;
`HaradaLocalZeta.lean` blob `57bc19ddc1bef4cf1517fad006bfa9966995e5bb`.
Program 4's `ResonanceDeterminantReturn.analyticOrder_eq_of_unit_factor`
is reused in the separate multiplicity theorem. Program 8's newly published
exact multiplicity work was compared, not silently treated as independently
checked arithmetic source evidence. Upstream declarations are imported,
not copied or reattributed; upstream licenses remain unchanged.

## Source identity and reproduction targets

Canonical file: `GRWTSK/AlgebraicGeometry/HaradaTwistedEulerProduct.lean`.
Git blob: `aa2e8288531833614c394e7c1fef38ac0d918530`.
SHA-256: `b07704776e1c71c7666d1c420e7b527f106590ca961d8d4ac37120a1cf8160a4`.
Length: 10,859 UTF-8 bytes, 221 lines; eleven public theorem declarations.
Lean pin: `leanprover/lean4:v4.34.1`.
The root Lake dependency pin and manifest remain unchanged.
Publication commit and concurrent-head reconciliation are recorded in
https://github.com/grwtsk/math/issues/1802 .

In a clean checkout of the publication commit, first compare the file with
the SHA-256 above, retain the committed toolchain and lake-manifest.json,
then target `lake build GRWTSK.AlgebraicGeometry.HaradaTwistedEulerProduct`.
A subsequent axiom inspection must import this exact module and inspect
all eleven public declarations, including the transitive dependencies;
a lexical scan is not that audit. Kernel replay and independent analytical
review require their own exact-source receipts. These are reproduction
targets, not commands executed during source publication.

## Consumers, controls, and open obligations

Consumer: justify the global character-weighted product used by the Harada
arithmetic source-return route, before attempting completed normalization.
The modulo-one specialization returns the known zeta expression. Ramified
character values give local factor one. At s=4 the trivial-character
exceptional factor is exactly 15/16, not one; omitting it changes the source.
The local all-degree count reconstruction and this all-prime product are
complementary arguments with shared point-count dependencies, not independent
proofs. No independent alternative proof or certificate reproduction ran.

Not established here: a scheme/sheaf interpretation of the twists; global
meromorphic uniqueness at poles; nonvanishing of the shifted multiplier
throughout the critical strip; the completed conductor/gamma/parity factors;
the full pole-inclusive Weil formula; all-window positivity; RH or GRH.
The zero/order consumers keep analytic nonvanishing assumptions explicit.
No Euler-product convergence in the critical strip is asserted.

Performed: manual source/API comparison, written derivation, lexical token
scan and source-byte hashing. Lean elaboration/build, fresh kernel replay,
transitive axiom audit, independent review and CI: **NOT_RUN**.
Novelty: **UNASSESSED**; standard identities are not claimed new.
No proof automation was dispatched. Canonical skill lookup returned 404 at
noeaaeue main `0126ba445446dea25047a89884df1adf6b10251a`; this does not block
ordinary separately authorized candidate-source publication.
