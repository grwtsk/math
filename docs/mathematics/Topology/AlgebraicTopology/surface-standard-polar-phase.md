# Positive-radius polar phase recovery

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

Pinned parent: PR #988 head `951f688024fa27cb82ff8d9b4f4f783cc9de7e86`.

For r>0, multiplication by the nonzero complex scalar r is injective. Equality of polar values with positive radii first forces r=s by the inherited norm identity, then forces equality of unit complex phases. The new module records these two source-level theorem candidates. It does not yet identify complex phase equality with equality in Mathlib's UnitAddCircle, construct a continuous descended circle map, prove cone fibers, or establish the closed-disk homeomorphism. Exact-head Lean elaboration and #100 trust qualification remain open.
