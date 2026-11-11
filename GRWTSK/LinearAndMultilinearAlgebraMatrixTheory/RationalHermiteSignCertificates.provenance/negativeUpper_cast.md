# `GRWTSK.RationalHermiteSignCertificates.negativeUpper_cast`

Local attribution: grwtsk contributors. [Source](../RationalHermiteSignCertificates.lean); [pins and digest](context.md).

For each rational Packet P and rational vector q, casting the entire rational upper expression to the reals yields exactly the existing real center quadratic plus `errorBudget` evaluated on the cast q. Primary proof: casts commute with finite sums, products and absolute values. There is no floating-point conversion or rounding hypothesis.

Consumer: `negativeCheck_sound`. Neither the identity nor its checksum proves that the packet encloses a source. It preserves every error term and does not replace ordinary quadratic evaluation by absolute-square positivity. Standard algebraic conversion; FORMAL_SOURCE_CANDIDATE with elaboration, kernel replay, axiom audit and independent review NOT_RUN.
