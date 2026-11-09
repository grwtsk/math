# Mathematical source navigation

[Technical guides](README.md) · [Documentation index](../index.md)

Maintained mathematical modules are under [GRWTSK/](../../GRWTSK/).
The [MSC2020 source layout](../taxonomy/msc2020/README.md), including
`followup_files`, determines current filesystem locations; a declaration
namespace alone is not a path. Use the
[subject index](../taxonomy/subjects/index.md) and
[source-bound ontology](../ontology/README.md) for navigation.

The historical catalogue at
[commit 706c62c](https://github.com/grwtsk/math/commit/706c62c1285a9857cb9d52e0620ec2cb514eb374)
recorded 72,578 modules and 1,722,561 declaration observations. They
are not current counts or counts of verified theorems. Do not regenerate
large layouts or relocate sources without a consumer migration audit;
see [issue #1425](https://github.com/grwtsk/math/issues/1425).

## Alexander spectral source and finite compression

The [Alexander-incidence supplier](../../GRWTSK/OperatorTheory/PrimeKnotAlexanderSpectralTriple.lean)
defines actual prime-polynomial/knot labels, finite incidence and the written
countable weighted source. The [finite Euclidean consumer](../../GRWTSK/OperatorTheory/PrimeKnotAlexanderEuclideanDifferential.lean)
packages its **unweighted** finite matrix as bounded operators and proves a
compact resolvent for nonreal parameters. Its pinned targeted Lean build passed
at [commit c364d32](https://github.com/grwtsk/math/commit/c364d32b8b2987c4a03b2b6f3eef7ed821d0a5b2);
the [source-bound evidence note](https://github.com/grwtsk/math/issues/1709#issuecomment-6728830487)
does **not** claim a fresh separate kernel replay or transitive axiom audit.

The [weighted finite-compression consumer](../../GRWTSK/OperatorTheory/PrimeKnotAlexanderWeightedCompressions.lean)
keeps both the original diagonal `code(i)+1` and
`2^(-code(i)-code(j)-2)` Alexander-incidence weights. It supplies proposed
finite exact inclusion/compression laws and a separately identified
mathematical Hilbert--Schmidt tail argument for the infinite bounded part;
its targeted Lean build passed after repairing `weightedEntry_symmetric`
to use the exact exponent commutativity identity. The repaired revision and
build scope are pinned in [verification issue #1709](https://github.com/grwtsk/math/issues/1709).
Fresh separate replay, transitive axiom audit and independent review remain
**NOT_RUN**; the infinite Hilbert--Schmidt estimate remains a written argument.
Its `weightedFiniteDirac_leakage_outside` and
`weightedFiniteDirac_defect_restrict_zero` declarations also distinguish exact
compression from the generally false full Dirac/extension intertwining law. The [finite cofinality obstruction](../../GRWTSK/OrderLatticesOrderedAlgebraicStructures/OrderedSets/FiniteCofinalityObstruction.lean)
prevents confusing a finite local compression with a globally finite cofinal
family. Neither source establishes global smooth reconstruction.


## Uniform weighted incidence bound and the countable extension frontier

The [finite Hilbert--Schmidt bound supplier](../../GRWTSK/OperatorTheory/PrimeKnotAlexanderFiniteHilbertSchmidtBound.lean)
consumes the exact source [weightedEntry](../../GRWTSK/OperatorTheory/PrimeKnotAlexanderWeightedCompressions.lean),
rather than introducing an unrelated matrix. Its new candidate Lean declarations
include an injective-enumeration square-mass estimate
\(\sum_{i\in F}4^{-(c(i)+1)}\leq1/3\), the source-specific finite
Hilbert--Schmidt squared bound \(\sum_{i,j\in F}|b_{ij}|^2\leq1/9\),
and a finite complex-linear Euclidean matrix realization. These constants
are independent of the finite snapshot \(F\).

The same source supplies a complete **written analytic** dense finite-support
extension argument constructing the bounded complex-linear incidence operator
\(B\) on \(\ell^2(V,\mathbb C)\) with \(\|B\|\leq1/3\), and its exact
matrix-coordinate return on finite-support vectors. **A genuine infinite
Mathlib lp continuous-linear-map declaration and its source-return theorem are
still missing.** The unbounded diagonal \(D_0\) is separate and no
operator-norm convergence of its finite truncations is asserted. The
[diagonal Hilbert domain candidate](../../GRWTSK/FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/DiagonalHilbertDomain.lean)
is a real-coordinate mathematical supplier requiring separate complex
adaptation.

The targeted Lean build of the *earlier weighted finite module* passed at
[7c35ce0](https://github.com/grwtsk/math/commit/7c35ce03b631477684ff6b96f8d09d3b73172f4c);
the new bound supplier has elaboration/build **NOT_RUN** until an exact
verification check occurs. Fresh separate kernel replay, transitive axiom
audit, and independent review remain **NOT_RUN** for the new declarations.
Source-bound observations are recorded in [issue #1709](https://github.com/grwtsk/math/issues/1709).
