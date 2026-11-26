# `signed_sum_value_le_suppliers`

Local attribution: grwtsk contributors. Local base `b7225b69f2710ee8beb4c1a7b9adbaa6f9b0075c`.

Local declaration `GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.SignedTensorNetworkSum.signed_sum_value_le_suppliers` in `SignedTensorNetworkSum.lean`. This is a local composition of the exact [ordinary coefficient-sum restriction](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/PriceOrdinary.lean#L74) and [one-site scalar restriction](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/ScalarRestriction.lean#L17) from the November 24 geometry development, OpenAI, Apache-2.0, upstream `3344da59991ed94f9ba711217b29c1d760badfa6`. It preserves the actual coefficient array of a signed sum in a common finite terminal format.

A scalar scales the map at one inhabited site. For each signed term, composition with the given supplier restriction gives a local map from that term's supplier to the scaled tensor. Direct-sum monotonicity combines these maps and the block fold gives the ordinary sum. Applying a synchronized spectral point and its additivity returns the numerical value bound on the same exact output. The supplier premise must be proved for each network. For a closed scalar result a nontrivial open tensor witness is still required to obtain a geometric obstruction.

Source candidate. Local elaboration, fresh kernel replay, axiom audit and independent review are `NOT_RUN`. [Tracking issue #1856](https://github.com/grwtsk/math/issues/1856)
