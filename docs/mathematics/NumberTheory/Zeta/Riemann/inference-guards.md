# Nontrivial zeros and inference guards

`GRWTSK.RiemannHypothesis.InferenceGuards` carries four established guard statements. The nontrivial-zero domain excludes the negative even trivial zeros and the pole at one. Critical reflection remains `1 - star s`, an involution distinct from multiplication by the imaginary unit. A negative identity matrix supplies a Hermitian matrix that is not positive semidefinite.

GRWTSK added canonical placement and a checked interface. Complete theorem types, universes, implicit assumptions, generated dependency families, supported definition bodies and transitive axioms are preserved under the declared canonical name map. The existing zero definitions and symmetries are reused, with no second implementation.

Three original guard proofs actually use those existing canonical dependencies. Four synthetic audit wrappers use the new guard theorems directly; they are verification fixtures, not additional mathematical results or independent downstream applications. No external original proof consumer of these guard theorems has been verified. Broader root imports and diagnostic wrappers remain outside this checked source slice.

Local direction: R.A. Jacob Martone. Formalization and verification assistance: OpenAI Codex. MIT; historical human/machine authoring split unknown. Lean and Mathlib retain upstream identities, named authors and licenses. This is a local candidate pending transactional admission and independent review. No RH proof or mathematical originality is claimed.

## Source and verification scope

[Source](../../../../../GRWTSK/NumberTheory/Zeta/Riemann/ZeroDefinitions.lean). Status: **historical-source-description**. [Credit and evidence limits](../../../../reference/documentation-history.md). Earlier checks bind their recorded revisions; no new proof acceptance.
