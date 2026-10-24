# Verification target: GRWTSK.Algebra.Equiv.Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6096295590a37ce17637bd8d44f02f7cce9a87a2",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/index.md) · [Full source](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6096295590a37ce17637bd8d44f02f7cce9a87a2`.

Source path: `GRWTSK/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddConstEquiv](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/addconstequiv--8f73d632032de2e8cb231594.md) | 36 | `declaration-track:8f73d632032de2e8cb231594bcbf208c1b610463de0fc99f8b10266a8b26d121` |
| 2 | `lemma` | [toEquiv_injective](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/toequiv-injective--c41df3bb60a79d456db61f03.md) | 52 | `result-track:c41df3bb60a79d456db61f03cdcdd769f6e1ca22eff5cc871e769208f656ce5f` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/instance--af14440318a7cbb1de432b01.md) | 56 | `declaration-track:af14440318a7cbb1de432b016f1e40398bb35dd4966373a2c6d85f8659bcb9dc` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/instance--eda3ca625c69e610b9441c46.md) | 64 | `declaration-track:eda3ca625c69e610b9441c46da29ca21790dad3d6563eb662ae3cf0064efda3e` |
| 5 | `lemma` | [ext](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/ext--2cae70ac5fff9f8c7af40723.md) | 68 | `result-track:2cae70ac5fff9f8c7af4072302d85b8630fc6355499f1dd8ea9e45e0eb1ce7a0` |
| 6 | `lemma` | [toEquiv_inj](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/toequiv-inj--7e77def9f1684e3a8893ef52.md) | 71 | `result-track:7e77def9f1684e3a8893ef521f5490601841ec9b1a61dcd2dfcacabc6942c8de` |
| 7 | `lemma` | [coe_toEquiv](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/coe-toequiv--21671948cf058cc060c64ce5.md) | 74 | `result-track:21671948cf058cc060c64ce572ced5fd65660d22b80d69bbd5b0ade070fa53b3` |
| 8 | `def` | [symm](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/symm--8705f79b426383662d2b808d.md) | 77 | `declaration-track:8705f79b426383662d2b808df751a74dffb8ab22a190d76a6af454f733bfb995` |
| 9 | `def` | [Simps.symm_apply](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/simps-symm-apply--041fe8ae95de22ff700d648b.md) | 82 | `declaration-track:041fe8ae95de22ff700d648b3a981b7286d5ac45262e1c0586600dcf671bbf87` |
| 10 | `lemma` | [symm_symm](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/symm-symm--bb8db0d733b3e8bcfef9bc57.md) | 86 | `result-track:bb8db0d733b3e8bcfef9bc570b170343ded94eea2dc7aeb4bdccd278cb39fd0f` |
| 11 | `theorem` | [symm_apply_eq](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/symm-apply-eq--4b4dd7e05c4fb309b4f746f5.md) | 88 | `result-track:4b4dd7e05c4fb309b4f746f5c1a7e2c791470fcdb3ea969cac2cb97d0014bce6` |
| 12 | `theorem` | [eq_symm_apply](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/eq-symm-apply--94af1de09a6b43ddd5268d70.md) | 92 | `result-track:94af1de09a6b43ddd5268d703026a74465a7fa5251f6d9b076cbd1361966c00f` |
| 13 | `theorem` | [apply_symm_apply](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/apply-symm-apply--65294b96dd4ec86041445f59.md) | 96 | `result-track:65294b96dd4ec86041445f5948ed66821b7522a6c9678f6b796548e7be78b47a` |
| 14 | `theorem` | [symm_apply_apply](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/symm-apply-apply--d6e1abe89a8de19f8b02a8b5.md) | 100 | `result-track:d6e1abe89a8de19f8b02a8b5ee2e59c4e88323faf3d459b9b196f2d9875c420b` |
| 15 | `def` | [refl](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/refl--d803b5f92c027f2dcbf49b51.md) | 106 | `declaration-track:d803b5f92c027f2dcbf49b517e59939016098a6efaebdc0e4ed5ca3893aaa707` |
| 16 | `lemma` | [symm_refl](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/symm-refl--3556baa9f9a70406f3a4a4be.md) | 110 | `result-track:3556baa9f9a70406f3a4a4be415632dc5e51380c26be68132c66f341070cfdd9` |
| 17 | `def` | [trans](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/trans--78608b21afec3034b0e48add.md) | 114 | `declaration-track:78608b21afec3034b0e48add18ec5e35772d3b813ed3168d69af0e721f976ce9` |
| 18 | `lemma` | [trans_refl](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/trans-refl--c4855f1e8a31865386dd6837.md) | 118 | `result-track:c4855f1e8a31865386dd6837d9384952a10f1267985272375ceb60a83d2b56e0` |
| 19 | `lemma` | [refl_trans](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/refl-trans--e8dfc7d4d3effeb937bdad52.md) | 119 | `result-track:e8dfc7d4d3effeb937bdad529c90909f74d1ebfa8cee78088ff521b612512cd2` |
| 20 | `lemma` | [self_trans_symm](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/self-trans-symm--75fff7366663c3ffd4feb061.md) | 122 | `result-track:75fff7366663c3ffd4feb061cedb5305c0394c3e4d7e6f90071f3509e436c81a` |
| 21 | `lemma` | [symm_trans_self](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/symm-trans-self--57d9f12e6c86e860009d4f24.md) | 126 | `result-track:57d9f12e6c86e860009d4f24d2f440844668028d4601a7a09cf3685c770fab81` |
| 22 | `lemma` | [coe_symm_toEquiv](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/coe-symm-toequiv--3adc7932a3946abcd73cbce0.md) | 130 | `result-track:3adc7932a3946abcd73cbce02b2b8d4a7bbbb693a1df9f42781070fa7d7ec099` |
| 23 | `lemma` | [toEquiv_symm](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/toequiv-symm--f40551019c2ee9a2e6cd9223.md) | 133 | `result-track:f40551019c2ee9a2e6cd9223d29929e6741d7cf7fccf47fe206cc1e8837990cd` |
| 24 | `lemma` | [toEquiv_trans](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/toequiv-trans--4c474beb9e017c9343bc73ec.md) | 136 | `result-track:4c474beb9e017c9343bc73ece4b0b11deba466df08e45e6a8530263bbf36494a` |
| 25 | `instance` | [instOne](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/instone--d093b20f53c9444b7032f53a.md) | 139 | `declaration-track:d093b20f53c9444b7032f53a7ce4898f0adda526fd606ba807f822d35a9728d4` |
| 26 | `instance` | [instMul](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/instmul--1ebb7843dda74a69b47f6f89.md) | 140 | `declaration-track:1ebb7843dda74a69b47f6f898bd4ee7410d9b960adb5f8a784e8819fa2b14117` |
| 27 | `instance` | [instInv](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/instinv--28bed7d27a3a949daa9298c4.md) | 141 | `declaration-track:28bed7d27a3a949daa9298c4d36e21c33ba1b64e0af97a49455035ee110beaf8` |
| 28 | `instance` | [instDiv](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/instdiv--5169e887756f08ee6f385d47.md) | 142 | `declaration-track:5169e887756f08ee6f385d4701887b79750be77efe79fc14668bbeb9f7ec0f44` |
| 29 | `instance` | [instPowNat](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/instpownat--a97ec7de32388faf6dd7d9f0.md) | 144 | `declaration-track:a97ec7de32388faf6dd7d9f0365b435630f19b19d4ddf6eae8b89b0a6e9ef3af` |
| 30 | `instance` | [instPowInt](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/instpowint--e6e82b7fb722c6e1cb0edd4b.md) | 147 | `declaration-track:e6e82b7fb722c6e1cb0edd4b5e1d5168d5b47b2cefea798056414e4fa2937491` |
| 31 | `instance` | [instGroup](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/instgroup--39db46381b953922ecfc9406.md) | 153 | `declaration-track:39db46381b953922ecfc9406da203f57aa9572dafea8a1501a1a12130a7a8b25` |
| 32 | `def` | [toPerm](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/toperm--d962fb814875cbacf79d0fff.md) | 159 | `declaration-track:d962fb814875cbacf79d0ffffcac83a1f900ab00ad6f95572503a722ee43972e` |
| 33 | `def` | [toAddConstMapHom](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/toaddconstmaphom--a16cde91cca3e0f863281a76.md) | 164 | `declaration-track:a16cde91cca3e0f863281a766270360ed5e0ad145be03b4b23bae09efeec41d3` |
| 34 | `def` | [equivUnits](../../../../mathematics/Algebra/Equiv/Variant15e58a9f61bb3ce0ad1fa8eafd8575058144cd22a1624a8598ece3ac8a506172.lean/declarations/equivunits--1668b7d897226f1be570beed.md) | 171 | `declaration-track:1668b7d897226f1be570beedf4d8c8816198afda5bda2ca9e5a6e6254b6735ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
