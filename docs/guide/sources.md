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
its new Lean elaboration, fresh replay, axiom audit and independent review
are **NOT_RUN**. The [finite cofinality obstruction](../../GRWTSK/OrderLatticesOrderedAlgebraicStructures/OrderedSets/FiniteCofinalityObstruction.lean)
prevents confusing a finite local compression with a globally finite cofinal
family. Neither source establishes global smooth reconstruction.
