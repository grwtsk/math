# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preorder.Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a3df3fb3c4c4231f3eca9f80c6a878a1c2ec8de",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a3df3fb3c4c4231f3eca9f80c6a878a1c2ec8de`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean.json)

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
| 1 | `def` | [coneOfLowerBound](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/coneoflowerbound--cc16374e9063d6d83df3ce14.md) | 39 | `declaration-track:cc16374e9063d6d83df3ce146035bfca313cd059cb0b39476107d41ed7259d64` |
| 2 | `lemma` | [conePt_mem_lowerBounds](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/conept-mem-lowerbounds--cda286fc1d5797867ee2b57c.md) | 44 | `result-track:cda286fc1d5797867ee2b57c730ea2950bc7877bc5bc081e348afa4482272423` |
| 3 | `lemma` | [isGLB_of_isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/isglb-of-islimit--47de9edf349464189421503a.md) | 48 | `result-track:47de9edf349464189421503a062d05719031447302b7ac00bb3d889bf80b2aea` |
| 4 | `def` | [isLimitOfIsGLB](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/islimitofisglb--daebd056608e26f580ddb490.md) | 52 | `declaration-track:daebd056608e26f580ddb49049818e07d86e136297b97053d66082e0aa2a3b59` |
| 5 | `def` | [limitConeOfIsGLB](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/limitconeofisglb--1c55e3c247efee16e0c36a22.md) | 58 | `declaration-track:1c55e3c247efee16e0c36a22c1ce9ff280c1296bfceb19554707da7fab6d4874` |
| 6 | `lemma` | [hasLimit_iff_hasGLB](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/haslimit-iff-hasglb--2bb57efddbb3b02f1eede199.md) | 64 | `result-track:2bb57efddbb3b02f1eede1991cdf9d17bc1664e6e61c316d06dde4e22b4e9ab4` |
| 7 | `def` | [coconeOfUpperBound](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/coconeofupperbound--792eea66f92b8dfbdb06628e.md) | 70 | `declaration-track:792eea66f92b8dfbdb06628eff9eff85bed9a7fc5f3bb81ea913fa867b57bfd3` |
| 8 | `lemma` | [coconePt_mem_upperBounds](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/coconept-mem-upperbounds--8dabaf99651ad546ebbbdf14.md) | 75 | `result-track:8dabaf99651ad546ebbbdf14323f5a0ba9100f2eb113c891a2a29a93b11c769a` |
| 9 | `lemma` | [isLUB_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/islub-of-iscolimit--ac302d3dff64b0eb130871ed.md) | 79 | `result-track:ac302d3dff64b0eb130871edfa7f2b22b34ee698432dcd140d00c9f355d9d7ce` |
| 10 | `def` | [isColimitOfIsLUB](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/iscolimitofislub--3f803f23794e4f08cb633c0f.md) | 83 | `declaration-track:3f803f23794e4f08cb633c0f8ca5fcf78f3898026bc62788eab44f0c3225b1ab` |
| 11 | `def` | [colimitCoconeOfIsLUB](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/colimitcoconeofislub--64c69f306838ce2af86b24e3.md) | 89 | `declaration-track:64c69f306838ce2af86b24e39cb5aabb5de663b60bd6494187c6b6bde5f0955e` |
| 12 | `lemma` | [hasColimit_iff_hasLUB](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/hascolimit-iff-haslub--b5427abaa2cd90ce0613c7ee.md) | 95 | `result-track:b5427abaa2cd90ce0613c7ee79c7c4c255aaeca3e6b3bc6fb8ebb0ed8e143912` |
| 13 | `def` | [_root_.CategoryTheory.Limits.IsTerminal.orderTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/root-categorytheory-limits-isterminal-ordertop--ad8fedbecc9b79875abb9847.md) | 108 | `declaration-track:ad8fedbecc9b79875abb9847b9f154a9303e370aeb1e98fd3ed63020d71d6f2f` |
| 14 | `def` | [orderTopOfHasTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/ordertopofhasterminal--e060d74322909fd5be1144db.md) | 114 | `declaration-track:e060d74322909fd5be1144db49152333e0b8a21c89d7c1252c03bf8232245ee5` |
| 15 | `def` | [isTerminalTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/isterminaltop--a61d4fd406637f5e4caf528f.md) | 119 | `declaration-track:a61d4fd406637f5e4caf528fb6ead60fc5cb629e8d24d6303f3775fc83296e50` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/instance--ea137268336b254e117de9e1.md) | 121 | `declaration-track:ea137268336b254e117de9e1122acd6f6cfd52e9a2692e7111e29ee91db4593f` |
| 17 | `def` | [_root_.CategoryTheory.Limits.IsInitial.orderBot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/root-categorytheory-limits-isinitial-orderbot--ddeebbef40d461ac30bfa871.md) | 125 | `declaration-track:ddeebbef40d461ac30bfa871c2eb613f948515805c74e2a831d8edea13ed5043` |
| 18 | `def` | [orderBotOfHasInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/orderbotofhasinitial--addc48a42580f854c5e4e3e0.md) | 131 | `declaration-track:addc48a42580f854c5e4e3e0dd10faeb83aabf3ce36ef2e33625e97aa262bd17` |
| 19 | `def` | [isInitialBot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/isinitialbot--328349183305cf47e29ed6f1.md) | 136 | `declaration-track:328349183305cf47e29ed6f112be014f8edf67b5dd160e73ae083575ef7b1b1c` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/instance--e30d00968f96812144e03c94.md) | 138 | `declaration-track:e30d00968f96812144e03c942695d6d8fe868e62eb541e2fec4d499d61610d06` |
| 21 | `def` | [semilatticeInfOfIsLimitBinaryFan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/semilatticeinfofislimitbinaryfan--99f631d716cc6d0f44b117cb.md) | 150 | `declaration-track:99f631d716cc6d0f44b117cbfff983621dcef63050c9637c4653d6d7e2d0a315` |
| 22 | `def` | [semilatticeInfOfHasBinaryProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/semilatticeinfofhasbinaryproducts--d852c36a05b4f2e608af4d27.md) | 160 | `declaration-track:d852c36a05b4f2e608af4d2742f89bd8c1f129d8f045ec09bea4b2d09bbcb319` |
| 23 | `def` | [semilatticeSupOfIsColimitBinaryCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/semilatticesupofiscolimitbinarycofan--898763fe19a79984969b86d5.md) | 168 | `declaration-track:898763fe19a79984969b86d5dc8f69c9b66b33175e0efc3156af61eaecd586e7` |
| 24 | `def` | [semilatticeSupOfHasBinaryCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/semilatticesupofhasbinarycoproducts--d8caf8e0b180c67107f06b66.md) | 178 | `declaration-track:d8caf8e0b180c67107f06b667460b9aa2b4a7ad8e3377bf346dc9a217155908a` |
| 25 | `def` | [isLimitBinaryFan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/islimitbinaryfan--f89152e2e79c6e9ef7f33578.md) | 188 | `declaration-track:f89152e2e79c6e9ef7f33578564fc2757ac5adb4188177836a41fb451bf14dc9` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/instance--e7b61d0fddc032ccb574d62c.md) | 193 | `declaration-track:e7b61d0fddc032ccb574d62c19a50a4aed7224c880a37b4458293b3811c13554` |
| 27 | `def` | [isColimitBinaryCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/iscolimitbinarycofan--7814dcdbf216116e7629c1ef.md) | 201 | `declaration-track:7814dcdbf216116e7629c1ef956fb464cd91a11112bab2f20d7a55060344222f` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/instance--0c371982e60fce804aa21516.md) | 206 | `declaration-track:0c371982e60fce804aa215167ec8d1f5afa26a11423653f61fe96613935ec181` |
| 29 | `def` | [isLimitIInf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/islimitiinf--313ca8335194794920fddc87.md) | 217 | `declaration-track:313ca8335194794920fddc879ff8bf190642966ff50e13d0aed36b6692124929` |
| 30 | `def` | [isColimitISup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/declarations/iscolimitisup--0e6161dad0b369e3d29e51ae.md) | 222 | `declaration-track:0e6161dad0b369e3d29e51aeddcb7f9f3a312442a4acbb9cce641c5428e29830` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
