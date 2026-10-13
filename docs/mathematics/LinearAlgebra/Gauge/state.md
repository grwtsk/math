# State dynamics under a gauge

For a group acting on a state space, the state at step n changes to `(B n)⁻¹ • X n`. The original and transformed step equations are equivalent: `X (n+1) = A n • X n` exactly when the transformed state at n+1 equals `gaugeTransfer A B n` acting on the transformed state at n. The existing canonical transfer is `(B (n+1))⁻¹ * A n * B n`.

The interface retains the original `Group` and `MulAction` assumptions and independent group/state universes. The own-step inverse and both state indices are essential. A generic action fixture passes; rational-unit fixtures reject the wrong gauge step, omitted inverse and substituted current state.

This carries one source definition and one source theorem, with its compiler-generated equation recorded separately. The original step theorem has been checked for actual dependency on the canonical state definition and existing transfer. One direct-use wrapper is a synthetic verification fixture. GRWTSK added canonical placement, contract preservation and reuse checking. No further consumer coverage, regularity, bounded gauge, spectral equivalence, arithmetic bridge or RH proof is claimed.

The maintained formalization is MIT licensed under R.A. Jacob Martone's direction with OpenAI Codex assistance; the historical authoring split is unknown. Lean and Mathlib retain their upstream identities, licenses and authors. The pinned group-action source credits Chris Hughes and Yury Kudryashov under Apache-2.0.

## Source and verification scope

[Source](../../../../GRWTSK/LinearAlgebra/GaugeState.lean). Status: **historical-source-description**. [Credit and evidence limits](../../../reference/documentation-history.md). Earlier checks bind their recorded revisions; no new proof acceptance.
