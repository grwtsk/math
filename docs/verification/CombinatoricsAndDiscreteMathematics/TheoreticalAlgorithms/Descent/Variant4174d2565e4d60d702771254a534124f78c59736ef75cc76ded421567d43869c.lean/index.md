# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Descent.Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2a755b73bdc67b0b50e4a1f29e6b7f560756cde",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2a755b73bdc67b0b50e4a1f29e6b7f560756cde`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Congruence` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GeneratorInterpreted](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean/declarations/generatorinterpreted--fda2fb9e0e96cc3e67319ce7.md) | 23 | `declaration-track:fda2fb9e0e96cc3e67319ce7fa3793e10337630a853a1c14032f8ad1e73ade61` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean/declarations/instance--ffdc0d3136573df3356dc32d.md) | 29 | `declaration-track:ffdc0d3136573df3356dc32d7e8090368a1eaffd82fae86507be0e027751e4c0` |
| 3 | `def` | [DescentValid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean/declarations/descentvalid--32671cecda02ce3d04d0c6a4.md) | 37 | `declaration-track:32671cecda02ce3d04d0c6a468eabfe3cc25a5291b2308fea9b81e9a2e94d00c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean/declarations/instance--788f7b06da25853d30e392ed.md) | 54 | `declaration-track:788f7b06da25853d30e392edb85eede2092e5e08f4e0cb15d3185b5ee4ae74a8` |
| 5 | `def` | [checkDescent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean/declarations/checkdescent--c2f021296e9017b99211ff9f.md) | 60 | `declaration-track:c2f021296e9017b99211ff9f17683f0e2c8c6c4d8370530cfb18e2df286d711e` |
| 6 | `theorem` | [checkDescent_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean/declarations/checkdescent-sound--27fab8f9840d2afb7627898e.md) | 63 | `result-track:27fab8f9840d2afb7627898e1ad28f98bb0dc256df9af1738f4d9922ef82d385` |
| 7 | `structure` | [CheckedDescent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean/declarations/checkeddescent--3fa875c9a51ab82959828cf2.md) | 70 | `declaration-track:3fa875c9a51ab82959828cf268699cda8ff21257a729584da0bcf4c7092f2858` |
| 8 | `def` | [verifyDescent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean/declarations/verifydescent--b87d54b9b685f90ac251a382.md) | 77 | `declaration-track:b87d54b9b685f90ac251a382374941bd43c8b9de89bef5a2e0f3b8fa8e1addc4` |
| 9 | `theorem` | [checkedDescent_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean/declarations/checkeddescent-sound--4abb42a3601716840d3414d5.md) | 83 | `result-track:4abb42a3601716840d3414d5d6ac13fd0490416f012291cada5340ef5a5ddfb4` |
| 10 | `theorem` | [checkedDescent_generator_all_assignments](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean/declarations/checkeddescent-generator-all-assignments--3f6dff4bd5df0efb71168a33.md) | 90 | `result-track:3f6dff4bd5df0efb71168a33795b319a30016b5c1654eaf91e4264c6554b1645` |
| 11 | `theorem` | [checkedDescent_respects_relation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean/declarations/checkeddescent-respects-relation--005a6396af924412fe621d93.md) | 101 | `result-track:005a6396af924412fe621d93e8f99825b38137a2d3dfa450c0835c712fb4f756` |
| 12 | `def` | [catalogSetoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean/declarations/catalogsetoid--b5b89fcf3a4cdd2a600c79a6.md) | 111 | `declaration-track:b5b89fcf3a4cdd2a600c79a66c458c5c08530a75c8532324b3a45a1859872d21` |
| 13 | `def` | [evaluateQuotient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean/declarations/evaluatequotient--3811e0edec9c26368278bca0.md) | 127 | `declaration-track:3811e0edec9c26368278bca0c8763b7a0f22f6bff8cbe8a41eddf1100125be02` |
| 14 | `theorem` | [evaluateQuotient_well_defined](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean/declarations/evaluatequotient-well-defined--69d642edfab8a9f767b605d9.md) | 137 | `result-track:69d642edfab8a9f767b605d9ee7a2f5b89316b1b0f94b205ab0a8e8f369c892a` |
| 15 | `def` | [FullModelStages](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean/declarations/fullmodelstages--0675d04049f8ab69b5790536.md) | 147 | `declaration-track:0675d04049f8ab69b579053635d2a69cfbb1c91987b57605fbc7550060a66ccf` |
| 16 | `theorem` | [assemble_model_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Descent/Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c.lean/declarations/assemble-model-sound--e44536a34babaa3c5d68d99b.md) | 155 | `result-track:e44536a34babaa3c5d68d99b7ce25f85f1e30e2b9095a49c0288af4eee2d81db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
