# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.System.Variant220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2f724c2539367af65929c076b1360911e0d5c7b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2f724c2539367af65929c076b1360911e0d5c7b`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.MobiusOntology.TwistedBitfield` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteProbabilityLaw](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6.lean/declarations/finiteprobabilitylaw--9a7bac6dc404a3da2fdcb03e.md) | 17 | `declaration-track:9a7bac6dc404a3da2fdcb03eff6216823cb3baccdaa1090d56152f6591ed7ae6` |
| 2 | `def` | [expectation](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6.lean/declarations/expectation--6888f458935086a7bd18351e.md) | 25 | `declaration-track:6888f458935086a7bd18351e037c51774b5dc80eb566053a100a698b36fa8fc4` |
| 3 | `def` | [realExpectation](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6.lean/declarations/realexpectation--246e3a0c6f1e9b0707424a96.md) | 34 | `declaration-track:246e3a0c6f1e9b0707424a96867cc67b187c36eb0eabdfe1fd9c223009ce1249` |
| 4 | `def` | [eventMass](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6.lean/declarations/eventmass--2eaf906d0c0e4b27b0ac92d8.md) | 43 | `declaration-track:2eaf906d0c0e4b27b0ac92d8cbf520794202316e23f14f8e398b49a978bc540d` |
| 5 | `abbrev` | [Bitfield](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6.lean/declarations/bitfield--dadc8e8d5942cfb156a04c97.md) | 54 | `declaration-track:dadc8e8d5942cfb156a04c976c94fc2171395dc30240ecfd73c94fe0f8ed607a` |
| 6 | `structure` | [FiniteBitfieldMetric](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6.lean/declarations/finitebitfieldmetric--7bd20d72dc5df5dbfb2ff0fc.md) | 57 | `declaration-track:7bd20d72dc5df5dbfb2ff0fc6b19756e5d5cda80692defa13ac058521de35519` |
| 7 | `def` | [flipBit](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6.lean/declarations/flipbit--6b409891230b37624eeb81c7.md) | 80 | `declaration-track:6b409891230b37624eeb81c7cf1be42f3e6dc926983fb1246e5a9d1729af165f` |
| 8 | `def` | [centeredBit](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6.lean/declarations/centeredbit--e672ce447399bf6ad66a1c66.md) | 87 | `declaration-track:e672ce447399bf6ad66a1c6657dfd3b50bd9c25dd2276431a0f1b11b6a8c84dd` |
| 9 | `def` | [walshCharacter](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6.lean/declarations/walshcharacter--e0324e9ed3c1e1d4f1c0c6a5.md) | 93 | `declaration-track:e0324e9ed3c1e1d4f1c0c6a5474c64047166df5d0368e3f5467ab97e2caf63ab` |
| 10 | `structure` | [RandomBitfieldSystem](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6.lean/declarations/randombitfieldsystem--d12248ceaac47f5230afd495.md) | 99 | `declaration-track:d12248ceaac47f5230afd49527ae756c206c10a8fcd992b785987b2dd6ed5a19` |
| 11 | `structure` | [ArithmeticBitfieldEncoding](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6.lean/declarations/arithmeticbitfieldencoding--7e00f8efa69ff6dbe106a5e7.md) | 124 | `declaration-track:7e00f8efa69ff6dbe106a5e79c982eeae39fe7ff7f57690d896f8dfc4596e722` |
| 12 | `theorem` | [ArithmeticBitfieldEncoding.preservesSystemAdmissibility](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6.lean/declarations/arithmeticbitfieldencoding-preservessystemadmissibility--9226410e777763c9b0455ef4.md) | 154 | `result-track:9226410e777763c9b0455ef4e48274cc7c14d52c16163353b022454566d4d35c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
