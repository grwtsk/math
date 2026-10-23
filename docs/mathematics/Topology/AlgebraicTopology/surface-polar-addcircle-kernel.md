# Exact polar phase kernel on UnitAddCircle

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

Parent PR #993, pinned head `33d724a35efcb5b5c1f42aac27a94dc599a42e49`.

The source proposes (θ : UnitAddCircle)=(φ : UnitAddCircle) iff θ=φ+n for an integer n. Composing with the inherited phase-periodicity candidate yields equality of complex phases iff equality of actual additive-circle classes. Positive-radius polar equality then implies equality of those classes. The exact Mathlib AddSubgroup quotient API, orientation and cast normalization require immutable-head elaboration. No continuous circle-valued polar lift, cone quotient, surjectivity, or disk homeomorphism is claimed. The original polygon cone-to-filled map remains noninjective.
