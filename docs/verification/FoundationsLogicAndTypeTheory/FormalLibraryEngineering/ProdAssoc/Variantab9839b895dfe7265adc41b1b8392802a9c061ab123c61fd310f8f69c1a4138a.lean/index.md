# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProdAssoc.Variantab9839b895dfe7265adc41b1b8392802a9c061ab123c61fd310f8f69c1a4138a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38c92a59b244d90b89d86d02ef0db34291b3bd66",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantab9839b895dfe7265adc41b1b8392802a9c061ab123c61fd310f8f69c1a4138a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantab9839b895dfe7265adc41b1b8392802a9c061ab123c61fd310f8f69c1a4138a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantab9839b895dfe7265adc41b1b8392802a9c061ab123c61fd310f8f69c1a4138a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38c92a59b244d90b89d86d02ef0db34291b3bd66`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantab9839b895dfe7265adc41b1b8392802a9c061ab123c61fd310f8f69c1a4138a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantab9839b895dfe7265adc41b1b8392802a9c061ab123c61fd310f8f69c1a4138a.lean.json)

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
| 1 | `inductive` | [ProdTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantab9839b895dfe7265adc41b1b8392802a9c061ab123c61fd310f8f69c1a4138a.lean/declarations/prodtree--6afa466fcd5e2fac4a2198c7.md) | 38 | `declaration-track:6afa466fcd5e2fac4a2198c7005dbb5d2e4751db00d56482edb59e872e94c9f5` |
| 2 | `def` | [ProdTree.getType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantab9839b895dfe7265adc41b1b8392802a9c061ab123c61fd310f8f69c1a4138a.lean/declarations/prodtree-gettype--473d368a8533a8a74fb8d6fd.md) | 44 | `declaration-track:473d368a8533a8a74fb8d6fd7b48dbd6351877e6ebdf194b7c48498a0626eda8` |
| 3 | `def` | [ProdTree.size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantab9839b895dfe7265adc41b1b8392802a9c061ab123c61fd310f8f69c1a4138a.lean/declarations/prodtree-size--677d58fd483031855da60f39.md) | 49 | `declaration-track:677d58fd483031855da60f39eab3fcd7edb48997189595b933dff9e249b0019d` |
| 4 | `def` | [ProdTree.components](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantab9839b895dfe7265adc41b1b8392802a9c061ab123c61fd310f8f69c1a4138a.lean/declarations/prodtree-components--1dc67b57e23e4f6316511a56.md) | 54 | `declaration-track:1dc67b57e23e4f6316511a569fcdaf3faaf7cb193057045205615d1afdd7dd13` |
| 5 | `def` | [mkProdTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantab9839b895dfe7265adc41b1b8392802a9c061ab123c61fd310f8f69c1a4138a.lean/declarations/mkprodtree--5fd9983a2e1a3f2a4c5dc07b.md) | 59 | `declaration-track:5fd9983a2e1a3f2a4c5dc07b0f34bdffb50f7f23d0a95d4a574b2073efd1677c` |
| 6 | `def` | [ProdTree.unpack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantab9839b895dfe7265adc41b1b8392802a9c061ab123c61fd310f8f69c1a4138a.lean/declarations/prodtree-unpack--bee355dbb9a213399a856c00.md) | 76 | `declaration-track:bee355dbb9a213399a856c00bab87e2e3cd42e5613a3233cc48b7ba04a13a5ee` |
| 7 | `def` | [ProdTree.pack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantab9839b895dfe7265adc41b1b8392802a9c061ab123c61fd310f8f69c1a4138a.lean/declarations/prodtree-pack--34cb785cb664f69cd5067674.md) | 85 | `declaration-track:34cb785cb664f69cd5067674f1df650ba09727f1e6621d59d07ce84cfcf06f78` |
| 8 | `def` | [ProdTree.convertTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantab9839b895dfe7265adc41b1b8392802a9c061ab123c61fd310f8f69c1a4138a.lean/declarations/prodtree-convertto--bf792b7dd5e7c559c681c15c.md) | 103 | `declaration-track:bf792b7dd5e7c559c681c15c932a30e7c0ce1bf7376ca68eb22084f856625d11` |
| 9 | `def` | [mkProdFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantab9839b895dfe7265adc41b1b8392802a9c061ab123c61fd310f8f69c1a4138a.lean/declarations/mkprodfun--759d4188207b558030b0e922.md) | 108 | `declaration-track:759d4188207b558030b0e9224e593ff53bce2cc02c01b3a749699449434f2707` |
| 10 | `def` | [mkProdEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantab9839b895dfe7265adc41b1b8392802a9c061ab123c61fd310f8f69c1a4138a.lean/declarations/mkprodequiv--dd3d4fff15ce559a822988f0.md) | 121 | `declaration-track:dd3d4fff15ce559a822988f0e3fc17408e308b8f5b502043ab90483f4be4d05f` |
| 11 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantab9839b895dfe7265adc41b1b8392802a9c061ab123c61fd310f8f69c1a4138a.lean/declarations/syntax--881e0cebfb935b440cf8aa15.md) | 134 | `declaration-track:881e0cebfb935b440cf8aa155e0d8a375b7fc5075160a6d7ef137e1245238813` |
| 12 | `def` | [elabProdAssoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantab9839b895dfe7265adc41b1b8392802a9c061ab123c61fd310f8f69c1a4138a.lean/declarations/elabprodassoc--5ff02d0fea8873a2e905185d.md) | 139 | `declaration-track:5ff02d0fea8873a2e905185d1c02b07bcd032b52d8a19aabbcfd0db493921aa1` |
| 13 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantab9839b895dfe7265adc41b1b8392802a9c061ab123c61fd310f8f69c1a4138a.lean/declarations/macro--4dfa1b7c0daa1e2cf27a1819.md) | 162 | `declaration-track:4dfa1b7c0daa1e2cf27a181913151b3fe4254b88ef374f7c54ca9f191b85ae5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
