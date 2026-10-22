# Full two-point tree energy has unavoidable singleton mass

Status: `MATHEMATICAL_REFUTATION_DOCUMENTED / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`  
Owner: issue [#460](https://github.com/grwtsk/math/issues/460)  
Successor observable: issue [#461](https://github.com/grwtsk/math/issues/461)  
Coordinate parent: issue [#458](https://github.com/grwtsk/math/issues/458) / draft PR [#459](https://github.com/grwtsk/math/pull/459)  
Generic maximal comparison: issue [#437](https://github.com/grwtsk/math/issues/437) / draft PR [#449](https://github.com/grwtsk/math/pull/449)  
Canonical maximal-prefix consumer: issue [#410](https://github.com/grwtsk/math/issues/410) / draft PR [#411](https://github.com/grwtsk/math/pull/411)  
Endpoint-information-loss witness: issue [#430](https://github.com/grwtsk/math/issues/430) / draft PR [#432](https://github.com/grwtsk/math/pull/432)

This packet records a negative result. The complete unweighted aligned-dyadic tree energy is a valid finite upper-control observable for prefix maxima, but it cannot satisfy the subpolynomial all-scale arithmetic budget proposed in the two-point Möbius route. Its scale-zero layer already contains quadratic mass before any difficult correlation estimate is considered.

The generic finite maximal theorem, zero-padding adapter, and exact coordinate expansion remain useful. Only the proposed **sum over every block position at every scale** is refuted as an RH-facing arithmetic supplier.

## 1. Immutable source binding

Direct parent:

```text
repository: grwtsk/math
branch: research/rh-dyadic-tree-coordinates-458-20261021
revision: 9d620074415a05694028538a7b2e9d9c10fd0577
tree: 6d8358a7eac355da39e8be429106ba206a245f4c
PR: #459
```

Candidate source layer:

```text
branch: research/rh-tree-singleton-mass-witness-460-20261021
source commit: b2ef5fab001839498d67f04f2402d9591ab40e7c
source path:
  GRWTSK/NumberTheory/Moebius/TwoPointTreeSingletonMassObstruction.lean
source blob: 935cff049d32632e3aed703e80a6f123e7923a25
```

The branch changes no existing source file, public root import, dependency pin, workflow, executor, or accepted theorem. It adds a separate obstruction layer.

## 2. The coordinate energy under review

For a real sequence `a`, aligned scale `r`, and block index `q`, the inherited source defines

\[
B_a(r,q)
 = \sum_{q2^r\le n<(q+1)2^r} a(n).
\]

At ambient depth `m`, the coordinate energy is

\[
E_m(a)
 = \sum_{r=0}^{m}
   \sum_{q<2^{m-r}} B_a(r,q)^2.
\]

PR #459 proves exactly that this is the recursively defined tree energy. That identity is finite reindexing, not an estimate.

For dyadic scale `j`, shift `h`, and

\[
Y=2^{j+1},\qquad L(j,h)=Y-h-1,
\]

the zero-padded two-point source is

\[
a_{j,h}(n)=
\begin{cases}
\mu(n+1)\mu(n+1+h),&n<L(j,h),\\
0,&n\ge L(j,h).
\end{cases}
\]

The complete all-shift coordinate energy is

\[
\mathcal E_j
 = \sum_{1\le h<Y} E_{j+1}(a_{j,h}).
\]

The proposed all-scale supplier was

\[
\forall\delta>0\;\exists A_\delta\ge0\;\forall j,
\quad
(j+2)\mathcal E_j
 \le
\left(A_\delta (2^j)^\delta\right)^2Y.
\]

The present packet proves that this proposition is mathematically false.

## 3. Exact scale-zero layer

At scale zero, every aligned block is a singleton:

\[
B_a(0,q)=a(q).
\]

Define

\[
S_m(a)=\sum_{q<2^m}a(q)^2.
\]

The source declarations are

```lean
singletonScaleSquareEnergy
alignedDyadicBlockSum_zero
alignedDyadicScaleSquareEnergy_zero
singletonScaleSquareEnergy_nonneg
singletonScaleSquareEnergy_le_coordinate
```

The load-bearing finite inequality is

\[
S_m(a)\le E_m(a).
\]

It is exact order reasoning: the scale-zero energy is one summand of a finite sum whose other scale energies are nonnegative sums of squares.

For the complete two-point family define

\[
\mathcal S_j
 = \sum_{1\le h<Y}
   \sum_{0\le q<Y} a_{j,h}(q)^2.
\]

The source proves

```lean
twoPointSingletonSquareMass_le_coordinateBlockEnergySum
mertensTwoPointSingletonSquareMass_le_coordinateBlockEnergySum
```

and hence

\[
\mathcal S_j\le\mathcal E_j.
\]

No asymptotic theorem, cancellation claim, analytic continuation, or numerical certificate is used in this finite comparison.

## 4. Exact arithmetic reindexing

For a nonzero padded singleton put

\[
a=q+1,\qquad b=q+1+h.
\]

The conditions

```text
1 <= h < Y,
0 <= q < Y-h-1
```

are equivalent to

```text
1 <= a < b < Y.
```

The inverse is

\[
q=a-1,\qquad h=b-a.
\]

Therefore

\[
\mathcal S_j
 = \sum_{1\le a<b<Y}\mu(a)^2\mu(b)^2.
\]

The source names the right side

```lean
mertensSquarePairMass j.
```

This identity is represented in the source certificate field

```lean
MertensSingletonMassRefutationCertificate.pair_reindex.
```

It remains an authored proof obligation in the current `SOURCE_DRAFT`; no elaboration is claimed.

## 5. Squarefree-pair identity

For every positive integer `n`,

\[
\mu(n)^2=
\begin{cases}
1,&n\text{ squarefree},\\
0,&n\text{ not squarefree}.
\end{cases}
\]

Let

\[
Q(M)=\#\{1\le n\le M:n\text{ squarefree}\}.
\]

Then each summand in the pair mass is one exactly when both indices are squarefree, so

\[
\mathcal S_j
 = \binom{Q(Y-1)}2.
\]

The source defines

```lean
mertensSquarefreeCountAtScale
```

and records this finite identity in

```lean
MertensSingletonMassRefutationCertificate.squarefree_pair_count.
```

Mathlib supplies the exact source characterization

```lean
ArithmeticFunction.moebius_ne_zero_iff_squarefree.
```

The present packet does not report a replay or trust audit of the resulting proof script.

## 6. Elementary positive-density bound

A positive-density lower bound for squarefree integers is enough; the exact density `6/pi^2` is unnecessary.

If `n` is not squarefree, then `d^2` divides `n` for some integer `d>=2`. Hence the number of nonsquarefree integers at most `M` is no larger than

\[
\sum_{d=2}^{\lfloor\sqrt M\rfloor}
  \left\lfloor\frac{M}{d^2}\right\rfloor
\le
M\sum_{d=2}^{\infty}\frac1{d^2}.
\]

Use the elementary majorization

\[
\sum_{d=2}^{\infty}\frac1{d^2}
\le
\frac14+
\sum_{d=3}^{\infty}\frac1{d(d-1)}
=
\frac14+rac12
=
\frac34.
\]

Therefore

\[
Q(M)\ge\frac M4.
\]

This deliberately weak bound is sufficient and avoids importing the prime number theorem, zeta-value evaluation, or the exact squarefree asymptotic.

For `Y>=16`, it implies, after weakening constants if necessary,

\[
Q(Y-1)\ge\frac Y8,
\qquad
Q(Y-1)-1\ge\frac Y{16},
\]

and thus

\[
\mathcal S_j
 = \frac{Q(Y-1)(Q(Y-1)-1)}2
 \ge \frac{Y^2}{256}.
\]

The source packages the precise growth consequence needed below as

```lean
MertensSingletonMassRefutationCertificate.quarterPower_escape.
```

This field is not an oracle: it is the explicit theorem target to be constructed from the preceding elementary count. Until that proof elaborates, the Lean refutation remains conditional on the certificate even though the mathematical argument is recorded here.

## 7. Contradiction at one exponent

The all-positive-exponent supplier must hold at

\[
\delta=\frac14.
\]

Its right side is

\[
\left(A(2^j)^{1/4}\right)^2Y
 = A^2(2^j)^{1/2}Y
 \asymp A^2Y^{3/2}.
\]

The left side dominates the singleton layer:

\[
(j+2)\mathcal E_j
\ge
(j+2)\mathcal S_j
\ge
\frac{j+2}{256}Y^2
\]

for all sufficiently large `j`.

For each fixed finite `A`, quadratic growth in `Y` eventually exceeds `A^2Y^(3/2)`. Therefore the quarter-power budget is false, and hence the proposition quantified over every positive `delta` is false.

The source separates this logic into

```lean
QuarterPowerMertensCoordinateEnergyBudget
quarterPowerBudget_of_subpolynomialCoordinateEnergy
not_quarterPowerBudget_of_singletonMassCertificate
not_subpolynomialCoordinateEnergy_of_singletonMassCertificate
CompleteTreeSupplierRefutedAtScope
completeTreeSupplierRefutedAtScope_of_certificate
```

The selected disposition is

```text
REFUTED_AT_SCOPE:
  complete unweighted sum over every aligned block position at every scale.
```

## 8. What survives

The obstruction does not refute or weaken the following exact finite mathematics:

1. the generic prefix-to-tree comparison in PR #449;
2. literal zero padding and prefix compatibility in PRs #455/#457;
3. the recursive-to-coordinate identity in PR #459;
4. the canonical maximal-prefix observable in PR #411;
5. the terminal endpoint information-loss witness in PR #432.

Those results explain why the complete tree is sufficient for maximal control. The present result explains why it is too large to serve as the desired arithmetic supplier.

No contradiction with the conditional implication to RH arises. A conditional theorem remains logically valid when its premise is false; it simply provides no route to its conclusion.

## 9. Failure boundary

The refutation uses two defining features simultaneously:

```text
complete sum over every block position;
unweighted inclusion of scale-zero singleton blocks.
```

It does not refute:

- a selected binary-decomposition path for each prefix;
- a maximum over block positions at each scale;
- a weighted square function whose fine-scale mass is properly normalized;
- a Carleson packing condition;
- a variation or oscillation norm;
- the maximal-prefix statistic itself.

At singleton scale, a max-per-scale observable pays

\[
\max_q |a_{j,h}(q)|^2\le1
\]

for each shift, so the complete shift sum costs only `O(Y)`, not `Theta(Y^2)`. This is the main design requirement for the successor issue #461.

## 10. Positivity classification

The finite source uses only:

- nonnegativity of real squares;
- nonnegativity of finite sums of squares;
- monotonicity under retaining one nonnegative scale summand.

It proves no positive kernel, positive measure, positive semidefinite operator, trace/state positivity, Weil positivity, finite-height RH positivity, or global positivity. Positivity is not assumed in order to recover an RH-facing form.

## 11. Provenance graph

```text
PR #449 generic aligned-tree comparison
  --represented explicitly by--> PR #459 coordinate double sum

PR #459 coordinate energy
  --contains as scale zero--> singleton square mass

actual Möbius values
  --square indicator of--> squarefree source indices

singleton shift-position pairs
  --finite bijection--> ordered pairs 1 <= a < b < Y

squarefree positive-density bound
  --forces--> quadratic singleton mass

quadratic singleton mass
  --refutes at scope--> complete-tree subpolynomial supplier

obstruction #460
  --motivates, does not prove--> max-per-scale/Carleson successor #461
```

No scalar contributor weights are assigned. Imported arithmetic facts, repository-specific formal interfaces, mathematical diagnosis, and future replay work remain separate.

## 12. Evidence states

Established as mathematical analysis:

```text
MATHEMATICAL_REFUTATION_DOCUMENTED
```

Established as repository evidence:

```text
SOURCE_DRAFT
```

Not established:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ANALYTIC_PREMISES_DISCHARGED
```

No Lean/Lake/native parsing or elaboration, generated-declaration reconciliation, transitive axiom/native/unsafe/opaque audit, repository test, independent replay, merge, root admission, or issue closure occurred. The `#print axioms` requests are unexecuted source text.

## 13. Exact successor

Issue #461 owns the replacement observable:

\[
\operatorname{CarlesonEnergy}_m(a)
 = \sum_{r=0}^{m}
   \max_{q<2^{m-r}}|B_a(r,q)|^2.
\]

The bounded next theorem is a binary prefix decomposition selecting at most one aligned block per scale and proving

\[
\max_{N\le2^m}\left|\sum_{n<N}a(n)\right|^2
\le
(m+1)\operatorname{CarlesonEnergy}_m(a).
\]

The subsequent arithmetic question is whether the corresponding all-shift Möbius max-per-scale energy has the subpolynomial budget required by the canonical maximal-prefix consumer. This packet makes no claim that it does.

## 14. Nonclaims

This packet does not elaborate the new Lean source, independently replay the squarefree counting proof, prove the corrected Carleson supplier, prove Chowla or Elliott, prove Sarnak disjointness, pay a pickup damping, establish a zero-free region, prove finite-height RH, or prove the Riemann Hypothesis.