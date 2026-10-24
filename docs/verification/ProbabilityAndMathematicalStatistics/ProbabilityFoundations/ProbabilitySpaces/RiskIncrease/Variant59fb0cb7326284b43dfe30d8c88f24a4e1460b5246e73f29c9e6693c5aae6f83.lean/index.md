# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.RiskIncrease.Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "441a420e8c36cfde838ab71716b0e51ac6948a20",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `441a420e8c36cfde838ab71716b0e51ac6948a20`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Decision.Risk.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [riskIncrease](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean/declarations/riskincrease--d711661b35fe4faa5ec9f95e.md) | 54 | `declaration-track:d711661b35fe4faa5ec9f95e281e363b5fc2c1d49aa89c35670607cf315ab11f` |
| 2 | `lemma` | [riskIncrease_eq_iInf_sub'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean/declarations/riskincrease-eq-iinf-sub--90cd11f53d323397f35ba403.md) | 57 | `result-track:90cd11f53d323397f35ba4037c3b74138f68eabaa1da3ac55ce1f86af6403e29` |
| 3 | `lemma` | [riskIncrease_eq_iInf_sub](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean/declarations/riskincrease-eq-iinf-sub--cd44c3be8ee8436b6c0425ab.md) | 62 | `result-track:cd44c3be8ee8436b6c0425abcb88bec7cef9ad0a70a04dadd329551bca11dfd8` |
| 4 | `lemma` | [riskIncrease_of_isEmpty_of_isEmpty](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean/declarations/riskincrease-of-isempty-of-isempty--b91270c40fa030193d5b3e90.md) | 67 | `result-track:b91270c40fa030193d5b3e90693b8e1b14ee518837da3f0e43ba2835b196deed` |
| 5 | `lemma` | [riskIncrease_of_nonempty_of_isEmpty](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean/declarations/riskincrease-of-nonempty-of-isempty--9008803f06c752dec0d81422.md) | 70 | `result-track:9008803f06c752dec0d814220dc52213244fe89ecd2258fa0aa423487f0f6404` |
| 6 | `lemma` | [riskIncrease_zero_left](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean/declarations/riskincrease-zero-left--085401036af9833ce8bd230e.md) | 73 | `result-track:085401036af9833ce8bd230e507fa1f8beddb4ce9e9242706feb9183230985df` |
| 7 | `lemma` | [riskIncrease_zero_right](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean/declarations/riskincrease-zero-right--8e449b22dbedeb836fe78cbf.md) | 76 | `result-track:8e449b22dbedeb836fe78cbfb38cdf07a639a36fe9b71fad576a895654e50ee1` |
| 8 | `lemma` | [riskIncrease_const](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean/declarations/riskincrease-const--3dec0f6744021b8d105a36ac.md) | 79 | `result-track:3dec0f6744021b8d105a36ac6525aecf13c25ec18dd3449834ebf81de70fe75a` |
| 9 | `lemma` | [riskIncrease_le_iInf'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean/declarations/riskincrease-le-iinf--7c31f62181623ffa1f122335.md) | 83 | `result-track:7c31f62181623ffa1f122335673471df24b353fa13aff8c9af484d9508d6fef3` |
| 10 | `lemma` | [riskIncrease_le_iInf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean/declarations/riskincrease-le-iinf--faa2e50f3eef6a524a16cd7f.md) | 87 | `result-track:faa2e50f3eef6a524a16cd7fe0935fa16aa029cfff435ecd629f5c2414d7ab22` |
| 11 | `lemma` | [riskIncrease_lt_top'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean/declarations/riskincrease-lt-top--1f46ec0775d869f84a87a0b2.md) | 91 | `result-track:1f46ec0775d869f84a87a0b2e39194bef2b5494f2b4f46d2334126147f9a741b` |
| 12 | `lemma` | [riskIncrease_lt_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean/declarations/riskincrease-lt-top--b2ef934b50176da13ec7067c.md) | 96 | `result-track:b2ef934b50176da13ec7067c2c76e6c46f5fb9beafad33fef03f6d4a58a52995` |
| 13 | `lemma` | [riskIncrease_comp_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean/declarations/riskincrease-comp-le--8909df75c88e37deab852641.md) | 102 | `result-track:8909df75c88e37deab8526418518cf76f8c4493226f05489dc07935219db59a8` |
| 14 | `lemma` | [riskIncrease_map_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RiskIncrease/Variant59fb0cb7326284b43dfe30d8c88f24a4e1460b5246e73f29c9e6693c5aae6f83.lean/declarations/riskincrease-map-le--6077a429f2b63f986487aed4.md) | 109 | `result-track:6077a429f2b63f986487aed4cf7b9d8272a029fe016bb24216bfbbcaac4c7b60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
