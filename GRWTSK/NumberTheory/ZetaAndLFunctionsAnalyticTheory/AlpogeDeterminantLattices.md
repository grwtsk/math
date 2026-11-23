# Divisibility of determinants between projective lattices

Over a number field, a determinant between two lattices has an arithmetic
factor from each lattice. For a map of smaller rank, the index belongs
to its image inside its saturation. These two points matter when using
finite-place divisibility to obtain a lower bound for an archimedean
height. The following calculation gives the corresponding index ideal.

## A determinant with source and target coefficient ideals

Let \(R=\mathcal O_K\). Write projective lattices in pseudo-bases as
\(P=\bigoplus_j I_j e_j\) and \(Q=\bigoplus_i J_i f_i\), with nonzero
fractional ideals \(I_j,J_i\). Write a \(K\)-linear map in these frames
as \(A=(a_{ij})\). Then \(A(P)\subseteq Q\) exactly when
\(a_{ij}\in J_i I_j^{-1}\) for every \(i,j\). In equal rank the integral
determinant ideal is
\[
 \mathfrak d(A)=(\det A)\,\frac{\prod_j I_j}{\prod_i J_i}.
\]
Indeed each Leibniz monomial belongs to
\(\prod_j J_{\sigma(j)} I_j^{-1}=\prod_iJ_i/\prod_j I_j\), a fractional
ideal closed under addition and negation. If the source and target frames
of the determinant lines are multiplied by \(u,v\in K^\times\), the matrix
determinant becomes \((u/v)\det A\) and the two coefficient ideals are
divided by \((u),(v)\). All these factors cancel **in the ideal itself**.
This includes frames coming from different pseudo-bases, since the two
exterior powers are lines and their coefficient ideals transform in this
way. For instance multiplication by \(1/2\) carries \(2\mathbb Z\) onto
\(\mathbb Z\), with determinant ideal \((1/2)(2)=(1)\) and index one.

For \(\det A\ne0\), localize at a nonzero prime \(\mathfrak p\). Choose
generators of all localized coefficient ideals. The integral matrix in
these local bases has Smith diagonal \(\pi^{a_1},\ldots,\pi^{a_r}\) up to
units. Thus \(\operatorname{ord}_{\mathfrak p}\mathfrak d(A)=\sum_i a_i
=\operatorname{length}_{R_{\mathfrak p}}((Q/A(P))_{\mathfrak p})\).
Each residue-field composition factor has cardinality \(N\mathfrak p\).
With \(N\) the absolute fractional-ideal norm this gives
\[
 \begin{aligned}
 \log\#(Q/A(P))
 &=\sum_{\mathfrak p}\operatorname{ord}_{\mathfrak p}\mathfrak d(A)\log N\mathfrak p\\
 &=\sum_{\sigma:K\hookrightarrow\mathbb C}\log|\det(\sigma A)|
   +\sum_j\log N I_j-\sum_i\log N J_i\\
 &\le\sum_{\sigma,j}\log\|\operatorname{col}_j(\sigma A)\|_2
   +\sum_j\log N I_j-\sum_i\log N J_i .
 \end{aligned}
\]
The embedding sum counts conjugate complex embeddings separately.
For any finitely supported nonnegative \(e_{\mathfrak p}\le
\operatorname{ord}_{\mathfrak p}\mathfrak d(A)\), the same upper bound
holds for \(\sum_{\mathfrak p}e_{\mathfrak p}\log N\mathfrak p\), since
each prime ideal has norm at least two. Taking every coefficient ideal
to be \(R\) recovers the square integral-matrix comparison.
The equality uses the principal-ideal norm formula and multiplicativity.
For the inequality take an orthonormal frame adapted to successive
columns. The change of orthonormal basis has determinant of absolute
value one. The diagonal entries in the new frame have absolute values at
most the original column norms by Cauchy–Schwarz. Their product gives
Hadamard's bound at each embedding. These are Euclidean norms in the
chosen coordinates. Arbitrary hermitian norms require the corresponding
metric factors on the determinant lines.

## Rectangular maps and divisibility in the occupied rank

For generic rank \(s>0\), put \(S=Q\cap\operatorname{im}(A\otimes K)\).
For row and column subsets \(U,V\) of size \(s\), set
\[
 \mathfrak d_{U,V}=(\det A_{U,V})
          \prod_{j\in V}I_j\big/\prod_{i\in U}J_i,\qquad
 \mathfrak d_s=\sum_{U,V}\mathfrak d_{U,V}.
\]
After localization, changes of bases are invertible matrices over a DVR.
Their compound matrices act on the \(s\)-minors by integral linear
combinations, by Cauchy–Binet. Applying the inverse base change gives the
reverse inclusion of the generated ideals. In Smith bases, the only
nonzero \(s\)-minor is the product of the \(s\) nonzero diagonal entries.
It follows place by place that \(\#(S/A(P))=N\mathfrak d_s\). In particular
\(N\mathfrak d_s\le N\mathfrak d_{U,V}\) for **every nonzero** such minor.
If all entries lie in \(D J_i I_j^{-1}\) for an integral ideal \(D\), every
\(s\)-minor acquires \(D^s\) and
\(\operatorname{ord}_{\mathfrak p}\mathfrak d_s\ge
s\operatorname{ord}_{\mathfrak p}D\). This exponent uses the occupied rank.
For \(\mathrm{diag}(3,0)\) on \(\mathbb Z^2\), the saturation quotient
has order three, while the rank-two determinant is zero and the full
cokernel is infinite.

For the square example \(K=\mathbb Q(\sqrt{-7})\), \(A=\mathrm{diag}(3,\sqrt{-7})\),
take all coefficient ideals equal to \(R\). The prime 3 is inert because
\(-7\) is a nonsquare modulo 3, giving norm 9. The prime 7 ramifies and
\((\sqrt{-7})\) has norm 7. The index is \(9\cdot7=63\). At each of the two
embeddings the columns are orthogonal with norms \(3,\sqrt7\), so the
archimedean upper bound is exactly \(\log63\).

## Comparison with the source DIV inequality

In the archived source, `Data.DIV` bounds
\(\mu_{CC}(u_0)+h(u_0,u)-F_o(u_0)\) at every \(u_0,u\).
Its right side contains the derivative-order function, period term,
level term and two quantitative errors. The original `LinkDIV_at`
also requires a map into the actual target, full target and Bessel
conditions, a height upper bound on every nonzero source map, and
further comparisons. A common coefficient-ideal factor supplies a
local determinant contribution only after it is established for the
actual map. A nonzero minor of the required rank, the comparison
of saturated sublattice slopes with the ambient target, and all
metric, period, level and error terms still need independent proofs.
In particular the source uses squared norms in its height normalization.
[Alpöge archive, Data.DIV, blob e4332fd](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/RankGapBounds/MeanBoundSecondForm.lean#L118-L121)
· [LinkDIV_at, blob ba31f51](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/GlobalTheoremInputs.lean#L77-L88)
· [Explanatory draft, 22 November 2026, §§II.6.7–6.8, III.6](https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper_v2.pdf)

The adjacent Lean module proves fractional-ideal containment for actual
matrix determinants and minors, the occupied-size common factor,
integrality and frame invariance of the normalized ideal, its
absolute norm, complex Hadamard, and the log bound over all embeddings.
It also proves the finite-prime logarithmic norm formula for any nonzero
integral ideal, with the actual multiplicities of its prime factors, and
its equality to the embedding sum for every nonzero algebraic integer.
Taking that integer to be the determinant gives the free-lattice equality.
The index interpretations by localization and Smith form, and the
transfer to the original source maps and their metrics, are outside its
formal statements. Independent external review is `NOT_RUN`.
[Lean declarations](AlpogeDeterminantLattices.lean)

## Relative indices without an inclusion

For full rational lattices \(P,Q\) in the same space, choose a full
common sublattice \(C\subseteq P\cap Q\). Write \([Q:C]\) for the order
of the actual quotient. If \(b_P,b_Q,b_C\) are generating integer bases
viewed as rational bases, the integral determinant-index theorem gives
\([Q:C]=|\det_{b_Q}b_C|\) and \([P:C]=|\det_{b_P}b_C|\).
Multiplication of the transition matrices cancels the common factor:
\[
 \frac{[Q:C]}{[P:C]}=|\det_{b_Q} b_P|.
\]
Thus this orientation agrees with \([Q:P]\) when \(P\subseteq Q\),
and the quotient is independent of the choice of \(C\). Under a rational
automorphism \(T\), use \(Tb_P\) on its actual image and a common lattice
of \(T(P),Q\). The right side acquires \(|\det_{\mathbb Q}T|\). In a real
Euclidean space, for commensurable full lattices the same cancellation
gives \(\operatorname{covol}(P)/\operatorname{covol}(Q)\). An image
of lower rank uses the Euclidean measure **in its span**.
[Rational-basis index theorem at the Mathlib pin](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/LinearAlgebra/FreeModule/Finite/CardQuotient.lean#L112-L123)
· [Covolume of a finite-index sublattice](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Algebra/Module/ZLattice/Covolume.lean#L167-L181)

For any two nonzero fractional ideals \(I,J\) of a number field, take
\(C=I\cap J\) in their actual additive groups. This fractional ideal is
nonzero because \((I\cap J)(I+J)=IJ\ne0\). Relative to an integral
basis of \(\mathcal O_K\), the absolute rational basis determinant of
each ideal is its absolute fractional-ideal norm. The quotient above is
therefore \(N(I)/N(J)\), with no nesting or principality assumptions.
In particular, given nonzero pseudo-basis ideals and a nonsingular matrix
\(A\) of any size, set \(P=(\det A)\prod I_j\) and \(Q=\prod J_i\).
The two ordinary indices on its determinant lines give exactly
\(|N_{K/\mathbb Q}(\det A)|\prod NI_j/\prod NJ_i\), also when
\(A\Lambda\not\subseteq\Gamma\). The Lean proof realizes the actual
intersection by a nonzero fractional ideal and obtains its basis from
localization. The arbitrary-rank rational statement and the Euclidean
covolume statement take the common full lattice as data.
[Mathlib's fractional-ideal basis and determinant](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/NumberField/FractionalIdeal.lean#L78-L118)
· [Relative-index theorems](AlpogeRelativeLatticeIndex.lean)

Two exact computations check the orientation and saturation independently.

* For \(\Lambda=\tfrac16\mathbb Z,\ \Gamma=\tfrac15\mathbb Z\) and
  \(A=2/3\), the image is \(P=\tfrac19\mathbb Z\). If \(x\) lies in
  both \(P,\Gamma\), then \(5x\) and \(9x\) are integers, hence
  \(x=2(5x)-9x\) is an integer. Conversely every integer is in both.
  The relative index is \([\Gamma:\mathbb Z]/[P:\mathbb Z]=5/9\).
* For columns \((6,8,0),(0,5,10)\), the signed cross product
  \((80,-60,30)=10(8,-6,3)\) describes the occupied plane. Its
  integer points are exactly \((3t,s,2s-8t)\), since reducing the
  plane equation \(8x-6y+3z=0\) modulo three gives \(3\mid x\).
  In \((t,s)\) coordinates the two columns are \((2,8),(0,5)\).
  The map \((t,s)\mapsto7t+2s\bmod10\) is surjective, since it
  sends \((3,0)\) to one. Its kernel consists of the points with
  \(2\mid t\) and \(5\mid s-4t\), precisely the span of the two
  columns. Hence the saturation quotient is cyclic of order ten.
  The Gram determinant of the saturation basis \((3,0,-8),(0,1,2)\)
  is \(73\cdot5-(-16)^2=109\); for the original columns it is
  \(100\cdot125-40^2=10900\). Their covolume ratio is ten, computed
  from the two bases without assigning the saturation's covolume by
  division by the predicted index.

The relative-index results still require identification of the source’s
actual maps, saturated subspaces and hermitian metrics before they can
contribute to `Data.DIV`. Independent external review is `NOT_RUN`.
