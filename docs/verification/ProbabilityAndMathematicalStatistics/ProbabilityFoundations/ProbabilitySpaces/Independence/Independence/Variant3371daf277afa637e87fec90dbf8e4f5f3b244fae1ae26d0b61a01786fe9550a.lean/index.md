# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Independence.Variant3371daf277afa637e87fec90dbf8e4f5f3b244fae1ae26d0b61a01786fe9550a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11764fe85af3eab75430764ee3aa376294a2f0d5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant3371daf277afa637e87fec90dbf8e4f5f3b244fae1ae26d0b61a01786fe9550a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant3371daf277afa637e87fec90dbf8e4f5f3b244fae1ae26d0b61a01786fe9550a.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant3371daf277afa637e87fec90dbf8e4f5f3b244fae1ae26d0b61a01786fe9550a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11764fe85af3eab75430764ee3aa376294a2f0d5`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant3371daf277afa637e87fec90dbf8e4f5f3b244fae1ae26d0b61a01786fe9550a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant3371daf277afa637e87fec90dbf8e4f5f3b244fae1ae26d0b61a01786fe9550a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Projectivization.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Independent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant3371daf277afa637e87fec90dbf8e4f5f3b244fae1ae26d0b61a01786fe9550a.lean/declarations/independent--0e8a6d35d55e3b9a943b6d7a.md) | 47 | `declaration-track:0e8a6d35d55e3b9a943b6d7af6153e81dea692951f8afec595911ad66159e526` |
| 2 | `theorem` | [independent_iff](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant3371daf277afa637e87fec90dbf8e4f5f3b244fae1ae26d0b61a01786fe9550a.lean/declarations/independent-iff--c7869bdf7d45e4bd640eb4f3.md) | 53 | `result-track:c7869bdf7d45e4bd640eb4f3b553933731927e69796ca6c02768187a4eb059d5` |
| 3 | `theorem` | [independent_iff_iSupIndep](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant3371daf277afa637e87fec90dbf8e4f5f3b244fae1ae26d0b61a01786fe9550a.lean/declarations/independent-iff-isupindep--528af7ba6efaf739e3a4e7d1.md) | 67 | `result-track:528af7ba6efaf739e3a4e7d1a4c245759176600348ea28c74c243b7b6c053448` |
| 4 | `inductive` | [Dependent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant3371daf277afa637e87fec90dbf8e4f5f3b244fae1ae26d0b61a01786fe9550a.lean/declarations/dependent--06fb44197b7290312b8b1805.md) | 82 | `declaration-track:06fb44197b7290312b8b1805714eceecb2dcec259cb0f2b6dd4e8304a8f94320` |
| 5 | `theorem` | [dependent_iff](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant3371daf277afa637e87fec90dbf8e4f5f3b244fae1ae26d0b61a01786fe9550a.lean/declarations/dependent-iff--87b2dac0a27da87dd674d674.md) | 88 | `result-track:87b2dac0a27da87dd674d6740ec00c3c05700da6f370ac51a4e897c04610949c` |
| 6 | `theorem` | [dependent_iff_not_independent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant3371daf277afa637e87fec90dbf8e4f5f3b244fae1ae26d0b61a01786fe9550a.lean/declarations/dependent-iff-not-independent--1cb002b0210b142d51d410cb.md) | 101 | `result-track:1cb002b0210b142d51d410cb55c8532e790cd0dd894e02d4bc332be42a73db6b` |
| 7 | `theorem` | [independent_iff_not_dependent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant3371daf277afa637e87fec90dbf8e4f5f3b244fae1ae26d0b61a01786fe9550a.lean/declarations/independent-iff-not-dependent--ee7556ffeaf04004ee5dbf2b.md) | 105 | `result-track:ee7556ffeaf04004ee5dbf2b3ebafd829bad89d7e9cc0bda3e3e1ed6eb2c1a32` |
| 8 | `theorem` | [dependent_pair_iff_eq](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant3371daf277afa637e87fec90dbf8e4f5f3b244fae1ae26d0b61a01786fe9550a.lean/declarations/dependent-pair-iff-eq--4c46d1498505bbafffc47db6.md) | 110 | `result-track:4c46d1498505bbafffc47db6b8892f65c905c97853065bf15bb1a133f6a06d2d` |
| 9 | `theorem` | [independent_pair_iff_ne](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant3371daf277afa637e87fec90dbf8e4f5f3b244fae1ae26d0b61a01786fe9550a.lean/declarations/independent-pair-iff-ne--5920ba0a5a85adc68156a3d7.md) | 119 | `result-track:5920ba0a5a85adc68156a3d7bee47d0743d701fdb1715158aab3d0ec581a8f7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
