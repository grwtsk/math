# GRWTSK.LinearAlgebra.NegativeIndexBounds.negativeIndex_eq_of_frame_and_observer

Local mathematical attribution: grwtsk contributors.
Source: [NegativeIndexBounds.lean](../NegativeIndexBounds.lean). Exact hashes, source comparison, dependency pins and reproduction: [source record](source.md).

**Statement/hypotheses:** A negative n-frame, a nonnegative observation kernel and a finite observation space with finrank exactly n are supplied over the same field.

**Primary argument:** The observation theorem gives index<=n. The original natCast_le_negativeIndex gives n<=index from the negative frame. Antisymmetry gives equality, including n=0.

**Consumer:** Exact index one for the literal Program-6 conjugate-pair moment matrix.

**Hostile control/limits:** A lower certificate with only n individually negative values does not supply the negative frame. The observer must concern the same form as the lower certificate.

FORMAL_SOURCE_CANDIDATE. Elaboration, kernel replay, axiom audit and independent review: NOT_RUN. Novelty UNASSESSED; no novelty claim. Publication does not establish GRH.
