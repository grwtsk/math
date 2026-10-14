# Mathematical source layout

These interfaces and inherited check descriptions are reference material. Commands below are reproducible entry points, not a claim that this documentation migration ran them. Historical module counts and receipts retain their recorded source scope.

The maintained Lean source root is `GRWTSK/`, with the conventional public
entry point `GRWTSK.lean` at repository root. Package metadata, scripts,
documentation, licenses and evidence remain outside the Lean source tree. No
maintained first-party Lean source is permitted elsewhere.

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
The [generated source catalog](math-source-catalog.json) projects its authoritative
per-source records for review. Neither a path move nor a new digest changes a
theorem's logical status.

Source role is independent of mathematical subject and proof status:

- `library` modules contain reusable mathematical declarations and participate
  in the public `GRWTSK.lean` import closure.
- `positive-check` modules live under `Checks/Positive/`, compile separately,
  and do not enter the public umbrella.
- `negative-control` modules live under `Checks/Negative/`; their runners must
  observe a specific Lean rejection rather than an infrastructure failure.
- `audit-driver` modules live directly under an object's `Checks/` directory
  and are invoked by dedicated verification entry points.
- `historical-evidence` is immutable, excluded from active build discovery,
  and cataloged separately from maintained source.

Library modules may not import any validation role. Every validation source
has an explicit runner and outcome policy in the authoritative inventory.
Historical namespaces may remain as declaration-level compatibility names;
retired module paths and import shims are not recreated.

The library umbrella imports every present library module in dependency order.
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

The current consolidation outcome, including resource failures rather than
mathematical failures, is recorded in the
[Lean consolidation report](lean-consolidation-report.md). Repository-wide
artifact accountability is a separate layer: the versioned
[rule registry](rules/registry.json), [reconstruction recipes](reconstruction-recipes.json)
and generated [artifact catalog](repository-artifact-catalog.json) record what is
actually enforced. Those byte-reconstruction records do not substitute for
Lean kernel replay or intended-statement comparison; see the
[rigor and reconstruction status](rigor-and-reconstruction-report.md).
