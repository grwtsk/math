# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SourceWeightedMultiplierFullAudit.Variant67c901e7eee81c71ebfa34ce26d5bdbf1050d031d1a64bcc039f26b666ce64c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "396f03149f28eac4dc48378a2b7426474ee520d6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variant67c901e7eee81c71ebfa34ce26d5bdbf1050d031d1a64bcc039f26b666ce64c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variant67c901e7eee81c71ebfa34ce26d5bdbf1050d031d1a64bcc039f26b666ce64c8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variant67c901e7eee81c71ebfa34ce26d5bdbf1050d031d1a64bcc039f26b666ce64c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `396f03149f28eac4dc48378a2b7426474ee520d6`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variant67c901e7eee81c71ebfa34ce26d5bdbf1050d031d1a64bcc039f26b666ce64c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variant67c901e7eee81c71ebfa34ce26d5bdbf1050d031d1a64bcc039f26b666ce64c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterDeltaConvergence` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.LpSpace` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundaryMultiplier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variant67c901e7eee81c71ebfa34ce26d5bdbf1050d031d1a64bcc039f26b666ce64c8.lean/declarations/boundarymultiplier--4bec61b623e8865821e27eea.md) | 22 | `declaration-track:4bec61b623e8865821e27eea61d8759eb5be03b12c3ee6f4f8ed4361c9b385ac` |
| 2 | `theorem` | [boundaryMultiplier_norm_le](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variant67c901e7eee81c71ebfa34ce26d5bdbf1050d031d1a64bcc039f26b666ce64c8.lean/declarations/boundarymultiplier-norm-le--4daed0a3a09283914e0bc847.md) | 26 | `result-track:4daed0a3a09283914e0bc847a89f1b50ce37b6bb7278de3b68c198f21b29b62a` |
| 3 | `theorem` | [boundaryMultiplier_measurable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variant67c901e7eee81c71ebfa34ce26d5bdbf1050d031d1a64bcc039f26b666ce64c8.lean/declarations/boundarymultiplier-measurable--b166fb500e852d4d55c01e89.md) | 73 | `result-track:b166fb500e852d4d55c01e8965981550b59b2dd72e126e812fd9923538b97c8d` |
| 4 | `theorem` | [frequencyProduct_memLp](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variant67c901e7eee81c71ebfa34ce26d5bdbf1050d031d1a64bcc039f26b666ce64c8.lean/declarations/frequencyproduct-memlp--cfc6c8aa74f9bc878d20ab18.md) | 80 | `result-track:cfc6c8aa74f9bc878d20ab1861e4923714d951b6be7b4c3ec8b603e2e34aa0e3` |
| 5 | `def` | [frequencyVector](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variant67c901e7eee81c71ebfa34ce26d5bdbf1050d031d1a64bcc039f26b666ce64c8.lean/declarations/frequencyvector--5d6c4048168c8267ab5c62fc.md) | 93 | `declaration-track:5d6c4048168c8267ab5c62fceb6b2947eb56668b7166ce5cc0bf79399be36918` |
| 6 | `theorem` | [frequencyVector_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variant67c901e7eee81c71ebfa34ce26d5bdbf1050d031d1a64bcc039f26b666ce64c8.lean/declarations/frequencyvector-ae--0942952749cbb7fce23f1f07.md) | 98 | `result-track:0942952749cbb7fce23f1f073088fa11d614b1d702ceb13f09f71f7b8d5c14f1` |
| 7 | `theorem` | [frequencyVector_norm_le](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variant67c901e7eee81c71ebfa34ce26d5bdbf1050d031d1a64bcc039f26b666ce64c8.lean/declarations/frequencyvector-norm-le--40292a92dc4d66ccbffce93d.md) | 104 | `result-track:40292a92dc4d66ccbffce93dc9d30a0fc0c32e46f72ce84d01cacce71c298a04` |
| 8 | `def` | [frequencyMultiplier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variant67c901e7eee81c71ebfa34ce26d5bdbf1050d031d1a64bcc039f26b666ce64c8.lean/declarations/frequencymultiplier--25ac2ec1f84f0df25a707ade.md) | 114 | `declaration-track:25ac2ec1f84f0df25a707adeeb1bbce399621302f0b978946224417e202abd88` |
| 9 | `theorem` | [frequencyMultiplier_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variant67c901e7eee81c71ebfa34ce26d5bdbf1050d031d1a64bcc039f26b666ce64c8.lean/declarations/frequencymultiplier-ae--3973c77cf096531c544003d3.md) | 143 | `result-track:3973c77cf096531c544003d3de11364bee694eca704d3a2fe2e1acd03923fe8b` |
| 10 | `def` | [sourceMultiplier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variant67c901e7eee81c71ebfa34ce26d5bdbf1050d031d1a64bcc039f26b666ce64c8.lean/declarations/sourcemultiplier--643d1d182c928392834f6b26.md) | 150 | `declaration-track:643d1d182c928392834f6b26b099c022f204d20ca9a0c9ee4b2a20f39878abfe` |
| 11 | `theorem` | [sourceMultiplier_fourier_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variant67c901e7eee81c71ebfa34ce26d5bdbf1050d031d1a64bcc039f26b666ce64c8.lean/declarations/sourcemultiplier-fourier-ae--b6db11873db709e67bf7e6a4.md) | 155 | `result-track:b6db11873db709e67bf7e6a43106bbd802f35b03250842bb08bc280ddfb53510` |
| 12 | `theorem` | [sourceMultiplier_norm_le](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierFullAudit/Variant67c901e7eee81c71ebfa34ce26d5bdbf1050d031d1a64bcc039f26b666ce64c8.lean/declarations/sourcemultiplier-norm-le--a1d36f4b2da529c53b1aa7d9.md) | 164 | `result-track:a1d36f4b2da529c53b1aa7d92141a0491255794511fe693b5a80503065d77229` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
