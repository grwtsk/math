# Signed-trace and bounded-height zeta criteria

All statements use Mathlib's original `_root_.RiemannHypothesis` and the
existing `GRWTSK.RiemannHypothesis.NontrivialZetaZero` predicate. A zero must
satisfy $\zeta(s)=0$, must not be a strictly negative even integer, and must
not be the pole $s=1$. No replacement terminal target is introduced.

## Signed-trace equivalence and conditional extraction

For the [checked algebraic witness](../../../Algebra/Polynomial/conjugate-quartic.md),
\[
\mathrm{RH}\ \Longleftrightarrow\
\forall s\text{ in the exact zero domain},\quad
0\le H(\Re(s)-1/2,\Im(s)).
\]
`riemannHypothesis_iff_quadraticTraceNonnegative` proves this equivalence.
It supplies no witness of `QuadraticTraceNonnegative`.

`riemannHypothesis_of_trace_extraction` is a conditional consumer: for each
target zero it requires real sequences $W_n,\lambda_n,R_n$ and $L>0$ with
\[
W_n=\lambda_n H+R_n,\qquad W_n\ge0,\qquad
\lambda_n\longrightarrow L,\qquad R_n\longrightarrow0.
\]
Closedness of the nonnegative reals gives $LH\ge0$; $L>0$ gives $H\ge0$.
All of these source identities, positivity and limiting assertions remain
hypotheses. No zeta-derived functional or orbit-isolation estimate is supplied.

## Actual zero locations and multiplicity limits

`zeroCoordinate(s)=-(s-1/2)i`. `roots_eq_zero_coordinates` identifies the
quartic root list with the coordinates of the existing critical reflection,
original point, functional-equation reflection, and complex conjugate, in that
order. `root_has_nontrivial_zero` uses the existing checked zero transports to
show that every list entry is the coordinate of a target zero.

This is a location theorem. Repeated entries on either axis do not assert
increased analytic multiplicity. No divisibility of zeta by the quartic,
spectral trace extraction, or transfer from an arbitrary positive Gram form
is proved.

## Exhaustion and induction

`RHThrough N` asserts exact critical-line equality for every target zero with
$|\Im(s)|\le N$. `riemannHypothesis_iff_all_heights` proves
\[
\mathrm{RH}\ \Longleftrightarrow\ \forall N\in\mathbb N,\ \mathrm{RHThrough}(N).
\]
Its reverse implication chooses a natural height above the given zero.
`RHThrough.mono` restricts an enclosure to a smaller height.

`HeightScheme` requires a family of states, a state at zero, a total proved
successor step, and a soundness theorem at every height. Ordinary natural
induction constructs all states, and `HeightScheme.riemannHypothesis` consumes
them. There is no instance of this interface for zeta in this contribution.

For closed rectangles
\[
K(N,m)=\{s:0\le\Re(s)\le1,\ |\Im(s)|\le N,\
1/(m+1)\le|\Re(s)-1/2|\},
\]
`riemannHypothesis_iff_rectangle_exclusion` proves RH equivalent to absence of
target zeros on **every** $K(N,m)$. The proof uses the existing open-strip
classification and Archimedean cofinality in both indices. One fixed height
or one fixed separation from the line does not supply this premise.

## Sources and verification

[Trace criterion](../../../../../GRWTSK/NumberTheory/Zeta/Riemann/QuadraticTraceCriterion.lean),
[zero-orbit coordinates](../../../../../GRWTSK/NumberTheory/Zeta/Riemann/ZeroOrbitQuartic.lean),
[height and rectangle criteria](../../../../../GRWTSK/NumberTheory/Zeta/Riemann/BoundedHeightCriterion.lean),
[consumer contracts](../../../../../GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/TraceAndHeightCriteria.lean),
and the selected receipt (artifact:gitblob:7f988915e1b12d45aacd2b9aabcf2d14e8e473c0)
record native replay of this project dependency closure at trust zero with
fatal warnings and an owned-declaration/transitive-axiom audit. The allowed
axioms are `propext`, `Classical.choice`, and `Quot.sound`. The target's pinned
Mathlib source is separately hash-bound. Dependency objects are reused;
no whole-library rebuild or independent review is claimed. Deliberate
statement controls reject deleting the extraction premise and substituting
a single finite-height enclosure for all heights.
The integration record (artifact:gitblob:51ed88a59cf8a29ed80b971376e413523f285ae1)
keeps the pre-existing repository-wide layout and documentation failures separate
from this selected native replay.

[Loeffler–Stoll](https://arxiv.org/abs/2503.00959) explains the formalized zeta
infrastructure and the importance of the pole exclusion in a totalized
function. [Platt–Trudgian](https://arxiv.org/abs/2004.09765) supplies rigorous
bounded-height numerical evidence, not the all-height premise used here.
The [AFP zeta development](https://isa-afp.org/entries/Zeta_Function.html)
was also searched as an Isabelle/HOL reference; no cross-prover theorem was
imported or certified by this Lean replay.

The existing [polynomial energy route](criteria.md) and its
[uniform-supplier obstruction](../../Moebius/PrimeFilters/uniform-supplier-obstruction.md)
were inspected for reuse. The obstruction remains a written analytic argument;
this selected replay does not newly validate the P04 dependency closure.

## Credit and open frontier

Human direction: grwtsk contributors, supplied GRL-RH-1 / 0.4.0 specification.
Formalization and research assistance: OpenAI Codex. Existing zero symmetries
and Mathlib declarations retain their original attribution and licenses.

The outcome is `PARTIAL_RESULT_CHECKED` for the algebra and zero-coordinate
bridge and `CONDITIONAL_REDUCTION_CHECKED` for the RH criteria. RH remains
`OPEN_FRONTIER`: prove an actual source nonnegativity/extraction theorem,
construct a total sound zeta height scheme, establish rectangle exclusions
for both unbounded indices, or supply the existing exact P04 bound. None is
assumed as an unconditional result. The exact remaining Lean interfaces and
their quantifiers are recorded in the receipt's declaration census.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Zeta/Riemann/QuadraticTraceCriterion.lean`](../../../../../GRWTSK/NumberTheory/Zeta/Riemann/QuadraticTraceCriterion.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 3 |
| Theorem/lemma commands | 2 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
