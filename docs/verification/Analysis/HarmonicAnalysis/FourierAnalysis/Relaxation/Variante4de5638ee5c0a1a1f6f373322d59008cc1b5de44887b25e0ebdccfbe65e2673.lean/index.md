# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Relaxation.Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "591e5e324693c813e6600379f1fd5e185c087ce9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `591e5e324693c813e6600379f1fd5e185c087ce9`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.WalshFourier.Analysis` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RelaxationParameter](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean/declarations/relaxationparameter--614d32b31a000df0bf323a27.md) | 16 | `declaration-track:614d32b31a000df0bf323a2722d9b19d7122a89703feb0eb93bf76d54c2270df` |
| 2 | `def` | [laplacianEigenvalue](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean/declarations/laplacianeigenvalue--82318d4dce559d4125549dde.md) | 23 | `declaration-track:82318d4dce559d4125549dde6823b43fa644f980c3c37bb25548c0104f4625c2` |
| 3 | `theorem` | [laplacianEigenvalue_walshCharacter](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean/declarations/laplacianeigenvalue-walshcharacter--52b9fe47a9c39342bb6b5dc8.md) | 28 | `result-track:52b9fe47a9c39342bb6b5dc8d199696f8d0b940fd00a7e065d4bb846fd69c661` |
| 4 | `def` | [relaxationMultiplierNumerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean/declarations/relaxationmultipliernumerator--2610904f0ca57768ff5b5fe6.md) | 36 | `declaration-track:2610904f0ca57768ff5b5fe6522c5961bb446de2ea5d36295bd5c8864950e4a3` |
| 5 | `def` | [relaxationMultiplier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean/declarations/relaxationmultiplier--1f1b7cdfe52ac191ae354b8d.md) | 43 | `declaration-track:1f1b7cdfe52ac191ae354b8d8815865f0e23691dfbfabcf1c3c5d22cde5cfb45` |
| 6 | `def` | [relaxationProjectionNumerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean/declarations/relaxationprojectionnumerator--2e54a919fe661ce284db590f.md) | 54 | `declaration-track:2e54a919fe661ce284db590fbf60777bb1ecd775dc63686fa2adca2d135b20d6` |
| 7 | `theorem` | [relaxationProjectionNumerator_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean/declarations/relaxationprojectionnumerator-eq--447688446a18c3c042417660.md) | 62 | `result-track:447688446a18c3c04241766091cb8a6d1724e34de07374525dc381e0e18f3f32` |
| 8 | `def` | [contractionInterval](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean/declarations/contractioninterval--97d6ebc57a01a4a3e88e3ad2.md) | 73 | `declaration-track:97d6ebc57a01a4a3e88e3ad2395623ddec2ab39f6dda1e7a09d2834c12c052af` |
| 9 | `def` | [markovTransitionInterval](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean/declarations/markovtransitioninterval--7f5edc5af2e5cacc2b3bf5d8.md) | 77 | `declaration-track:7f5edc5af2e5cacc2b3bf5d8b9c6e5fed7f2041bd3fc472308b67664fce4d17f` |
| 10 | `theorem` | [contractionInterval_iff_markovTransitionInterval](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean/declarations/contractioninterval-iff-markovtransitioninterval--96dc0b38a33cbe9e4de532b4.md) | 81 | `result-track:96dc0b38a33cbe9e4de532b41b5b975b4f9881e331311e609675b4f2c4c3f667` |
| 11 | `def` | [markovStayNumerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean/declarations/markovstaynumerator--7f5855aea53e5fba01f5924f.md) | 89 | `declaration-track:7f5855aea53e5fba01f5924f1248bb6fde77b7363baa886c633b20b9dd1ed14e` |
| 12 | `def` | [markovEdgeNumerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean/declarations/markovedgenumerator--1290cc167289a7c73d312285.md) | 95 | `declaration-track:1290cc167289a7c73d312285d6617e6e9d933444239b65457c3375ab29caa762` |
| 13 | `theorem` | [markov_rowMass_numerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean/declarations/markov-rowmass-numerator--4187728d6007e98722c8b625.md) | 104 | `result-track:4187728d6007e98722c8b625ba618948a279eab703a61d3314badc4eaf10f9ba` |
| 14 | `structure` | [FiniteRelaxationOperator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean/declarations/finiterelaxationoperator--997c1f1638e30b33f6d397ee.md) | 120 | `declaration-track:997c1f1638e30b33f6d397ee8af8f67bbb5119f5f872da491718af586e674a80` |
| 15 | `theorem` | [FiniteRelaxationOperator.markovTransition](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean/declarations/finiterelaxationoperator-markovtransition--ccdff01c285020fcec70b714.md) | 126 | `result-track:ccdff01c285020fcec70b714b1ccedcaa940dc1818efb9059976774562bb2a9d` |
| 16 | `theorem` | [FiniteRelaxationOperator.markovRowMass](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variante4de5638ee5c0a1a1f6f373322d59008cc1b5de44887b25e0ebdccfbe65e2673.lean/declarations/finiterelaxationoperator-markovrowmass--d93ca4ec737c12e2256627e0.md) | 132 | `result-track:d93ca4ec737c12e2256627e01803200e1601112ec4fa1535935dde2dadda9751` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
