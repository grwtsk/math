# Source-preserving rational enclosure refinement

Local attribution: grwtsk contributors.

## Mathematical purpose

[RationalEnclosureRefinement.lean](RationalEnclosureRefinement.lean) extends the
existing [RationalRealBounds.lean](RationalRealBounds.lean), retaining its
`Bounds := rational × rational` and `Encloses` definitions. It supplies the
mathematical synchronization layer for multiple certified approximations to
one signed Weil scalar or matrix entry. The operational graph, neural models,
and numerical parser are not implemented in this mathematical repository.

Starting source pin: `9f997b28e66f1997c9c7c6e1318b08081e2bfd90`.
The development is an elementary local order/inequality argument; no external
paper theorem is represented as newly formalized.

## Main argument and declarations

`Refines a b` means `b.lower ≤ a.lower` and `a.upper ≤ b.upper`. The source proves
reflexivity, transitivity, antisymmetry, and preservation along the actual
reflexive-transitive closure of refinement edges. The intersection uses the
maximum lower endpoint and minimum upper endpoint; it is associative,
commutative, idempotent, and refines each input.

The important source premise is separate: `intersect_sound` requires both input
intervals to enclose the **same exact real value**. `synchronize` is a finite
left fold of intersections, and `synchronize_sound` proves soundness at its
result from soundness of the initial bound and every supplied observation.

`midpoint_error_le` derives the half-width error bound by linear inequalities.
`synchronize_error_le` composes it with the fact that refinement cannot increase
width. `eq_of_arbitrarily_narrow_common_enclosures` proves uniqueness of a real
value only when, for every positive accuracy, a common enclosure with smaller
width actually exists. A finite prefix does not meet this universal premise.

## Hostile controls and exact limits

`refinement_alone_is_not_a_source_certificate` exhibits a true parent `[0,2]`
for the source value 1 and the false nested child `[0,0]`. Thus nesting,
controller progress, agreement between models, or a small reported width does
not prove source accuracy. `disjoint_enclosures_impossible` proves that two
disjoint intervals cannot both enclose one source.

Finite intersections do not guarantee a strict improvement, eventual shrinking
width, acceptance of any proposed interval, or positivity of the underlying
source. An infinite tower must separately supply sound intervals at arbitrarily
fine accuracy. The existing rational enclosure checker and Weil all-coverage
return retain those obligations; this module does not replace them.

## Verification

The unchanged toolchain is Lean `4.34.1`, Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. The imported rational interval module
was built successfully; direct compilation of this module succeeded without
warnings. A separate mathematical review checked source identity, the path
orientation, shrinking-width inequalities, and the false-refinement control.
Final source-bound kernel/axiom results are recorded in
[issue #1839](https://github.com/grwtsk/math/issues/1839). No executable Rust
interval implementation or independence of numeric evaluators is claimed.

## Exact maintained source

The checked Lean source has SHA256
`82ffff390809f7272509830205a5f7d2de291a24265e00e18dd75b17819a806a`. The checks above and the final issue record refer to these
bytes; later source edits require their own evidence.

## Final integration verification

This exact source was included in the successful combined `leanchecker --fresh`
replay of the eight core modules and their imported constants under the pinned
Lean toolchain. The combined declaration audit also passed, with no axioms outside
`propext`, `Classical.choice`, and `Quot.sound`. This is a fresh Lean-kernel replay,
not a checker implemented independently of Lean. The coordinating
[issue #1839](https://github.com/grwtsk/math/issues/1839) binds the final publication
to these source hashes and records the separately checked binary-character module.
