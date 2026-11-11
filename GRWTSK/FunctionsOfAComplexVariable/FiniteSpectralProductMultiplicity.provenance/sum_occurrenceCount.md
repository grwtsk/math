# Total finite multiplicity is the number of indices

Local attribution: grwtsk contributors.
Declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum.sum_occurrenceCount`.
Source: [FiniteSpectralProductMultiplicity.lean](../FiniteSpectralProductMultiplicity.lean).
Pins, digests, comparison and reproduction: [context](context.md).

The sum of occurrence counts over the distinct root support equals Fintype.card of the index type. Expand each occurrence count, interchange the two finite sums, and for each index note that exactly one support location equals its root. Each inner sum is one.

Consumer: divisor_totalCount_univ. The support may be much smaller than the index type; the theorem retains repeated contributions instead of identifying support size with degree. Empty indices are allowed. Standard finite double counting, novelty UNASSESSED. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
