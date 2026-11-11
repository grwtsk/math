# Product form of Harada's affine equation

Local attribution: grwtsk contributors.

`GRWTSK.AlgebraicGeometry.HaradaCharacterSurface.equation_factorization`
is maintained in [HaradaCharacterSurface.lean](../HaradaCharacterSurface.lean).
For elements `x y z` of any commutative ring, it identifies `equation x y z`
with `(z*x-y)*(x-z*y)-z*(1-z^2)`. Taking the three indeterminates
in the polynomial ring over the integers gives the polynomial identity.

The exact equation is Shinya Harada's `f₂` for `L₂ = (12/5)` in
*Hasse-Weil zeta functions of SL₂-character varieties of arithmetic
two-bridge link complements*, arXiv:1207.6177v2 (31 January 2014),
PDF p. 1, Introduction, displayed definition of `f₂` preceding the
unnumbered theorem. The product form is an elementary rederivation for
that equation. Paper byte digest `NOT_COMPUTED`.
[Paper edition](https://arxiv.org/pdf/1207.6177v2)

Expanding the product gives `zx² − z²xy − xy + zy²`. Subtracting
`z(1−z²)` adds `z³ − z`. This is the identity proved by ring
normalization. The existing equation-zero equivalence now uses it to
identify the fiber condition with `uv = z(1−z²)` for
`u = zx−y` and `v = x−zy`. The change has determinant `1−z²`,
so the inverse over a field requires `z² ≠ 1`. At `z = 0` the
product equation describes the two axes. At `z = ±1` direct
substitution gives a signed square and hence one line of field-valued
points in each fiber. In characteristic two those two parameters coincide.
The identity itself applies to rings with nilpotents. Over
`ℤ/4ℤ`, for example, the square at `z = 1, x = 2, y = 0`
vanishes even though `x ≠ y`, so the exceptional-line argument
uses the field hypothesis.

The consumer is the generic fiber equivalence used by `card_fiber`
and then `card_points`. The scope is the explicit affine equation
and its field-valued points. The link-group/canonical-component
identification, Euler products, continuation, Dirichlet twisting,
Weil positivity and GRH are outside this declaration.

- Inspected base `fbac05669f38ea495f3575b8fef46406fc8d1d9f`.
- Lean source SHA-256 `1973c040ae7ffd6509c163f948eebae02a7561bab32edd49c8bd7fd4476e1439`.
- Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Source candidate. Elaboration/build, fresh kernel replay, transitive
  axiom audit, independent review and CI remain `NOT_RUN`.
- Publication revision and exact verification target are tracked in
  [issue #1802](https://github.com/grwtsk/math/issues/1802).
