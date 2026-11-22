# Cyclic monoid and rooted lasso Cayley correspondence

Local mathematical attribution: grwtsk contributors.

## Source and mathematical scope

Maintained Lean file: `SoficCyclicMonoidCayley.lean`, in the same directory.
Consumer: `SoficSingletonPrefixLassoUniqueness.lean`, especially
`canonical_lasso_uniqueness` and `LeastLassoParams`.
Canonical mathematical source repository: `grwtsk/math` on `main`.
Initial integration revision: source verified at `29e4318e96fd1716a8372c86b452426c2604b713`;
the earlier lasso uniqueness blob was
`22ca4ebcdb89fc319a99495236540f4baea3ef6e`.
Lean pin: `leanprover/lean4:v4.34.1`.
Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

This formalization adapts the explicit `M_{μ,p}` exponent-reduction and
Cayley-graph construction supplied in the 2026-11-17 project conversation.
There is no external paper being directly formalized and no originality
claim for the standard structure theory of cyclic monoids. For historical
terminology, see J. M. Howie, *Fundamentals of Semigroup Theory*,
Chapter 1, §1.2 (index and period of a monogenic semigroup).

## Declaration-by-declaration provenance and contracts

- `reduceExp`, `reduceExp_lt`, `reduceExp_id`,
  `reduceExp_zero`, `reduceExp_boundary`,
  `reduceExp_add_left`, `reduceExp_add_right`:
  normalization for the cyclic-monoid relation, including both
  addition-compatibility directions; all arithmetic is exact over `ℕ`.
- `CyclicLassoMonoid` and its `CommMonoid` instance:
  the actual monoid laws for the finite carrier, not a named-but-unproved
  multiplication.
- `generator_pow_val`, `generator_pow_relation`,
  `eq_generator_pow`, `cyclicLassoMonoid_card`:
  generation by a single shift element, relation
  `s^(μ+p)=s^μ`, and exactly `μ+p` distinct normal powers.
- `monoidCayleyGraph`, `mul_generator_fin`,
  `canonicalLasso_iso_monoidCayleyGraph`:
  right multiplication by `s` recovers the existing rooted
  lasso transition, and the ORIGINAL trace label `x i` colors
  the arrow at exponent `i`. The isomorphism is root- and
  edge-label-preserving, not just a matching vertex count.
- `minimumExactRoot_iso_monoidCayleyGraph`:
  returns to the existing exact-rooted-prefix theorem.
  Its assumptions retain `LeastLassoParams` (including
  `distinct_cuts`), `ExactRoot`, and the minimum cardinality
  equality. It does not silently prove those hypotheses.

## Nonimplications and falsification

`CyclicLassoMonoid` is the monoid of **unlabeled time shifts**
on the distinct suffix states, colored by the trace along the
one-generator right Cayley graph. It is **not** generally the
full `Σ`-letter transition/syntactic monoid for a complete
DFA recognizing the prefix language.

For example, for the alternating trace `010101...`, a complete
DFA with states `even`, `odd`, `reject` has partial
`0`- and `1`-transition maps that do not commute after
sink completion. Those letter maps are distinct from the
unlabeled one-step time shift. This hostile case invalidates any
unqualified assertion that the full syntactic monoid is cyclic.

A multi-generator group Cayley graph or Cannon cone-type criterion
requires additional geometric, normal-form, and language hypotheses;
no such transfer is proved. Likewise no machine-state recurrence,
arithmetic source identity, RH or GRH consequence follows from the
algebraic graph isomorphism alone.

## Evidence and reproducibility

Source status: **SOURCE_PROOF_CANDIDATE**.
The source is authored without `sorry`, `admit`, or new research axioms.

Lean elaboration: **NOT_RUN**.
Expected type verification: **NOT_RUN**.
Fresh kernel replay: **NOT_RUN**.
Transitive axiom audit: **NOT_RUN**.
Independent proof review: **NOT_RUN**.
Full root/import-closure replay: **NOT_RUN**.

A finite direct arithmetic cross-check (not a formal proof) tested
associativity of the normal form and its successor action for
`0 ≤ μ < 15`, `1 ≤ p < 15`, and all carrier triples.

Recommended clean-checkout target:
`lake env lean GRWTSK/DynamicalSystemsAndErgodicTheory/SoficCyclicMonoidCayley.lean`
at the repository's exact Lean/mathlib pins; then run transitive
axiom inspection of the named exposed theorems. No execution
receipt is represented by this documentation.

Issue: [#1832](https://github.com/grwtsk/math/issues/1832).
