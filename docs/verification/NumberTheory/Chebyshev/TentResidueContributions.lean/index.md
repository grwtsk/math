# Verification target: GRWTSK.NumberTheory.Chebyshev.TentResidueContributions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f10859cd98a604d76eaa8edcc8e8ec4a7178cefa",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/TentResidueContributions.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/TentResidueContributions.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/TentResidueContributions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f10859cd98a604d76eaa8edcc8e8ec4a7178cefa`.

Source path: `GRWTSK/NumberTheory/Chebyshev/TentResidueContributions.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/TentResidueContributions.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalLogarithmicResidues`](../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLogarithmicResidues.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.TentMellinKernel`](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinKernel.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [firstRieszKernel](../../../../mathematics/NumberTheory/Chebyshev/TentResidueContributions.lean/declarations/firstrieszkernel--1f2a8936a3639d109119d176.md) | 35 | `declaration-track:1f2a8936a3639d109119d1769f2c74ebcc31aa94ea8493fbc0b18b1916c995e1` |
| 2 | `theorem` | [continuousAt_firstRieszKernel](../../../../mathematics/NumberTheory/Chebyshev/TentResidueContributions.lean/declarations/continuousat-firstrieszkernel--44afbf424a0ac1690752de9c.md) | 39 | `result-track:44afbf424a0ac1690752de9ce838591b1c96f176db4e92818e35d5c66b3fbb3c` |
| 3 | `theorem` | [firstRieszKernel_one](../../../../mathematics/NumberTheory/Chebyshev/TentResidueContributions.lean/declarations/firstrieszkernel-one--59675087873c0e7c873beb7c.md) | 48 | `result-track:59675087873c0e7c873beb7cb14b3fe45f63d03229ddd8c4e135d4ebe422d505` |
| 4 | `theorem` | [differentiable_tentKernel](../../../../mathematics/NumberTheory/Chebyshev/TentResidueContributions.lean/declarations/differentiable-tentkernel--ea053aa2868f3c08d6118c59.md) | 58 | `result-track:ea053aa2868f3c08d6118c59320724351ff26be4267d02cf19e9680403153ff2` |
| 5 | `theorem` | [firstRiesz_zero_residue_limit](../../../../mathematics/NumberTheory/Chebyshev/TentResidueContributions.lean/declarations/firstriesz-zero-residue-limit--439ddab9c66f8a191e956e26.md) | 68 | `result-track:439ddab9c66f8a191e956e269b41212607c7c4cd979dfa8b9f7e8ad0cd3553ac` |
| 6 | `theorem` | [firstRiesz_pole_residue_limit](../../../../mathematics/NumberTheory/Chebyshev/TentResidueContributions.lean/declarations/firstriesz-pole-residue-limit--1f8d24a9115050841bd7fa45.md) | 81 | `result-track:1f8d24a9115050841bd7fa45a5e59f75c77a96aa61b085276725418c35681dc0` |
| 7 | `theorem` | [tent_zero_residue_limit](../../../../mathematics/NumberTheory/Chebyshev/TentResidueContributions.lean/declarations/tent-zero-residue-limit--9fabab7f350490d3b8040b4c.md) | 88 | `result-track:9fabab7f350490d3b8040b4cf8746965ff809a18363f457d811f507c57ae5d8c` |
| 8 | `theorem` | [tent_pole_residue_limit](../../../../mathematics/NumberTheory/Chebyshev/TentResidueContributions.lean/declarations/tent-pole-residue-limit--195cf38083416c4f5bc238c6.md) | 96 | `result-track:195cf38083416c4f5bc238c6054afde5e5d6672758d4a38d5c4f41eade2309fb` |
| 9 | `theorem` | [firstRiesz_second_difference](../../../../mathematics/NumberTheory/Chebyshev/TentResidueContributions.lean/declarations/firstriesz-second-difference--e2f9e32e4319ee3a40a55f5a.md) | 104 | `result-track:e2f9e32e4319ee3a40a55f5afc87b67375cda0e1cdabae2c209addd9f36b8e3c` |
| 10 | `theorem` | [weighted_residue_second_difference](../../../../mathematics/NumberTheory/Chebyshev/TentResidueContributions.lean/declarations/weighted-residue-second-difference--8978b7b02177cf668014d7b6.md) | 113 | `result-track:8978b7b02177cf668014d7b67f397de8521d9a8f9fcab6cb6279a3861b1e744d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
