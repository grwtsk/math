# `bounded_hitting_set_compression`

Local attribution: grwtsk contributors. Local base `b7225b69f2710ee8beb4c1a7b9adbaa6f9b0075c`.

`GRWTSK.Combinatorics.ExtremalCombinatorics.FixedPetalSunflowers.bounded_hitting_set_compression` supplies the uniform premise of the existing local `SunflowerHittingSet.exists_bounded_hittingEquivalent` using the exact [upstream fixed-base theorem](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/Combinatorics/Sunflower/FixedBase.lean#L41) by OpenAI from the November 24, 2026 edition at `3344da59991ed94f9ba711217b29c1d760badfa6`, Apache-2.0. It chooses the same base once per petal count before selecting the width, budget, type or input. The result preserves every feasible bounded hitting set and therefore every score defined on the unchanged candidate set.

Finite family replacement, strict termination, and tagged uniformization are proved in [SunflowerHittingSet.md](../SunflowerHittingSet.md). The returned cap concerns the cardinality of a reduced instance. Computing an instance within a particular time or space limit requires a separate algorithm and resource analysis.

Source candidate. Local elaboration, fresh replay and axiom audit of this composition are `NOT_RUN`. [Tracking issue #1856](https://github.com/grwtsk/math/issues/1856)
