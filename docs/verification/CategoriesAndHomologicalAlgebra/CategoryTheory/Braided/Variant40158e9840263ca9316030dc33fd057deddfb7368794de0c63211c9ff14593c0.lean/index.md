# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Braided.Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66912e4ac71e284b409872d3799ccf6ae4f33e64",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66912e4ac71e284b409872d3799ccf6ae4f33e64`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0.lean.json)

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
| 1 | `def` | [braidingHomCorepresenting](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0.lean/declarations/braidinghomcorepresenting--df09657a02e1aceb8d1f0feb.md) | 53 | `declaration-track:df09657a02e1aceb8d1f0feb54eead193a91eedbb9ec4d2f228b334fe98e5dc3` |
| 2 | `def` | [braidingInvCorepresenting](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0.lean/declarations/braidinginvcorepresenting--e84c57f8aa7a10a7b73a6d78.md) | 60 | `declaration-track:e84c57f8aa7a10a7b73a6d78a821d44b151fa20aa01052a7eefb5ff655313a6c` |
| 3 | `def` | [braiding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0.lean/declarations/braiding--b5e2eb59cdaecbead828157c.md) | 66 | `declaration-track:b5e2eb59cdaecbead828157c5650e1f2a4cd5a118ff0c97ecf08ca8e005b32fc` |
| 4 | `lemma` | [unit_app_braiding_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0.lean/declarations/unit-app-braiding-hom-app--f1d2db4fe02360afe800b4b1.md) | 80 | `result-track:f1d2db4fe02360afe800b4b1882f7162681c226a96bff300583c53183472b7b4` |
| 5 | `lemma` | [unit_app_braiding_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0.lean/declarations/unit-app-braiding-inv-app--8d7a588672fc0164f03463c4.md) | 89 | `result-track:8d7a588672fc0164f03463c46e64fe8e25eb0a90fa42180f58da38fb1aba9917` |
| 6 | `lemma` | [braiding_naturality_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0.lean/declarations/braiding-naturality-right--87e9d6c2c4923cba982474c8.md) | 102 | `result-track:87e9d6c2c4923cba982474c85a6b80a6307954ac8975594ba6acb3a63fb07015` |
| 7 | `lemma` | [braiding_naturality_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0.lean/declarations/braiding-naturality-left--130e24330abaa15baf3b86a5.md) | 113 | `result-track:130e24330abaa15baf3b86a55386cd3871ebe8452a56bfb02996e7dedb96e34a` |
| 8 | `lemma` | [hexagon_forward](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0.lean/declarations/hexagon-forward--d58130be0c38aabdf31cb765.md) | 130 | `result-track:d58130be0c38aabdf31cb765b548efe9b23db71d809afd65c7bbbe0492908276` |
| 9 | `lemma` | [hexagon_reverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0.lean/declarations/hexagon-reverse--2428108e69790d62af5bc31c.md) | 168 | `result-track:2428108e69790d62af5bc31c90ef2ecd2624f81beb03fd8e95e95b7bada61ea4` |
| 10 | `lemma` | [symmetry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variant40158e9840263ca9316030dc33fd057deddfb7368794de0c63211c9ff14593c0.lean/declarations/symmetry--f4b3b84243b310e1348bc96c.md) | 215 | `result-track:f4b3b84243b310e1348bc96cc6ac17c2a778b7f92e85efade228307b80a71d86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
