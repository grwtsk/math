# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pullback.Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78d30c23fdcea5be834b0f267b2a397227cd50ce",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78d30c23fdcea5be834b0f267b2a397227cd50ce`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Mates` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Products` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/pullback--c9e15d3d73e8139293adb02c.md) | 53 | `declaration-track:c9e15d3d73e8139293adb02c31c2f4ed977346f16334435425791acc641fa31b` |
| 2 | `def` | [mapPullbackAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/mappullbackadj--a257d52a10ccc5364a1710e6.md) | 61 | `declaration-track:a257d52a10ccc5364a1710e6a60601c66d4aea32c56813b5a66cba023c301bab` |
| 3 | `def` | [pullbackId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/pullbackid--79ebf1de56c7675f1fe01b4c.md) | 77 | `declaration-track:79ebf1de56c7675f1fe01b4ccab1085d98c23fdb6a3c13d7a20a899f21c2e354` |
| 4 | `def` | [pullbackComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/pullbackcomp--3d1696e2e6c426b13a0e1b77.md) | 81 | `declaration-track:3d1696e2e6c426b13a0e1b77e8bebeed925af673334fb0553baf3fc5b638392b` |
| 5 | `instance` | [pullbackIsRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/pullbackisrightadjoint--9838435ee8df5a9b01e491eb.md) | 86 | `declaration-track:9838435ee8df5a9b01e491eb88dafcd484f925eb84cbb005c17c6f3feb52f8e9` |
| 6 | `def` | [postAdjunctionLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/postadjunctionleft--942db8462767f979f343b5f2.md) | 96 | `declaration-track:942db8462767f979f343b5f21c3748b8a35b133328cd18b19463212273e9ea67` |
| 7 | `instance` | [isLeftAdjoint_post](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/isleftadjoint-post--72f745715c3da7324aeda40e.md) | 101 | `declaration-track:72f745715c3da7324aeda40e834df844c5d4f35f611d0ea2565933fa05c077da` |
| 8 | `def` | [forgetMapTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/forgetmapterminal--8500783ab528ef4ed192c781.md) | 108 | `declaration-track:8500783ab528ef4ed192c7810941434566c7282fbc50e6198243d3c9243230a2` |
| 9 | `def` | [star](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/star--d06c78a43876418d05e019c3.md) | 119 | `declaration-track:d06c78a43876418d05e019c384d3bcb3a160d0d263f8fde4eb6119578a41d1d0` |
| 10 | `def` | [forgetAdjStar](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/forgetadjstar--d46a1d04f943231ee7fc2443.md) | 126 | `declaration-track:d46a1d04f943231ee7fc2443533d70f3a339f8ebfaae931b1c165c5efef52d03` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/instance--63d9bc60fb53fcc5cc85ce15.md) | 128 | `declaration-track:63d9bc60fb53fcc5cc85ce15b8b1d34223a034e98198159c2f4ce80f47c9cc11` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/instance--a88283470491b085c150bfe0.md) | 132 | `declaration-track:a88283470491b085c150bfe060052fc79710f3c0d43f18a0c43156ba9db56118` |
| 13 | `def` | [pushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/pushout--8b711eb0b6ecccf0fed9767b.md) | 144 | `declaration-track:8b711eb0b6ecccf0fed9767b687d0014cb01d09faa213970a3771310e7b464f0` |
| 14 | `def` | [mapPushoutAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/mappushoutadj--26a1a46529834941bbe29a08.md) | 152 | `declaration-track:26a1a46529834941bbe29a08ef8f276d412a98adc9bd0978b179aafb6c9e5fa2` |
| 15 | `def` | [pushoutId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/pushoutid--48fdcbfb44f78e8f8c94ff85.md) | 173 | `declaration-track:48fdcbfb44f78e8f8c94ff859582504c24e448a05887d843d0389c48650fd677` |
| 16 | `def` | [pushoutComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/pushoutcomp--83e879b850989745c2ad1434.md) | 178 | `declaration-track:83e879b850989745c2ad143495dbd1ab10efdd1a82e80f06fdc0cb72db6a9fa4` |
| 17 | `instance` | [pushoutIsLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/pushoutisleftadjoint--395428691fc460c2c452f49b.md) | 185 | `declaration-track:395428691fc460c2c452f49bc5db1ad2454131492adf7346d96200a13e8ddc00` |
| 18 | `def` | [postAdjunctionRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/postadjunctionright--10b8c4e72bc99d37321d6e7a.md) | 196 | `declaration-track:10b8c4e72bc99d37321d6e7a3dc30ff3fe6d6d474659f83a7991fb4ff6b86f8a` |
| 19 | `instance` | [isRightAdjoint_post](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/isrightadjoint-post--cae23b4bc488d903faef4a5e.md) | 203 | `declaration-track:cae23b4bc488d903faef4a5eb57ed7bd83948031a1f3f2132370e38ce7c68867` |
| 20 | `def` | [forgetMapInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/forgetmapinitial--c0ff4909e9c960a293788a19.md) | 209 | `declaration-track:c0ff4909e9c960a293788a19427ac8c6de0d034430a826bcf27ad0d666c52c15` |
| 21 | `def` | [costar](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/costar--44491d48ab466a69ea78bff0.md) | 218 | `declaration-track:44491d48ab466a69ea78bff01f5b23b486913fbf2855f40f06660b4e2c9ecbd0` |
| 22 | `def` | [costarAdjForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/costaradjforget--1d0bc52e0d6dd2adbb5d4e25.md) | 224 | `declaration-track:1d0bc52e0d6dd2adbb5d4e25c59fa5b9f6037d586d1003804b87ee92d5174349` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/instance--ed2ce6886d3b151d5229e833.md) | 226 | `declaration-track:ed2ce6886d3b151d5229e833445040a0afe58fb7379467c26aebf3424121c536` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variante02579c5d96a222571e56abe653d04f42a320048f8b98140da8c211c523ff65d.lean/declarations/instance--bdccb9f7cc5eb1daee76e4f5.md) | 230 | `declaration-track:bdccb9f7cc5eb1daee76e4f57e39b64d08e817e40ee006b1afe21d3e0ef2273b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
