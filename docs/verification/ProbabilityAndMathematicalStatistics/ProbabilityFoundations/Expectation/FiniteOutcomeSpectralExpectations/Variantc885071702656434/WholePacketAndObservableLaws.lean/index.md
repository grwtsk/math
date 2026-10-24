# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.FiniteOutcomeSpectralExpectations.Variantc885071702656434.WholePacketAndObservableLaws

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2d993fe13ff54aceb9661822108ae637597d5e8",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteOutcomeSpectralExpectations/Variantc885071702656434/WholePacketAndObservableLaws.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteOutcomeSpectralExpectations/Variantc885071702656434/WholePacketAndObservableLaws.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteOutcomeSpectralExpectations/Variantc885071702656434/WholePacketAndObservableLaws.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2d993fe13ff54aceb9661822108ae637597d5e8`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteOutcomeSpectralExpectations/Variantc885071702656434/WholePacketAndObservableLaws.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteOutcomeSpectralExpectations/Variantc885071702656434/WholePacketAndObservableLaws.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Probability.Simplex` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinitePacket](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteOutcomeSpectralExpectations/Variantc885071702656434/WholePacketAndObservableLaws.lean/declarations/finitepacket--3c43a51609d44c1f55c22817.md) | 46 | `declaration-track:3c43a51609d44c1f55c228175d8ddb36752cfd928c5a2f33cba25af2c1f8396c` |
| 2 | `def` | [expectation](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteOutcomeSpectralExpectations/Variantc885071702656434/WholePacketAndObservableLaws.lean/declarations/expectation--109f81a53fb2d65021da4667.md) | 55 | `declaration-track:109f81a53fb2d65021da4667328e6977318eff52a9bfcac32762d1149d5e33ea` |
| 3 | `def` | [spectralExpectation](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteOutcomeSpectralExpectations/Variantc885071702656434/WholePacketAndObservableLaws.lean/declarations/spectralexpectation--dab7766eb8ef555bbb741f55.md) | 60 | `declaration-track:dab7766eb8ef555bbb741f55c3d6b2418e1e11af2f952f5a84912e0451b1a9aa` |
| 4 | `theorem` | [probability_nonnegative](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteOutcomeSpectralExpectations/Variantc885071702656434/WholePacketAndObservableLaws.lean/declarations/probability-nonnegative--0690466d742bec39fb888b59.md) | 64 | `result-track:0690466d742bec39fb888b594d8b84b63d20bb3027f3f2fc6fc5919f9bfe0183` |
| 5 | `theorem` | [probability_normalized](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteOutcomeSpectralExpectations/Variantc885071702656434/WholePacketAndObservableLaws.lean/declarations/probability-normalized--5cee6e2b7b4983cc7ef02a42.md) | 68 | `result-track:5cee6e2b7b4983cc7ef02a42bbbb121000de9dae8a8490f7d8fff06fa09d8dde` |
| 6 | `theorem` | [expectation_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteOutcomeSpectralExpectations/Variantc885071702656434/WholePacketAndObservableLaws.lean/declarations/expectation-zero--fde418edb169fcf8a0feb4fe.md) | 73 | `result-track:fde418edb169fcf8a0feb4feb6a9e809d053e6cabfbdabaec57c6d38d81b6ef6` |
| 7 | `theorem` | [expectation_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteOutcomeSpectralExpectations/Variantc885071702656434/WholePacketAndObservableLaws.lean/declarations/expectation-one--6e03ffd4d995b415c1fdb5fc.md) | 78 | `result-track:6e03ffd4d995b415c1fdb5fc4a0212844d7dabdf86d427616ad1139cfc4820cb` |
| 8 | `theorem` | [expectation_add](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteOutcomeSpectralExpectations/Variantc885071702656434/WholePacketAndObservableLaws.lean/declarations/expectation-add--3155a6d09b9ac1eb8ff904a2.md) | 82 | `result-track:3155a6d09b9ac1eb8ff904a2857712d0ea3b37f008095d01a4ccc3329f0d3ab0` |
| 9 | `theorem` | [expectation_smul](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteOutcomeSpectralExpectations/Variantc885071702656434/WholePacketAndObservableLaws.lean/declarations/expectation-smul--c743cad92732530382f86935.md) | 88 | `result-track:c743cad92732530382f869350bbc1d59d4d7807324e427e19417ccf2c5ff654c` |
| 10 | `theorem` | [expectation_nonnegative](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteOutcomeSpectralExpectations/Variantc885071702656434/WholePacketAndObservableLaws.lean/declarations/expectation-nonnegative--9df2ee39ff50fdb7244a9fe3.md) | 98 | `result-track:9df2ee39ff50fdb7244a9fe3cfd72bac033dee2c19e293bef01ac1f4b023d238` |
| 11 | `theorem` | [spectralExpectation_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteOutcomeSpectralExpectations/Variantc885071702656434/WholePacketAndObservableLaws.lean/declarations/spectralexpectation-zero--41cc8522df638c9c5109c994.md) | 105 | `result-track:41cc8522df638c9c5109c994275cc7444e1f50571de234cfbc5a6b603e90ede6` |
| 12 | `theorem` | [spectralExpectation_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteOutcomeSpectralExpectations/Variantc885071702656434/WholePacketAndObservableLaws.lean/declarations/spectralexpectation-one--764466b7615f623294902619.md) | 110 | `result-track:764466b7615f6232949026195f48f3bcda9e3833236f817a41375e6f353fd15e` |
| 13 | `theorem` | [spectralExpectation_add](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteOutcomeSpectralExpectations/Variantc885071702656434/WholePacketAndObservableLaws.lean/declarations/spectralexpectation-add--1bd818c6245f6c5a72f20fdf.md) | 114 | `result-track:1bd818c6245f6c5a72f20fdf74b91c32f2280fe228797875f602d6efcb637fde` |
| 14 | `theorem` | [spectralExpectation_smul](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteOutcomeSpectralExpectations/Variantc885071702656434/WholePacketAndObservableLaws.lean/declarations/spectralexpectation-smul--170d35ec2597c6d5f07438e7.md) | 120 | `result-track:170d35ec2597c6d5f07438e79569847e3f971ff111664f71556cd78318d88b2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
