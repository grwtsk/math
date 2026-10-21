# Typed normalization, rational CM descent, Hodge typing, and analytic restriction

Issue: [#500](https://github.com/grwtsk/math/issues/500)

Status:

~~~text
SOURCE_DRAFT
NOT_LEAN_FORMALIZED
NOT_RUN
NOT_KERNEL_AUDITED
NO RH CLAIM
~~~

Pinned external source:

~~~text
repository: openai/math
revision: 1581d4cbdd69a0faf34b2089614fe2a814316a6a
~~~

This note formalizes the interfaces among selected OpenAI mathematics results.
It deliberately does not identify type-theoretic normalization, Hodge
algebraicity, modularity, filtration comparison, or zeta zero-free regions.

## 1. Evidence classes

We use the ordered vocabulary only as separate evidence coordinates:

~~~text
EXTERNAL_MANUSCRIPT
EXTERNAL_FORMAL_SOURCE
EXACT_TYPE_REVIEWED
DEPENDENCY_REVIEWED
LOCAL_ADAPTER_PROVED
LOCAL_REPLAYED
KERNEL_AUDITED
TRUST_AUDITED
~~~

No implication between successive entries is definitional.

At the pinned external revision:

| Result | External status used here |
| --- | --- |
| 245, weak normalization implies strong normalization for pure type systems | EXTERNAL_FORMAL_SOURCE |
| 003, zeta/Dirichlet/Hecke zero-free half-plane Re(s)>7/8 | EXTERNAL_FORMAL_SOURCE |
| 032, rational Hodge conjecture for CM abelian varieties | EXTERNAL_MANUSCRIPT |
| 001, Milne rationality | EXTERNAL_MANUSCRIPT |
| 043, P=W for fixed determinant | EXTERNAL_MANUSCRIPT |
| 010, Fontaine–Mazur/pro-modularity at 2 | EXTERNAL_MANUSCRIPT |

The OpenAI repository history records withdrawal of three neighboring Hodge/K3
manuscripts after a sign error. The CM-abelian manuscript is not listed among
those withdrawals. This note therefore treats proposition-level source review
as mandatory and does not infer trust from family proximity.

## 2. Normalized syntax is not Hodge theory

Let S be a type of interface expressions and M a semantic witness type. Let

\[
  E:S\to \operatorname{Expr}(P)
\]

encode interface expressions into a selected pure type system P, and let

\[
  \llbracket-\rrbracket:S\to M
\]

be a semantic interpretation.

Write \(s\leadsto s'\) for one admitted interface reduction. The bridge
requires four independent hypotheses.

### N1. Typing preservation by encoding

Every legal interface expression is sent to a legal expression of P in the
corresponding valid context.

### N2. Reduction simulation

If \(s\leadsto s'\), then \(E(s)\) reduces to \(E(s')\) by the selected
PTS reduction relation, possibly through a finite nonempty reduction path.

### N3. Semantic invariance

For every admitted reduction,

\[
  \llbracket s\rrbracket \simeq_M \llbracket s'\rrbracket .
\]

The equivalence relation \(\simeq_M\) is part of the target semantics and is
not supplied by syntax.

### N4. Weak normalization

Every legal encoded interface expression has at least one terminating
reduction sequence.

The external theorem candidate

~~~text
OAI.PureTypeSystem.weak_implies_strong
~~~

then suggests the theorem target:

### Theorem schema N — strategy-independent termination

After exact source admission of result 245 and proofs of N1–N4, every reduction
sequence from every legal encoded interface expression terminates.

This theorem concerns the expression language only. It does not prove a
mathematical obligation carried by a witness, and it does not imply
confluence. Canonical normal forms additionally require a confluence theorem
for the selected interface reduction system.

## 3. Rational descent as a witness theorem

Let \(T_\mathbf Q\) be a finite-dimensional rational vector space and let

\[
  P\subseteq T_\mathbf C
\]

be a complex-linear subspace. Let

\[
  t\in T_{\overline{\mathbf Q}}.
\]

Define an all-conjugates predicate

\[
  \operatorname{AllConj}_P(t)
  :\Longleftrightarrow
  \forall\sigma\in\operatorname{Gal}(\overline{\mathbf Q}/\mathbf Q),
  \quad \sigma(t)\in P .
\]

The external CM-Hodge manuscript contains the scalar-descent statement:

### Theorem target D — scalar descent

\[
  \operatorname{AllConj}_P(t)
  \Longrightarrow
  t\in
  (T_\mathbf Q\cap P)\otimes_\mathbf Q\overline{\mathbf Q}.
\]

For local formalization it is enough to first prove a finite-Galois version:
choose a finite Galois extension \(K/\mathbf Q\) containing the coefficients of
\(t\), use a trace-dual basis, and descend each rational coefficient.

Define the noncoercible stages

~~~text
SCALAR_WITNESS_OVER_QBAR
ALL_CONJUGATES_IN_P
RATIONAL_DESCENT_CERTIFIED
RATIONAL_WITNESS
~~~

Syntax normalization does not create any of these stages.

## 4. Four-label CM balance

Let \(E/\mathbf Q\) be a finite Galois CM field with central complex
conjugation \(c\). An odd sign row is a function

\[
  v:G_E\to\{-1,+1\},
  \qquad
  v(cg)=-v(g).
\]

For four rows define

\[
  \operatorname{FourBalance}(v_1,v_2,v_3,v_4)
  :\Longleftrightarrow
  v_1+v_2=v_3+v_4
\]

pointwise.

The external CM-Hodge manuscript uses this relation to show that the
corresponding four-factor embedding-line tensor has type \((2,2)\) in every
scalar conjugate.

The local interface must retain four distinct statements:

~~~text
FOUR_LABEL_BALANCE
ALL_CONJUGATES_TYPE_22
RATIONAL_DESCENT
ALGEBRAIC_CYCLE_REALIZATION
~~~

The intended implication graph is

\[
\text{FourBalance}
\to
\text{all-conjugate }(2,2)\text{ type}
\to
\text{rational Hodge witness}
\to
\text{algebraic cycle witness},
\]

where the final arrow uses the separately admitted CM rational-Hodge theorem.
No earlier node implies a later node without its own theorem.

This is the source-level interface to issues #176, #178, #180, #181, and #183.

## 5. Frobenius slope to Hodge type

The external manuscript also uses an arithmetic projector argument. Abstract it
as follows.

Let \(D\) be a filtered Frobenius module of degree-one Hodge range, and let

\[
  p:D_L\to D_L
\]

be an idempotent after a finite coefficient extension. Require:

1. \(p^2=p\);
2. \(p\) preserves the Hodge filtration;
3. \(p\) commutes with Frobenius;
4. the image \(pD_L\) is weakly admissible;
5. the Newton slope on \(pD_L\) is pure and equal to \(t\in\{0,1\}\).

Weak admissibility gives \(t_H=t_N\) on the projected summand. Since the Hodge
filtration has only indices 0 and 1, the pure slope forces the corresponding
pure degree-one Hodge type.

### Theorem schema H1 — projected slope determines degree-one Hodge type

Under the five hypotheses above:

\[
t=1 \Longrightarrow pD_L\text{ is of type }(1,0),
\]

and

\[
t=0 \Longrightarrow pD_L\text{ is of type }(0,1),
\]

at the exact coefficient and realization scope supplied by the comparison
theorem.

Filtration preservation is essential. A Frobenius eigenspace that is not
preserved by the Hodge filtration is a hostile control and may not instantiate
H1.

## 6. Polarization as a source of CM rigidity

For a polarizable rational Hodge structure \(U\), let \(\psi\) be a
polarization and \(C_U\) its Weil operator. Define

\[
  q(x,y)=\psi(C_Ux,y).
\]

Under the standard polarization hypotheses, \(q\) is positive definite on
\(U_\mathbf R\).

If a commutative rational endomorphism algebra \(E\subseteq
\operatorname{End}_\mathbf Q(U)\) is preserved by the polarization adjoint
\(\dagger\), the positive form constrains the action of \(\dagger\) on
archimedean factors.

Package this as

~~~text
PolarizedCMInvolutionPort
  U
  psi
  C_U
  q
  E
  dagger
  positivity proof
  Hodge-circle action
  archimedean factor classification
  CM/totally-real disposition
~~~

### Theorem schema H2 — positivity restricts the involution

Under the simple/toric hypotheses used by the selected CM argument, positivity
of \(q\) excludes exchanging primitive real factors and forces complex
conjugation on complex factors. In the nontrivial positive-weight case, the
totally real alternative is separately excluded by the Hodge-circle action.

This is a model for an arithmetic source of positivity. It has no automatic
map to the zeta quadratic forms in the RH program.

## 7. Effective realization by weight-one CM types

Let \(W\) be a nonzero simple polarizable rational Hodge structure of CM type
and weight \(k\). Define

\[
  r_0=\min\{p:W^{p,k-p}\neq0\},
  \qquad
  n=k-2r_0.
\]

The external manuscript constructs a CM abelian variety \(B\) and a
surjective rational Hodge map

\[
  H^n(B,\mathbf Q)(-r_0)\twoheadrightarrow W.
\]

The construction decomposes the embedding-index Hodge integers
\(a_\sigma\) into \(n\) weight-one CM types and uses multiplication

\[
  E^{\otimes_\mathbf Q n}\to E.
\]

Define

~~~text
EffectiveCMRealization
  W
  weight k
  r0
  n
  CM field E
  Hodge numbers a_sigma
  weight-one CM types Phi_1,...,Phi_n
  product B
  Kunneth tensor summand
  multiplication map
  surjective Hodge map
  evidence state
~~~

The decomposition is finite and typed; it is not claimed canonical.

## 8. Cross-realization witnesses

The Milne-rationality result family motivates a generic structure:

~~~text
CrossRealizationWitness
  rational source object
  realization index type I
  realization(i)
  comparison map(i,j)
  compatibility theorem
  specialization/base-change data
  coefficient conventions
~~~

The mathematical point is one source with several realizations. Similarity
among realizations does not construct this object.

This is the correct mathematical analogue of a polyglot witness bundle.

## 9. P=W as a filtration-coincidence interface

For a rational cohomology space \(H\), define

~~~text
DualFiltrationWitness
  H
  P : filtration on H
  W : filtration on H
  index transform
  exact equality theorem
  geometric source of P
  mixed-Hodge source of W
~~~

The OpenAI result 043 suggests the pattern

\[
  P_k=W_{2k}=W_{2k+1}.
\]

This note does not admit that manuscript theorem. It records the exact shape a
future adapter would need. Two filtrations, common dimensions, or a finite
diagram do not imply equality.

## 10. Candidate Galois-to-automorphic port

The OpenAI Fontaine–Mazur/pro-modularity result family motivates:

~~~text
GaloisAutomorphicPort
  p-adic representation rho
  oddness
  irreducibility
  finite ramification
  de Rham condition when used
  distinct Hodge-Tate weights when used
  Hecke/modular target
  Tate-twist convention
  L-function identity
  evidence state
~~~

No field may be omitted when the corresponding conclusion depends on it.

This is only a candidate route from arithmetic representation data toward an
L-function. It is not the theorem "Hodge type implies L-function."

## 11. Independent analytic restriction from result 003

Define

\[
  \operatorname{ZeroFreeHalfPlane}(a)
  :\Longleftrightarrow
  \forall s,\ a<\Re(s)\to\zeta(s)\neq0
\]

with the source's exact pole convention.

The external Lean result candidate at \(a=7/8\) belongs to issue #187. After
exact type/dependency review and a local zeta identity adapter, it may supply

\[
  \Re(s)>7/8\Longrightarrow\zeta(s)\neq0.
\]

A reflected left-hand restriction requires a separate use of the exact
functional equation/symmetry theorem. Only then may the nontrivial-zero search
be restricted to

\[
  1/8\le\Re(s)\le7/8.
\]

Neither restriction supplies critical-line location.

There is no Hodge implication here unless a separate arithmetic
Hodge-to-L-function interface is built.

## 12. Composite interface diagram

The correct connection is not one implication but a typed diagram:

~~~text
legal witness syntax
   |
   | PTS encoding + weak normalization
   v
strongly normalizing syntax
   |
   | semantic invariance
   v
semantic arithmetic witness over Qbar
   |
   | all-conjugate Hodge predicate
   v
Galois-conjugate Hodge witness
   |
   | scalar descent
   v
rational Hodge witness over Q
   |
   | optional CM cycle-class surjectivity
   v
rational algebraic-cycle witness
   |
   +------> cross-realization witness
   +------> cellular/metric Hodge consumer
   +------> candidate automorphic/L-function consumer
~~~

The quasi-RH zero-free port enters only on the final analytic side and does not
supply any earlier Hodge arrow.

## 13. First local formalization targets

The highest-value local theorems that do not require accepting a global
external manuscript are:

1. a semantics-preserving encoding skeleton from the selected finite port
   language into a PTS;
2. the finite-Galois scalar-descent lemma;
3. the finite odd-sign four-balance type-count identity;
4. the finite filtered-vector-space H1 lemma at the level of Hodge/Newton
   numbers;
5. an exact source/type adapter for the external 7/8 zeta theorem;
6. evidence constructors that make it impossible to populate an algebraicity
   field from SOURCE_DRAFT or EXTERNAL_MANUSCRIPT alone.

## 14. Ownership

- #177 owns PTS/port normalization.
- #176 owns CM rational Hodge/cycle/cellular comparison.
- #178/#180/#181/#183 own four-label switch/coherence/correspondence mechanics.
- #187 owns external zeta theorem comparison and admission.
- #248/#249 own other reusable OpenAI formal adapters.
- #490 owns admissible path/null geometry.
- #500 owns only this cross-domain interface diagram.
- #159 remains the only optional route into the RH program.

## Nonclaims

This document does not prove the OpenAI CM Hodge manuscript, Milne rationality,
P=W, Fontaine–Mazur, or RH. It does not claim that PTS normalization implies
Hodge algebraicity, that a Hodge type determines an L-function, or that a
zero-free half-plane implies the critical-line statement.
