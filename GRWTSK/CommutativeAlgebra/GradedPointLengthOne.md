# Length at most one at a nondegenerate graded point

Local attribution: grwtsk contributors.

Maintained source: [GradedPointLengthOne.lean](GradedPointLengthOne.lean).
Namespace: `GRWTSK.CommutativeAlgebra.GradedPointLengthOne`.

## Scope and actual objects

This module proves the local length bound needed before the
[five-family squaring estimate](GradedSquareFamilyLength.md). The final
theorem derives the bound from the original finite-generation,
degree-zero finite-image, tangent-dependence, and nondegeneracy
hypotheses. It does not leave a local length or reducedness assertion as
an extra premise.

Let `O` and `A` be commutative rings, with `A` an `O`-algebra and an
integer grading `𝒜 : ℤ → Submodule O A`. Write \(A_j=\mathcal A_j\) and
\(B=A_0\), where \(B\) is the actual degree-zero subring. For an ideal
\(I\subseteq A\), use the actual quotient map \(q:A\to A/I\) and the
\(B\)-submodule

\[
M_w=q(A_w)\subseteq A/I.
\]

Its maintained Lean representation is
`GradedQuotientExact.quotientPiece 𝒜 I w`:

```lean
(degreePiece 𝒜 w).map (Ideal.Quotient.mkₐ (𝒜 0) I).toLinearMap
```

Here `degreePiece 𝒜 w` is \(A_w\) with its actual \(A_0\)-module
structure. Every element of `quotientPiece` has a homogeneous
representative, supplied by `exists_pieceMk`. The theorem concerns this
image submodule of the actual ideal quotient, rather than a separately
postulated module with similar properties.

Let `K` be a field and \(\sigma:B\to K\) an `O`-algebra homomorphism.
Set

\[
P=\ker\sigma,\qquad R=B_P,\qquad N_w=(M_w)_P.
\]

The kernel \(P\) is prime because \(K\) is a field. Its extension to
\(R\) is the maximal ideal \(\mathfrak m=P B_P\). The conclusion is

\[
\operatorname{length}_{B_P}(N_w)\leq 1
\quad\text{for every }w\in\mathbb Z.
\]

Lengths take values in `ℕ∞`. There is no conversion to natural numbers,
no truncation of an infinite value, and no finite-length assumption in
the statement.

The maintained theorem writes this as

```lean
LocalizedGradedLength.pointLength σ (quotientPiece 𝒜 I w) ≤ 1
```

The existing transparent `pointLength` definition expands through
`localLength` to exactly

```lean
let _ : (RingHom.ker σ).IsPrime := RingHom.ker_isPrime σ
Module.length (Localization.AtPrime (RingHom.ker σ))
  (LocalizedModule (RingHom.ker σ).primeCompl (quotientPiece 𝒜 I w))
```

No new definition of length, quotient piece, or localization is introduced
in this module. The imported audit separately checks the generic
definitional equality and the source's independently spelled quotient
piece and local length.

The residue field in the proof is
\(\kappa(P)=B_P/PB_P\). It is not assumed equal to all of \(K\).
The point \(\sigma\) need not extend to an `A`-point, need not vanish
on \(I\cap B\), and need not descend to \(A/I\). Consequently \(N_w\)
may be zero, even when the nondegeneracy condition below holds. The
conclusion is at most one, not equality to one.

## Hypotheses and their exact roles

The generic theorem `localized_length_le_one` needs only a commutative
ring \(B\), a \(B\)-module \(M\), a prime \(P\), and the following two
explicit conditions:

\[
\begin{aligned}
\text{annihilation: }&
\forall p\in P,\quad \forall m\in M,\quad
\exists b\notin P,\quad (bp)m=0;\\
\text{cyclicity: }&
\exists m_0\in M,\ \forall m\in M,\
\exists b\notin P,\ \exists a\in B,\quad bm=am_0.
\end{aligned}
\]

The denominators may depend on \(p,m\), or on \(m\), respectively.
There is no uniform denominator requirement, no finite generation of
\(M\), and no assertion that \(P\) annihilates \(M\) before localization.

The reusable homogeneous theorems assume the following additional data:

- `O` is nontrivial, `K` is a field, and `FaithfulSMul O K` makes the
  coefficient map \(O\to K\) injective.
- The actual degree-zero quotient image is finitely generated as an
  \(O\)-module:

  ```lean
  ((𝒜 0).map (Ideal.Quotient.mkₐ O I).toLinearMap).FG
  ```

- The homogeneous power-reduction implication holds:
  for \(h\in A_j\), \(b\in B\), \(\sigma(b)\ne0\), and
  \(n\in\mathbb N\),
  \[
  bh^n\in I
  \quad\Longrightarrow\quad
  \exists b'\in B,\quad \sigma(b')\ne0,\quad b'h\in I.
  \]
  This is the displayed `hred` premise of the two reusable homogeneous
  endpoints, with no hidden `IsReduced` instance.
- There are actual elements
  \(f\in A_{-2}\), \(g\in A_2\), and \(\tau\in B\) such that
  \(\tau=fg\) in \(A\) and \(\sigma(\tau)\ne0\).

These reusable implications do not themselves require a DVR,
characteristic zero, algebraic closedness, or homogeneity of \(I\).
Those stronger assumptions enter the final source-return theorems
through the proof of homogeneous power reduction.

For the final two theorems, `O` is a characteristic-zero DVR, `K` is
algebraically closed with a faithful `O`-algebra structure, and \(I\)
is homogeneous. The finite-generation hypothesis is literally

```lean
∃ s : Finset A,
  Algebra.adjoin O ((𝒜 0 : Set A) ∪ (s : Set A)) = ⊤
```

The degree-zero image hypothesis remains the displayed actual module
finiteness condition. The `M4` hypothesis is expanded without changing
its mathematical content: at every `O`-algebra point \(\xi:A\to K\)
killing \(I\), which is nonzero on some negative homogeneous element
and on some positive homogeneous element, any two \(O\)-linear maps
\(D,E:A\to K\) satisfying

\[
D(ab)=\xi(a)D(b)+\xi(b)D(a),\qquad
E(ab)=\xi(a)E(b)+\xi(b)E(a)
\]

and vanishing on \(I\) obey

\[
cD+c'E=0
\quad\text{for some }c,c'\in K
\text{ with }c\ne0\text{ or }c'\ne0.
\]

This is dependence of the actual ideal-killing point derivations. It is
not a bound assumed for a surrogate tangent space.

The final endpoint takes the source's literal nondegeneracy condition

\[
D_{\mathcal A}
=
\left\langle
b\in B\;\middle|\;
\exists f\in A_{-2},\ \exists g\in A_2,\ b=fg
\right\rangle
\not\subseteq\ker\sigma.
\]

This is the ideal called `idD` in the submitted source. The maintained
statement spells out its `Ideal.span` directly; it neither changes the
generating set nor introduces a replacement ideal.

## Complete primary analytical proof

### 1. A cyclic localized module is a residue-field quotient

First work with the generic data \(B,M,P\). Put \(R=B_P\) and
\(N=M_P\). The proposed generator \(m_0\) defines the \(R\)-linear map

\[
\varphi:R\longrightarrow N,\qquad
r\longmapsto r\frac{m_0}{1}.
\]

This map is surjective. Indeed, an arbitrary element of \(N\) has the
form \(m/s\), with \(s\notin P\). Choose \(b\notin P\) and \(a\in B\)
with \(bm=am_0\). Then

\[
\frac m s=\frac{bm}{sb}=\frac a{sb}\frac{m_0}{1}.
\]

Primality makes \(sb\notin P\), so the displayed fraction is legitimate.
The Lean proof uses the actual localization multiplication and
cancellation equalities.

Next let \(p\in P\). Apply the annihilation hypothesis to \(m_0\) and
choose \(b\notin P\) with \((bp)m_0=0\). Since \(b\) becomes a unit in
\(R\), one has \(p(m_0/1)=0\). Thus every image of \(p\in P\) belongs
to \(\ker\varphi\). The maximal ideal of \(R\) is exactly the extension
of \(P\), so

\[
\mathfrak m\subseteq\ker\varphi.
\]

The map therefore factors through a surjective \(R\)-linear map

\[
\overline\varphi:\kappa(P)=R/\mathfrak m\twoheadrightarrow N.
\]

The quotient \(R/\mathfrak m\) is a simple \(R\)-module and has length
one. Module length cannot increase under a surjection. Hence

\[
\operatorname{length}_R N
\leq\operatorname{length}_R(R/\mathfrak m)=1.
\]

There is no step identifying \(\kappa(P)\) with \(K\). Nor is a
nonzero image of \(m_0/1\) needed: a surjection onto the zero module is
allowed.

An equivalent elementary viewpoint is that annihilation makes \(N\)
a vector space over \(\kappa(P)\), and cyclicity makes that vector space
have dimension at most one. This is the same residue-field argument,
not an independent foundational proof.

### 2. Finite degree-zero image gives local nilpotence

Use the actual algebra map

\[
\psi:B=A_0\hookrightarrow A\xrightarrow{q}A/I.
\]

Its range, as an \(O\)-submodule, equals
`(𝒜 0).map (Ideal.Quotient.mkₐ O I).toLinearMap`. The finite-image
hypothesis makes every \(\psi(p)\) integral over \(O\).

Suppose \(p\in B\) and \(\sigma(p)=0\). Choose a monic polynomial
\(q_p(X)\in O[X]\) with \(q_p(\psi(p))=0\). It is nonzero because
\(O\) is nontrivial. Factor off its full power of \(X\):

\[
q_p(X)=X^n r(X),\qquad r(0)\ne0.
\]

Set \(b=r(p)\in B\). Since \(\sigma(p)=0\),

\[
\sigma(b)=\operatorname{algebraMap}_{O,K}(r(0))\ne0,
\]

where nonvanishing uses faithfulness of \(O\to K\). Evaluating the
polynomial identity in \(A/I\) gives \(\psi(bp^n)=0\), or

\[
bp^n\in I.
\]

The result is precisely
`FiniteAlgebraPointNilpotence.exists_point_nonzero_mul_pow_mem_of_fg_degree_zero_image`,
whose [separate record](FiniteAlgebraPointNilpotence.md) proves the
range identification and polynomial argument.

The point was applied in \(B\), and the polynomial relation was applied
in \(A/I\). No factorization of \(\sigma\) through \(A/I\) was used.
The exponent can be zero; that case means the multiplier itself is
already killed in the quotient.

### 3. The source assumptions supply homogeneous power reduction

For the final source-return theorems, `hred` is proved by
`GradedSliceSeparation.exists_point_multiplier_of_pow_mem`,
rather than assumed. Its [complete construction](GradedSliceSeparation.md)
uses the actual normalized slice, finite-type and coefficient-unit
suppliers, the Euler/M4 tangent argument, point separation, and
dehomogenization. The part of that construction used here can be
followed directly.

Let \(h\in A_j\), \(b\in B\), \(\sigma(b)\ne0\), and \(bh^n\in I\).
Consider any algebra point \(\xi:A\to K\) satisfying

\[
\xi(I)=0,\qquad \xi(f)=1,\qquad \xi(g)\ne0.
\]

Then \(\xi(b)\xi(h)^n=0\). If \(\xi(b)=0\), immediately
\(\xi(bh)=0\). If \(\xi(b)\ne0\), the field property gives
\(\xi(h)^n=0\), hence \(\xi(h)=0\), so again \(\xi(bh)=0\).
This also covers \(n=0\): the original equation then forces
\(\xi(b)=0\). The hypothesis \(\sigma(b)\ne0\) says nothing about
\(\xi(b)\), so the first branch must be retained.

The established slice theorem now gives \(N\in\mathbb N\) and a
nonzero \(c\in O\) with

\[
c\,g^Nbh\in I+(f-1).
\]

The left side is homogeneous because \(g,b,h\) have degrees \(2,0,j\).
Homogeneity of \(I\) and the dehomogenization theorem give
\(m\in\mathbb N\) such that

\[
f^m c\,g^Nbh\in I.
\]

Multiplying by \(f^N g^m\) yields

\[
c(fg)^{N+m}bh=c\tau^{N+m}bh\in I.
\]

Define \(b'=c\,\tau^{N+m}b\in B\), with coefficient multiplication
represented by the actual \(O\)-scalar action. Its point value is
nonzero:

\[
\sigma(b')
=\operatorname{algebraMap}_{O,K}(c)
  \,\sigma(\tau)^{N+m}\sigma(b)\ne0.
\]

Thus \(b'h\in I\), exactly the homogeneous power-reduction implication.

The finite-generation and degree-zero image assumptions ensure finite
type of the actual localized slice. A DVR uniformizer supplies
invertibility of every nonzero coefficient there. The source `M4`
condition, together with the Euler derivation and the normalized
degree \(-2\) element, kills point derivations on that slice; the
established finite-rigidity and separation results then supply the
displayed slice relation. Characteristic zero ensures the relevant
degree scalar is nonzero. These inputs and their precise trust
boundaries are recorded in the linked slice record.

This implication concerns homogeneous elements and actual multipliers.
Neither it nor the present module declares the entire prime-localized
algebra to have an `IsReduced` instance.

### 4. Opposite degree-two elements supply a quadratic complement

Fix a weight \(w\in\mathbb Z\). Construct \(e,e'\in A\) and
\(k\in\mathbb N\) with

\[
e\in A_{-2w},\qquad ee'=\tau^k.
\]

If \(w=k\geq0\), take \(e=f^k\), \(e'=g^k\).
If \(w=-k\leq0\), take \(e=g^k\), \(e'=f^k\).
Both choices have the required degree and satisfy
\(ee'=(fg)^k=\tau^k\). At \(w=0\), one can take \(k=0\) and
\(e=e'=1\).

For \(h,h'\in A_w\), the product \(hh'e\) has degree

\[
w+w-2w=0.
\]

It is therefore an actual element of \(B\) on which \(\sigma\) can be
evaluated. This is why degree \(-2\) and degree \(2\) suffice for
every integral weight, including odd weights: the argument pairs two
weight-\(w\) elements before cancelling their degree. It does not
require a weight-\(-w\) element, a square root, or division by \(2\).

### 5. Quadratic pairings give cyclicity, including the zero branch

There are two cases.

First suppose there is \(h_0\in A_w\) such that

\[
\sigma(h_0^2e)\ne0.
\]

For each \(h\in A_w\), set

\[
b=h_0^2e\in B,\qquad a=hh_0e\in B.
\]

Commutativity gives the exact identity

\[
bh-ah_0=h_0^2eh-hh_0eh_0=0\in I.
\]

The same \(b\), which is nonzero at \(\sigma\), works for every \(h\)
in this branch. Thus the quotient class of \(h_0\) generates after
localization. Its localized class is not assumed nonzero, since
\(\sigma\) need not descend to the quotient.

Now suppose instead that

\[
\sigma(h^2e)=0
\quad\text{for every }h\in A_w.
\]

Fix such an \(h\). Apply the finite-image nilpotence result to
\(p=h^2e\in B\). There are \(b\in B\), \(\sigma(b)\ne0\), and
\(n\in\mathbb N\) with

\[
b(h^2e)^n\in I.
\]

Multiply by \((e')^n\), and use \(ee'=\tau^k\), to obtain

\[
b(\tau^k)^n h^{2n}
=(e')^n b(h^2e)^n\in I.
\]

The degree-zero coefficient \(b(\tau^k)^n\) is nonzero at \(\sigma\).
Homogeneous power reduction, applied to \(h\) with exponent \(2n\),
provides \(b'\in B\) satisfying

\[
\sigma(b')\ne0,\qquad b'h\in I.
\]

Thus every homogeneous quotient class is zero after localization.
Take \(h_0=0\) and \(a=0\) for the cyclicity condition. Nothing in
this argument excludes \(n=0\); the power-reduction theorem includes
that case.

Both branches prove the exact assertion

\[
\exists h_0\in A_w,\quad
\forall h\in A_w,\quad
\exists b\in B,\ \sigma(b)\ne0,\
\exists a\in B,\quad bh-ah_0\in I.
\]

This is `exists_point_cyclic_generator`. Passing to the actual quotient
classes turns it into \(b\,q(h)=a\,q(h_0)\). Since every element of
\(M_w\) has a homogeneous representative, it is precisely the generic
cyclicity condition, with \(m_0=q(h_0)\).

### 6. Finite image and power reduction give kernel annihilation

Take \(p\in P=\ker\sigma\) and any \(m\in M_w\).
Choose \(h\in A_w\) representing \(m\). The finite-image result gives
\(b\in B\), \(\sigma(b)\ne0\), and \(n\in\mathbb N\) with
\(bp^n\in I\).

Multiply that relation by \(h^n\). Commutativity gives

\[
b(ph)^n=bp^n h^n\in I.
\]

The element \(ph\) is homogeneous of degree \(0+w\).
Homogeneous power reduction therefore supplies \(b'\in B\) such that

\[
\sigma(b')\ne0,\qquad b'ph\in I.
\]

In \(M_w\) this is \((b'p)m=0\), with \(b'\notin P\). This is
exactly the generic annihilation hypothesis for each pair \(p,m\).
It requires neither a common multiplier for all elements nor
annihilation of the original unlocalized piece.

Together with the preceding cyclicity result, the generic
residue-field quotient theorem proves
`quotientPiece_length_le_one_of_homogeneous_reduction`.
The final theorem `quotientPiece_length_le_one_of_product` obtains
its power-reduction premise from the already proved slice theorem.
Thus no local length or homogeneous reduction assumption remains
unproved in that source return.

### 7. Literal `idD` nondegeneracy selects a product

Suppose the ideal \(D_{\mathcal A}\) generated by the displayed
opposite-degree products is not contained in \(\ker\sigma\).
If every generator \(\tau=fg\) had \(\sigma(\tau)=0\), then every
generator would lie in \(\ker\sigma\). Since the kernel is an ideal,
the entire generated ideal would lie in it, contradicting
nondegeneracy.

Therefore there is an actual product
\(\tau=fg\), with \(f\in A_{-2}\), \(g\in A_2\), and
\(\sigma(\tau)\ne0\). Apply the product theorem for each \(w\).
This proves the final
`quotientPiece_length_le_one_of_span_not_le_ker` statement.
The argument uses the literal ideal span and its universal property,
not a substituted existence assumption.

## Concrete return to the five-family estimate

The maintained
`GradedSquareFamilyLength.pointLength_five_family_squares_le`
already proves the cost of squaring the degree-\(-1\) and degree-\(1\)
families, provided the original ideal has length at most one at every
weight. The present theorem now supplies that premise.

Use the actual families

| Family | Index set | Degree |
|---|---|---:|
| \(F\) | \(\operatorname{Fin}(r+1)\) | \(-1\) |
| \(G\) | \(\operatorname{Fin}(s)\) | \(-2\) |
| \(E\) | \(\operatorname{Fin}(r')\) | \(1\) |
| \(E'\) | \(\operatorname{Fin}(s')\) | \(2\) |
| \(Z\) | \(\operatorname{Fin}(m)\) | \(0\) |

and the ideals

\[
\begin{aligned}
I_{\mathrm{eq}}
&=\langle F_i,G_j,E_k,E'_\ell,Z_a\rangle,\\
I_{\mathrm{sq}}
&=\langle F_i^2,G_j,E_k^2,E'_\ell,Z_a\rangle.
\end{aligned}
\]

Each listed generator is homogeneous, so \(I_{\mathrm{eq}}\) is
homogeneous. Assume the finite-generation condition for \(A\), the
actual degree-zero finite-image condition and `M4` for
\(I_{\mathrm{eq}}\), and the same literal \(D_{\mathcal A}\)
nondegeneracy at \(\sigma\). The final theorem proves

\[
\forall w\in\mathbb Z,\quad
\operatorname{length}_{B_P}\bigl(q_{I_{\mathrm{eq}}}(A_w)_P\bigr)
\leq1.
\]

The existing square-family theorem can therefore be applied to give

\[
\forall w\in\mathbb Z,\quad
\operatorname{length}_{B_P}\bigl(q_{I_{\mathrm{sq}}}(A_w)_P\bigr)
\leq2^{\,r+1+r'}.
\]

Uniformity over all weights is essential: the square-equation exact
sequence contains both a weight and a shifted weight. The exponent
counts the \(r+1\) members of \(F\) and the \(r'\) members of \(E\).
The families \(G,E',Z\) are not squared and add no factor of two.

The separate successful consumer audit keeps an ideal \(I\) abstract in
the raw finite-generation, degree-zero image, and tangent-dependence
premises, together with the exact identity \(I=I_{\mathrm{eq}}\).
It first proves homogeneity of the literal five-family span from the
five degree conditions, then transports that fact along the identity
to obtain homogeneity of \(I\). The new theorem gives the all-weight
length bound for this actual \(I\).

The audit then applies \(\operatorname{congrArg}\) to the function
\[
J\longmapsto
\bigl(\forall w,\quad
\operatorname{pointLength}_{\sigma}(q_J(A_w))\leq1\bigr)
\]
and the equality \(I=I_{\mathrm{eq}}\). An explicit \(\operatorname{Eq.mp}\)
transports the proved bound to the literal unsquared equation ideal.
Applying the existing five-family theorem now proves the bound for the
literal squared ideal displayed above. This identity transport avoids
unnecessary unfolding of the ideal inside the supplier's hypotheses.

The identity \(I=I_{\mathrm{eq}}\) specifies the very equation ideal
under consideration and is reflexivity when \(I\) is that span; it adds
no geometric or length assumption. Homogeneity and the all-weight length
premise are both derived. This separately checked composition is a
consumer of the six maintained theorems, not an additional seventh
declaration in this file.

The original augmentation condition \(x(Z_a)=0\) and further geometric
conditions used later in the submitted deformation argument are not
needed for this squaring implication. The module does not establish
the remaining global orbit-cover, Herbrand/valuation, `LemmaM`,
`OneCharU_s`, RH, or Dirichlet GRH assertions. Their current source
boundaries are tracked in the
[arithmetic audit](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SubmittedRiemannHypothesisArithmeticAudit.md).

## Declaration and source correspondence

There are exactly six public theorems, no private helpers, and no new
mathematical definitions. All names below are in
`GRWTSK.CommutativeAlgebra.GradedPointLengthOne`.

| Declaration | Mathematical content and source correspondence |
|---|---|
| `localized_length_le_one` | Reconstructs the source's private generic residue-field quotient argument for the actual localized module. |
| `exists_quadratic_complement` | Extracts the source's \(e,e',k\) construction from degree \(-2\) and \(2\) elements, for every integral weight. |
| `exists_point_cyclic_generator` | Extracts the two quadratic branches, using actual degree-zero image finiteness and explicit homogeneous power reduction. |
| `quotientPiece_length_le_one_of_homogeneous_reduction` | Constructs annihilation and cyclicity for the actual quotient piece and applies the generic theorem. |
| `quotientPiece_length_le_one_of_product` | Supplies homogeneous power reduction from the full established graded slice hypotheses and a product nonzero at the point. |
| `quotientPiece_length_le_one_of_span_not_le_ker` | Retains the literal source `idD` condition, selects a nonzero product by the span property, and returns the original all-weight length bound. |

The mathematical source is
`Deicyde/riemann-hypothesis@a172c464fd4bcfc4f53e394dcba45d742b1409a6`.
The following source bytes were read and compared with that exact Git
revision.

| Pinned source | Actual locator or role | SHA-256 |
|---|---|---|
| [LocLenQuotientWeightPieceLeOne.lean][length-source] | Private `localized_length_le_one` and `nilpotent_modulo_kernel`; public `UpperTheory.V.Alg.M.locLen_quotientWeightPiece_le_one`. | `fbd4cd271111e957575ff3514a0be7b74ca6d0be0c2dc48fe3e852ca8e7a0116` |
| [ToDegInjective.lean][objects-source] | Actual `oz`, `aPiece`, `locLen`, and literal `idD` definitions. | `af6ef0b972e029cff93e557ee5e94d33f623e296189f9c7cc95cb03456edca2d` |
| [OrbitVanishingLocal.lean][conditions-source] | `IsWRing.gen`, `M2`, `OnS`, `TwoSigned`, `M4`, and the five equation families. | `ba2f665873fc0708b75fcd3ae2cfc5ea127d7f159f58d39d012df5483fc15913` |
| [ResMapBijective.lean][deriv-source] | `PtDer` as the actual submodule of linear maps satisfying scalar Leibniz. | `20e63b53f95a2cd6e41afdd9ed4269a42e59ae5fc934ab620109a7fd6fbbed2e` |
| [SliceHolds.lean][slice-source] | The normalized slice relation used by the source's local `red` argument. | `94ad21402a77fc958c4f53d9b543be425bc82a6b82f966e3245dcfa41d7a20ab` |

The pinned public repository identifies the submitted mathematical
source. It does not by itself attribute authorship of that submission
to the maintainers of its verification repository. No separate paper
edition or individual submitted-author identity is inferred from
these files. Local reconstruction and exposition are attributed to
grwtsk contributors.

The maintained proofs are reconstructed in the root Mathlib environment;
they do not import or copy the submitted implementation. They follow
the same mathematical argument, so extracting the stages into public
lemmas is not an independent proof or a novelty claim.

The object correspondence is exact. Source `oz` is the same degree
submodule as `degreePiece`, source `aPiece` is the same quotient image
as `quotientPiece`, and source `locLen` is the same localized-module
length as the existing `pointLength`. The scratch audit independently
spells those objects and checks the equalities by reflexivity. It also
uses the genuine scalar-Leibniz submodule for the source-shaped `M4`
return.

The source quantifies over `Type`; the maintained statements use
`Type*`. The final theorem retains the DVR, characteristic-zero,
algebraic-closedness, faithful coefficients, homogeneity, actual `M2`,
actual `M4`, and literal `idD` nondegeneracy hypotheses. It uses only
the finite-adjoin consequence of `IsWRing.gen`: the restriction that
the extra generators have degrees \(-2,-1,1,2\) is unused in the
finite-type supplier and is omitted. Adic completeness, `IsCO`, the
augmentation \(x:A\to O\), and its fixed-point condition are also
unused by this implication. Their removal is an explicit
generalization, not an assumption that they hold automatically.

The two intermediate homogeneous endpoints deliberately expose the
power-reduction hypothesis for reuse under weaker coefficient
assumptions. The final two source returns discharge it using the
proved slice theorem. Those different logical scopes must not be
conflated.

## Hostile cases and precise control scope

### Cyclicity and annihilation are separate requirements

Over a field \(E\), the module \(E^2\) is annihilated by the zero prime,
but it is not generated by one element and has length two. The imported
control proves all three algebraic facts: `Module.length E (E × E) = 2`,
the displayed annihilation hypothesis for \(P=0\), and failure of every
possible cyclic-generator witness.

For the noncyclicity proof, write a proposed generator as \(v=(v_1,v_2)\).
If \(v_2=0\), the vector \((0,1)\) cannot satisfy
\(b(0,1)=av\) with \(b\ne0\). If \(v_2\ne0\), using \((1,0)\)
forces \(a=0\) from the second coordinate and then \(b=0\) from the
first coordinate, a contradiction. Analytically, localization at the
zero prime of a field changes neither ring nor module, so this also
shows why annihilation alone cannot prove the desired localized length
bound. That explicit localization transport is not an additional
compiled assertion of this fixture.

Conversely, let \(B=E[\varepsilon]/(\varepsilon^2)\), \(M=B\), and let
\(\sigma:B\to E\) take the constant coefficient. The module is cyclic
with generator \(1\), but \(\varepsilon\in\ker\sigma\) cannot be killed
by a multiplier outside the kernel. Such a multiplier has the form
\(b=a+c\varepsilon\) with \(a\ne0\), and

\[
b\varepsilon=a\varepsilon\ne0.
\]

The imported control proves this exact cyclicity statement, kernel
membership of \(\varepsilon\), and failure of every proposed
outside-kernel annihilator. It does not formally compute a localized
dual-number length. Analytically this ring is already local, and the
chain \(0\subset(\varepsilon)\subset B\) has two residue-field factors,
so its length over itself is two. This illustrates the independent
role of kernel annihilation.

The imported audit also instantiates the generic theorem on a
subsingleton module, where zero is a valid generator, and on the field
module \(E\) at its zero prime, with generator \(1\). These are
positive checks of both the admitted zero case and a nonvacuous case.
They do not strengthen the generic conclusion to equality.

### Full graded nondegeneracy cannot be dropped

This is an analytical counterexample; the imported audit does not
construct this polynomial grading or compute its localized length.

Choose a characteristic-zero DVR \(O\) and an algebraic closure \(K\)
of its fraction field. Let

\[
A=O[x,y],\qquad \deg x=\deg y=1,\qquad I=(x,y)^2.
\]

The grading has \(A_0=O\) and no nonzero negative-degree pieces.
The ring is generated over \(A_0\) by \(x,y\), including the source's
stronger allowed generator-degree condition. The ideal \(I\) is
homogeneous and its degree-zero quotient image is \(O\), a finite
\(O\)-module. Let \(\sigma:O\to K\) be the faithful coefficient map.

There are no two-signed points because all negative homogeneous pieces
are zero. Thus `M4` holds vacuously. All the other hypotheses of the
maintained final theorem hold. However \(D_{\mathcal A}=0\), because
\(A_{-2}=0\), so the nondegeneracy hypothesis fails.

The weight-one quotient piece has basis the classes of \(x,y\) over
\(O\). Since \(\ker\sigma=0\), localizing at the point gives a
two-dimensional vector space over \(\operatorname{Frac}(O)\), hence
length two. The example isolates the necessity of the literal `idD`
nondegeneracy assumption for the full statement; `M4` alone does not
control a point outside the two-signed locus.

### At most one cannot be replaced by exactly one

This is also analytical rather than a compiled graded fixture.
With the same coefficient data, take a nonzero uniformizer \(\pi\) and

\[
A=O[t,t^{-1}],\qquad \deg t=2,\qquad I=(\pi).
\]

The ideal is homogeneous, \(A\) is generated over \(A_0=O\) by
\(t,t^{-1}\), and the degree-zero quotient image is \(O/(\pi)\).
There are no faithful \(O\)-algebra points of \(A/I\) in \(K\), so
`M4` is vacuous. Nevertheless \(f=t^{-1}\), \(g=t\), and
\(\tau=fg=1\) give \(\sigma(\tau)=1\).

At the faithful point \(\sigma:O\to K\), the prime is zero. The
nonzero coefficient \(\pi\) is inverted on localization, while
annihilating the whole quotient. Therefore every localized quotient
piece is zero and has length zero. This satisfies the theorem and
shows why neither a nonzero localized generator nor support of
\(\sigma\) on the quotient may be inserted silently.

These examples challenge specific omitted hypotheses or stronger
conclusions. They are not counterexamples to the theorem with its
actual assumptions. The compiled generic controls and analytical full
graded examples have different scopes, and no full formalization of
the latter is claimed.

## Actual verification evidence

The selected mathematical source baseline is
`grwtsk/math@1d7d057d8c47c3d0535af91a1a746f8fbaaa0d20`.
During verification, `main` advanced to
`3cbbf5648548e2c1dae99ce28ba7638261633d60` through eight nonoverlapping
conductor-three paths. Before publication, the README change at
`417156d807dda632ef6cbf08dc5958037f9e6dd0` and six further conductor-three
paths at `d056f19d2d16f427eee3092401d217d980e61cd4` were also preserved.
These changes left the root configuration and slice/length inputs
unchanged. The selected verification baseline is distinguished from
these later publication parents.

The compiler is Lean **4.34.1**, revision
`5045d0056413266e57c625dcd7c365b10e377c52`. Root Mathlib remains at
`d13f23b723b8a846827a245b89c10fc7d3f11612`. The environment digest
identifies the selected compiler path and object search path.

Every source check, diagnostic probe, and imported audit listed below
used `--trust=0 -DwarningAsError=true`. The checker retained the exact
source snapshot, complete log, command, elapsed time, outcome, environment
digest, and before/after source and maintained-dependency bindings for
each run outside the maintained source tree. The actual 13
attempts are:

| Attempt | Outcome | Elapsed seconds | Actual scope or failure |
|---|---|---:|---|
| `source1` | **FAIL**, exit 1 | 82.123597260 | The direct literal localized-length target failed synthesis of `AddCommGroup` for the localized actual quotient piece at the three graded length declarations. |
| `probe1` | **FAIL**, exit 1 | 15.805038862 | Diagnostic file only: reproduced the direct-target instance failure, including both `let` and `letI` prime-instance presentations. |
| `probe2` | **FAIL**, exit 1 | 87.646908696 | Diagnostic file only: additional localization imports and an instance trace did not resolve the same failure. Its complete 830,451-byte log is retained. |
| `source2` | **PASS**, exit 0 | 29.952386625 | Final six-theorem source, using the existing transparent `pointLength` presentation of the same mathematical length; no diagnostics. |
| `audit1` | **FAIL**, exit 1 | 115.436743988 | All six axiom queries reported the standard three axioms. Scratch failures concerned the source-degree-piece scalar action, a malformed homogeneous-ideal notation, reordered positive-control goals, and `1+1=2` normalization; a downstream deterministic 200,000-heartbeat failure also occurred. |
| `audit2` | **FAIL**, exit 1 | 124.182075450 | After fixture repairs, the remaining failure was a deterministic 200,000-heartbeat `whnf` limit in the five-family target elaboration. All six axiom queries still reported the standard three axioms. |
| `audit3` | **FAIL**, exit 1 | 90.120230287 | A typed local ideal and explicit all-weight bound did not resolve the five-family elaboration failure; it reached the scoped 800,000-heartbeat `whnf` limit. All six axiom queries remained standard. |
| `audit4` | **FAIL**, exit 1 | 114.378334396 | A term-style outer composition reached the inner theorem's hypothesis-argument unification, then hit the scoped 800,000-heartbeat `isDefEq` limit. All six axiom queries remained standard. |
| `audit5` | **FAIL**, exit 1 | 148.717888545 | Explicit `O,A,K` arguments on the two applications did not resolve the inner hypothesis-argument unification; it again reached the scoped 800,000-heartbeat `isDefEq` limit. All six axiom queries remained standard. |
| `audit6` | **FAIL**, exit 1 | 171.336887638 | A separate minimal homogeneous-span helper left the same sole 800,000-heartbeat `isDefEq` failure at the composed degree-zero image argument. All six axiom queries remained standard. |
| `probe3` | **FAIL**, exit 1 | 120.576451099 | Diagnostic file only: partial applications around the actual degree-zero image premise reached deterministic 200,000-heartbeat `isDefEq` and `whnf` limits. Its complete 122,683-byte diagnostic log is retained. |
| `composition1` | **PASS**, exit 0 | 65.685582912 | Separate successful consumer audit: abstract actual ideal, exact identity with the literal unsquared span, derived homogeneity, actual all-weight length supplier, equality transport, and the literal squared-ideal bound. Both printed axiom sets are standard. |
| `audit7` | **PASS**, exit 0 | 176.470568004 | Final core imported audit: all six endpoints, exact source-object comparisons, scalar-Leibniz source return, and all controls passed. The separately successful composition1 fixture supplies the five-family consumer check. |

The diagnostic probes are not successful source checks. The source1
failure, all three probe failures, and every failed imported audit remain
**FAIL**. Lean's deterministic heartbeat diagnostics in the audits are
not process `TIMEOUT` outcomes; the saved records report exit 1.
No interrupted or process-timeout run appears in this history.

The two final successful imported files have separate scopes:
`audit7` establishes the complete endpoint, source-object, and control
checks; `composition1` establishes the actual five-family composition.
The final core audit does not duplicate that consumer proof. In particular,
audit1's scratch `sourceDegreePiece` itself failed elaboration, so its
partial axiom output is not represented as a successful check of that
source-shaped fixture.

The presentation change from source1 to source2 added the existing
`LocalizedGradedLength` import and used its transparent `pointLength`
at the three actual quotient-piece length targets. The generic theorem
continues to state literal `Module.length` of `LocalizedModule`.
The quotient module, prime, localization, hypotheses, and proof
arguments were not changed. Final imported reflexivity checks bind the
existing definitions to independently spelled source objects.

The earlier consumer presentations reached the default
200,000-heartbeat limit and, subsequently, a scoped 800,000-heartbeat
limit. Separating homogeneity and adding explicit coefficient types did
not make those presentations pass. The successful `composition1` keeps
the actual ideal abstract in the raw premises and transports the proved
all-weight bound along its exact identity with the literal equation
span. It retains `set_option maxHeartbeats 800000 in` only for that one
scratch composition declaration. The final `audit7` uses default Lean
heartbeats. Audits `audit3` through `audit7` and `composition1` were
launched with a 600-second process limit, distinct from Lean's heartbeat
budget; no process timeout occurred. No maintained source or theorem
hypothesis was changed by these audit repairs.

The final audit checks all six public endpoints, the generic expansion
of `pointLength` to literal localized-module length, and equality of the
independently spelled source `oz/aPiece/locLen` objects with the existing
maintained definitions. Its source-shaped return uses the actual
scalar-Leibniz submodule for `PtDer` and retains the source's adic
completeness assumption while consuming the used finite-generation
consequence. It does not import the external `IsWRing` implementation,
rebuild that external framework, or assert a compiled substitution into
the submitted repository.

All six final core `#print axioms` reports are exactly

```text
[propext, Classical.choice, Quot.sound]
```

The two printed declarations in the separate composition file, its
homogeneous-span helper and its actual consumer theorem, have the same
exact three-axiom list. These two scratch declarations do not change the
maintained module's six-theorem count.

The six-declaration source contains no new mathematical definition,
private helper, declared axiom, or admitted proof. The final source
check used 14 maintained dependency bindings; the final core audit used
15, and the separate consumer audit used 16, including the new module and
the existing square-family consumer. Their selected source/object
identities remained unchanged
during the runs and matched the saved binding records.

| Final evidence object | SHA-256 |
|---|---|
| Maintained source / `source2.source.lean` | `13338ddbdd38a0f5fbec961ea1dcce93d114f37bca545d1189618e8ddd7ce25f` |
| Final module `.olean` | `b16c2b40912346194ba6963036ded218e8b1589635bfefc959c94af9202982aa` |
| Final core `Audit.lean` / `audit7.source.lean` | `117a0db99a7c393f2298d6342b43b92da9b538742e2e69999ae28a3db95e63f3` |
| `AbstractComposition.lean` / `composition1.source.lean` | `ceb0a8a2a09c7f5a7923581321e21013c01cac9c01c992f6631fcc9f06a10cae` |
| Final source log, empty | `e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855` |
| Final core imported audit log | `642da466aa20aea13e3d867a068a13ba0f38b699257b13e675461f76fb19086c` |
| Successful consumer audit log | `5df64a9deb6862313b631a9de9ab450fe43fced28dc625522c06ff0cb33f9284` |
| Source/object binding record | `e11b88dff20a6aaa3e68de244233173df00a8d69ba87c4009d7c6a1c39588a76` |
| Checker environment | `237d578a8adb02cc0d5de73055e5cf1cfd5ecb15db4275e20f7077e3e543960f` |
| Dependency identity check | `04984f33aea9498b059bf3338fa1066f0f7647c69bf4e7a811552deb25aaa3bf` |

| Attempt | Source snapshot SHA-256 | Complete log SHA-256 |
|---|---|---|
| `source1` | `cdf250de358cd9353e78001611a13c4867d667a23c905b7b0b46316399a0f585` | `02e280cafaad517d1bb2586ec7e6f7490478330b28bed9ad1d2bbf3095eaa786` |
| `probe1` | `dda84475ffa209608cf5db5e5929ba6966ac43ddc90e6642e11faf92e4571e5e` | `c0b52ddade2e511e488a676f1a5252adc24ecc2ef5e66f217b25290f85fc164f` |
| `probe2` | `2bbc90995473baefc019777eea1003d164591a10fea13e896b313b414a59625c` | `15f2f39e4d11fad3f458f4da8d7056dfd71a8f0f5ad8deed8f33980c474c6514` |
| `source2` | `13338ddbdd38a0f5fbec961ea1dcce93d114f37bca545d1189618e8ddd7ce25f` | `e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855` |
| `audit1` | `716d22c357885054e3d75c71954adde731054cbdac71618bbe27cb8a935792b8` | `4a4c063a66dcd5573a6ec958b8dffd37e0c8356e32c1ff14f12e00019f152af8` |
| `audit2` | `4cae86bade7f60848c84067c310f968ad4e2ab37dd64a50126e1ec65bc5b232d` | `f6a8dd8070943de39d7cd7fbf94bfc9ad32c031ce684249ee5d0cc15352f75f3` |
| `audit3` | `6efe5327840d47ed323a3ad6b9788fcdf43d72d5d8513d22a644943763d3be8e` | `c0ccce915b6539050bc47207d4ddcc367ac65d2884f9caaa8ade3132e92389ea` |
| `audit4` | `2f7926d13cbe2371032d02a3a51cc414130a86742af02396af55805389865c31` | `bcbc86aaf71ed5b24ee3a78f52c5e41035c98806c31d054db4e16e99ea192754` |
| `audit5` | `9d08d8676c0f0cd2f58480894e9a4c0385ca7390bdd1f150dcbe4723e56ec752` | `cf764f44ab058e64f39eacb1172be41a7f5fb8a7623d2e29ab05d0425d118aa7` |
| `audit6` | `1e2b8e13a7ed79ee60430896220c8ba0d0d68bad831ff4f60507d04be244ecd9` | `6996b07a286e96d89a5ea794f869a3d83181b4e14621ebfc64eb8f8ec8911d70` |
| `probe3` | `019e89763910146c2c4b25e720902806c062f95bebd4dd2bd8738a44342ddacd` | `fc780f07f1ac142a6a7543203827fae3ffd83a8c9505cbca9072af49a8702e66` |
| `composition1` | `ceb0a8a2a09c7f5a7923581321e21013c01cac9c01c992f6631fcc9f06a10cae` | `5df64a9deb6862313b631a9de9ab450fe43fced28dc625522c06ff0cb33f9284` |
| `audit7` | `117a0db99a7c393f2298d6342b43b92da9b538742e2e69999ae28a3db95e63f3` | `642da466aa20aea13e3d867a068a13ba0f38b699257b13e675461f76fb19086c` |

| Saved attempt record | SHA-256 |
|---|---|
| `source1.json` | `7daeff57598a8315d655d31bf696e7bfdd78f4a59467f05a333ebcad52491a82` |
| `probe1.json` | `269e436ebcef57425b9c48c1bbca2a1f1701441d753604e3c3412b6a3fa6e11c` |
| `probe2.json` | `8389b51490edb7acd39c7dd3fe4fe00f41ae40f188041d7458e65cacf81738ec` |
| `source2.json` | `a528aaf64c383f3f83b85454b2fcd9f912682c6917adbb576fb6831f7742b0dc` |
| `audit1.json` | `20d13e3d1d7a52b52d397e9d128bf2a83ce2b4751bc05b217f63837c1c9176bd` |
| `audit2.json` | `2f53d528573b73aa37417707f02a153740bf2f5ce61acb228283f596d1004066` |
| `audit3.json` | `e3a1582cb96367bad6d56a2323b8128d7654c13e3187ffef679c26ba381de102` |
| `audit4.json` | `472206bda4d414f56095baffe479819babb5d2fa79ea97aee0af279b653f6a2f` |
| `audit5.json` | `e0154b0d52bfdbe88a1be01f08be22a55bb0e54a254b8545ac391cbf99674e0d` |
| `audit6.json` | `ac9cdc619a64f5c5bce5ecdf9664a82897da114cfd12f68ba9c056a58a54d420` |
| `probe3.json` | `3e73a297cb0f5b413500ebd7563288d418a26b1991534769aacf9fb187ad44b4` |
| `composition1.json` | `65ceea91e1c18ea76834ff71e8cd1171ce12e3ca20b7a31db1226a1435d94cc2` |
| `audit7.json` | `8b85d0951a248d6b528c3f4ea24cd76fc512bbe4e71521c66d2c2e21db042f6c` |

The fresh dependency identity check reports the actual Lean binary
version and compiler revision, all nine package revisions matching the
root manifest, clean tracked package sources, and root import,
toolchain, lakefile, and manifest byte identities relative to the
selected baseline. It is an identity and cleanliness check, not a
rebuild of the imported proofs. Reconciliation of the unrelated
conductor-three advance preserved those configuration and dependency
inputs.

The length module newly consumes the earlier finite-image nilpotence
object and the existing length presentation. Its audit additionally
consumes the existing square-family theorem. These prior objects were
copied using verified source/object bindings; they were not freshly
replayed in this pass.

| Reused maintained dependency | Source SHA-256 | Imported object SHA-256 |
|---|---|---|
| `FiniteAlgebraPointNilpotence` | `5899803e10424bede95df25297b4cf786de12eb3883933dfd7d9b241a6f33296` | `38a5cf9a939a0b4ed0146889ad3abcfb38bfe6556ee4b715846e94dd3813ca17` |
| `LocalizedGradedLength` | `f90e6bb4d5b626329a9c3536df951b869c6c1ceadd4a6df2ba93ddce15332aac` | `18c9c520ce6ed00e1eae63ff6537e8ffde93939e97f193e4c9a53483ea506a45` |
| `GradedSquareFamilyLength` | `0d4f4b5e2af0795e92b43db45811e156b290142a6c3d12bdb69150e2486f6d6e` | `3dd707ab4dd7ba88e9b74f093baa5b81e3d4b8a033c9eaec2a6b4fb0dae71dca` |

The nilpotence copy record has SHA-256
`51b5838109246b76ddbc5a287c4d572574de2d6df396cc6c775377c59947cdae`.
The two squaring/length copy records are bound together by SHA-256
`3dbe8dad727d1ca8b3080aabc5109327a96c0f8f82f2e4887e6f72f5635d590f`.
The earlier dehomogenization and quotient objects are covered by copy
record
`55be5dfe12ac43b4e482adc5dda55dbe78d4b545450a2b075afdf95f0cf85e0c`
and by the [slice evidence record](GradedSliceSeparation.md).
Other previously selected maintained and Mathlib objects were also
consumed through their recorded environment. This record does not
retroactively label any of those imported dependencies as freshly
rebuilt.

The frozen six-theorem source and complete analytical body received a
separate read-only mathematical/source review with **PASS**, no
mathematical findings, and no reviewer Lean execution. This review is
distinct from the stock Lean checks and is not an independent proof of
the full submitted argument.

Fresh full-dependency proof replay, independent-kernel verification,
exhaustive regeneration or hashing of all package objects, and
substitution into the external submitted build are **NOT_RUN**.
The two full graded counterexamples above are analytical; their complete
gradings and localized-length computations are not additional compiled
fixtures. The successful local source and two imported audits establish the
specific six-theorem and consumer scope described here, without
promoting later global or arithmetic claims.

[length-source]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/LocLenQuotientWeightPieceLeOne.lean
[objects-source]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/ToDegInjective.lean
[conditions-source]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/OrbitVanishingLocal.lean
[deriv-source]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/ResMapBijective.lean
[slice-source]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/SliceHolds.lean
