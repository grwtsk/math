# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftDerived.Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ffdbdf9221aab38af4fd30d25411e3c194b7cc4",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ffdbdf9221aab38af4fd30d25411e3c194b7cc4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean.json)

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
| 1 | `class` | [IsLeftDerivedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/isleftderivedfunctor--17c4a338403074febdd8309d.md) | 59 | `declaration-track:17c4a338403074febdd8309d7118fd552a56830361d501b39479e991e316f7b5` |
| 2 | `lemma` | [isLeftDerivedFunctor_iff_isRightKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/isleftderivedfunctor-iff-isrightkanextension--4dc20d0ba552979c30d655c5.md) | 63 | `result-track:4dc20d0ba552979c30d655c59b48eb2e6cd6eceeec7fe43a96dc8fa635fae2bd` |
| 3 | `lemma` | [isLeftDerivedFunctor_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/isleftderivedfunctor-iff-of-iso--c3cb946bc19b3cb0e4286e5d.md) | 70 | `result-track:c3cb946bc19b3cb0e4286e5dcaca0d1ac8c44f0f8b5a0142e2bcc88794677a47` |
| 4 | `def` | [leftDerivedLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/leftderivedlift--000dc41cc4066b5791c29d3d.md) | 81 | `declaration-track:000dc41cc4066b5791c29d3d58bf0e63f597284d6e09bf4587205e253873c6e5` |
| 5 | `lemma` | [leftDerived_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/leftderived-fac--60eb0ae7844db49c1432c168.md) | 86 | `result-track:60eb0ae7844db49c1432c16867963c8a1a8ea24deb8c2f567390ba18101f4651` |
| 6 | `lemma` | [leftDerived_fac_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/leftderived-fac-app--1ccb29da4004fe8f4b3d931c.md) | 92 | `result-track:1ccb29da4004fe8f4b3d931c1cefeff348e10007ca101658d0d739627b9110a3` |
| 7 | `lemma` | [leftDerived_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/leftderived-ext--0490f97f44c297361c8feeed.md) | 98 | `result-track:0490f97f44c297361c8feeed0fbc5392d265a82c9ea4fed05ba5b4091d59f781` |
| 8 | `def` | [leftDerivedNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/leftderivednattrans--bfc2ca0452820681db6b9e3a.md) | 105 | `declaration-track:bfc2ca0452820681db6b9e3a3df68721423e0dfe9fc5c427d03cfce6fabfed1d` |
| 9 | `lemma` | [leftDerivedNatTrans_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/leftderivednattrans-fac--7b129a8bb020614d4c467d3d.md) | 109 | `result-track:7b129a8bb020614d4c467d3dcb2f7dd8bd69974077315767f9990a030534ca76` |
| 10 | `lemma` | [leftDerivedNatTrans_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/leftderivednattrans-app--c959dd20660910941434eb08.md) | 115 | `result-track:c959dd20660910941434eb08a8444c1e7f64efb7196e911dc95e728d1d1fc3b7` |
| 11 | `lemma` | [leftDerivedNatTrans_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/leftderivednattrans-id--dd93ae0c4a712e5902a682c3.md) | 122 | `result-track:dd93ae0c4a712e5902a682c3bcd9d81ad3944722ed14c399e38873a2164743c5` |
| 12 | `lemma` | [leftDerivedNatTrans_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/leftderivednattrans-comp--8669647578a956c95183885e.md) | 129 | `result-track:8669647578a956c95183885e2f7ef4baf96d6cee3b01bde2155810cad87b7135` |
| 13 | `def` | [leftDerivedNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/leftderivednatiso--e3dd8cd4d3b31fdf221d5b0d.md) | 137 | `declaration-track:e3dd8cd4d3b31fdf221d5b0d844ba6880ed32d49f417bd074b9444ad3361d9b3` |
| 14 | `abbrev` | [leftDerivedUnique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/leftderivedunique--9816a335b704a96bd6606eed.md) | 143 | `declaration-track:9816a335b704a96bd6606eeda74dcf5dbe89d1636dc4ea30d2bffa83fe175354` |
| 15 | `lemma` | [isLeftDerivedFunctor_iff_isIso_leftDerivedLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/isleftderivedfunctor-iff-isiso-leftderivedlift--fdae934fa2c3c698eb2fbe53.md) | 146 | `result-track:fdae934fa2c3c698eb2fbe530a0bdd100a764fb9fad991f0e885a793e3925890` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/instance--2265eb447497b32725a7d22b.md) | 152 | `declaration-track:2265eb447497b32725a7d22bfd08155c98b7692ddc250c94350115b94763243d` |
| 17 | `class` | [HasLeftDerivedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/hasleftderivedfunctor--4b4df931cab00081ec511083.md) | 167 | `declaration-track:4b4df931cab00081ec511083aa5656ac15450fe548a6247e958be17c4dbcf6ff` |
| 18 | `lemma` | [hasLeftDerivedFunctor_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/hasleftderivedfunctor-iff--e425440e7be6831629c22d8b.md) | 173 | `result-track:e425440e7be6831629c22d8be7d8ba81ecf48a9e30bcf079c60701fa5ec8b430` |
| 19 | `lemma` | [hasLeftDerivedFunctor_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/hasleftderivedfunctor-iff-of-iso--b88d893b179f76878850649d.md) | 182 | `result-track:b88d893b179f76878850649d3680217b2aae4ab9e7fea205b92235ee7c9ab379` |
| 20 | `lemma` | [HasLeftDerivedFunctor.hasRightKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/hasleftderivedfunctor-hasrightkanextension--1c965824d34f4c46470bd677.md) | 189 | `result-track:1c965824d34f4c46470bd6779d93c8fa2fd267b3d4174e3002b5b7c5a3d5c7f5` |
| 21 | `lemma` | [HasLeftDerivedFunctor.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/hasleftderivedfunctor-mk--2a1a7a59d2a4d94c41aa4e82.md) | 195 | `result-track:2a1a7a59d2a4d94c41aa4e823acdf8a274a4aa4f7afabc928789ea4db06fd93e` |
| 22 | `def` | [totalLeftDerived](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/totalleftderived--e64982e7b47847f0082c0c4e.md) | 207 | `declaration-track:e64982e7b47847f0082c0c4e9397fb8a200e280ba4dcb993da40e82f230b62b7` |
| 23 | `def` | [totalLeftDerivedCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/totalleftderivedcounit--a6aa0cee8353431232d50349.md) | 212 | `declaration-track:a6aa0cee8353431232d503495cb523f8ac6931c51211ac9c8598e7a7c4b129d1` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/instance--bd982d4192b8038260ef68f8.md) | 216 | `declaration-track:bd982d4192b8038260ef68f8f618546950e5916446de89f690b4d70209bb8b9c` |
| 25 | `lemma` | [isLeftDerivedFunctor_iff_precomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantbb59682e2b641b0f2547bf342591c6bd3bddadf4a6c0f142a720c65f22db5d2c.lean/declarations/isleftderivedfunctor-iff-precomp--60a64062b628b13d75aac276.md) | 233 | `result-track:60a64062b628b13d75aac276a24a95b0c0aee66b2ea37bbc2a66e7936276396d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
