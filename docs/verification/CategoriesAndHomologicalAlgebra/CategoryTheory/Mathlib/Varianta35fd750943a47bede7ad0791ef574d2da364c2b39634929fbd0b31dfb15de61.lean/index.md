# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Mathlib.Varianta35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3aa5395a92b97ee8420d79fa414bf1d0d9cd522d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Varianta35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Varianta35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Varianta35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3aa5395a92b97ee8420d79fa414bf1d0d9cd522d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Varianta35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Varianta35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monad.Kleisli` — import line 1; external provider; requires a separately pinned dependency.
- `Think.Logic.Mathlib.FiveLayer` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WisdomMonadBoundary](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Varianta35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61.lean/declarations/wisdommonadboundary--251200658bc9369536187d6f.md) | 10 | `declaration-track:251200658bc9369536187d6f4f4d801688c13d741af833dd9839b8278c39568c` |
| 2 | `def` | [WisdomMonadBoundary.accepted](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Varianta35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61.lean/declarations/wisdommonadboundary-accepted--d7f874ad12851c12186da79d.md) | 20 | `declaration-track:d7f874ad12851c12186da79d27f616776a3eb1bd928839606be0519fb6ed16d1` |
| 3 | `def` | [WisdomMonadBoundary.has_target_monad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Varianta35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61.lean/declarations/wisdommonadboundary-has-target-monad--f90c5238ecacd7a78a0708ec.md) | 26 | `declaration-track:f90c5238ecacd7a78a0708ec31088e31f20e3a8a84215f9536a82e84d5254522` |
| 4 | `abbrev` | [KleisliChoice](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Varianta35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61.lean/declarations/kleislichoice--4aff8f4ae489b208a15413d4.md) | 34 | `declaration-track:4aff8f4ae489b208a15413d49a8fd876937b66aaa567dd4958f75a371d273be9` |
| 5 | `def` | [KleisliChoice.underlying](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Varianta35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61.lean/declarations/kleislichoice-underlying--f799187711345c9b50795805.md) | 41 | `declaration-track:f799187711345c9b50795805171687e8f7e9d9da96b7caa77537fb70ffdfdd10` |
| 6 | `def` | [KleisliChoice.compose](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Varianta35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61.lean/declarations/kleislichoice-compose--6c86d10075810aa81f786c5a.md) | 50 | `declaration-track:6c86d10075810aa81f786c5afcd88a672c726dc8bf7f1087d8d71f332d77b82b` |
| 7 | `theorem` | [KleisliChoice.assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Varianta35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61.lean/declarations/kleislichoice-assoc--2780e379b658522feccf7e3a.md) | 61 | `result-track:2780e379b658522feccf7e3ab7088b9584f1ecce37b520b42f5279f154b429e7` |
| 8 | `theorem` | [KleisliChoice.compose_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Varianta35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61.lean/declarations/kleislichoice-compose-assoc--f992a06d41480bf89541c00d.md) | 73 | `result-track:f992a06d41480bf89541c00d9615eb48f42f03ff405a35c889997868dd197113` |
| 9 | `abbrev` | [WisdomKleisli](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Varianta35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61.lean/declarations/wisdomkleisli--70e1f2b88435585776291161.md) | 86 | `declaration-track:70e1f2b884355857762911619cd9a9a88abca8fb13a72894d19f7ddd3e23600d` |
| 10 | `theorem` | [WisdomMonadBoundary.not_claim_bearing_if_accepted](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mathlib/Varianta35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61.lean/declarations/wisdommonadboundary-not-claim-bearing-if-accepted--ef1d140eb7911f99922e4e75.md) | 92 | `result-track:ef1d140eb7911f99922e4e754ee5d3b9dc018d931e516aeaf59111d93a851316` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
