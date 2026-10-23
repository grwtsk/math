# Complex polar phase equality and integer winding

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

Parent: PR #991 at immutable head `ea26d00b9129894872237aadb04553367afab6f9`.

The source proposes equality of complex phases exp(2πiθ)=exp(2πiφ) iff θ=φ+n for some integer n. The forward proof attempts Mathlib's circleMap equality criterion and real/complex cancellation; the reverse reuses inherited integer periodicity. The exact Mathlib theorem namespace and cast normalizations require elaboration. This does not yet construct UnitAddCircle quotient descent or a cone-to-disk homeomorphism. The source is a proof candidate, not a verified theorem.
