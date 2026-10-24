# Verification target: GRWTSK.Algebra.UniversalAlgebra.LinearCombination.Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4d018fdc129b297b0082cd032c691726aeea38e",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4d018fdc129b297b0082cd032c691726aeea38e`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination'` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [test_sorry](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/test-sorry--7949520ae3076a053d5ca59d.md) | 16 | `declaration-track:7949520ae3076a053d5ca59dfe3b4e8ca15fc2d3429ba36d13f663d1e8372b2d` |
| 2 | `axiom` | [Real](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/real--9fd92f6e11f48a4d38e9bc6c.md) | 19 | `declaration-track:9fd92f6e11f48a4d38e9bc6c98ab6278a8000586d465c477368a03f2fb46d4f7` |
| 3 | `axiom` | [Real.field](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/real-field--9516580615bdb8cad83aeff6.md) | 21 | `declaration-track:9516580615bdb8cad83aeff66fa370c5859e416ee8e23df0c7de6dc44fcac0f6` |
| 4 | `axiom` | [Real.linearOrder](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/real-linearorder--4adcbf55eecf36ef6d2a6ad5.md) | 22 | `declaration-track:4adcbf55eecf36ef6d2a6ad510ea2cc39efd44f102360c564a2d4b3063d7f431` |
| 5 | `axiom` | [Real.isStrictOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/real-isstrictorderedring--2ce03a72d090e2a1b44703ca.md) | 23 | `declaration-track:2ce03a72d090e2a1b44703ca9866f7db8ce62cc59373549b749182b1d91a8bfb` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--7ae853040045e255a5901467.md) | 27 | `declaration-track:7ae853040045e255a5901467349cf774b885cc2c5f1fc31be87b9307ff9d5738` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--fae528c6e221f95bff0622d2.md) | 30 | `declaration-track:fae528c6e221f95bff0622d2fa2a30e97ea3998ecf9aaf8e5fd9d6071b3c49f4` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--0abdcf82d55d4ae45b35f26d.md) | 33 | `declaration-track:0abdcf82d55d4ae45b35f26d6d12b45dd3d0c4b5344a36cab7fea28dd0b8f45b` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--4ae5c58483ba30331d5a249f.md) | 36 | `declaration-track:4ae5c58483ba30331d5a249fd0c3bbd258e3115e02fead6e2b63192094e9480b` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--81fad18a5fd355fd25257991.md) | 39 | `declaration-track:81fad18a5fd355fd252579917eb04e2c70db191b9367f716c19b2b3e08993f98` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--5341174c13bd6b35c3888caa.md) | 42 | `declaration-track:5341174c13bd6b35c3888caae752a376d1088ec4b2978ed972833297ce3f51f0` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--1ce679e6c5e3251e792e2c21.md) | 45 | `declaration-track:1ce679e6c5e3251e792e2c21bb2f9b98f1e2450dc51c2672f243f608e5a4f9da` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--6c0d5478a036d80db9dbb9df.md) | 48 | `declaration-track:6c0d5478a036d80db9dbb9dfe032105d5c09ee78b19c923af7efe9f735701045` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--39e5d56a760454b5092170a2.md) | 51 | `declaration-track:39e5d56a760454b5092170a2e1a5910de4b55122a5e03a1e13b847074e55a8d2` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--cefcc6b5afd9969c8964e2ec.md) | 54 | `declaration-track:cefcc6b5afd9969c8964e2ecdcd754ea60bd6abd2fc05d8feb9de5bf812e05f9` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--60710566e82f8bd7c6f095a5.md) | 57 | `declaration-track:60710566e82f8bd7c6f095a584d9fbf367822dfbb85c321c4f9413b3009696ae` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--d589a38478faa16e915b10f8.md) | 62 | `declaration-track:d589a38478faa16e915b10f840410dfa834a6e7bbf481513cfc3ac1f6c860314` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--257f84abd95e7446ec56eb57.md) | 65 | `declaration-track:257f84abd95e7446ec56eb57476929d88db4d6cb10c480fdc601258933fea777` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--6a47d48ed0be47cc77e8448a.md) | 68 | `declaration-track:6a47d48ed0be47cc77e8448a3828a04ade3b387101175a8eda544ab61f9b7eae` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--53a724ddbc24cca789d2de87.md) | 73 | `declaration-track:53a724ddbc24cca789d2de87b55dc110bc1fa06e1c16d349ca88f96e5b47e9f3` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--b2ee356eac02df314a91f0c0.md) | 76 | `declaration-track:b2ee356eac02df314a91f0c0641673dd5a9d52e3c8a33ac1363f3253b992474e` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--e52d8f3d746b45b615beb6ef.md) | 79 | `declaration-track:e52d8f3d746b45b615beb6efe4b29b98a48dec622503ba0c9e33277684b3e32b` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--f85c7f54bbabcabf11df3d98.md) | 83 | `declaration-track:f85c7f54bbabcabf11df3d986153de9820a5a9f87f70d98630efa58bc9396039` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--f9a80db283cdf1f7d2841d01.md) | 87 | `declaration-track:f9a80db283cdf1f7d2841d012466595ce02029fbc0d89aad8e748dfc0344b8aa` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--c27be4a0e7cac5750742e441.md) | 91 | `declaration-track:c27be4a0e7cac5750742e44122ffc1b9e53f8e580f13575e4aa8de61c2550de3` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--6aef2dedd072b40a470634c1.md) | 95 | `declaration-track:6aef2dedd072b40a470634c13bad67a13fd129fce1a4d1cd6b508f0583c037f5` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--4ac9d9ca9554302a56db175f.md) | 99 | `declaration-track:4ac9d9ca9554302a56db175f87a0c538487ffc06cd96d01b57e5c4eafb9c68c5` |
| 28 | `axiom` | [qc](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/qc--448812fa3a60b3e8f53bbc02.md) | 105 | `declaration-track:448812fa3a60b3e8f53bbc02acb046511ab589af64e8fa1b0d15e8b6275a7d44` |
| 29 | `axiom` | [hqc](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/hqc--8d1be0e28ab8c8d72d453402.md) | 106 | `declaration-track:8d1be0e28ab8c8d72d45340233a5092ec3a70ddf0e9e5709022a7388fe6ee31f` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--a122e25a03c0e0c3f64be097.md) | 108 | `declaration-track:a122e25a03c0e0c3f64be097f34c336302b71aa14c053f0c3f62bc145aeed494` |
| 31 | `axiom` | [bad](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/bad--09b8e8e73dc2a0e913e0b7b7.md) | 111 | `declaration-track:09b8e8e73dc2a0e913e0b7b774f8adb5f4bc659dd99fce6467e68f19abb07258` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--0300fb1acc3d5c87318129ba.md) | 113 | `declaration-track:0300fb1acc3d5c87318129ba1ec44ae873bef5dd81667c2f23e9b48fd286d886` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--b1f3fd36ea1a1ed0e883fb7e.md) | 117 | `declaration-track:b1f3fd36ea1a1ed0e883fb7e863d396090d944e16ba8cc755d830678bc633d3b` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--3ed9b2af9f9c611248c470e4.md) | 119 | `declaration-track:3ed9b2af9f9c611248c470e430e15a46fc1fdabb81131165757e3b913466da0b` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--abf86499158021b96ed00740.md) | 121 | `declaration-track:abf86499158021b96ed007402f576c2be6294b75319a62be8a8c712ddd571967` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--2782968d20aa9048f8c547e1.md) | 124 | `declaration-track:2782968d20aa9048f8c547e16804a14abe1de4694e93512faaa5193a2fccc7e6` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--e63c378a9ea606bb2bd7e4a7.md) | 128 | `declaration-track:e63c378a9ea606bb2bd7e4a7d78304b414d2d1f47ae5629540d4b590c9172491` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--909ba5e6f97feab3250c36db.md) | 131 | `declaration-track:909ba5e6f97feab3250c36dbdc38896884978753e60f24194374096da5e15777` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--a27d58adf176292421bbafd4.md) | 134 | `declaration-track:a27d58adf176292421bbafd42049829d092e6fc55d5a056cd9920fe56c2fe086` |
| 40 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--c2f84a545a89300e88f9524e.md) | 136 | `declaration-track:c2f84a545a89300e88f9524ea8e217e1288282702cf78c7322f5f0fefddcb24a` |
| 41 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--c28345d421b64dcbd01942c1.md) | 140 | `declaration-track:c28345d421b64dcbd01942c1a338bd77212148d89cd277b9d8eb9b311c949f0f` |
| 42 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--6d0135b679db3615ab4e4317.md) | 143 | `declaration-track:6d0135b679db3615ab4e4317bd891267ba90bddff4c77e331aec61d7b7bb54a3` |
| 43 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--f3acc22f191a79cf7a5d95a0.md) | 146 | `declaration-track:f3acc22f191a79cf7a5d95a06b7eb9c0a1ea71d4b6229068f0bea8c173737ff9` |
| 44 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--5cbf623eff832575537c1920.md) | 149 | `declaration-track:5cbf623eff832575537c1920b85a5cc0cc78dd090d10a4bedf787aa01865c9a6` |
| 45 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--bc181848852757e76d0bec9d.md) | 154 | `declaration-track:bc181848852757e76d0bec9d445d101ba08e3c8971f86a5c8889f76b735debe9` |
| 46 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--f785c51fb5df682258715d1b.md) | 158 | `declaration-track:f785c51fb5df682258715d1b33b783f6c57f6f90700a90c6af089ab621a55a1a` |
| 47 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--fe63be7626da8d1285a58f5e.md) | 165 | `declaration-track:fe63be7626da8d1285a58f5e04306dcc4e03a5502244e905536d3ca5f58056a4` |
| 48 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--ec33127d13000c96f4a61bcd.md) | 169 | `declaration-track:ec33127d13000c96f4a61bcd4dcc6386c5fe433a160ff22ebfa0b0127aa4ed04` |
| 49 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--c63e0144d099ea94f6ae7cfa.md) | 174 | `declaration-track:c63e0144d099ea94f6ae7cfaab1674e345ef27531d7117a7b5e834c7e1efdfef` |
| 50 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--02bdac7aa516bd1f3db2a21c.md) | 179 | `declaration-track:02bdac7aa516bd1f3db2a21c842cfffcddd8b3b31ce0dd90f1a3ace716d71124` |
| 51 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--0358be97c3f2aa1dfd1fca56.md) | 185 | `declaration-track:0358be97c3f2aa1dfd1fca56b0870c923e54d1782e9d0c3a2fa4e50f8c383299` |
| 52 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--148e456b38d7331544a8f3cc.md) | 192 | `declaration-track:148e456b38d7331544a8f3ccf23787625151973d260b7d41b5a88750803b6da9` |
| 53 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--3a86a718555606e5a814b97f.md) | 205 | `declaration-track:3a86a718555606e5a814b97fbe179ae453c25fa80157dbe9c1c240af5c2d47cd` |
| 54 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--893259a298e3514694a1bb52.md) | 222 | `declaration-track:893259a298e3514694a1bb529558388287a716b1793381894fb3e4167730e078` |
| 55 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--8de45c159cbb5f0c89b7b8ac.md) | 228 | `declaration-track:8de45c159cbb5f0c89b7b8ac2fb15a0c801bcd9ef450dd33ce762c84db03fde3` |
| 56 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--aecf0f411a7b578a3d76862b.md) | 233 | `declaration-track:aecf0f411a7b578a3d76862bd29d0ddc0d326383c1bfb8bf330140c492a9fbca` |
| 57 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--df3f13c75fe2268ec8ba4116.md) | 239 | `declaration-track:df3f13c75fe2268ec8ba4116c842dee74f110c88d8e6d04177ae9aa81cee51bf` |
| 58 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--74e5bd1ff11e5bfae14aa8db.md) | 242 | `declaration-track:74e5bd1ff11e5bfae14aa8db5f1a3cf9ca58095481789c20230071674e7526ae` |
| 59 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--26c1d6eb275a85509266867b.md) | 246 | `declaration-track:26c1d6eb275a85509266867bcbf203ca7a5ea4db61498790771345c6a059c029` |
| 60 | `def` | [g](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/g--bda5c40dcab2ed04f4296c6c.md) | 261 | `declaration-track:bda5c40dcab2ed04f4296c6c43b8fe08e324654e20ec404f929768599a860d7b` |
| 61 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--30e15cc9671ca6ad23998319.md) | 263 | `declaration-track:30e15cc9671ca6ad23998319de8440579d58b03dd351db303a05fff0396855e4` |
| 62 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--8975acea9aa68db11228a5fc.md) | 267 | `declaration-track:8975acea9aa68db11228a5fc4df2d944c183faf8741217fe417fdd8a3315ed84` |
| 63 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant851e7a8455c3d2f918d249b968599e8b2c21662067ddb57ba327c8a71f4f6846.lean/declarations/example--3c8b73fda26f4356a28db984.md) | 274 | `declaration-track:3c8b73fda26f4356a28db984b81146d642ba617fcb479b42c3e33145388c6ee7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
