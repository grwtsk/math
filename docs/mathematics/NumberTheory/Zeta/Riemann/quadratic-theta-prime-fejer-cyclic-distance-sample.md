# Cyclic Fejer pointwise distance-sample comparison

The pointwise kernel comparison needed for the final factor-four pairing is now
source-written.

The source proves the geometric-block reflection identity

G_N(-t) = conj(G_N(t)).

Using the already source-proved autocorrelation formula, this implies the
symmetric triangular Fejer kernel is even.

It then proves that every signed sampled kernel value is bounded above by the
corresponding norm sample, and that the reflected lattice position L-d has the
same kernel norm as d.

Consequently, for every residue r modulo 4X,

K_cyclic(r)
<=
kappa_{4X,N}(d_cyclic(r,0)).

Together with the already proved distance-fiber cardinality <= 2, the only
remaining factor-four work is finite regrouping of the residue sum by cyclic
distance.

Status:
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
GEOMETRIC_BLOCK_REFLECTION_SOURCE_WRITTEN /
KERNEL_EVENNESS_SOURCE_WRITTEN /
CYCLIC_KERNEL_DISTANCE_SAMPLE_COMPARISON_SOURCE_WRITTEN /
FINITE_DISTANCE_REGROUPING_OPEN.
