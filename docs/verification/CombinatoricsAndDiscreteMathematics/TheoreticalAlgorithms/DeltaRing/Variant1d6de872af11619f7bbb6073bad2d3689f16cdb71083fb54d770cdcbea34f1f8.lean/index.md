# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeltaRing.Variant1d6de872af11619f7bbb6073bad2d3689f16cdb71083fb54d770cdcbea34f1f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7323e4d8b37eb60d3bd96e291bd4eeaa83df359",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant1d6de872af11619f7bbb6073bad2d3689f16cdb71083fb54d770cdcbea34f1f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant1d6de872af11619f7bbb6073bad2d3689f16cdb71083fb54d770cdcbea34f1f8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant1d6de872af11619f7bbb6073bad2d3689f16cdb71083fb54d770cdcbea34f1f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7323e4d8b37eb60d3bd96e291bd4eeaa83df359`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant1d6de872af11619f7bbb6073bad2d3689f16cdb71083fb54d770cdcbea34f1f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant1d6de872af11619f7bbb6073bad2d3689f16cdb71083fb54d770cdcbea34f1f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RingOps](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant1d6de872af11619f7bbb6073bad2d3689f16cdb71083fb54d770cdcbea34f1f8.lean/declarations/ringops--4c8da3a4333139961c8102ee.md) | 29 | `declaration-track:4c8da3a4333139961c8102ee8fc79da0d7479caf7cde9a5a9d31d32e40ec78a2` |
| 2 | `def` | [natMul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant1d6de872af11619f7bbb6073bad2d3689f16cdb71083fb54d770cdcbea34f1f8.lean/declarations/natmul--77f3b26471cfe9b8d4a807e2.md) | 40 | `declaration-track:77f3b26471cfe9b8d4a807e233744f1ca9f9335591feb1f361871b198a19ef8d` |
| 3 | `def` | [pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant1d6de872af11619f7bbb6073bad2d3689f16cdb71083fb54d770cdcbea34f1f8.lean/declarations/pow--308ed59f0ff02fee2f27e46c.md) | 44 | `declaration-track:308ed59f0ff02fee2f27e46c895186baabfec5d2e16ba6b37cdc1cf755661cbc` |
| 4 | `structure` | [DeltaRing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant1d6de872af11619f7bbb6073bad2d3689f16cdb71083fb54d770cdcbea34f1f8.lean/declarations/deltaring--b247a55fde61f2a7cd888fd3.md) | 51 | `declaration-track:b247a55fde61f2a7cd888fd3717c15eb62d3df91338217860e20af43d6bc706e` |
| 5 | `theorem` | [frobenius_lift_formula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant1d6de872af11619f7bbb6073bad2d3689f16cdb71083fb54d770cdcbea34f1f8.lean/declarations/frobenius-lift-formula--baece48da69ad17a2ba77343.md) | 80 | `result-track:baece48da69ad17a2ba7734394489057b809d4c55384ecca34f3726060c29db4` |
| 6 | `theorem` | [delta_structure_gives_frobenius_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant1d6de872af11619f7bbb6073bad2d3689f16cdb71083fb54d770cdcbea34f1f8.lean/declarations/delta-structure-gives-frobenius-lift--1677fca9706b2b472103c5fc.md) | 87 | `result-track:1677fca9706b2b472103c5fce46772a125274c6848f633764bf0f2b363aa032c` |
| 7 | `structure` | [DeltaRingHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant1d6de872af11619f7bbb6073bad2d3689f16cdb71083fb54d770cdcbea34f1f8.lean/declarations/deltaringhom--61ca0dbf956e29371c7fc27d.md) | 95 | `declaration-track:61ca0dbf956e29371c7fc27de354479771751fcf398f203340959ca985082385` |
| 8 | `def` | [unitDeltaRing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant1d6de872af11619f7bbb6073bad2d3689f16cdb71083fb54d770cdcbea34f1f8.lean/declarations/unitdeltaring--c3fc0430a997491d823f0b36.md) | 112 | `declaration-track:c3fc0430a997491d823f0b36446986076ca5efb435fba4bd7f44d312a18e07c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
