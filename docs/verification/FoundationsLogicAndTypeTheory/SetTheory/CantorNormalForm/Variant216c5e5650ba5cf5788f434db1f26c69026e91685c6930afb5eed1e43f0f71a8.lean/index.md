# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CantorNormalForm.Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f94eb798f7e5c846dfcf66dbb9beed4796241382",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f94eb798f7e5c846dfcf66dbb9beed4796241382`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Sort` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.AList` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/rec--d5a04a86653481b78d4eb327.md) | 48 | `declaration-track:d5a04a86653481b78d4eb327ef66cb1a9f2e8e96696e956b6104702f35780cdd` |
| 2 | `theorem` | [rec_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/rec-zero--3fd5eca0fff147279f3a5fd9.md) | 55 | `result-track:3fd5eca0fff147279f3a5fd97cc9e35db46516cabd67c8862bd3deeb18459bc1` |
| 3 | `theorem` | [rec_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/rec-pos--5e9f754b485cf53560605150.md) | 59 | `result-track:5e9f754b485cf53560605150fe424c202019cdb8b5c85db1246599c9ecef0608` |
| 4 | `def` | [_root_.Ordinal.CNF](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/root-ordinal-cnf--8428976f1972c341d4f2c970.md) | 71 | `declaration-track:8428976f1972c341d4f2c970f2d8761a7ef597c33f98a629f67666f67fc7558d` |
| 5 | `theorem` | [zero_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/zero-right--f93d327e6fcbc27d3b963654.md) | 75 | `result-track:f93d327e6fcbc27d3b963654e7ce289bc16bbe7f192375820485703942aeca3e` |
| 6 | `theorem` | [ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/ne-zero--0a52b3cc9266f392f92d9b1a.md) | 79 | `result-track:0a52b3cc9266f392f92d9b1a19ae78692301d44eff42cba556548659625ca187` |
| 7 | `theorem` | [opow_mul_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/opow-mul-add--085c11a1d7c23e7db8409606.md) | 83 | `result-track:085c11a1d7c23e7db8409606e716f4bd442554dc07308fb2f54391bddc7cfe74` |
| 8 | `theorem` | [zero_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/zero-left--a8992c0a2db75ae8d944e137.md) | 93 | `result-track:a8992c0a2db75ae8d944e137e396c3ef1796dc831b6e56dc26aa0ea941b1ac5f` |
| 9 | `theorem` | [one_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/one-left--4d8ab6f2d6cc4e3e4d512849.md) | 96 | `result-track:4d8ab6f2d6cc4e3e4d512849584c9da348edf8dddac7b8550b2f1e55ef59773e` |
| 10 | `theorem` | [of_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/of-le-one--9b8529e48db382ba39426075.md) | 99 | `result-track:9b8529e48db382ba39426075ff8d1ef43af524d0223a395449a1b9bf4da9f0c1` |
| 11 | `theorem` | [of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/of-lt--b0193091debb211859ca835d.md) | 103 | `result-track:b0193091debb211859ca835d158f85ebfb789fe0c43c5e107071cb313947aca5` |
| 12 | `theorem` | [foldr](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/foldr--c5d24c0d2e77617a1aa4d7ed.md) | 107 | `result-track:c5d24c0d2e77617a1aa4d7ed3b5e3add77a2ae0e98d46ca9e2c8669e3940222d` |
| 13 | `theorem` | [fst_le_log](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/fst-le-log--2bc5823e30afe4e6230ae585.md) | 114 | `result-track:2bc5823e30afe4e6230ae5853a2c373858df93c5e000ce52891c0af325f34a1a` |
| 14 | `theorem` | [snd_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/snd-pos--b848c03a53807228e08090b7.md) | 123 | `result-track:b848c03a53807228e08090b786fc46399254b4323c017c99ca8d523547762804` |
| 15 | `theorem` | [snd_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/snd-lt--04ea0699344aacd5421afd10.md) | 131 | `result-track:04ea0699344aacd5421afd10fc0592ad8909dfd02547f5ac2d7a706ea0ce807a` |
| 16 | `theorem` | [sortedGT](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/sortedgt--45eaab68bb4ff92d9b0af756.md) | 142 | `result-track:45eaab68bb4ff92d9b0af756fdf51f7072cdf2acace42de7cb2ade23bb77ec67` |
| 17 | `theorem` | [nodupKeys](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/nodupkeys--8a79476b7a823c57ac183007.md) | 159 | `result-track:8a79476b7a823c57ac183007a90d57c42c5f4cd2146f16e5b32af164621f0bf7` |
| 18 | `def` | [coeff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/coeff--73c3a5b146e6626eb5253a91.md) | 170 | `declaration-track:73c3a5b146e6626eb5253a914bb1468c68e5de99cf5d6c412615311c9ce5ff1e` |
| 19 | `theorem` | [support_coeff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/support-coeff--fa89faae5b5ada6df399bd3d.md) | 174 | `result-track:fa89faae5b5ada6df399bd3db1ba54496a133727a1373ae33e4f977d4f2c3e52` |
| 20 | `theorem` | [coeff_of_mem_CNF](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/coeff-of-mem-cnf--092447048ca5441cc391d0fd.md) | 182 | `result-track:092447048ca5441cc391d0fd30f851ba2aa1aa9923a9ba236fc8998ac47fdff4` |
| 21 | `theorem` | [coeff_of_notMem_CNF](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/coeff-of-notmem-cnf--75c4a95e220384e482ce89ba.md) | 187 | `result-track:75c4a95e220384e482ce89ba97f494a64a6028553904bb394f13d67f54a29071` |
| 22 | `theorem` | [coeff_eq_zero_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/coeff-eq-zero-of-lt--ec98694614c4e239145a20f4.md) | 191 | `result-track:ec98694614c4e239145a20f4250fddb54c42d13e1d64744ed021b139cd401297` |
| 23 | `theorem` | [coeff_zero_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/coeff-zero-apply--0e255054c9fc80ff89307e9d.md) | 200 | `result-track:0e255054c9fc80ff89307e9d4c6bce1009b00eabc0b958b189b3839ce07a0b99` |
| 24 | `theorem` | [coeff_zero_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/coeff-zero-right--5dc367092a9fac40e18f306e.md) | 205 | `result-track:5dc367092a9fac40e18f306e78e244f4c8b45eaf1f57c5b08b046b6ddf734a2b` |
| 25 | `theorem` | [coeff_of_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/coeff-of-le-one--80eba521f90c1a657feac5d6.md) | 209 | `result-track:80eba521f90c1a657feac5d60733e6289f0e1379b169ac39bf69f7f092265d85` |
| 26 | `theorem` | [coeff_zero_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/coeff-zero-left--f023bfbb2704b64d94cf8798.md) | 223 | `result-track:f023bfbb2704b64d94cf879837ff96948cc01bc42cf3f1e2f6b5b9733d778507` |
| 27 | `theorem` | [coeff_one_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/coeff-one-left--cca6e01567e87a0d5db97640.md) | 227 | `result-track:cca6e01567e87a0d5db976408894ab0123de399df06b0d8ca982dd73e30f3f2e` |
| 28 | `theorem` | [coeff_opow_mul_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/coeff-opow-mul-add--c91ab5bdde787e29ae3b4fc4.md) | 230 | `result-track:c91ab5bdde787e29ae3b4fc440d6b961031f4e7e0a563f2deea775a758192bff` |
| 29 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/eval--3a8ce3412d789f6e56bd1c66.md) | 257 | `declaration-track:3a8ce3412d789f6e56bd1c668415445a49b4735b95e5a0915f7116543ddb25f2` |
| 30 | `theorem` | [eval_zero_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/eval-zero-right--b727b94658ced0801ed8cc21.md) | 261 | `result-track:b727b94658ced0801ed8cc21b19df2bce0e1d7d605ae782addab24c6fbb731b0` |
| 31 | `theorem` | [eval_single_add'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/eval-single-add--3797e9083c51a02370c98288.md) | 265 | `result-track:3797e9083c51a02370c9828866fe0dbdec06b71198bf82bda8ea61d4525e163b` |
| 32 | `theorem` | [eval_single](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/eval-single--71f6ec6b98df4ffc84ca7989.md) | 281 | `result-track:71f6ec6b98df4ffc84ca79893b252a2f75b62ebfeb250bfd3fb4434468163165` |
| 33 | `theorem` | [eval_single_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/eval-single-add--3ba334fa00559efd0d9e02e8.md) | 284 | `result-track:3ba334fa00559efd0d9e02e88fc2fe50b6d27d6878412c3ec82bf3f48c972bf4` |
| 34 | `theorem` | [eval_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/eval-add--39815989282ee1965cb095d9.md) | 297 | `result-track:39815989282ee1965cb095d9840e9abaf267dd04fbfdb9d05101ce6d3cb8e681` |
| 35 | `theorem` | [eval_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/eval-lt--84d0c201753276980aa8142b.md) | 311 | `result-track:84d0c201753276980aa8142bf3505a08b93af6a02bf9a4e65dcf4b337a65ca9e` |
| 36 | `theorem` | [eval_coeff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/eval-coeff--ae83d2e3825e8b527326376f.md) | 336 | `result-track:ae83d2e3825e8b527326376fdece248c0d03b576903db599500fa62c06f9e3e1` |
| 37 | `theorem` | [coeff_eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/coeff-eval--b9bc7f68b6d18d9723438e6d.md) | 345 | `result-track:b9bc7f68b6d18d9723438e6d390dde35fa0012d78b330a4679f52162cbfec437` |
| 38 | `theorem` | [coeff_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/coeff-injective--5a734059de38b26549f07d10.md) | 363 | `result-track:5a734059de38b26549f07d105471620912de776cc6734b36d4bdece06243f4b3` |
| 39 | `theorem` | [coeff_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/declarations/coeff-inj--8c24e3eb065981e87b5fb13b.md) | 367 | `result-track:8c24e3eb065981e87b5fb13ba52ba0ad42ccc30f279656ea3484eb6b4709e75f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
