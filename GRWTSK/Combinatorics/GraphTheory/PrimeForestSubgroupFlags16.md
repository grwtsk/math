# Genuine subgroup-chain layer for forest, tree and neighborhood keys

Source: [PrimeForestSubgroupFlags16.lean](PrimeForestSubgroupFlags16.lean).
Correction issue: [math #1844](https://github.com/grwtsk/math/issues/1844).

The source carrier is the actual additive group of 16 binary cells,
with the already Lean-checked four-bit syndrome. The kernel of H and
additional zero-coordinate conditions form genuine additive subgroups.
The `fixedCoordinateSubgroup` function builds them, and antitonicity
shows that requiring more coordinates to vanish produces a smaller
subgroup. `agreeOn_iff_subgroup_difference` proves the exact
coset criterion: two frozen beacons lie in the same selected coordinate
bucket iff their difference lies in the corresponding subgroup.

`ForestFlag` is a chain of *proven inclusion* conditions for
forest/tree/neighborhood subgroups. No numerical rank bucket is
silently promoted to a subgroup. A canonical 12-bit systematic
parameterization with parity pivots {1,2,4,8} can choose
three independent coordinates at each of four levels; formal
independence/index-eight proofs for a chosen flag remain open.

This is an independent algebraic module, not prismatic cohomology.
It has no construction of an (L)-function, Weil form or RH/GRH.
Source candidate; current new-file Lean elaboration, axiom audit,
fresh replay and independent review NOT_RUN.
