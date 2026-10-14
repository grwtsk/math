# Mathematical source layout

These interfaces and inherited check descriptions are reference material. Commands below are reproducible entry points, not a claim that this documentation migration ran them. Historical module counts and receipts retain their recorded source scope.

Place a result under its mathematical subject and object. A conjecture, research
campaign, conversation, project acronym, or workflow metaphor is not a source
taxonomy. In particular, CCC, RiemannHypothesis, ProofHorizon, Conversation,
SpectralUnificationOfComputabilityAndAlgebraicSymmetry, HadwigerNelson, and
Waveform are retired module paths. Do not recreate them or introduce aliases
that collect the same mixed mathematics.

Reusable analysis belongs in Analysis; Möbius summation and zeta-specific
applications belong in NumberTheory; matrix and determinant results belong in
LinearAlgebra; finite graph and discrepancy arguments belong in Combinatorics;
certificates, inference and locality belong in Logic; closure operators belong
in Order; transition-system reachability belongs in DynamicalSystems. Split a
mixed file at mathematical declaration boundaries instead of renaming an
entire campaign. Cross-subject applications import the actual subject modules.

The machine-readable path and source-hash index is [math-layout.json](../math-layout.json).

Newly received [mathematical source candidates](source-intake.md) have a separate
source-identity and contribution inventory. Their intake status does not add them
to the project umbrella or establish native proof acceptance.

The `GRWTSK` umbrella imports mathematical modules in dependency order. Three
operational audit consumers remain outside it:
`Logic/Verification/AnalyticArithmeticKernelCheck`,
`Logic/Verification/FullAnalyticArithmeticKernelCheck`, and
`Logic/Verification/MoebiusResponseLibrary`. The full audit imports `GRWTSK`,
and the response-library aggregator imports that full audit; importing either
back into `GRWTSK` would create an import cycle. This describes import coverage,
without claiming native acceptance for those operational consumers.
The waveform cluster has been split into integer Fourier series, Parseval,
window certificates, norm error inequalities, polynomial asymptotic bounds,
Schrödinger sampling, ordered finite squares, prefix coverage, and quota
discrepancy. Original exact statements, hypotheses, proof bodies, declaration
names and attribution are preserved. Historical declaration namespaces remain
compatibility names inside the mathematical modules; old module imports have
been replaced and no legacy import shim is supplied.

Run `python3 -B scripts/check_math_layout.py` before verification. The checker
includes tracked and nonignored untracked Lean sources, masks nested comments
and strings when reading imports, rejects forbidden paths and imports, and
reports missing tracked regular files separately from unsafe filesystem states.
The main source checker and full trust replay enforce this gate. Structural
checks are a lower bound: reviewers must assess whether the declarations
actually match the chosen mathematical subject.

Run `python3 -B scripts/check_math_trust.py --self-test` for Python controls,
`python3 -B scripts/check_math_trust.py --lean-self-test` for native audit controls,
and `python3 -B scripts/check_math_trust.py` for a frozen full source replay and
owned declaration census at trust zero with fatal warnings. A layout pass or
updated digest index does not certify a proof. Original historical evidence is
retained; current moved and split source bytes require fresh Lean acceptance.
Imported pinned dependency artifacts do not imply a Mathlib source rebuild.
RH, arithmetic supplier estimates and other open premises remain open.
