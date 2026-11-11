# Total finite-field point count

Declaration: `GRWTSK.AlgebraicGeometry.HaradaCharacterSurface.card_points`.
Local attribution: grwtsk contributors.

## Exact statement and quantifiers

For every type K with Field, Fintype and DecidableEq instances,

`Fintype.card (Points K) = (Fintype.card K)^2 + if (2 : K)=0 then 1 else 2`.

`Points K` is `Sigma (fun z : K => Fiber z)`. It retains all three coordinates
and the original affine equation. This is a coordinate ordering of the actual
solution set, not a type stipulated to have the desired size. The theorem
includes all finite extensions, not just prime fields. In a field, 2=0 is the
characteristic-two case.

## Complete argument and paper correspondence

Put q=card K. The fiber argument proves, for each z,
`card(Fiber z)+1 = q + (if z=0 then q else 0) + (if z^2=1 then 1 else 0)`.
Summing gives constant contribution q^2 and z=0 correction q. The roots of
z^2=1 are 1 and -1; they coincide precisely when 2=0. Their indicator sum r
is 1 in characteristic two and 2 otherwise. The dependent-sum cardinality
identity gives `card(Points K)+q=q^2+q+r`; cancellation finishes the proof.
The dependency is the explicit fiber equivalences and `card_fiber`, followed
by finite sums. The point-count conclusion is not assumed as a hypothesis.
See [the fiber record](card_fiber.md) for the complete affine stratification.

This recovers the local arithmetic information underlying the L2 case of
Harada's p. 1 theorem, by a direct affine-fiber proof rather than by assuming
the global zeta identity. It is a known-result comparison and not a novelty
claim or an independently reviewed proof. The statement is strictly about
this affine polynomial; it does not import the identification of its generic
fiber with a canonical component of the link-character variety.

## Consumer, hostile checks and remaining obligations

The consumer is exact local Euler-factor extraction, including the prime-two
correction, in the backward arithmetic source-return argument. Formal Euler
products, analytic continuation, Dirichlet twisting, nonvanishing auxiliary
factors on the critical strip, Weil's criterion and GRH remain separate and
unproved here. No compactification, smoothness, resolution or cohomology
assertion is included in the point-set model.

Characteristic two is handled by merging the two roots, not by silently
assuming odd characteristic. Removing the field hypothesis invalidates the
division and square-zero steps. There is no numerical experiment standing in
for the general cardinality proof.

## Source identity and verification scope

Shinya Harada, *Hasse-Weil zeta functions of SL2-character varieties of arithmetic
two-bridge link complements*, arXiv:1207.6177v2, 31 January 2014, p. 1,
Introduction: f2 and the unnumbered Theorem, case L2=(12/5).
https://arxiv.org/abs/1207.6177v2 . The inspected PDF identifies this edition.
Paper byte digest: NOT_COMPUTED. No third-party PDF is copied. This is a direct
paper-motivated rederivation, not an adaptation of external Lean source.

Canonical source: `GRWTSK/AlgebraicGeometry/HaradaCharacterSurface.lean`.
Source SHA-256: `9ac7156b4686ba41a1ef026b57da359df6b54ff79c50cee624dbe2499151c87b`.
Inspected base: `grwtsk/math@6cab1fb0725c00a9d06b112ffc215e3523396c50`.
Publication commit is identified by Git history and coordination issue
https://github.com/grwtsk/math/issues/1802 .
Inspected configuration: Lean v4.34.1; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`, with lakefile and manifest agreeing.
No dependency migration or root import is included.

Status: source candidate with written argument. Lean elaboration, fresh kernel
replay, transitive axiom audit, independent analytical review and CI: NOT_RUN.
Static source inspection does not promote these statuses. The authoring
session has no Lean runtime; no proof execution was dispatched. The inspected
.github tree contains no workflow definitions. No new axiom or proof
placeholder is introduced in the module; this is not a transitive axiom audit.

Reproduction target from the published checkout, NOT an executed receipt:

```sh
lake build GRWTSK.AlgebraicGeometry.HaradaCharacterSurface
```

After successful elaboration, a separate authorized process must inspect and
replay/check the exact proof dependencies and run `#print axioms` on all four
exported theorems. Operational receipts belong outside this repository.
Publication and a source link do not establish mathematical acceptance or GRH.
