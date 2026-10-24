# Verification target: GRWTSK.NumberTheory.Moebius.QuadraticTransformBoundConversion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce85dfc14731a1b7763b2974edc7eb0c5c67840c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/QuadraticTransformBoundConversion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/QuadraticTransformBoundConversion.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/QuadraticTransformBoundConversion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce85dfc14731a1b7763b2974edc7eb0c5c67840c`.

Source path: `GRWTSK/NumberTheory/Moebius/QuadraticTransformBoundConversion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/QuadraticTransformBoundConversion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.MoebiusQuadraticReturn`](../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.QuadraticKernelEnergyEquivalence`](../../../../mathematics/Analysis/AsymptoticAnalysis/QuadraticKernelEnergyEquivalence__SourceOccurrence184eefda797211ad3333339f.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actual_decomposition](../../../../mathematics/NumberTheory/Moebius/QuadraticTransformBoundConversion.lean/declarations/actual-decomposition--28a9511f7077bafb046789d3.md) | 13 | `declaration-track:28a9511f7077bafb046789d3d5e5f0b83e7441f315ce6fbce5e65987bf747189` |
| 2 | `theorem` | [exact_signed_decomposition](../../../../mathematics/NumberTheory/Moebius/QuadraticTransformBoundConversion.lean/declarations/exact-signed-decomposition--daf3910053908888a9e5bd3b.md) | 16 | `result-track:daf3910053908888a9e5bd3bfe0f238c81b719569eb8e8dfdf9727d2253efc3b` |
| 3 | `theorem` | [literal_P04_of_signed_settlement](../../../../mathematics/NumberTheory/Moebius/QuadraticTransformBoundConversion.lean/declarations/literal-p04-of-signed-settlement--acbf1f3523e1f8c468885e85.md) | 22 | `result-track:acbf1f3523e1f8c468885e85f69c82dbf4bf48dec370a2aa8cbbd052cd9ec21f` |
| 4 | `theorem` | [literal_RH_of_signed_settlement](../../../../mathematics/NumberTheory/Moebius/QuadraticTransformBoundConversion.lean/declarations/literal-rh-of-signed-settlement--be434b4cd6a8dbf4ecaec7ce.md) | 28 | `result-track:be434b4cd6a8dbf4ecaec7ce659f566102371378098231d568d8de6228072d13` |
| 5 | `theorem` | [signed_settlement_iff_literal_P04](../../../../mathematics/NumberTheory/Moebius/QuadraticTransformBoundConversion.lean/declarations/signed-settlement-iff-literal-p04--90b58b5ec28ed468651e30f5.md) | 32 | `result-track:90b58b5ec28ed468651e30f5771153688a5655fdbb142b609eb3ff452449d218` |
| 6 | `def` | [SignedSettlementObligation](../../../../mathematics/NumberTheory/Moebius/QuadraticTransformBoundConversion.lean/declarations/signedsettlementobligation--3023482094b07e7a37296595.md) | 39 | `declaration-track:3023482094b07e7a372965950f6296403c62ba19567b146b0d26dfcbcfc0c765` |
| 7 | `theorem` | [literal_RH_of_fixed_signed_settlement](../../../../mathematics/NumberTheory/Moebius/QuadraticTransformBoundConversion.lean/declarations/literal-rh-of-fixed-signed-settlement--05eaabc15e245a682ca45bd8.md) | 42 | `result-track:05eaabc15e245a682ca45bd8b5f60cc7eb890834f935693021ebedcf4c2c1d2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
