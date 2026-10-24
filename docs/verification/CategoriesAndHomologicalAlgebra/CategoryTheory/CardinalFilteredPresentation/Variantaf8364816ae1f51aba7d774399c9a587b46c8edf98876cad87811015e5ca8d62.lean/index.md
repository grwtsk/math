# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CardinalFilteredPresentation.Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92bb36828f58cfbe1ad073b0c6416600f36cf6ae",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92bb36828f58cfbe1ad073b0c6416600f36cf6ae`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean.json)

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
| 1 | `lemma` | [isCardinalPresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean/declarations/iscardinalpresentable--69bbff6196acf0f406ead0bb.md) | 55 | `result-track:69bbff6196acf0f406ead0bb5fcbdac36658b5fe2f5bd7d71a53bd7a418e1e61` |
| 2 | `lemma` | [ColimitOfShape.isCardinalPresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean/declarations/colimitofshape-iscardinalpresentable--cab8cd9413b9cd72f86192bf.md) | 75 | `result-track:cab8cd9413b9cd72f86192bf8940c519198c08e523cdac163b7f013f0fbeca7d` |
| 3 | `structure` | [IsCardinalFilteredGenerator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean/declarations/iscardinalfilteredgenerator--f9218662160550e1c87b93a0.md) | 92 | `declaration-track:f9218662160550e1c87b93a0d4fedaaa93d3659ee6da108fc1ab8f5a904af4ae` |
| 4 | `lemma` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean/declarations/mk--29ab3fa9bc5ae08048a7bed9.md) | 100 | `result-track:29ab3fa9bc5ae08048a7bed9e3f79aaad3b44c83efa1698f9a9af7c492d21419` |
| 5 | `lemma` | [of_le_isoClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean/declarations/of-le-isoclosure--7091607b301a22ee3b3d0b59.md) | 114 | `result-track:7091607b301a22ee3b3d0b595e136cff084db3420ce2d199904f683c9242ee69` |
| 6 | `lemma` | [isoClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean/declarations/isoclosure--ea8252b070052b83b94612fe.md) | 124 | `result-track:ea8252b070052b83b94612fe52b0a0fd2dac9443176c7aa5194279632b40e2a7` |
| 7 | `lemma` | [isoClosure_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean/declarations/isoclosure-iff--dfbc73433b505e093c1f6286.md) | 128 | `result-track:dfbc73433b505e093c1f628602a47ae3c9cd811cff0ce11a8c1a8e1924a5d65a` |
| 8 | `lemma` | [presentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean/declarations/presentable--f8e2ac72b89918cd0658c2b3.md) | 134 | `result-track:f8e2ac72b89918cd0658c2b33334f46abb34bc9c60847ebe074aa6853dad270f` |
| 9 | `lemma` | [isStrongGenerator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean/declarations/isstronggenerator--e2b35bf3069426d0ae7ed632.md) | 148 | `result-track:e2b35bf3069426d0ae7ed6321b90bdfb345858209b88dfb1a41c31597f284ae3` |
| 10 | `lemma` | [isPresentable_eq_retractClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean/declarations/ispresentable-eq-retractclosure--efdcb76d83452e451b18a5e1.md) | 154 | `result-track:efdcb76d83452e451b18a5e1759c56cf184c0c55e63dc8ce80e4325271ba1ad8` |
| 11 | `lemma` | [essentiallySmall_isPresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean/declarations/essentiallysmall-ispresentable--0ba9a7e67ea017b1390a4ac3.md) | 165 | `result-track:0ba9a7e67ea017b1390a4ac3c71e5870405f1c6c3e0bd2238f6a9f53fb182981` |
| 12 | `class` | [HasCardinalFilteredGenerator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean/declarations/hascardinalfilteredgenerator--f46df73ba1ef59118ed6b305.md) | 178 | `declaration-track:f46df73ba1ef59118ed6b3055893e462d87323ac82f86c4fc6554e87a02a3de0` |
| 13 | `lemma` | [ObjectProperty.IsCardinalFilteredGenerator.hasCardinalFilteredGenerator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean/declarations/objectproperty-iscardinalfilteredgenerator-hascardinalfilteredgenerator--e5fbcdb099e39418df7516bf.md) | 184 | `result-track:e5fbcdb099e39418df7516bf81c7c84e53cdcb4fe560aa95f91ec986f4ffe730` |
| 14 | `lemma` | [HasCardinalFilteredGenerator.exists_small_generator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean/declarations/hascardinalfilteredgenerator-exists-small-generator--6ea6dbbb1e5175234520cf03.md) | 191 | `result-track:6ea6dbbb1e5175234520cf033f7f411fe64c4817ad55e913912fa33c5803376f` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean/declarations/instance--882f95468b266c981f0aa9c0.md) | 199 | `declaration-track:882f95468b266c981f0aa9c0fe7527ab5894a88db29d42f8382fe5db0942b9e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
