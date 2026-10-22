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

The same source also proves that each embedded anti-invariant value is purely
imaginary and that multiplication by the formal Weil factor
\(v(\sigma)i\) is exactly the positive real coefficient. Consequently its
coordinate Weil form is literally the complex embedding of \(Q_\xi\).

Thus the finite positive-definiteness calculation and the internal coordinate
Weil-factor algebra are now local. What remains external is:

1. construct a single \(\xi\) satisfying the required simultaneous
   archimedean sign profile;
2. identify the local coordinate Weil form with the base-changed rational
   trace pairing under the actual Hodge conjugation/Weil operator;
3. obtain an integral lattice and apply the Riemann criterion.

## 4e. Finite archimedean weak approximation is local

The weak-approximation step itself is now source-local.

For a totally real number field \(F\), choose a rational basis and order all
real embeddings. The real embedding matrix has nonzero determinant by the
field discriminant. Hence its transpose is a real linear equivalence. Since

\[
\mathbf Q^n\subset\mathbf R^n
\]

is dense, the diagonal map

\[
F\longrightarrow\mathbf R^n,\qquad
f\longmapsto(\tau_i(f))_i
\]

has dense range.

The local theorem
\`TotallyRealSignApproximation.exists_canonicalRealEmbeddingVector_realizesSigns\`
therefore proves that every finite \(\{\pm1\}\)-orthant contains an element
of \(F\).

On the CM side, an anti-invariant seed has nonzero imaginary value at every
embedding. Its imaginary signs form an odd CM row. Multiplying that row by the
target odd CM type gives an **even** rescaling sign row, constant on
\(\{\sigma,c\sigma\}\).

The source now formalizes

\[
\text{target odd sign}
+\text{seed odd imaginary sign}
\longrightarrow
\text{even real-rescaling sign}.
\]

A new \`RealRescalingInterface\` records only the remaining CM-specific
identification between representatives of those conjugate pairs and the real
embeddings of a totally real fixed-field model. Given this interface, the
totally-real density theorem constructs the fixed rescaling factor and hence
a \`SignControlledXi\`.

Thus generic weak approximation is no longer an external Hodge premise.
The unresolved step is canonical instantiation of that interface with
\(F=E^+\), followed by identification of the coordinate positive energy with
the actual Weil-twisted trace pairing, lattice integrality, and the Riemann
criterion.

## 4g. Atomic switch pairing combinatorics

The finite combinatorial core of the manuscript switch reduction is now
represented in
\`GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean\`.

For one column of two sign matrices, let \(x_i,y_i\in\{\pm1\}\). If

\[
\sum_i x_i=\sum_i y_i,
\]

then the numbers of mismatches

\[
(x_i,y_i)=(+1,-1)
\quad\text{and}\quad
(x_i,y_i)=(-1,+1)
\]

are equal. The local source proves that count equality and constructs an
explicit finite equivalence between the two mismatch sets:

~~~text
mismatch_card_eq_of_sum_eq
mismatchPairing
~~~

It also defines the atomic two-row column switch and proves:

~~~text
sum_switchPair
switchPair_corrects_mismatch_pair
~~~

so one paired opposite mismatch can be corrected without changing the column
sum.

This is the exact one-column finite lemma used in the manuscript argument that
successive column corrections connect two balanced lists by elementary
two-row switches. The local source does not yet package the full multi-column
finite switch sequence, and it makes no Hodge, scalar-descent, or algebraicity
claim.

Verification remains \`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED\`.

## 4h. Conjugate-paired row switches preserve CM oddness

The one-column pairing lemma now feeds a stronger local operation in
\`CMFourFactorSwitchCombinatorics.lean\`.

For an odd sign matrix \(x_i(g)\), a selected column \(g\), and rows \(i,j\),
the source defines a paired switch that swaps rows \(i,j\) at both \(g\) and
its conjugate \(cg\).

Because

\[
x_i(cg)=-x_i(g),
\]

using the same row transposition at both columns is exactly the manuscript's
"opposite swap at the conjugate coordinate."

The local source proves:

~~~text
switchConjugatePair_odd
sum_switchConjugatePair
switchConjugatePair_isSign
switchConjugatePair_corrects_selected
switchConjugatePair_corrects_conjugate
switchConjugatePair_preserves_other_column
~~~

Thus one atomic correction now has all invariants required for iteration:

- oddness is preserved;
- all entries remain \(\pm1\);
- every column sum is preserved;
- the selected mismatch pair is corrected at \(g\);
- its conjugate entries are simultaneously corrected at \(cg\);
- every unrelated column is pointwise unchanged.

The remaining finite-combinatorial frontier is now only to iterate these
paired corrections over representatives of conjugate column pairs and prove
termination at the target matrix.

No Hodge, tensor-descent, or algebraicity statement is inferred from this
operation.

Verification remains \`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED\`.

## 4i. A decreasing mismatch measure for switch iteration

The conjugate-paired operation now carries an explicit well-founded measure.

For one column, define

\[
m(x,y)=\#\{i:x_i\neq y_i\}.
\]

The source proves

~~~text
columnMismatchCount_switchPair_lt
columnMismatchCount_switchConjugatePair_lt
~~~

for every paired opposite mismatch. Thus each atomic correction strictly
decreases the mismatch count at the selected column.

It also proves

~~~text
columnMismatchCount_switchConjugatePair_eq_of_ne
~~~

so every unrelated column retains exactly the same mismatch count. This is the
key invariant needed to correct conjugate-column representatives sequentially
without undoing previous columns.

The remaining combinatorial obligation is therefore a finite induction:
while the selected column has nonzero mismatch count, use equal column sums to
obtain an opposite mismatch pair and apply the decreasing step; then iterate
over the finite set of conjugate-pair representatives.

Verification remains \`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED\`.

## 4j. Finite normalization of one conjugate column pair

The inner switch recursion is now represented by

~~~text
PairedColumnReach
exists_pairedColumnReach_corrects
~~~

in \`CMFourFactorSwitchCombinatorics.lean\`.

For one selected column \(g\), assuming the current and target matrices are
odd, \(\pm1\)-valued, and have the same column sum, the source uses strong
induction on the mismatch count to obtain a finite chain of conjugate-paired
two-row switches ending at a matrix \(z\) with

\[
z_i(g)=y_i(g),
\qquad
z_i(cg)=y_i(cg)
\]

for every row \(i\).

The theorem also carries the invariants required by the outer induction:

- \(z\) is still odd;
- every entry is still \(\pm1\);
- every column sum is unchanged from the original matrix.

Thus the inner while-loop of the manuscript's column-correction argument has
been isolated locally.  The remaining finite combinatorial obligation is now
only the outer traversal over one representative from each conjugate column
pair.  Since each inner normalization leaves unrelated columns unchanged, that
outer step is a finite bookkeeping induction rather than a new arithmetic
argument.

Verification remains \`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED\`.

## 4k. Full finite switch connectivity

The finite switch combinatorics are now closed at source level without choosing
representatives of conjugate column pairs.

Define the global mismatch measure

\[
M(x,y)=\sum_g \#\{i:x_i(g)\neq y_i(g)\}.
\]

For odd matrices, mismatch counts at \(g\) and \(cg\) agree. A valid
conjugate-paired switch strictly decreases the selected-column mismatch count,
strictly decreases its conjugate counterpart by oddness, and leaves every
other column unchanged. Hence the global measure strictly decreases.

This yields

~~~text
matrixMismatchCount_switchConjugatePair_lt
pairedMatrixReach_of_equal_column_sums
~~~

The final theorem states that two finite odd \(\pm1\)-valued sign matrices with
the same sum in every column are connected by a finite sequence of elementary
conjugate-paired two-row switches.

This closes the purely combinatorial switch-connectivity obligation from the
manuscript reduction. What remains on the four-factor path is no longer a
finite sign rearrangement problem: it is the geometric construction of the
switch-line tensor/correspondence and its algebraic-cycle realization.

Verification remains \`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED\`.

## 4l. Geometric suppliers for finite switch chains

The combinatorial switch chain is now consumed by
\`GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean\`.

The remaining geometry is split into three explicit suppliers:

~~~text
IdentityTransitionSupplier
AtomicSwitchTransitionSupplier
TransitionCompositionSupplier
~~~

Their intended manuscript meanings are:

- identity transitions come from the unchanged two-factor classes
  \(U(v)_1\otimes U(v)_c\);
- an atomic switch transition comes from the four-factor switch class together
  with unchanged-row pair classes;
- composition is the pullback/cup-product/pushforward operation of
  \`eq:transition-composition\`, including the required nonvanishing pairing.

The local theorem

~~~text
transitionOfReach
~~~

proves formally that any finite \`PairedMatrixReach\` chain assembles to one
global algebraic-transition witness once those three suppliers are admitted.

Combining this with the already-local finite connectivity theorem gives

~~~text
transitionOfEqualColumnSums
~~~

so the remaining switch-reduction boundary is no longer combinatorial.  It is
exactly the geometric realization of an elementary switch and the geometric
composition law for consecutive transition tensors.

No local cycle/cohomology implementation is invented; the witnesses remain
opaque until an appropriate geometric API or imported theorem is available.

Verification remains \`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED\`.

## 4m. Nonzero scalar recovery in transition composition

The manuscript composition formula has now been split into its geometric and
linear-algebraic parts.

Abstractly, suppose \(Z\subseteq T\) is the subspace of algebraic classes and
the geometric composition produces

\[
u=\lambda\,t_{ae}\in Z,
\qquad
\lambda\neq0.
\]

Then \(t_{ae}\in Z\) follows purely by multiplying by \(\lambda^{-1}\).  This
elementary step is now local as

~~~text
mem_of_nonzero_smul_mem
NonzeroScalarCompositionData.endpoint_mem
~~~

in \`CMFourFactorSwitchGeometry.lean\`.

Accordingly, the external content of
\`eq:transition-composition\` is narrowed to two independent facts:

1. the pullback/cup-product/pushforward construction really produces the stated
   scalar multiple of the endpoint tensor;
2. the scalar
   \[
   \lambda=(-1)^{p(p-1)/2}\prod_i q_i
   \]
   is nonzero, equivalently each \(q_i\neq0\).

The manuscript proves the second point by identifying the two middle embedding
lines by complex conjugation and invoking Hodge--Riemann positivity for an
ample class.  That geometric positivity statement is not yet local at this
scope.

Thus nonzero-scalar cancellation is no longer part of the external
composition premise.

Verification remains \`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED\`.

## 4n. Middle-pairing nonvanishing after positivity identification

The scalar obstruction in the transition-composition formula is now split one
step further.

The local source introduces

~~~text
PositiveConjugatePairing
MiddlePairingNonvanishingData
~~~

and proves

~~~text
PositiveConjugatePairing.pairing_conjugate_ne_zero
PositiveConjugatePairing.pairing_scaled_conjugate_ne_zero
MiddlePairingNonvanishingData.pairing_ne_zero
product_middlePairing_ne_zero
~~~

The abstract implication is:

\[
\langle \beta,\overline{\beta}\rangle
=
E(\beta)>0,
\qquad
\gamma=c\,\overline{\beta},
\quad c\neq0
\]

implies

\[
q=\langle\beta,\gamma\rangle\neq0.
\]

A finite product of such \(q_i\)'s is then nonzero by ordinary field algebra.

This does **not** identify the manuscript's geometric pairing

\[
q_i=\int_{B(b_i)}
\beta_i\wedge\gamma_i\wedge\ell_i^{s-1}
\]

with the earlier local CM trace polarization.  That would require an actual
ample-class Hodge--Riemann comparison theorem at the cohomological level, which
the current repository does not have.

Accordingly, the remaining \(q_i\)-boundary is now only geometric:

1. identify \(\gamma_i\) as a nonzero scalar multiple of the conjugate partner
   of \(\beta_i\);
2. identify the ample-class integral pairing with a positive conjugate pairing.

Once those two identifications are supplied, \(q_i\neq0\), the product
\(\prod_i q_i\neq0\), and the scalar-cancellation endpoint are all local.

Verification remains \`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED\`.

## 4o. Scalar-conjugated middle lines are locally proportional in the canonical model

The manuscript's statement that the second middle vector is a nonzero scalar
multiple of the conjugate of the first has a purely one-dimensional
linear-algebra component.  That component is now local.

\`CMEmbeddingTransport.lean\` proves:

~~~text
scalarConjugate_symm_apply
scalarConjugate_ne_zero
exists_ne_zero_smul_scalarConjugate_eq
~~~

The first two statements show that scalar conjugation on the canonical tensor
model is invertible and preserves nonzero vectors.  The final theorem combines
the local embedding-line transport law with the already-proved
one-dimensionality of canonical Galois eigenspaces.

Thus, if

\[
\beta\in L_\tau,\qquad
\gamma\in L_{\sigma\tau},
\qquad
\beta,\gamma\neq0,
\]

then locally

\[
\gamma=c\,\sigma(\beta)
\]

for some nonzero scalar \(c\).

The geometric switch module exposes the same conclusion through

~~~text
CanonicalTransportedMiddleLineData.exists_scale
~~~

What remains external is no longer the one-dimensional proportionality
argument itself.  The remaining comparison is geometric: identify the actual
cohomological embedding lines in \(H^1(B(v))\) and their scalar conjugation
with these canonical tensor-model eigenspaces.

After that comparison, the only independent input needed for \(q_i\neq0\) is
the ample-class Hodge--Riemann positivity identification.

Verification remains \`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED\`.

## 4p. Exact cohomology-to-canonical line comparison adapter

The remaining comparison between actual cohomological middle lines and the
canonical tensor model is now represented explicitly by

~~~text
CohomologyCanonicalLineComparison
~~~

in \`CMFourFactorSwitchGeometry.lean\`.

It asks for exactly three pieces of geometric comparison data:

1. an \(E\)-linear equivalence from the actual cohomological realization to
   the canonical tensor model \(E\otimes_k E\);
2. compatibility of actual scalar conjugation with the local
   \`scalarConjugate\` operation;
3. membership of the selected source and target cohomology vectors in the
   corresponding canonical embedding eigenspaces under that equivalence.

From those premises, the local theorem

~~~text
CohomologyCanonicalLineComparison.exists_scale
~~~

pulls back the already-local one-dimensional eigenline theorem and proves

\[
\gamma=c\,\overline{\beta},
\qquad c\neq0,
\]

in the actual cohomological realization.

Thus the scalar-proportionality part of the \(q_i\neq0\) argument no longer
needs any additional manuscript theorem beyond the comparison adapter itself.

The remaining \(q_i\)-specific geometric input is now only the ample-class
Hodge--Riemann pairing comparison:

\[
\int \beta\wedge\gamma\wedge\ell^{s-1}
\]

must be identified with a positive conjugate pairing.  Once that comparison is
supplied, the nonvanishing of each \(q_i\), of their product, and the final
nonzero-scalar cancellation are all local source consequences.

Verification remains \`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED\`.

## 4q. Formal closure of the middle-pairing scalar obstruction

The q_i-nonvanishing chain is now closed formally once the geometric ample-class comparison is supplied.

The source introduces:

~~~text
AmpleClassMiddlePairingComparison
~~~

This records a positive conjugate pairing, a nonzero beta, a nonzero scalar relation gamma = c * conjugate(beta), and identification of the geometric middle scalar q with that pairing.

From this package,

~~~text
AmpleClassMiddlePairingComparison.q_ne_zero
~~~

proves q != 0.

The source also proves

~~~text
transitionCompositionScalar_ne_zero
~~~

for the signed product scalar in the transition formula. Hence pointwise q_i != 0 implies the full signed product scalar is nonzero.

Combined with the previously local nonzero-scalar recovery theorem, every formal step after the geometric Hodge-Riemann comparison is now local.

The remaining q_i-specific premise is exactly one geometric construction: produce an AmpleClassMiddlePairingComparison from the actual cup-product/integration pairing and an ample class on B(b_i).

No claim is made that the earlier CM trace polarization is already that cohomological ample-class pairing.

Verification remains SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

## 4r. Exact Hodge-Riemann supplier for the middle pairing

The q_i-specific geometric boundary is now isolated as one supplier:

~~~text
AmpleClassHodgeRiemannSupplier
~~~

Its input is `GeometricMiddlePairingData`, which already records the cup/integration pairing, the selected beta and gamma vectors, the nonzero scalar relation between gamma and the conjugate partner of beta, and the scalar q defined by that pairing.

The supplier itself contributes only a real energy and the two Hodge-Riemann facts needed locally:

- pairing with the conjugate partner is the complexification of that energy;
- the energy is strictly positive on nonzero vectors.

From this, the source constructs a `PositiveConjugatePairing`, then an `AmpleClassMiddlePairingComparison`, and finally proves

~~~text
AmpleClassHodgeRiemannSupplier.q_ne_zero
~~~

Hence the remaining manuscript input for the middle scalar is no longer "q_i is nonzero." It is exactly the classical Hodge-Riemann positivity statement for the chosen ample class.

After that supplier is available, q_i nonvanishing, finite-product nonvanishing, signed transition-scalar nonvanishing, and recovery of the endpoint tensor from its nonzero scalar multiple are all local consequences.

This supplier makes no algebraicity claim and assumes no compatibility between the ample class and E.

Verification remains SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

## 4s. Exact row support of one atomic switch

One elementary conjugate-paired switch now has an explicit row-support theorem in `CMFourFactorSwitchCombinatorics.lean`.

The source proves:

~~~text
switchConjugatePair_row_eq_of_ne
switchConjugatePair_changedRow_subset
unchangedRow_eq
~~~

Only the two selected rows can change. Every other row has exactly the same old and new sign function.

This matches the geometric decomposition used in the manuscript. One atomic transition consists of:

- the old and new factors for the two changed rows, giving the genuinely four-factor switched core;
- one unchanged old/new pair for every other row.

Thus the independent algebraicity obstruction can now be isolated more sharply. The four-factor theorem only needs to supply the changed-row core. The unchanged rows require a separate two-factor identity-line realization, not another four-factor theorem.

No algebraicity statement is inferred from the row-support calculation itself.

Verification remains SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

## 4t. Two-factor identity-line realization is independent of the switch theorem

The unchanged-row geometry has now been split from the four-factor algebraicity theorem in `CMFourFactorSwitchGeometry.lean`.

The source introduces:

~~~text
TwoFactorIdentityWitness
TwoFactorIdentitySupplier
IdentityTensorAssemblySupplier
identityTransitionSupplierOfTwoFactor
~~~

For one unchanged row, the intended geometric object is the degree-one identity/diagonal correspondence on the same CM factor. In the manuscript this supplies the nonzero algebraic line (U(v)_1\otimes U(v)_c).

A separate assembly supplier records only the routine operation of pulling those per-row classes to distinct old/new slots and multiplying them.

The local function `identityTransitionSupplierOfTwoFactor` proves that these two ingredients suffice to build the whole-list `IdentityTransitionSupplier`.

This matters epistemically: unchanged rows do not consume the independent four-factor switch theorem. The remaining genuinely four-factor obligation is confined to the two changed rows of an atomic switch.

Verification remains SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

## 4u. Atomic transition split into switched core and unchanged identities

The generic atomic-switch supplier is now decomposed explicitly in `CMFourFactorSwitchGeometry.lean`.

The source introduces:

~~~text
FourFactorSwitchCoreWitness
FourFactorSwitchCoreSupplier
AtomicTransitionAssemblySupplier
atomicSwitchTransitionSupplierOfCore
~~~

The dependency is now:

[
	ext{four-factor switched core}
+
	ext{unchanged-row two-factor identities}
+
	ext{slotwise product assembly}
Longrightarrow
	ext{full atomic transition}.
]

The first term is the genuinely independent theorem. It concerns only the old/new factors for the two rows changed by the atomic switch.

The second term is the separate diagonal/identity-line geometry for rows proved combinatorially unchanged.

The third term is routine geometric bookkeeping: pull all classes to distinct slots and multiply.

Therefore the exact switch-specific external algebraicity boundary is now `FourFactorSwitchCoreSupplier`. Neither the finite switch combinatorics, all-conjugate type balance, rational descent, nor the unchanged-row identity tensors can discharge it.

This source edit also repairs the declaration order so `IdentityTransitionSupplier` is declared before the helper that constructs it.

Verification remains SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

## 4v. Switched-core algebraicity is unified with the existing four-factor supplier

The atomic switched-core interface no longer introduces a second independent algebraicity theorem.

`CMFourFactorSwitchGeometry.lean` now imports the existing
`CMFourFactorAlgebraicity` boundary and introduces:

~~~text
SwitchCoreRationalWitnessPackage
SwitchCoreRationalWitnessAdapter
AlgebraicCycleToSwitchCoreAdapter
fourFactorSwitchCoreSupplierOfAlgebraicity
~~~

The dependency is now:

[
	ext{atomic switched configuration}
	o
	ext{rational four-factor Hodge witness}
	o
	ext{FourFactorAlgebraicitySupplier}
	o
	ext{algebraic-cycle witness}
	o
	ext{opaque switched-core witness}.
]

Only `FourFactorAlgebraicitySupplier` carries algebraicity content.

The first adapter identifies the two-row atomic switch with the corresponding rational four-factor Hodge witness. The second only repackages the resulting algebraic-cycle witness into the transition layer's opaque core type.

Thus the repository has one independent four-factor algebraicity boundary, not two.

Verification remains SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

## 4w. One atomic switch canonically yields the four-factor balance relation

The non-algebraicity identification path has advanced one step further.

`CMFourFactorSwitchCombinatorics.lean` now defines

~~~text
oddSignRowOfMatrix
switchConjugatePair_selectedRows_balance
atomicSwitch_fourBalance
~~~

For one selected opposite-mismatch pair, the two old rows and the corresponding two new rows satisfy the exact pointwise relation

[
v_1+v_2=v_3+v_4.
]

Thus an atomic switch now supplies the `FourBalance` input to the existing four-factor Hodge machinery locally.

The remaining `SwitchCoreRationalWitnessAdapter` obligation is therefore narrower: it no longer has to prove the sign relation. It only has to identify the actual switched four-factor tensor/subspace data and provide the rational witness consumed by `FourFactorAlgebraicitySupplier`.

No tensor rationality, descent, or algebraicity is inferred from the balance theorem itself.

Verification remains SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

## 4x. Atomic switch now canonically supplies the all-conjugate (2,2) profile

The atomic-switch identification path now owns all sign and Hodge-count bookkeeping locally.

`CMFourFactorSwitchGeometry.lean` introduces

~~~text
AtomicSwitchFourFactorProfile
canonicalAtomicSwitchFourFactorProfile
~~~

For one opposite-mismatch pair, this package canonically records:

- the two selected old rows;
- the two corresponding new rows;
- their exact `FourBalance` relation;
- the derived `AllConjugatesType22` certificate.

Therefore `SwitchCoreRationalWitnessAdapter` no longer needs to establish either balance or the all-conjugate ((2,2)) count.

Its remaining obligation is purely tensor-level: attach the actual algebraic-number tensor, the complex Hodge subspace, and scalar-conjugate stability needed to form `FourFactorTensorDescentData`, after which rational descent is already local.

No rationality or algebraicity is inferred from the canonical profile itself.

Verification remains SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

## 4y. Atomic tensor data now descends to the rational four-factor witness locally

The remaining identification adapter has been reduced to raw tensor-level input.

`CMFourFactorSwitchGeometry.lean` now introduces:

~~~text
AtomicSwitchTensorData
AtomicSwitchTensorData.toDescentData
AtomicSwitchTensorData.toRationalPackage
~~~

For a canonical atomic-switch four-row profile, the only supplied data are now:

- the ambient rational vector space;
- the complex Hodge subspace;
- the algebraic-number tensor;
- membership of every scalar conjugate of that tensor in the Hodge subspace.

The local canonical profile supplies the all-conjugate ((2,2)) certificate automatically. `toDescentData` inserts that certificate into `FourFactorTensorDescentData`, and `toRationalPackage` invokes the existing local trace-descent theorem to construct the exact rational four-factor Hodge witness consumed by `FourFactorAlgebraicitySupplier`.

Therefore the remaining mathematical bridge before the independent algebraicity theorem is now precisely scalar-conjugate stability of the actual switched tensor.

A structural interface issue is also exposed: the generic `AtomicSwitchTransitionSupplier` currently does not carry the source sign-valuedness, oddness, or fixed-point-free conjugate-coordinate proofs needed to instantiate this canonical profile automatically. That invariant plumbing is the next local interface frontier.

Verification remains SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

## 4z. Switch invariants are now carried through the geometric path

The structural interface gap identified in the previous increment is now represented locally.

`CMFourFactorSwitchGeometry.lean` introduces:

~~~text
InvariantAtomicSwitchTransitionSupplier
InvariantSwitchGeometrySupplier
transitionOfReachWithInvariants
transitionOfEqualColumnSumsWithInvariants
~~~

The atomic supplier now receives the exact hypotheses needed by the canonical four-row profile:

- sign-valuedness of the current matrix;
- oddness under the chosen conjugation;
- the selected conjugate coordinate;
- a proof that the coordinate is not fixed by conjugation.

The finite reachability assembler propagates sign-valuedness and oddness through every switch using the local preservation theorems. At each nontrivial step, fixed-point-freeness is derived from oddness plus the selected mismatch row via `conj_ne_self_of_row`; it is not added as a new global premise.

Consequently, equal column sums can now feed an invariant-aware geometric supplier directly. The canonical atomic `FourBalance` and all-conjugate ((2,2)) profile can be instantiated at every switch step without reconstructing hidden hypotheses.

The remaining non-algebraicity frontier is now tensor-level: provide the actual switched tensor, Hodge subspace, and scalar-conjugate stability for each invariant-aware atomic step.

Verification remains SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

## 4aa. End-to-end atomic switch composition from raw tensor stability

The invariant-aware atomic switch path is now composed end to end.

`CMFourFactorSwitchGeometry.lean` adds:

~~~text
InvariantAtomicTensorDataSupplier
invariantAtomicSwitchTransitionSupplierOfTensorData
~~~

For each atomic switch, the only switch-specific tensor input is now:

- the actual algebraic-number tensor;
- the actual complex Hodge subspace;
- membership of every scalar conjugate of that tensor in the Hodge subspace.

From that data, local source performs the rest:

1. construct the canonical four old/new sign rows;
2. prove `FourBalance`;
3. derive the all-conjugate `AllConjugatesType22` certificate;
4. build `FourFactorTensorDescentData`;
5. apply local trace descent to obtain the rational four-factor Hodge witness;
6. invoke the single independent `FourFactorAlgebraicitySupplier`;
7. package the algebraic-cycle output as the switched four-factor core;
8. add unchanged-row two-factor identity classes;
9. assemble the full atomic transition.

Thus the remaining pre-algebraicity switch-specific mathematical bridge is now exactly scalar-conjugate stability of the actual switched tensor. It is represented by `InvariantAtomicTensorDataSupplier`.

Verification remains SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

## 4ab. Scalar-conjugate stability is reduced to orbit-span containment

The remaining scalar-stability premise has been sharpened again.

`CMFourFactorSwitchGeometry.lean` now defines

~~~text
scalarConjugateOrbitSpan
scalarConjugate_mem_orbitSpan
AtomicSwitchOrbitHodgeData
AtomicSwitchOrbitHodgeData.toTensorData
~~~

For an actual switched algebraic-number tensor (t), let (O(t)) be the complex span of all coefficient-field conjugates of (t).

Every scalar conjugate belongs to (O(t)) by construction. Therefore the descent hypothesis

[
sigma(t)in P quad	ext{for every scalar automorphism }sigma
]

is now reduced to one subspace inclusion

[
O(t)subseteq P,
]

where (P) is the actual complex ((2,2)) Hodge subspace.

Thus the remaining geometric theorem is no longer a pointwise family of scalar-conjugate membership assertions. It is the more structural statement that the scalar-Galois orbit span of the switched monomial tensor lies inside the actual all-conjugate ((2,2)) Hodge subspace.

Once that inclusion is supplied, `toTensorData` recovers the pointwise stability hypothesis automatically, and the previously-local descent/algebraicity composition applies unchanged.

Verification remains SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

## 4ac. Orbit-span containment splits into monomial transport and Hodge inclusion

The scalar-orbit frontier has now been decomposed one step further.

`CMFourFactorSwitchGeometry.lean` adds:

~~~text
ScalarConjugateMonomialLineData
ScalarConjugateMonomialLineData.orbitSpan_le_hodge
AtomicSwitchMonomialTransportData
AtomicSwitchMonomialTransportData.toOrbitHodgeData
~~~

For each scalar automorphism (sigma), introduce the transported four-factor monomial line (L_sigma).

The local theorem proves

[
left(
sigma(t)in L_sigma orallsigma
ight)
land
left(
L_sigmasubseteq P orallsigma
ight)
Longrightarrow
O(t)subseteq P,
]

where (O(t)) is the scalar-Galois orbit span and (P) is the actual complex ((2,2)) Hodge subspace.

This exposes two distinct remaining bridges.

First, a multilinear transport theorem must upgrade the already-local factorwise embedding-line transport to the actual four-factor monomial tensor.

Second, the transported formal ((2,2)) monomial line must be identified with an actual Hodge line inside the cohomological realization.

Everything after those two linewise statements—orbit-span containment, pointwise scalar stability, rational descent, and invocation of the independent four-factor algebraicity supplier—is now local.

Verification remains SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

## 4ad. Four factorwise embedding-line transports are now simultaneous

The multilinear transport frontier has advanced on the canonical side.

`CMEmbeddingTransport.lean` now defines

~~~text
FourEmbeddingLineVectors
FourEmbeddingLineVectors.scalarTransport
~~~

A `FourEmbeddingLineVectors` package records four canonical embedding-line vectors and their four embedding characters. Scalar conjugation transports all four vectors and all four characters simultaneously, with membership in the transported eigenspaces proved factorwise by the existing local theorem.

Therefore the transport-specific gap is no longer four separate factor statements. The remaining theorem is exactly the multilinear assembly step:

[
(sigma v_1,sigma v_2,sigma v_3,sigma v_4)
longmapsto
sigma(v_1otimes v_2otimes v_3otimes v_4),
]

in the actual switched cohomological tensor model, together with membership in the monomial line generated by those transported factors.

This increment also repairs a definite source-order defect in `CMGaloisEigenlines.lean`: the proportionality theorem no longer forward-references `embeddingCharacter_symm` before its declaration.

The independent four-factor algebraicity theorem remains untouched.

Verification remains SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

## 4ae. Multilinear transport is reduced to one fourfold assembly equation

The remaining transport theorem is now isolated precisely.

`CMFourFactorSwitchGeometry.lean` introduces:

~~~text
FourfoldMonomialAssemblyData
FourfoldMonomialAssemblyData.transportedLine
FourfoldMonomialAssemblyData.scalarConjugate_mem_transportedLine
FourfoldMonomialAssemblyData.toScalarConjugateMonomialLineData
~~~

The four canonical embedding-line factors are already transported locally and simultaneously. The new interface asks for an actual fourfold assembly map from those factors into the complexified cohomological tensor space, together with one compatibility equation:

[
iota(sigma t)
=
operatorname{assemble}(sigma v_1,sigma v_2,sigma v_3,sigma v_4).
]

Once that equation is supplied, the scalar conjugate belongs to the transported monomial line by definition of that line as the span of the assembled transported generator.

Therefore the first linewise obligation from the previous increment is reduced to one exact multilinear naturality statement: scalar conjugation commutes with fourfold monomial assembly.

The only remaining geometric linewise statement after that is

[
L_sigmasubseteq H^{2,2},
]

identifying each transported formal monomial line with an actual ((2,2)) Hodge line.

Verification remains SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

## 4af. Hodge-line inclusion is reduced to one transported generator

The second linewise frontier has now been sharpened.

`CMFourFactorSwitchGeometry.lean` adds:

~~~text
TransportedMonomialGeneratorHodgeData
TransportedMonomialGeneratorHodgeData.transportedLine_le
FourfoldMonomialAssemblyData.toScalarConjugateMonomialLineDataOfGenerator
~~~

For each scalar automorphism (sigma), the transported monomial line is already defined as

[
L_sigma
=
operatorname{span}_{mathbf C}
left{
operatorname{assemble}
(sigma v_1,sigma v_2,sigma v_3,sigma v_4)
ight}.
]

Therefore the geometric inclusion

[
L_sigmasubseteq H^{2,2}
]

no longer needs to be supplied as a subspace theorem. It is enough to prove the single generator statement

[
operatorname{assemble}
(sigma v_1,sigma v_2,sigma v_3,sigma v_4)
in H^{2,2}.
]

The whole-line inclusion then follows locally by closure of a submodule under spans.

Thus the two remaining geometric statements are now pointwise and exact:

1. scalar conjugation commutes with fourfold assembly;
2. the assembled transported monomial generator has actual Hodge type ((2,2)).

Everything after those two statements is local.

Verification remains `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.

## 4ag. Actual H^(2,2) membership now factors through weight-one typing and the tensor-product rule

The transported-generator Hodge frontier is now separated into two standard geometric inputs.

`CMFourFactorSwitchGeometry.lean` introduces:

~~~text
FourfoldHodgeAssemblyRule
TransportedFourFactorHodgeTyping
TransportedFourFactorHodgeTyping.assembled_mem_h22
FourfoldMonomialAssemblyData.toTransportedGeneratorHodgeData
~~~

The first interface is the generic tensor-product Hodge rule. It records that assembling four actual weight-one Hodge vectors whose p- and q-indices both sum to two lands in the declared (H^{2,2}) subspace.

The second interface records actual Hodge membership of each transported factor. This is exactly where the repository must identify the existing formal sign-derived labels with genuine (H^{1,0}) or (H^{0,1}) lines in the weight-one cohomological realization.

Once those two inputs are present, the local theorem proves the assembled transported monomial generator lies in (H^{2,2}). Combined with the previous singleton-span theorem, the whole transported monomial line lies in (H^{2,2}).

Therefore the Hodge-realization gap is no longer a four-factor statement. It is reduced to:

1. actual weight-one line typing for the transported factors;
2. the standard tensor-product rule for Hodge structures.

The existing `WeightOneCMRealization` record still does not expose a complexified (H^1) line decomposition, so the first item remains genuinely external rather than being inferred from its current `complexCoordinates` field.

Verification remains `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.

## 4ah. Weight-one realization now exposes actual complexified H1 Hodge pieces

The main structural defect in the weight-one realization interface has been repaired at source level.

`CMWeightOneRiemannRealization.lean` now extends `WeightOneCMRealization` with:

~~~text
H1C
h1ComplexCoordinates
H10
H01
actualWeil
IsOfType
~~~

The actual complexified first cohomology carrier (H^1_{mathbf C}) is now explicit. A complex-linear equivalence identifies it with the already-local CM coordinate model.

The actual Hodge pieces are defined by pullback:

[
H^{1,0}
=
(	ext{coordinate }H^{1,0})^{-1},
qquad
H^{0,1}
=
(	ext{coordinate }H^{0,1})^{-1}.
]

The local source also transports the coordinate Weil operator back to (H^1_{mathbf C}) and proves

[
C|_{H^{1,0}}=+i,
qquad
C|_{H^{0,1}}=-i.
]

Finally, `WeightOneCMRealization.IsOfType` gives the actual weight-one type predicate consumed by downstream Hodge typing.

This narrows the remaining transported-factor typing premise substantially. It no longer needs to supply the actual (H^{1,0}/H^{0,1}) subspaces themselves. It only needs the comparison sending each transported canonical embedding-line vector into the corresponding actual complexified (H^1) vector and showing its coordinate image lies in the appropriate locally-defined coordinate piece.

The Riemann existence supplier remains external, and the repository still does not manufacture the actual comparison from the canonical tensor-model embedding vectors to (H^1_{mathbf C}).

Verification remains `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.

## 4ai. Canonical tensor embedding lines now transfer to actual H1 Hodge type

The weight-one comparison frontier has advanced from an opaque type-identification premise to a coordinate-preserving comparison.

`CMWeightOneRiemannRealization.lean` now defines:

~~~text
canonicalTensorComplexCoordinate
canonicalTensorComplexCoordinate_eq_zero_of_ne
CanonicalTensorActualH1Comparison
CanonicalTensorActualH1Comparison.isOfType_holomorphic
CanonicalTensorActualH1Comparison.isOfType_antiholomorphic
CanonicalTensorActualH1Comparison.isOfType_typeOfSign
~~~

For (tin Eotimes_{mathbf Q}E), the canonical complex coordinate at a Galois automorphism is obtained by the local Galois evaluation equivalence followed by the fixed complex embedding.

The local source proves that if (t) belongs to the embedding eigenspace indexed by (	au), then every canonical complex coordinate away from (	au) vanishes.

The only comparison datum then requested is a map

[
Eotimes_{mathbf Q}E
longrightarrow
H^1_{mathbf C}
]

whose actual (H^1_{mathbf C}) coordinates agree with those canonical tensor coordinates.

From that coordinate compatibility, the sign of the selected CM row determines actual Hodge type locally:

[
v(	au)=+1 Rightarrow H^{1,0},
qquad
v(	au)=-1 Rightarrow H^{0,1}.
]

Equivalently, `isOfType_typeOfSign` converts the repository's formal sign-derived label into genuine actual (H^1_{mathbf C}) Hodge membership.

Thus the remaining weight-one factor-typing bridge is now exactly the canonical-tensor-to-actual-H1 coordinate comparison. No separate Hodge-type assertion needs to be postulated.

Verification remains `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.

## 4aj. Canonical tensor to actual H1 comparison is reduced to pure tensors

The comparison premise is now strictly smaller.

`CMWeightOneRiemannRealization.lean` adds:

~~~text
canonicalTensorComplexCoordinate_tmul
WeightOneCMRealization.pureTensorCoordinate
PureTensorActualH1Comparison
PureTensorActualH1Comparison.coordinate_compatibility
PureTensorActualH1Comparison.toCanonicalComparison
~~~

The canonical coordinate of a pure tensor is proved locally:

[
operatorname{coord}_sigma(aotimes x)
=
iota(a),sigma(x),
]

where (iota:Ehookrightarrowmathbf C) is the chosen base complex embedding and (sigma(x)) is the existing field-coordinate function.

A comparison supplier therefore no longer has to prove coordinate compatibility for arbitrary elements of (Eotimes_{mathbf Q}E). It only supplies:

- a (mathbf Q)-linear map
  [
  Eotimes_{mathbf Q}E	o H^1_{mathbf C};
  ]
- the explicit coordinate formula above on pure tensors.

The theorem `PureTensorActualH1Comparison.coordinate_compatibility` extends that formula to every tensor by tensor induction. The resulting full comparison then feeds the already-local sign-to-actual-Hodge-type theorem.

This leaves a standard scalar-extension/base-change construction as the exact remaining weight-one comparison task, rather than an arbitrary Hodge comparison theorem.

Verification remains `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.

## 4ak. Tensor-to-H1 comparison is no longer an independent premise

The canonical tensor-to-actual-(H^1_{mathbf C}) comparison is now constructed locally from the strengthened weight-one realization.

`WeightOneCMRealization` now carries:

~~~text
h1ToComplex
h1ToComplex_coordinates
~~~

The rational inclusion (H^1	o H^1_{mathbf C}) is required to agree, in actual complex coordinates, with the existing rational equivalence (H^1simeq E).

From that data, the local source constructs:

~~~text
tensorBilinearToActual
canonicalTensorToActual
canonicalTensorToActual_tmul
canonicalTensorToActual_coordinates_tmul
pureTensorActualH1Comparison
canonicalTensorActualH1Comparison
~~~

The map

[
Eotimes_{mathbf Q}E	o H^1_{mathbf C}
]

is built by the tensor-product universal property from

[
(a,x)longmapsto
iota(a)cdot
igl(H^1	o H^1_{mathbf C}igr)
igl(h1Equiv^{-1}(x)igr).
]

Its pure-tensor coordinate formula is local, and arbitrary tensor compatibility follows by tensor induction.

Therefore the canonical-tensor-to-actual-H1 comparison is no longer an independent external premise. Its only nonlocal input is now part of the weight-one realization contract itself: the rational inclusion (H^1	o H^1_{mathbf C}) with the expected coordinate compatibility.

The external Riemann existence theorem remains responsible for constructing the strengthened `WeightOneCMRealization`.

Verification remains `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.

## 4al. Canonical embedding factors now acquire actual weight-one Hodge types locally

The strengthened weight-one realization is now connected back to the four-factor switch layer.

`CMFourFactorSwitchGeometry.lean` adds:

~~~text
CanonicalEmbeddingFactorActualTyping
CanonicalEmbeddingFactorActualTyping.actual_type
FourCanonicalFactorsActualTyping
FourCanonicalFactorsActualTyping.all_actual_types
~~~

For one Galois CM sign row (v), a canonical factor package records:

- a sign-controlled polarization parameter;
- a `WeightOneCMRealization`;
- one Galois character (	au);
- one canonical tensor vector in the (	au)-embedding eigenspace.

No Hodge type is supplied as an assumption. The theorem `actual_type` applies the locally constructed canonical-tensor-to-(H^1_{mathbf C}) comparison and proves that the actual vector has exactly the Hodge type determined by

[
operatorname{typeOfSign}(v(	au)).
]

The four-factor package keeps the four actual (H^1_{mathbf C}) carriers independent. This is important: four different CM sign rows can produce four different weight-one realizations, so collapsing them into one common carrier would hide a genuine dependent-type distinction.

Thus the sign-label-to-actual-(H^{1,0}/H^{0,1}) bridge is local for every individual factor.

The remaining Hodge-theoretic assembly frontier is now the standard one: construct a common fourfold cohomological tensor target from four independently realized weight-one factors and prove the tensor-product Hodge rule there.

Verification remains `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.

## 4am. Four independent actual H1 factors now have an explicit common tensor target

The four weight-one realizations no longer need to be coerced into a fictitious common carrier.

`CMFourFactorSwitchGeometry.lean` now defines:

~~~text
FourfoldActualTensor
fourfoldActualPureTensor
FourfoldActualHodgeTensorRule
~~~

For four independently realized factors (V_1,V_2,V_3,V_4), the common target is the explicit nested complex tensor product

[
((V_1otimes_{mathbf C}V_2)otimes_{mathbf C}V_3)
otimes_{mathbf C}V_4.
]

The pure fourfold tensor is correspondingly

[
((aotimes b)otimes c)otimes d.
]

The remaining structural Hodge input is now stated directly on this concrete target: if the four actual vectors have genuine weight-one Hodge types whose (p)-indices and (q)-indices both sum to two, their pure tensor lies in the declared (H^{2,2}) subspace.

Thus the previous common-carrier abstraction is no longer needed for the CM-number-field path. The remaining work is to align the four switch characters with the local balance theorem, so the existing sign-count result supplies the two bidegree equations consumed by this explicit tensor rule.

Verification remains `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.

## 4an. Switch-character alignment now closes the actual H^(2,2) type count

The explicit fourfold actual tensor target is now aligned with the local switch combinatorics.

`CMFourFactorSwitchGeometry.lean` adds:

~~~text
FourCanonicalFactorsSwitchAlignment
FourCanonicalFactorsSwitchAlignment.p_two
FourCanonicalFactorsSwitchAlignment.q_two
FourfoldActualHodgeTensorRule.canonicalPureTensor_mem_H22
~~~

For a balanced CM four-row profile and a selected Galois character (g), the alignment record imposes exactly the manuscript pattern

[
	au_1=g,qquad
	au_2=g,qquad
	au_3=c(g),qquad
	au_4=c(g).
]

The existing local `FourBalance` theorem then gives, on the actual factor labels,

[
sum_{r=1}^4 p(	au_r)=2.
]

The corresponding (q)-sum is derived locally from the sign-valued weight-one identity (q=1-p), so

[
sum_{r=1}^4 q(	au_r)=2.
]

Each factor already has genuine actual (H^{1,0}) or (H^{0,1}) membership from the strengthened weight-one realization. Therefore `canonicalPureTensor_mem_H22` feeds those four actual type proofs and the two local index equations directly into the standard fourfold Hodge tensor rule.

Thus, conditional only on the standard tensor-product Hodge rule, the canonical fourfold pure tensor for an aligned switch lies in the actual (H^{2,2}) subspace.

The remaining bridge to the earlier scalar-conjugate descent pipeline is no longer Hodge typing. It is identification of this explicit actual fourfold tensor with the switched monomial assembly used by `FourfoldMonomialAssemblyData`, together with scalar-conjugation naturality of that assembly.

Verification remains `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.

## 4ao. Actual fourfold Hodge tensors now connect to the descent monomial generator

The two tensor models are now related by an explicit comparison boundary instead of an implicit equality.

`CMFourFactorSwitchGeometry.lean` adds:

~~~text
ActualFourfoldToMonomialComparison
ActualFourfoldToMonomialComparison.mem_hodge_of_mem_H22
ActualFourfoldMonomialGeneratorIdentification
ActualFourfoldMonomialGeneratorIdentification.assembled_mem_hodge
~~~

There are genuinely two coefficient models in play:

- the explicit actual fourfold cohomology target
  [
  ((H^1_1otimes_{mathbf C}H^1_2)otimes_{mathbf C}H^1_3)
  otimes_{mathbf C}H^1_4;
  ]
- the descent-side complexified tensor space
  [
  mathbf Cotimes_{mathbf Q}V.
  ]

The new comparison interface therefore asks for a complex-linear map from the first space to the second and requires the actual (H^{2,2}) subspace to map into the descent-side Hodge subspace.

A second interface identifies the assembled switched monomial generator with the image of the explicit actual fourfold pure tensor.

Once those two inputs are supplied, the local theorem `assembled_mem_hodge` proves descent-side Hodge membership immediately from the already-local aligned (H^{2,2}) theorem.

This means the Hodge-membership branch is now fully reduced to a coefficient/change-of-realization comparison plus generator identification.

The remaining independent assembly-specific theorem is scalar-conjugation naturality of the monomial assembly. That theorem is still separate and is still needed to recover every scalar conjugate in the corresponding transported monomial line.

Verification remains `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.

## 4ap. Scalar-conjugation naturality is moved entirely to algebraic coefficients

The final assembly-naturality boundary has been sharpened again.

`CMFourFactorSwitchGeometry.lean` now introduces:

~~~text
FourfoldAlgebraicAssemblyData
FourfoldAlgebraicAssemblyEquivariance
FourfoldAlgebraicAssemblyData.toMonomialAssemblyData
~~~

The switched fourfold assembly is now modeled first over `AlgebraicNumbers`, before coefficient inclusion into (mathbf C).

This matters because scalar conjugation and factor transport then live in the same coefficient category. The only remaining naturality statement is the exact equivariance equation

[
sigmaigl(operatorname{assemble}(v_1,v_2,v_3,v_4)igr)
=
operatorname{assemble}(sigma v_1,sigma v_2,sigma v_3,sigma v_4).
]

Factorwise transport of each (v_i) is already local in `CMEmbeddingTransport`.

Once algebraic-level equivariance is supplied, `toMonomialAssemblyData` applies the existing coefficient-inclusion map and reconstructs the earlier complexified `FourfoldMonomialAssemblyData`, including its full `scalar_conjugate_eq` field.

Thus the previous mixed-coefficient scalar-conjugation premise has been reduced to a single algebraic multilinear naturality theorem.

The Hodge-membership branch remains separate: actual (H^{2,2}) membership maps to the descent Hodge subspace through the explicit comparison/identification interfaces from the previous increment.

Verification remains `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.

## 4aq. Pure-factor scalar-conjugation equivariance is now local

The arithmetic content of the final assembly-naturality theorem has been discharged on pure factors.

`CMFourFactorSwitchGeometry.lean` now defines:

~~~text
CanonicalFourfoldVectorTarget
canonicalFourfoldVectorPure
canonicalPureAlgebraicAssembly
scalarConjugate_canonicalPureAlgebraicAssembly
~~~

For four pure canonical factors

[
a_iotimes x_iin
overline{mathbf Q}otimes_{mathbf Q}overline{mathbf Q},
]

the canonical algebraic assembly is

[
(a_1a_2a_3a_4)otimes
(((x_1otimes x_2)otimes x_3)otimes x_4).
]

Scalar conjugation acts only on the leading algebraic coefficient, so the local theorem proves

[
sigma!left(
operatorname{assemble}
(a_1otimes x_1,ldots,a_4otimes x_4)
ight)
=
operatorname{assemble}
(sigma(a_1)otimes x_1,ldots,sigma(a_4)otimes x_4)
]

directly from multiplicativity of (sigma).

Therefore the remaining `FourfoldAlgebraicAssemblyEquivariance` obligation no longer contains arithmetic or CM geometry. It is the formal extension of this pure-factor identity to arbitrary tensors in each of the four slots by multilinearity / the tensor-product universal property.

Verification remains `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.

## 4ar. Fourfold multilinearity closes scalar-conjugation equivariance locally

The formal extension from pure factors to arbitrary factor tensors is now source-written.

`CMFourFactorSwitchGeometry.lean` adds:

~~~text
FourfoldMultilinearAlgebraicAssembly
FourfoldMultilinearAlgebraicAssembly.equivariant
FourfoldMultilinearAlgebraicAssembly.toAlgebraicAssemblyData
FourfoldMultilinearAlgebraicAssembly.toAssemblyEquivariance
~~~

A fourfold algebraic assembly is represented as four nested (mathbf Q)-linear maps. Its only defining compatibility is the canonical pure-factor formula proved in the previous increment.

The theorem `equivariant` then performs four nested tensor inductions and extends

[
sigma(operatorname{assemble}_{mathrm{pure}})
=
operatorname{assemble}_{mathrm{pure}}(sigma	ext{-transported factors})
]

to arbitrary tensors in all four slots.

Therefore Galois equivariance is no longer an independent mathematical premise. Once the switched assembly is identified with a fourfold (mathbf Q)-multilinear map satisfying the canonical pure-factor formula, equivariance follows locally.

The remaining assembly-side bridge is consequently narrower:

[
oxed{
	ext{geometric switched monomial assembly}
=
	ext{canonical fourfold multilinear assembly}
}
]

at the level of the chosen tensor model.

After that identification, the existing adapters recover scalar-conjugate stability and feed the already-local orbit-span, rational descent, and independent four-factor algebraicity pipeline.

Verification remains `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.

## 4as. Assembly identification is reduced to a presentation theorem

The remaining assembly-identification step is now formally closed once the geometric construction is presented in the canonical multilinear interface.

`CMFourFactorSwitchGeometry.lean` adds:

~~~text
FourfoldMultilinearAlgebraicAssembly.assemble_eq
FourfoldMultilinearAlgebraicAssembly.assemble_fun_eq
~~~

If two fourfold assemblies are (mathbf Q)-linear in each of the four factor slots and both satisfy the same canonical pure-factor formula, four nested tensor inductions prove they agree on arbitrary factor tensors.

Thus a separate theorem of the form

[
	ext{geometric assembly}
=
	ext{canonical assembly}
]

is no longer needed.

The remaining assembly-side input is strictly a presentation statement:

1. the geometric switched monomial construction is (mathbf Q)-linear in each of its four factor slots;
2. on pure factors (a_iotimes x_i), it equals
   [
   (a_1a_2a_3a_4)otimes
   (((x_1otimes x_2)otimes x_3)otimes x_4).
   ]

Once those two facts are supplied, extensional equality with the canonical model follows locally, and the already-local equivariance theorem gives scalar-conjugation naturality automatically.

This leaves no independent arithmetic naturality theorem and no independent assembly-equality theorem.

Verification remains `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.

## 4at. The assembly side is now one presentation object

The intermediate assembly interfaces are no longer required at call sites.

`CMFourFactorSwitchGeometry.lean` now adds:

~~~text
FourfoldMultilinearAlgebraicAssembly.toMonomialAssemblyData
FourfoldMultilinearAlgebraicAssembly.scalarConjugate_mem_transportedLine
~~~

A single `FourfoldMultilinearAlgebraicAssembly` contains exactly the remaining presentation data:

1. fourfold (mathbf Q)-multilinearity;
2. the canonical pure-factor formula.

From that one object, local source now constructs automatically:

- `FourfoldAlgebraicAssemblyData`;
- `FourfoldAlgebraicAssemblyEquivariance`;
- coefficient inclusion into (mathbf C);
- `FourfoldMonomialAssemblyData`;
- scalar-conjugate membership in the transported monomial line.

Thus the entire scalar-conjugation branch has been collapsed to one presentation interface. No separate assembly-equality theorem and no separate Galois-equivariance theorem remain as mathematical inputs.

The remaining independent work is on the Hodge comparison side: identify the concrete geometric switched construction with this presented multilinear assembly and identify its assembled generator with the image of the actual fourfold (H^{2,2}) tensor under the coefficient/change-of-realization comparison.

Verification remains `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.

## 4au. The Hodge branch is now one scalar-conjugate realization family

The remaining Hodge comparison data has been packaged at the correct level of generality.

A single finite CM field need not contain or be stable under every automorphism of (overline{mathbf Q}). The local source therefore does not impose one fixed finite CM realization for the full scalar-Galois orbit.

`CMFourFactorSwitchGeometry.lean` now defines:

~~~text
RealizedMonomialGeneratorHodgeWitness
RealizedMonomialGeneratorHodgeWitness.assembled_mem_hodge
TransportedGeneratorRealizationFamily
TransportedGeneratorRealizationFamily.toTransportedGeneratorHodgeData
FourfoldMultilinearAlgebraicAssembly.toScalarConjugateMonomialLineData
~~~

For one transported assembled generator, `RealizedMonomialGeneratorHodgeWitness` packages:

- a finite Galois CM field;
- four actual weight-one realizations;
- switch-character alignment;
- the standard fourfold Hodge tensor rule;
- the actual-to-descent comparison;
- identification of the transported assembled generator with the image of the actual fourfold pure tensor.

The finite field and realization are allowed to vary with the scalar automorphism.

A `TransportedGeneratorRealizationFamily` supplies one such witness for every scalar conjugate. From that family, local source derives the exact `TransportedMonomialGeneratorHodgeData` needed by the orbit-span pipeline.

Combining this with a single `FourfoldMultilinearAlgebraicAssembly` now yields `ScalarConjugateMonomialLineData` directly. Thus all assembly naturality, transported-line membership, and Hodge-line inclusion are local after two presentation-level inputs:

1. the canonical fourfold multilinear assembly;
2. a finite-CM realization/comparison witness for each transported generator.

The independent `FourFactorAlgebraicitySupplier` remains untouched.

Verification remains `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.

## 4av. Finite Galois support is already local; only CM compatibility remains

The transported-realization frontier can be separated further using existing local scalar-descent infrastructure.

`GaloisScalarDescent.lean` already proves that every tensor over an arbitrary Galois extension is defined over a finite Galois intermediate field. The switch geometry file now exposes this explicitly through:

~~~text
FiniteGaloisTensorCarrier
finiteGaloisTensorCarrier
FiniteGaloisTensorCarrier.scalarConjugate_restrict
CMFiniteGaloisTensorCarrier
~~~

For any

[
tinoverline{mathbf Q}otimes_{mathbf Q}V,
]

local source chooses a finite Galois intermediate field

[
L/mathbf Q
]

and a tensor

[
uin Lotimes_{mathbf Q}V
]

whose coefficient extension is (t).

Moreover, every absolute scalar automorphism (sigma) restricts to (L), and the local theorem proves that conjugating (u) by this restriction and then extending coefficients agrees with conjugating (t) in (overline{mathbf Q}).

Therefore neither finite support nor Galois stability is part of the remaining geometric obstruction.

The genuinely CM-specific question is now isolated by `CMFiniteGaloisTensorCarrier`: the finite Galois carrier relevant to the switched tensor must support the CM-field structure/realization needed by the weight-one Hodge construction.

This is a materially smaller frontier than the previous per-conjugate finite-field existence package. Absolute conjugation is already controlled uniformly by one finite Galois carrier once the tensor is fixed.

Verification remains `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.

## 4aw. One common finite Galois CM carrier now controls all four factors and all scalar transports

The CM-support frontier has been made more precise.

`CMFourFactorSwitchGeometry.lean` now defines:

~~~text
CMGaloisIntermediateField
CMGaloisIntermediateField.factorTensorInclusion
CMGaloisIntermediateField.factorTensorInclusion_scalarConjugate
CMFourFactorSupport
CMFourFactorSupport.scalarTransportLocal
CMFourFactorSupport.scalarTransportLocal_inclusion
~~~

A `CMFourFactorSupport` packages one finite Galois CM intermediate field

[
Esubsetoverline{mathbf Q},
]

four local vectors in

[
Eotimes_{mathbf Q}E,
]

their local embedding characters and eigenspace proofs, and comparison equations identifying their inclusions with the four global canonical factors over (overline{mathbf Q}).

The global characters are required to restrict to the local characters.

Once this support is supplied, every absolute scalar automorphism (sigma) restricts to (E), and local source proves

[
iota_Eigl(sigma|_Ecdot v_rigr)
=
sigmacdotiota_E(v_r)
]

for each of the four factors.

Thus the same finite Galois CM field can control the entire scalar-Galois orbit of the supported four-factor configuration. A fresh finite CM field is not needed for each scalar conjugate.

The open CM-specific condition is therefore no longer “turn an arbitrary finite Galois tensor carrier into a CM field.” That implication is false in general and is not used. The exact remaining support theorem is instead:

[
oxed{
	ext{the four canonical switched factors admit one common finite Galois CM support}
}
]

inside (overline{mathbf Q}).

After such support is supplied, factorwise scalar transport stays uniformly inside that CM field; the remaining work is to instantiate the weight-one realizations/comparison there and connect them to the existing transported-generator family.

Verification remains `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.

## 4ax. Common CM support is now carried with the global four-factor construction

The common-support problem is better treated as construction data rather than a descent theorem about arbitrary global factors.

`CMFourFactorSwitchGeometry.lean` now adds:

~~~text
SupportedCMFourEmbeddingLineVectors
SupportedCMFourEmbeddingLineVectors.scalarTransport
SupportedCMFourEmbeddingLineVectors.scalarTransport_support_field
~~~

A supported global package consists of:

- the four global embedding-line factors over (overline{mathbf Q});
- one common finite Galois CM carrier;
- local vectors and local Galois characters on that carrier;
- explicit automorphism lifts of the global stored `AlgHom` characters;
- equality of local-vector inclusions with the global vectors;
- equality of restricted global automorphisms with the local characters.

The explicit global automorphism lifts are necessary because `FourEmbeddingLineVectors.character` is stored as an `AlgHom`, while Galois restriction requires an `AlgEquiv`.

Scalar transport now preserves the same chosen CM carrier. The local character after transport is the Galois product

[
(sigma|_E)	au_r,
]

and the global automorphism lift is

[
sigmawidetilde{	au}_r.
]

Their restriction compatibility is proved elementwise using Mathlib's `restrictNormal_commutes`, not an assumed multiplication lemma.

Consequently, once the global four-factor package is constructed from the original finite Galois CM data together with this support, the entire scalar-Galois orbit remains on that same CM carrier.

The next exact frontier is now constructive rather than existential:

[
oxed{
	ext{build }SupportedCMFourEmbeddingLineVectors
	ext{ directly from the original finite Galois CM embedding-line data}
}
]

rather than proving after the fact that arbitrary global factors happen to admit CM support.

Verification remains `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.

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


## 4d. Four-factor rational descent versus algebraicity

The independent four-factor frontier is now represented explicitly in
\`GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorAlgebraicity.lean\`.

The source separates four stages that must not be conflated:

~~~text
FOUR_LABEL_BALANCE
  -> ALL_CONJUGATES_TYPE_22
  -> CONJUGATE_STABLE_TENSOR_DATA
  -> RATIONAL_FOUR_FACTOR_HODGE_WITNESS
  -> ALGEBRAIC_CYCLE_WITNESS
~~~

The first arrow is local and finite.  The second is not automatic: a numerical
\((2,2)\) statement does not construct an algebraic-number tensor or prove that
all scalar conjugates land in the required complex Hodge subspace.

Once exact tensor-level conjugate stability is supplied, the existing local
theorem

~~~text
GaloisScalarDescent.traceDescent
~~~

proves rational descent.  This is now exposed through

~~~text
FourFactorTensorDescentData.rational_descent
~~~

and packaged as \`RationalFourFactorHodgeWitness\`.

The final algebraicity step remains independent and is represented by

~~~text
FourFactorAlgebraicitySupplier
~~~

which consumes a rationally descended four-factor Hodge witness and returns an
opaque algebraic-cycle witness.  No constructor for this supplier exists in the
local source.

This is the exact boundary corresponding to the external manuscript labels

~~~text
thm:switch
eq:switch-line
eq:switch-conjugate-balance
~~~

and prevents the already-proved type count or generic scalar descent theorem
from being promoted to algebraicity.

Verification remains \`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED\`.

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

## 5d. Canonical maximal-real-subfield sign selection

The abstract totally-real rescaling boundary is now instantiated locally for
the canonical maximal real subfield

\[
E^+=\operatorname{maximalRealSubfield}(E).
\]

The source module
\`GRWTSK/AlgebraicGeometry/Hodge/CMRealRescaling.lean\`
uses only local results and pinned Mathlib interfaces:

1. order the rational complex embeddings of the totally real field \(E^+\);
2. lift each embedding \(E^+\to\mathbf C\) to a complex embedding of \(E\);
3. use Galois normality of \(E/\mathbf Q\) to write that lift as the fixed base
   complex embedding composed with a rational Galois automorphism;
4. prove that two rational automorphisms agreeing on \(E^+\) differ by an
   \(E^+\)-automorphism;
5. use
   \[
   \#\operatorname{Gal}(E/E^+)=2
   \]
   to classify that difference as either the identity or canonical complex
   conjugation.

This produces the local constructor

~~~text
CMRealRescaling.canonicalMaximalRealRescalingInterface
~~~

and therefore discharges the final supplier required by finite totally-real
sign approximation.  In particular, for every local odd CM sign row \(v\),

~~~text
CMRealRescaling.nonempty_signControlledXi_canonical
  : Nonempty (SignControlledXi E v)
~~~

is now a source-level endpoint.  It starts from the locally constructed
nonzero anti-invariant trace-polarization seed, chooses a conjugation-fixed
factor in \(E^+\) with the required simultaneous real signs, and rescales the
seed to obtain the prescribed signs of all \(\operatorname{Im}\sigma(\xi)\).

This removes **archimedean sign selection** from the external manuscript
boundary.  It does not identify the positive coordinate energy with the
complexification of the rational trace pairing under the actual Hodge
conjugation/Weil operator, construct an integral lattice, apply the Riemann
criterion, or prove the independent four-factor algebraicity theorem.

Verification status remains \`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED\`.
No elaboration or compile receipt is represented by this source increment.

## 5e. Complexified trace pairing equals the coordinate Hodge energy

The next archimedean comparison is now represented locally in
\`GRWTSK/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean\`.

For a sign-controlled \(\xi\), define the complexified coordinate pairing

\[
B_\xi(z,w)
=
\sum_\sigma
\sigma(\xi)\,z_\sigma\,w_{c\sigma}.
\]

The local source proves two distinct statements.

First, for rational vectors \(x,y\in E\), with embedding-coordinate vector

\[
z_x(\sigma)=\sigma(x),
\]

one has

\[
B_\xi(z_x,z_y)
=
\iota_0\!\left(
\operatorname{Tr}_{E/\mathbf Q}
(\xi x c(y))
\right),
\]

where \(\iota_0:E\hookrightarrow\mathbf C\) is the selected base complex
embedding applied after the rational trace has been included into \(E\).
Thus \(B_\xi\) is not an invented coordinate form: it is the explicit scalar
extension of the rational trace pairing.

Second, use the already-local coordinate Hodge operators

\[
(\mathcal C z)_\sigma=\overline{z_{c\sigma}},
\qquad
(C_v z)_\sigma=v(\sigma)i\,z_\sigma.
\]

Then the source proves

\[
B_\xi(C_v z,\mathcal C z)
=
\sum_\sigma
\sigma(\xi)\,v(\sigma)i\,|z_\sigma|^2
=
E_\xi(z).
\]

The corresponding declarations are

~~~text
SignControlledXi.complexifiedTracePairing_fieldCoordinates
SignControlledXi.complexifiedTracePairing_weil_realConj
SignControlledXi.complexifiedTracePairing_weil_realConj_eq_energy
~~~

This removes the coordinate-energy/complexified-trace-pairing identification
from the external manuscript boundary at the source level.

The remaining weight-one polarization frontier is therefore:

1. choose a rational/integral lattice on which the alternating form is
   integral after an admissible scaling;
2. apply the Riemann bilinear criterion and obtain the abelian-variety
   realization;
3. separately prove the independent four-factor algebraicity theorem.

Verification remains \`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED\`; no
elaboration or kernel receipt is claimed.

## 5f. Integral lattice scaling for the rational trace polarization

The integral-lattice stage is now represented locally in
\`GRWTSK/AlgebraicGeometry/Hodge/CMLatticePolarization.lean\`.

Choose the canonical finite rational basis

\[
b_1,\dots,b_n
\]

of the finite-dimensional \(\mathbf Q\)-vector space \(E\).  The source uses
integer coordinate vectors

\[
a=(a_i)\in\mathbf Z^n
\]

and the injective map

\[
a\longmapsto \sum_i a_i b_i\in E
\]

as a full algebraic \(\mathbf Z\)-lattice presentation.

For a sign-controlled \(\xi\), form the rational alternating matrix

\[
A_{ij}=\psi_\xi(b_i,b_j).
\]

Mathlib's rational-matrix denominator

\[
N=A.\mathrm{den}
\]

is the least-common-multiple style denominator clearing all entries
simultaneously.  Its associated integer numerator matrix \(A.\mathrm{num}\)
satisfies

\[
N A_{ij}=(A.\mathrm{num})_{ij}\in\mathbf Z.
\]

The local source then proves, for every \(a,b\in\mathbf Z^n\),

\[
N\,
\psi_\xi\!\left(\sum_i a_i b_i,\sum_j b_j b_j\right)
=
\sum_{i,j}a_i(A.\mathrm{num})_{ij}b_j
\in\mathbf Z,
\]

with the actual Lean declarations using distinct coordinate-variable names to
avoid the displayed basis/coordinate notation collision.

The compact certificate is

~~~text
CMLatticePolarization.canonicalIntegralLatticePolarization
~~~

and records:

~~~text
nonzero positive-denominator scale
injective integer-coordinate lattice map
integer bilinear pairing
exact scaled rational-trace identity
alternation
~~~

Thus the existence of an integral scaling of the alternating rational trace
form is no longer an external manuscript premise at the source level.

What remains is the actual Riemann bilinear criterion / complex torus
realization and the independent four-factor algebraicity theorem.

Verification remains \`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED\`.

## 5g. Exact pre-Riemann bilinear certificate

The local source now also assembles the actual Riemann-form hypotheses in
\`GRWTSK/AlgebraicGeometry/Hodge/CMRiemannForm.lean\`.

It proves:

- the scalar-extended trace form is globally skew-symmetric and alternating;
- the sign-defined Weil operator satisfies \(J^2=-1\);
- \(J\) preserves the real fixed locus of the coordinate conjugation;
- the alternating form is \(J\)-invariant;
- for every nonzero real-fixed vector \(z\),
  \[
  E(Jz,z)>0;
  \]
- the integer-coordinate lattice is injective in the real fixed locus;
- one nonzero integer scale makes the form integral on all lattice pairs.

These facts are packaged as

~~~text
CMRiemannForm.canonicalPreRiemannBilinearData
~~~

No local theorem is claimed beyond that package.  In particular, current
Mathlib does not expose a complex-torus/abelian-variety Riemann existence
theorem that could convert this certificate into an abelian variety.

Accordingly the remaining external weight-one realization boundary is now
only the classical existence step:

~~~text
pre-Riemann bilinear data
  -> complex torus with the prescribed lattice and complex structure
  -> polarized/projective torus
  -> abelian variety B(v)
  -> identification of the rational Hodge structure with H^1(B(v), Q)
~~~

The independent four-factor algebraicity theorem remains outside this chain.

Verification remains \`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED\`.

## 5h. Conditional classical Riemann existence supplier

The final weight-one realization step is now isolated in
\`GRWTSK/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean\`.

The local repository proves the input package

~~~text
canonicalPreRiemannBilinearData
~~~

but current Mathlib does not supply the geometric existence theorem turning
that package into a polarized projective complex torus / abelian variety.

The missing theorem is therefore represented explicitly as

~~~text
RiemannExistenceSupplier
~~~

with the shape

~~~text
PreRiemannBilinearData E v X
  -> WeightOneCMRealization E v X
~~~

and no local constructor for the supplier.

The formal wrapper

~~~text
realizeWeightOneCM
~~~

composes an admitted supplier with the locally proved pre-Riemann data.  The
endpoint

~~~text
realizeWeightOneCM_canonical
~~~

additionally feeds it the locally constructed canonical sign-controlled
\(\xi\).

This means the weight-one realization chain now has a single explicit
external theorem boundary instead of several mixed geometric and analytic
premises.

The resulting realization record is intentionally abstract: the repository
does not invent a local complex-torus or abelian-variety implementation where
none exists.  It stores only the rational \(H^1\) comparison, Hodge/Weil
compatibility, integral polarization compatibility, and an externally
supplied polarized-projective marker.

The four-factor algebraicity theorem remains mathematically independent.

Verification remains \`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED\`.

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
