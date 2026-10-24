# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Capabilities.Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6ed82a82c393517144842b2afe4cbf4dc496668",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6ed82a82c393517144842b2afe4cbf4dc496668`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Spectral.FinitePacket` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PacketEquiv](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean/declarations/packetequiv--350af715b6206d6621eca6d0.md) | 32 | `declaration-track:350af715b6206d6621eca6d07e77410f550583470238c77bc70cf8b2d048fe89` |
| 2 | `theorem` | [expectation_preserved](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean/declarations/expectation-preserved--f2a87ec0074bd1b848937674.md) | 48 | `result-track:f2a87ec0074bd1b84893767471e96ff7050da7afb8a3e7de699c562200dd432f` |
| 3 | `theorem` | [spectralExpectation_preserved](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean/declarations/spectralexpectation-preserved--0b3f82eaa5a2803988af4c81.md) | 67 | `result-track:0b3f82eaa5a2803988af4c81921351de265c472f333e21de9eaa42bcc7c1b7d1` |
| 4 | `structure` | [FamilyTurnCovariance](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean/declarations/familyturncovariance--b738fdf086e27a48217c6977.md) | 83 | `declaration-track:b738fdf086e27a48217c697739a31519ac0fee4dfc38dc6b80ca953c0a928199` |
| 5 | `def` | [sumOutcomeEquiv](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean/declarations/sumoutcomeequiv--7120cc839ce377cce0f30180.md) | 99 | `declaration-track:7120cc839ce377cce0f301809f13a2aeb8eebc88b17d61bcde6a1ce58f061beb` |
| 6 | `def` | [mixtureEquiv](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean/declarations/mixtureequiv--6ff93b53c9e3cf47c72fa975.md) | 106 | `declaration-track:6ff93b53c9e3cf47c72fa975fda655fc5f155fa14f07c3f789bbbfd0c0e5f6b6` |
| 7 | `theorem` | [spectralExpectation_reindex](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean/declarations/spectralexpectation-reindex--5041a1888aaa9983866ff560.md) | 126 | `result-track:5041a1888aaa9983866ff5601c6f52cd0b1d32c789f08a8309e648f711e796d1` |
| 8 | `structure` | [OperatorSemantics](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean/declarations/operatorsemantics--7601064b1632d1541ea595ad.md) | 138 | `declaration-track:7601064b1632d1541ea595ad2cce01122cc58540e80c7754cecbb17cdf66048e` |
| 9 | `structure` | [OperatorRealization](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean/declarations/operatorrealization--4db144f1d156d37b32a0f91b.md) | 147 | `declaration-track:4db144f1d156d37b32a0f91bddb51351df72bc34a3ebfe240699894ab56d8f6d` |
| 10 | `structure` | [UnitaryTransportSemantics](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean/declarations/unitarytransportsemantics--fe7002fa53ba6eaeec1bf8f5.md) | 163 | `declaration-track:fe7002fa53ba6eaeec1bf8f5f43bd2af4998bb199bc85315ed5e80cee277328f` |
| 11 | `structure` | [OperatorTurnCovariance](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Capabilities/Variant0cec578f3ead7f61f9b3f4586706493d309d38a3e3bb6e04b84723a5cafc9dcd.lean/declarations/operatorturncovariance--77c1b81681793c31f7136e64.md) | 172 | `declaration-track:77c1b81681793c31f7136e640d901f6d5943ded648d42cc8c0859115290cce3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
