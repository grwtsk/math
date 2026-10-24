# Verification target: GRWTSK.Topology.GeneralTopology.LiouvilleWith.Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e86b6d162ca8a3be8c1eb5bad51ce9e15c9df1b9",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e86b6d162ca8a3be8c1eb5bad51ce9e15c9df1b9`.

Source path: `GRWTSK/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Liouville.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Irrational` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LiouvilleWith](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/liouvillewith--c35ab66dd864a3c9b40ba1c7.md) | 49 | `declaration-track:c35ab66dd864a3c9b40ba1c7b38be02207590f039d83f9bc28d4e74b9c5f023c` |
| 2 | `theorem` | [liouvilleWith_one](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/liouvillewith-one--dcdbda38b4f3e47c33ee0b5a.md) | 54 | `result-track:dcdbda38b4f3e47c33ee0b5ab4019e0e1a1f8b932067bbeba02882936ec81b03` |
| 3 | `theorem` | [exists_pos](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/exists-pos--e27167ec6431d8ce42b45eba.md) | 75 | `result-track:e27167ec6431d8ce42b45eba14ec20c5d9efda19a0574af6900e5b2d780587af` |
| 4 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/mono--bb294234dc75b36d47662813.md) | 87 | `result-track:bb294234dc75b36d47662813b8bfc0431233ca7ad0590b6fea288a0ae166cab8` |
| 5 | `theorem` | [frequently_lt_rpow_neg](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/frequently-lt-rpow-neg--4ed34e105da965921cbb3d77.md) | 97 | `result-track:4ed34e105da965921cbb3d7761ca6bd416df273d7996a2fa730d9fb860844eb8` |
| 6 | `theorem` | [mul_rat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/mul-rat--e06595b3a346df6e47233edf.md) | 112 | `result-track:e06595b3a346df6e47233edf589d24cb011f4373994db1d22f7037a3c2fa00e2` |
| 7 | `theorem` | [mul_rat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/mul-rat-iff--64b5427c7f3dc74e3c7df4ca.md) | 132 | `result-track:64b5427c7f3dc74e3c7df4ca21a9f0fac1d609f6e6564fcf43434accbc2b8bc5` |
| 8 | `theorem` | [rat_mul_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/rat-mul-iff--597027897968e9f3ccc16102.md) | 141 | `result-track:597027897968e9f3ccc16102dc06b912eeb99b21fb484556b9b40fc0e561f83b` |
| 9 | `theorem` | [rat_mul](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/rat-mul--e09f5e5a1cbea93d027faedc.md) | 145 | `result-track:e09f5e5a1cbea93d027faedc1b393b201dd0f11cfdac67a25dce1c155a533c03` |
| 10 | `theorem` | [mul_int_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/mul-int-iff--1d0610c57e4bf1427a295453.md) | 149 | `result-track:1d0610c57e4bf1427a295453e41e6abbf7654602b06d2f39dfc7461e73b2ec2d` |
| 11 | `theorem` | [mul_int](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/mul-int--59c4e3e4e859ccbc5c9a19da.md) | 153 | `result-track:59c4e3e4e859ccbc5c9a19da3b7a295fa749773587d90b33ece491d4ba0e374a` |
| 12 | `theorem` | [int_mul_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/int-mul-iff--4c64827605830c00d2f35eec.md) | 157 | `result-track:4c64827605830c00d2f35eec1d7510dce874998e1e1591c2368321c84cd72ccb` |
| 13 | `theorem` | [int_mul](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/int-mul--78231345c1a0c427e60cc345.md) | 161 | `result-track:78231345c1a0c427e60cc3459ef93e935de97f81909ad1523b767429fe45f13e` |
| 14 | `theorem` | [mul_nat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/mul-nat-iff--851574aa3d5e12b44a5afb04.md) | 165 | `result-track:851574aa3d5e12b44a5afb0431cee05dee8464f964d4962f8d9694d3189e5ed6` |
| 15 | `theorem` | [mul_nat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/mul-nat--166a0a3e388036a81f8e0096.md) | 169 | `result-track:166a0a3e388036a81f8e0096d7ec93343ffa32a40f1bd6492a875b4cf37f1631` |
| 16 | `theorem` | [nat_mul_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/nat-mul-iff--d99b2fc6f04f9cd247b9dab1.md) | 173 | `result-track:d99b2fc6f04f9cd247b9dab1c1fdcaf09103a00c9b7bac4f58ef849d2912a483` |
| 17 | `theorem` | [nat_mul](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/nat-mul--ec47738e966166d3a2727475.md) | 177 | `result-track:ec47738e966166d3a2727475b2a495f21a5715feff3a6d5c4f582062cda871b9` |
| 18 | `theorem` | [add_rat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/add-rat--6008d3a0e0d9eb0257c5eb75.md) | 181 | `result-track:6008d3a0e0d9eb0257c5eb75a89ff97193762322358e65acb47f80c27a57a5ec` |
| 19 | `theorem` | [add_rat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/add-rat-iff--5d872ff2e8a6db6b947bd126.md) | 199 | `result-track:5d872ff2e8a6db6b947bd1265b66aa6f041e13fac4f68249b8b2abaeed8b7fa4` |
| 20 | `theorem` | [rat_add_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/rat-add-iff--5e7471c5c7abcbb0a42cf94c.md) | 204 | `result-track:5e7471c5c7abcbb0a42cf94cfe1c3671723656f758acdec7433857cd0ab310e3` |
| 21 | `theorem` | [rat_add](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/rat-add--e63d33325dfa890c296951ec.md) | 207 | `result-track:e63d33325dfa890c296951ec11ca81e58b03a70ce3e4e2621f7e65df79ca1a5a` |
| 22 | `theorem` | [add_int_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/add-int-iff--f3dde71acfcc4f11734b9317.md) | 212 | `result-track:f3dde71acfcc4f11734b931792458cd04dcd51b723dce81bccebf960f3b194dc` |
| 23 | `theorem` | [int_add_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/int-add-iff--d4a1dbdd333837409c60c014.md) | 217 | `result-track:d4a1dbdd333837409c60c0143e84e1ecbee1be5caace3ab7ec8845247ee4d1c9` |
| 24 | `theorem` | [add_nat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/add-nat-iff--744e243830b0167940ad2879.md) | 221 | `result-track:744e243830b0167940ad2879bba883cde9cd60d71e980678eff53c55ab05c741` |
| 25 | `theorem` | [nat_add_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/nat-add-iff--4b32aa845d21c27b5c6a5283.md) | 226 | `result-track:4b32aa845d21c27b5c6a5283fd46ef59a905a5cf048682d6301b89c27c6cc604` |
| 26 | `theorem` | [add_int](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/add-int--4aaec584d78688c73bd39ece.md) | 229 | `result-track:4aaec584d78688c73bd39ece1b190b1caccb1c53e7f7156c593094d9a3555f63` |
| 27 | `theorem` | [int_add](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/int-add--48e3a51ca4d123a32c69ea2c.md) | 233 | `result-track:48e3a51ca4d123a32c69ea2c69b17249f5618c31ca9b7fe8b7e66dfa3b61126d` |
| 28 | `theorem` | [add_nat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/add-nat--a904e551cb725916f3164f47.md) | 237 | `result-track:a904e551cb725916f3164f47f55365db20851f34760e9345d6e52c464ca2429f` |
| 29 | `theorem` | [nat_add](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/nat-add--5e71a82aba36fb3ccb8061b9.md) | 241 | `result-track:5e71a82aba36fb3ccb8061b9a94a2ee6240283a15239d2161cce2ef0b3782641` |
| 30 | `theorem` | [neg](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/neg--e75d8f55c5b7d3ab999022b7.md) | 245 | `result-track:e75d8f55c5b7d3ab999022b7c616cf0a651cdd9fb87959c9c6cd600856b4bbf9` |
| 31 | `theorem` | [neg_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/neg-iff--f96e501e3ff580650c49d631.md) | 256 | `result-track:f96e501e3ff580650c49d631e80fd7c17e9d7d28dadaf4eaa8b71f494a0696ba` |
| 32 | `theorem` | [sub_rat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/sub-rat-iff--da10f7f5d2d520db0de8f198.md) | 261 | `result-track:da10f7f5d2d520db0de8f198f8aa5ce189cf4aad57d88c2de4bba1817b7b380f` |
| 33 | `theorem` | [sub_rat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/sub-rat--b4fabbc58734145e8721597f.md) | 265 | `result-track:b4fabbc58734145e8721597fd35245a889d0fe88b1c7fe50bee50ac87c72e6ba` |
| 34 | `theorem` | [sub_int_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/sub-int-iff--a07ff3f7a41434e193146a67.md) | 270 | `result-track:a07ff3f7a41434e193146a671e6c8b8d3b0487b91a251637edd98c486ca9d3f9` |
| 35 | `theorem` | [sub_int](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/sub-int--57f21fa299e9da87f2dbd49b.md) | 274 | `result-track:57f21fa299e9da87f2dbd49b45ee99672b4be77ac3845eb77fe092e1d39e0eae` |
| 36 | `theorem` | [sub_nat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/sub-nat-iff--86c329abaa6580596f85fa9a.md) | 279 | `result-track:86c329abaa6580596f85fa9a637d1d06db9488a293930e7916e93b1522bccf7d` |
| 37 | `theorem` | [sub_nat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/sub-nat--8755a920f0321d75ae7d5604.md) | 283 | `result-track:8755a920f0321d75ae7d56049e23a076a1fddd95fb5bb0ff78ff779ebeb901a6` |
| 38 | `theorem` | [rat_sub_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/rat-sub-iff--64ea4d108d958ad61ba60597.md) | 288 | `result-track:64ea4d108d958ad61ba6059792860c919b3b372275c8f0bf0426738baa20f155` |
| 39 | `theorem` | [rat_sub](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/rat-sub--ea30ebca67d0aad0e9757f0f.md) | 291 | `result-track:ea30ebca67d0aad0e9757f0f126071f6ababde502dbf2738a89a26c87d5caa78` |
| 40 | `theorem` | [int_sub_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/int-sub-iff--67e2532d78cc802cc620b87d.md) | 296 | `result-track:67e2532d78cc802cc620b87d035bc3787191aad4ad2449ffb504ce0608221a86` |
| 41 | `theorem` | [int_sub](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/int-sub--46824707d23cab90e0088cfd.md) | 299 | `result-track:46824707d23cab90e0088cfd167b5eb9f00d9d4f947f9504d812831c9345a8ec` |
| 42 | `theorem` | [nat_sub_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/nat-sub-iff--6308be209f4b269e16646574.md) | 304 | `result-track:6308be209f4b269e166465745d541e5ec98d32aee22d80c5da62acc9e491f9b8` |
| 43 | `theorem` | [nat_sub](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/nat-sub--9f06a118eef8266bb1834e1c.md) | 307 | `result-track:9f06a118eef8266bb1834e1c695540dc6a7f1b61076086b37c7eda47db46c493` |
| 44 | `theorem` | [ne_cast_int](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/ne-cast-int--1ff30a25a87496df6c287f35.md) | 311 | `result-track:1ff30a25a87496df6c287f357bf198aacdb976bafcc711902c903b4bd23cd9ca` |
| 45 | `theorem` | [irrational](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/irrational--15015b2cb4230035ac3acd55.md) | 325 | `result-track:15015b2cb4230035ac3acd5530f165306cf5890f5db97e55eb4e0409a2029a15` |
| 46 | `macro_rules` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/macro-rules--0f3acef2fa7d75d0826a9a8c.md) | 340 | `declaration-track:0f3acef2fa7d75d0826a9a8c0ddc0f723723f0e162b85e8f8c875e8c52db18bc` |
| 47 | `theorem` | [frequently_exists_num](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/frequently-exists-num--e2d8f1ef62b8db9692bb7d5d.md) | 344 | `result-track:e2d8f1ef62b8db9692bb7d5d491a2bd85559923ad28672e6ded26381165db3db` |
| 48 | `theorem` | [liouvilleWith](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/liouvillewith--8cdece3d8a089bdd302c0b5d.md) | 372 | `result-track:8cdece3d8a089bdd302c0b5d111d7198ae5307743c09e4253d44d84b0816290c` |
| 49 | `theorem` | [forall_liouvilleWith_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant8a390b62335f66bd7b3383e07e5fbca03d5b41bc011db14437d846749a595911.lean/declarations/forall-liouvillewith-iff--201bc3db651eb90f7b9046ba.md) | 384 | `result-track:201bc3db651eb90f7b9046ba7f199ed16544ce502fd11800a6774b590b9e3d94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
