# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Oplax.Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "539da518815986cb9ca046584c7af0dfc983d360",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `539da518815986cb9ca046584c7af0dfc983d360`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Functor.Oplax` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OplaxTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/oplaxtrans--02f19124a916ecf1535c57aa.md) | 60 | `declaration-track:02f19124a916ecf1535c57aab35ad206747b3686051737ca1f0746e137846751` |
| 2 | `theorem` | [whiskerLeft_naturality_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/whiskerleft-naturality-naturality--7836c96f8badde7e68c4d5c1.md) | 95 | `result-track:7836c96f8badde7e68c4d5c1db8c3bf208d98f40718334a1b8d7fef1c9edaad6` |
| 3 | `theorem` | [whiskerRight_naturality_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/whiskerright-naturality-naturality--321e1a838f85a6264b2e9015.md) | 101 | `result-track:321e1a838f85a6264b2e9015c53ada9f73fdbb28ea4d99806d91fd1e6e2999a5` |
| 4 | `theorem` | [whiskerLeft_naturality_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/whiskerleft-naturality-comp--96f7dd2d4db025ee15b5d27e.md) | 107 | `result-track:96f7dd2d4db025ee15b5d27e90da4cb870c266e3e7ae1313a058381f93c20b1c` |
| 5 | `theorem` | [whiskerRight_naturality_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/whiskerright-naturality-comp--20f40d9841e1f0cf016b440e.md) | 116 | `result-track:20f40d9841e1f0cf016b440e6e4998c4b1823a0551285c06dfb1347baae310f9` |
| 6 | `theorem` | [whiskerLeft_naturality_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/whiskerleft-naturality-id--fb46ab51e24a3388f1ae6b97.md) | 128 | `result-track:fb46ab51e24a3388f1ae6b9756ea45b9cc019e7423192327a29c0269a31d18e9` |
| 7 | `theorem` | [whiskerRight_naturality_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/whiskerright-naturality-id--af7e38677a1cea7b0b6e2bea.md) | 134 | `result-track:af7e38677a1cea7b0b6e2bea29501fe3386b730c3cfad6e535fd18e2d8eff5f1` |
| 8 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/id--9dd355c2ec963719d0a5631a.md) | 143 | `declaration-track:9dd355c2ec963719d0a5631a84fa2f7c72b3b347dbd11d31e51157bebbad5019` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/instance--eeaf20fb2b91ec0a690d9f4e.md) | 147 | `declaration-track:eeaf20fb2b91ec0a690d9f4e092f5493ddddaca45b5f294b5c3285107996b78a` |
| 10 | `def` | [vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/vcomp--4c7e5a3b0385d5dd2234dbba.md) | 151 | `declaration-track:4c7e5a3b0385d5dd2234dbba145fab7bc66d2553bc056e362444db135ac7dcf6` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/instance--39b73d60ed70aa9f94659a7f.md) | 175 | `declaration-track:39b73d60ed70aa9f94659a7fe9898b01450c1ef86c047d9c8d13e2f038d223cb` |
| 12 | `structure` | [StrongTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/strongtrans--885b9c057513fee30f6a53df.md) | 192 | `declaration-track:885b9c057513fee30f6a53df50822a8848953b6ead3af25a772e534c528567a0` |
| 13 | `structure` | [OplaxTrans.StrongCore](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/oplaxtrans-strongcore--dcf30b66ee9dba950616f955.md) | 219 | `declaration-track:dcf30b66ee9dba950616f9551a28c6fda5faac1e29ab13cc7df03ecefc8de389` |
| 14 | `def` | [toOplax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/tooplax--ca38fdd3704b02ed86aa9b32.md) | 231 | `declaration-track:ca38fdd3704b02ed86aa9b3268113494a33620534043362bdadf4d902f6bb515` |
| 15 | `def` | [mkOfOplax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/mkofoplax--16e35f007f8671675c35cd6a.md) | 237 | `declaration-track:16e35f007f8671675c35cd6a1b4da91a04a8fa4a0f3057a87056388e1253cd75` |
| 16 | `def` | [mkOfOplax'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/mkofoplax--c19b4e132aa4db1da5f66129.md) | 244 | `declaration-track:c19b4e132aa4db1da5f661290d8cab0bb0de773f6bb2b82c5a50b3abeb1cb08c` |
| 17 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/id--35f91e0d14e367dc0c5f8f18.md) | 254 | `declaration-track:35f91e0d14e367dc0c5f8f18f296217dee3ac991b49226f9390a43832be24d6b` |
| 18 | `lemma` | [id.toOplax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/id-tooplax--29dd63090e4d9acca52f8981.md) | 258 | `result-track:29dd63090e4d9acca52f89817ea32f30525d1e4e0d898fa4942b3a2bfba8b159` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/instance--d53482bf2380a68302d3c67b.md) | 261 | `declaration-track:d53482bf2380a68302d3c67b4701cf3a95371ec6bb9f198f2837e48b513f434d` |
| 20 | `def` | [vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/vcomp--3510cfceed89df49f05e2550.md) | 269 | `declaration-track:3510cfceed89df49f05e2550ca68b1b332d9c3154fb46d2d43b08c6faba58f85` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/instance--877cacdc9c98264c5b4278e3.md) | 278 | `declaration-track:877cacdc9c98264c5b4278e3d26293670cb7163dc0fa530b2fbb3b09237d9075` |
| 22 | `theorem` | [whiskerLeft_naturality_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/whiskerleft-naturality-naturality--9b5041677bcb2f57229ef5bb.md) | 288 | `result-track:9b5041677bcb2f57229ef5bbc214721e1911976a7dd383ac99e369d9582b7c43` |
| 23 | `theorem` | [whiskerRight_naturality_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/whiskerright-naturality-naturality--aee03bc0cb9159d54485ed89.md) | 294 | `result-track:aee03bc0cb9159d54485ed896688a731e85faca82c7c3a3863ef18067a010d62` |
| 24 | `theorem` | [whiskerLeft_naturality_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/whiskerleft-naturality-comp--207b5868ed4305983abfe182.md) | 300 | `result-track:207b5868ed4305983abfe182ae94acd92700612533a9b8beafe160aca7845d54` |
| 25 | `theorem` | [whiskerRight_naturality_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/whiskerright-naturality-comp--d75af975d72720a2b778bf52.md) | 309 | `result-track:d75af975d72720a2b778bf52c88112b9e1fcf9b7f1562e4334dd8fdb22ffb220` |
| 26 | `theorem` | [whiskerLeft_naturality_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/whiskerleft-naturality-id--c909e5fd1e90eb08a0658df4.md) | 321 | `result-track:c909e5fd1e90eb08a0658df4f4ee795cdc52da1515fef7d6561fd1117181cc63` |
| 27 | `theorem` | [whiskerRight_naturality_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant5c1948e069a5de6fe7af2f21f5471dc566180453ba72af0776634e2875532817.lean/declarations/whiskerright-naturality-id--5a25d2138262964b84989a59.md) | 327 | `result-track:5a25d2138262964b84989a595b1b7298d43c9c57f0b5d9333df1897b468e1c9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
