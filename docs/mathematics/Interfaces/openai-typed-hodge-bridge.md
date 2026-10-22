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
| scalar descent core, `lean/OAI/LinearAlgebra/TensorProduct/ScalarDescent.lean` | EXTERNAL_FORMAL_SOURCE |
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

A local generic simulation theorem is now present in
`GRWTSK/Logic/TypeTheory/WitnessSyntaxNormalization.lean`:
`ReductionSimulation.stronglyNormalizing_of_encode` reflects strong
normalization from a target language when every local reduction step is
preserved by the encoding. The same file separately proves finite-path
semantic invariance for a declared semantic relation. Both declarations remain
SOURCE_DRAFT / NOT_RUN.

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

OpenAI also supplies a Lean scalar-descent source at
`lean/OAI/LinearAlgebra/TensorProduct/ScalarDescent.lean`. The local module
`GRWTSK/LinearAlgebra/TensorProduct/RationalScalarDescent.lean` adapts its
finite-Galois trace-dual core. Current local status is SOURCE_DRAFT / NOT_RUN.

The mathematical statement is:

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

## 3a. Arbitrary Galois and ambient-complex descent

The upstream OpenAI formal source goes beyond finite extensions. It first shows
that every tensor over an arbitrary Galois extension is defined over a finite
Galois intermediate field, applies the finite theorem there, and then extends
coefficients again.

The local source
\`GRWTSK/LinearAlgebra/TensorProduct/GaloisScalarDescent.lean\` now mirrors
that architecture with targets

~~~text
galoisScalarDescent
scalarDescentAmbient
traceDescent
~~~

where \`traceDescent\` is the algebraic-number/complex ambient form used by the
CM-Hodge argument.

This significantly narrows the Hodge dependency: scalar descent itself has a
formal upstream source and a local source adaptation. What remains manuscript
level is proving that the selected complex-linear subspace is the correct
Hodge-map/Hodge-class subspace and the subsequent algebraicity theorem.

Because the upstream theorem uses Lean 4.34.1/mathlib d13f... while GRWTSK uses
Lean 4.33.0/mathlib db58..., these local ports remain SOURCE_DRAFT / NOT_RUN.

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

The local finite sign-count theorem is now present as
`GRWTSK.AlgebraicGeometry.Hodge.CMFourBalance.fourBalance_holomorphicCount`.
It proves only the two-holomorphic-index count from balance plus oddness; the
identification with actual Hodge lines, rational descent, and algebraicity
remain separate. This is the source-level interface to issues #176, #178,
#180, #181, and #183.

## 4a. Actual embedding-line realization boundary

The finite sign profile is not yet a Hodge structure. A separate realization
must assign each sign coordinate an actual pure weight-one line type and prove

~~~text
positive sign -> (1,0)
negative sign -> (0,1).
~~~

The local source file
`GRWTSK/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean` now has two levels:
`EmbeddingLineRealization`, which carries an opaque line witness and type label,
and `LinearEmbeddingLineRealization`, which carries an actual one-dimensional
linear subspace in a coefficient-space realization together with the same
sign-compatible type. Under four-label balance it proves

\[
  \sum p_i=2,\qquad \sum q_i=2
\]

for every selected coordinate in the four-factor pattern. Thus the precise
local chain is now

\[
\text{four-label balance}
\to
\text{two/two sign profile}
+
\text{embedding-line realization}
\to
\text{realized }(2,2)\text{ bidegree}.
\]

The stronger local record still does not prove that the one-dimensional
subspace is the eigenspace `U(v)_lambda` of the CM-field action, that the family
of lines gives the full embedding decomposition, or that `U(v)=H^1(B(v),Q)`.
Those statements remain bound to `eq:cm-types` and
`eq:cm-label-conjugation`. Scalar descent and algebraicity remain separate.
The local source remains SOURCE_DRAFT / NOT_RUN.

## 4b. CM Galois indexing and complete eigenspace decomposition

The local interface now separates four increasingly strong realization states.

~~~text
SIGN_PROFILE
  odd +/-1 rows with four-label balance

LINEAR_LINE_PROFILE
  actual one-dimensional subspaces with sign-compatible type labels

CHARACTER_EIGENLINE_PROFILE
  those subspaces are exact eigenspaces for algebra characters

COMPLETE_EIGENSPACE_DECOMPOSITION
  the character eigenspaces form an internal direct sum of the ambient space
~~~

`GRWTSK/AlgebraicGeometry/Hodge/CMGaloisIndex.lean` replaces the arbitrary
conjugation map by a selected central involution c with c^2=1.

`GRWTSK/AlgebraicGeometry/Hodge/CMNumberFieldIndex.lean` now instantiates
that abstraction for an actual Galois CM number field using Mathlib's
`NumberField.IsCMField.complexConj`. After restriction to Q the source proves
involutivity and centrality against every rational field automorphism by
testing both composites through a complex embedding. Thus the CM sign-indexing
map g -> c*g = g*c is no longer a manuscript premise.

`CMEmbeddingEigenspaces.lean` defines character eigenspaces for a
commutative algebra action and a `CharacterEigenspaceDecomposition`
carrying `DirectSum.IsInternal`. For finite labels it proves

  dim_C V = |G|.

When G = Gal(E/k) and E/k is finite Galois, Mathlib's
`IsGalois.card_aut_eq_finrank` gives

  dim_C V = [E:k].

The concrete central-involution supplier is now local as
`CMNumberFieldIndex.centralInvolution`.

These are local linear/group-theoretic checks. The regular CM-field action
and literal embedding-character eigenspaces are now constructed separately in
`CMRegularBaseChange.lean`. What remains is one-dimensionality/completeness of
those canonical eigenspaces, their Hodge-type assignment, scalar-conjugation
transport, and geometric realization.

## 4c. Canonical regular base-change action

`GRWTSK/AlgebraicGeometry/Hodge/CMRegularBaseChange.lean` now constructs
the canonical regular action

  E -> End_C(C tensor_k E)

by base-changing left multiplication on E. For every k-algebra embedding
lambda : E -> C it defines the literal character eigenspace

  { t | a.t = lambda(a) t for every a in E }.

Thus the CM realization frontier is narrower again. The field action and
the definition of embedding-character eigenspaces are local. The remaining
linear-algebra supplier is to prove that these canonical eigenspaces are
one-dimensional and form the complete internal direct-sum decomposition
at the chosen coefficient field. The remaining Hodge supplier is to attach
the prescribed (1,0)/(0,1) types and identify the rational source with
U(v)=H^1(B(v),Q), including scalar-conjugation transport.

## 4b. Canonical Galois embedding eigenlines

The local CM supplier stack now reaches further than an opaque line witness.

For a finite Galois extension \(E/k\), the source constructs the evaluation
equivalence

\[
E\otimes_k E
\simeq
E^{\operatorname{Gal}(E/k)}
\]

and the regular \(E\)-action on the second tensor factor. The new module
\`CMGaloisEigenlines.lean\` proves that the eigenspace for a selected
automorphism \(\sigma\) is exactly the preimage of one coordinate axis under
this equivalence. Hence each canonical embedding eigenspace is nonzero and
one-dimensional.

Together with \`CMEmbeddingTransport.lean\`, scalar conjugation transports
these canonical eigenspaces to the expected composed embedding. Therefore the
remaining weight-one CM supplier is no longer "construct an embedding line."
It is now specifically:

1. assign the correct Hodge type \((1,0)\) or \((0,1)\) to the already
   constructed canonical eigenspace from the sign row;
2. package the family as the selected complete Hodge decomposition;
3. prove polarizability and realize it as \(H^1(B(v),\mathbf Q)\).

The local definition \`canonicalEigenlineRealization\` packages the proved
linear eigenspaces once the sign-compatible Hodge-type assignment is supplied.

## 4c. Canonical sign-labelled eigenlines are local

The canonical Galois eigenline supplier can now attach the sign profile
definitionally:

\[
v(\sigma)=+1\mapsto (1,0),\qquad
v(\sigma)=-1\mapsto (0,1).
\]

The declaration
\`CMGaloisEigenlines.canonicalTypedEigenlineRealization\` packages the
already-constructed one-dimensional eigenspaces with these labels. Four
balanced rows therefore give the formal all-coordinate two/two type count on
the canonical eigenspaces.

This removes "assign the labels" as an implementation gap. It does **not**
prove that the labelled decomposition satisfies the semantic axioms of the
manuscript's rational Hodge structure. That semantic Hodge realization remains
an explicit theorem boundary.

## 4d. Trace-form polarization algebra is local up to positivity

The local module
\`GRWTSK/AlgebraicGeometry/Hodge/CMTracePolarization.lean\` defines

\[
\psi_\xi(x,y)=
\operatorname{Tr}_{E/\mathbf Q}\!\bigl(\xi x c(y)\bigr)
\]

for a Galois CM number field. If

\[
\xi\neq0,\qquad c(\xi)=-\xi,
\]

the source proves:

1. field trace is invariant under the canonical CM conjugation;
2. \(\psi_\xi(y,x)=-\psi_\xi(x,y)\);
3. \(\psi_\xi(x,x)=0\);
4. the pairing is nondegenerate in both arguments.

The proof of nondegeneracy uses the nondegenerate field trace form and
bijectivity of CM conjugation.

Mathlib proves CM complex conjugation is nontrivial, and the local source now
transports that fact to the rationally restricted Galois conjugation. Hence a
nonfixed element exists unconditionally in every CM number field, and the
module constructs a nonzero anti-invariant trace datum without any manuscript
premise.

The same module constructs the anti-invariant candidate from a nonfixed
element:
\[
\xi=x-c(x),\qquad c(\xi)=-\xi.
\]
This removes both nontriviality and anti-invariance as special external
constructions, but does not impose the manuscript's simultaneous required sign
of \(\operatorname{Im}\tau(\xi)\)
at the archimedean places.

What remains external from the manuscript's polarization paragraph is exactly:

- choose \(\xi\) with the prescribed archimedean sign at each conjugate pair;
- prove \(i\psi_\xi(u,\bar u)>0\) on the selected \((1,0)\) part;
- scale to an integral lattice;
- apply the Riemann criterion to obtain \(B(v)\) and
  \(U(v)=H^1(B(v),\mathbf Q)\).

Thus alternating/nondegenerate trace-form algebra is no longer bundled with
archimedean positivity.

## 4e. Canonical eigenspaces form a complete internal direct sum

The Galois evaluation equivalence also supplies explicit coordinate projectors.
Transporting the standard coordinate projections back to
\(E\otimes_k E\), the source proves:

\[
p_\sigma(U_\sigma)=U_\sigma,
\qquad
p_\sigma(U_\tau)=0\quad(\sigma\neq\tau),
\qquad
\sum_\sigma p_\sigma=\mathrm{id}.
\]

Therefore the canonical embedding-character eigenspaces form a genuine
\`DirectSum.IsInternal\` decomposition.

The declaration
\`CMGaloisEigenlines.canonicalTypedEigenspaceDecomposition\`
packages this complete direct sum together with the formal sign-derived
weight-one type labels.

So completeness of the embedding-line decomposition is no longer an external
input. The remaining Hodge issue is semantic: prove that this labelled direct
sum is the intended rational weight-one Hodge structure and then polarize it.

## 4f. Coordinate positivity from a sign-controlled xi

The local file
\`GRWTSK/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean\`
packages the exact manuscript sign condition as

\[
0<-v(\sigma)\operatorname{Im}\sigma(\xi)
\]

for every Galois embedding label. Under that hypothesis it defines

\[
Q_\xi(z)=
\sum_\sigma
\bigl(-v(\sigma)\operatorname{Im}\sigma(\xi)\bigr)
|z_\sigma|^2
\]

and proves

\[
z\neq0\Longrightarrow Q_\xi(z)>0.
\]

Thus the finite positive-definiteness calculation is now local. What remains
external is:

1. construct a single \(\xi\) satisfying the required simultaneous
   archimedean sign profile;
2. identify \(Q_\xi\) with the complexified Hodge form
   \(i\psi_\xi(u,\bar u)\) on the selected \((1,0)\) part;
3. obtain an integral lattice and apply the Riemann criterion.

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

The finite-dimensional last mile is now present as source in
`GRWTSK/AlgebraicGeometry/Hodge/DegreeOneSlope.lean`. Its theorem
`pureType_of_zero_or_one_slope` starts only after the upstream arithmetic
argument has supplied the Hodge/Newton dimension equality. It remains
SOURCE_DRAFT / NOT_RUN and therefore supplies no filtered-Frobenius theorem by
itself.

## 5a. Complementary-projector equality supplier

The projected slope argument contains one finite numerical step that can be
separated from crystalline geometry. If a projector and its complement satisfy

\[
t_H(P)\le t_N(P),\qquad
t_H(P^\perp)\le t_N(P^\perp),
\]

and both Hodge and Newton numbers are additive while the total Hodge and Newton
numbers are equal, then both component inequalities are equalities.

The local source
\`GRWTSK/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean\`
formalizes that arithmetic implication and composes it with
\`DegreeOneSlope\`.

The still-open upstream obligations are the actual filtered-Frobenius object,
projector/complement construction, filtration preservation, Frobenius
commutation, and the weak-admissibility inequalities. The local finite theorem
does not manufacture any of those inputs.

## 5b. Local filtration splitting removes Hodge additivity as a premise

The local module
\`GRWTSK/LinearAlgebra/FilteredProjectorSplit.lean\` now proves a further
piece independently of the manuscript.

Given an idempotent linear projector \(p\) preserving the selected filtration
subspace \(F^1\), set

\[
F^1_p=F^1\cap\operatorname{im}p,\qquad
F^1_{1-p}=F^1\cap\operatorname{im}(1-p).
\]

The source proves that \(1-p\) also preserves \(F^1\), that the two filtered
pieces are disjoint, and that

\[
F^1_p\oplus F^1_{1-p}=F^1.
\]

Consequently,

\[
\dim F^1_p+\dim F^1_{1-p}=\dim F^1.
\]

Thus the complementary weak-admissibility bridge no longer needs Hodge
additivity as an external premise. What remains external is the actual
filtered-Frobenius construction, Frobenius commutation, the weak-admissibility
inequalities, Newton additivity, and total Hodge/Newton equality.

## 5c. Projector commutation automatically passes to the complement

The local filtered-projector source now also carries a linear Frobenius
operator \(\varphi\) and the single commutation hypothesis

\[
p\varphi=\varphi p.
\]

It proves automatically

\[
(1-p)\varphi=\varphi(1-p),
\]

and that both \(\operatorname{im}p\) and
\(\operatorname{im}(1-p)\) are Frobenius-stable.

Therefore the manuscript need only supply the actual projector and the
commutation of \(p\) with Frobenius. Complement commutation and projected-range
stability are no longer separate external assumptions.

An additional optional theorem shows stability of the filtered intersections
if the ambient filtration itself is Frobenius-stable. That stronger hypothesis
is not required by the filtered-\(\varphi\)-module argument and is not assumed
by the bridge.

## 5c. CM sign-to-slope arithmetic

The manuscript's equation \`eq:cm-sign-to-hodge-type\` contains the numerical
relations

\[
\nu_\iota(\sigma e)=-\frac32v(g),
\qquad
t=\frac12-\frac13\nu_\iota(\sigma e).
\]

The local module
\`GRWTSK/AlgebraicGeometry/Hodge/CMTypeSlope.lean\`
now proves the arithmetic consequence

\[
t=\frac{1+v(g)}2,
\]

hence \(t=1\) for positive sign and \(t=0\) for negative sign.

This discharges only the rational arithmetic. The valuation identity itself,
the active Hecke character, and the Frobenius-slope theorem remain exact
external premises.

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

The local premise-preserving reflection adapter is now present in
`GRWTSK/NumberTheory/Zeta/Riemann/ExternalSevenEighthsBand.lean`. It defines
`SevenEighthsZeroFree` and proves that every local `NontrivialZetaZero` lies in
`1/8 <= Re(s) <= 7/8`. This does not import or assert the external theorem; it
only identifies the exact local consequence once that premise is admitted.
The file remains SOURCE_DRAFT / NOT_RUN.

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


## Toolchain boundary

The pinned external formal source and the local repository do not currently
share a toolchain:

~~~text
openai/math:
  Lean 4.34.1
  mathlib d13f23b723b8a846827a245b89c10fc7d3f11612

grwtsk/math:
  Lean 4.33.0
  mathlib db584cd6d46c92f209a44c0f1c829460d327499d
~~~

Therefore source presence is not a replay receipt. External theorem admission
requires either a local port to the GRWTSK toolchain or an explicitly accepted
cross-toolchain verification policy. The current bridge uses local restatements
or premise-preserving adapters where feasible and records all of them as
NOT_RUN.
