# Approximate certificate coverage

Local attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.

Research source: grwtsk contributors, OCERT-1, `oc10-backchain-v1.md`,
sections 5 and 6, at
`e19563adbaf29d08c6b2e17761f78b96adb9e247` in
`grwtsk/knot-linked-number-systems-and-their-geometry`.
Research-note SHA-256:
`4ac95baaa95bbcb77510a2a30f29018ac28b849f47827e7f2a3179e21b590085`.
[Exact research source](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/e19563adbaf29d08c6b2e17761f78b96adb9e247/research/06-weil-spectral/certified-search/oc10-backchain-v1.md).
[Formal coordination](https://github.com/grwtsk/math/issues/1807).
[Research coordination](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/47).

Formal base inspected: `6cab1fb0725c00a9d06b112ffc215e3523396c50`.
Lean pin: `leanprover/lean4:v4.34.1`.
Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
This is newly authored source, not imported upstream proof code. Standard
order/topology arguments and existing checker contracts are not claimed novel.

Source: `GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/ApproximateCertificateCoverage.lean`.
Source SHA-256: `d2384e8822906f7df87b58d236d933bccb909f199a1a12b4fee2b6926489368c`.

## Declaration correspondence

- `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.ApproximateCertificates.lowerBoundMeaning`
- `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.ApproximateCertificates.nonneg_of_complete_coverage`
- `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.ApproximateCertificates.nonneg_of_dyadic_coverage`
- `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.ApproximateCertificates.dense_nonneg_of_complete_coverage`
- `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.ApproximateCertificates.nonneg_of_complete_byte_coverage`
- `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.ApproximateCertificates.no_complete_coverage_of_negative`
- `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.ApproximateCertificates.upperBoundMeaning`
- `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.ApproximateCertificates.negative_of_accepted_upper`

## Argument and exact scope

Apply the canonical checker soundness theorem separately to each exact
(test code, accuracy) judgment, then use vanishing-error order separation.
For dense tests, apply the analysis module's continuity transfer. The byte
variant uses `accepted_meaning_at_requested`; parsing/execution correspondence
and formal soundness remain fields of the supplied interface. Accepted negative
upper bounds use order transitivity. A negative value contradicts universal
positive coverage but rejection or unknown alone does not imply negativity.

Reused source: `RuleSoundness.lean`, blob
`21f25c7728386625e005838b312eed793b3e041a` at the inspected formal base.
Declarations reused are `CertificateChecker.meaning_of_accepts` and
`CheckedByteInterface.accepted_meaning_at_requested` in the existing Inference
namespace. No new checker type, trusted primitive or runtime implementation is
introduced. Snapshot binding and exact requested-target equality are retained.
Coverage, soundness and byte refinement are separate hypotheses. Real-valued
semantic judgments are not claimed to be an executable finite codec.

These are conditional local consequences of the canonical interface, not a new
proof-carrying-code architecture or an implementation proof. The research
source's finite Python checker is neither imported nor certified here.

## Verification boundary and reproduction specification

Source publication is a candidate, not mathematical acceptance. Elaboration,
fresh kernel replay, transitive axiom audit, independent mathematical review and
runtime refinement: **NOT_RUN**. Novelty: **UNASSESSED**. No default-library
import or dependency pin is changed.

After the repository's verification prerequisites are available, the module can
be submitted to the pinned environment with:

```sh
lake env lean GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/ApproximateCertificateCoverage.lean
```

This command was not executed in this authoring pass. A successful elaboration
must be reported separately from a fresh kernel replay and transitive axiom
audit. The source includes no newly declared axioms or unfinished proof commands;
that textual observation is not a dependency audit. No operational receipts or
execution scripts are installed in the mathematical repository.
