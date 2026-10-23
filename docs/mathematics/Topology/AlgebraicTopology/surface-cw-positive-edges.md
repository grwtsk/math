# Positive polygon edge interior fibers

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`.

Issue #1034 is a direct child of PR #1033 at exact head `51b0eba980a7c446d1283320937db62092aed838`.

The source uses the full two-point EqvGen orbit theorem to separate the selected positive side representatives. Since `oppositeBoundaryPoint` sends source sides `0/1` to the negative sides `2/3`, equality in the authentic paired quotient between two positive strict-interior points can only come from equality of their original source points.

It scripts candidates for:

```lean
positive_not_opposite_positive
positive_interior_projection_eq_source
positiveOneCell_injective_interior
positiveOneCell_disjoint_interior
```

Thus each positive a/b characteristic is injective on nonendpoint parameters, and differently labelled positive edges have no common strict-interior image.

The initial draft attempted to recover equality `i = j` from equality of their `Fin 4` coercions through `Fin.cast_injective`. The current source instead applies `Fin.ext` and equality of `Fin.val`, preserving the theorem and avoiding that mismatched API assumption. The repaired source blob is `2e959cb64495bbe0e75df8681e8f8279dbfa6cc9`.

The exact `Fin 2 → Fin 4` coercions, definitional reduction of the inherited characteristic maps to quotient projections, and all proof scripts remain unelaborated. No open topological embedding, homeomorphism onto an image, weak topology, closure-finiteness, CW structure, manifold, cellular/singular comparison, homology, fundamental group, hyperbolic geometry, or arithmetic consequence is claimed. Exact-head qualification under issue #100 remains mandatory.
