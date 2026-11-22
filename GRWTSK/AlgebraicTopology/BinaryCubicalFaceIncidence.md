# Actual 16D all-rank cubical face/incidence carrier

Source: [BinaryCubicalFaceIncidence.lean](BinaryCubicalFaceIncidence.lean).
Consumer: [math #1842](https://github.com/grwtsk/math/issues/1842).

## Exact combinatorial geometry

For each of the 16 binary coordinate ports, a face stores one of:
`some 0`, `some 1`, `none` (free interval). Thus each
source-cube face of *every* rank is represented, giving exactly
`3^16 = 43,046,721` mathematical faces. The physical system
should generate them lazily.

The `freePorts` filter identifies free directions. Restricting one
free coordinate to either endpoint removes exactly that coordinate
from the free set; the dimension drops by precisely one. Restrictions
at distinct coordinates commute, and opposite endpoints at the same
coordinate produce distinct faces.

These results establish incidence foundations, not the final signed
alternating boundary. To prove `∂² = 0` in every rank, build
integer chains of these faces with orientation determined by the
increasing free-coordinate order, then show that the two paths of
removing distinct ports cancel with opposite signs.

The full cube is contractible. Nontrivial geometric/topological
invariants require explicit subcomplexes, quotient constructions or
twisted coefficient systems; they do not follow from this count.

## Evidence and boundaries

Root Lean 4.34.1, Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
Source candidate; compilation, fresh kernel replay, axioms and
independent review NOT_RUN until the corresponding manifest passes.
The 59 user-verified declarations remain separate. No new
arithmetic zero, prismatic realization, RH/GRH or P=NP claim.
