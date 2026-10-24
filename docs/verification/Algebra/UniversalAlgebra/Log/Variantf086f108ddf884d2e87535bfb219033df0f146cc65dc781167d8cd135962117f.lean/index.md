# Verification target: GRWTSK.Algebra.UniversalAlgebra.Log.Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5708f0f9708d24657af8549151c40079f580cf3",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5708f0f9708d24657af8549151c40079f580cf3`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Power` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Log` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [log](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/log--5a8cf3b5c72cc870d487b230.md) | 58 | `declaration-track:5a8cf3b5c72cc870d487b2302cedc45a09ab41b4ab3fac89d068652d618ced74` |
| 2 | `theorem` | [log_of_one_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/log-of-one-le-right--8e2f605eeb9e95130f016507.md) | 62 | `result-track:8e2f605eeb9e95130f016507ea53c4dfa48552d1de2dfff9b6d92a125d852878` |
| 3 | `theorem` | [log_of_right_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/log-of-right-le-one--0a6885ee91e308f655f7b93f.md) | 66 | `result-track:0a6885ee91e308f655f7b93f0e2c2a24419b1b7f2b41db191044828ec0cc6151` |
| 4 | `theorem` | [log_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/log-natcast--7a2553dba5d671c9f10d08c2.md) | 74 | `result-track:7a2553dba5d671c9f10d08c2aa6c75c6e011d7f3970edbf720f730a5904ba85a` |
| 5 | `theorem` | [log_of_left_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/log-of-left-le-one--87f968e9f9465a508f5d0904.md) | 81 | `result-track:87f968e9f9465a508f5d09046c8e7253fff779163caf913477d8ef08740dc2c1` |
| 6 | `theorem` | [log_of_right_le_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/log-of-right-le-zero--5d69c078cae6b13f6829cfdf.md) | 87 | `result-track:5d69c078cae6b13f6829cfdf04fabfb05c55550678bae2c6b8974a9ea5525c18` |
| 7 | `theorem` | [zpow_log_le_self](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/zpow-log-le-self--fa20ef96fbd7b3f4f30d8649.md) | 93 | `result-track:fa20ef96fbd7b3f4f30d8649e66bf23ddf7747010eb2c7b46aef789d4c9dd1e9` |
| 8 | `theorem` | [lt_zpow_succ_log_self](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/lt-zpow-succ-log-self--5d862e8161740ccba727f16d.md) | 102 | `result-track:5d862e8161740ccba727f16d4e9c752b89254501a0ca47dd4cd9378924680da7` |
| 9 | `theorem` | [log_zero_right](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/log-zero-right--a055cb0babb6c30961bf5cc8.md) | 122 | `result-track:a055cb0babb6c30961bf5cc87d488d2b9f6df0e5d8c1b11b92c5b7bdef9bcdd0` |
| 10 | `theorem` | [log_one_right](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/log-one-right--63dec2936e8d108a21cfdefb.md) | 127 | `result-track:63dec2936e8d108a21cfdefbf026b793d6d54d4a81e3007f3d4711abb058eca8` |
| 11 | `theorem` | [log_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/log-zpow--a8d556a276b0cd12dad4526d.md) | 132 | `result-track:a8d556a276b0cd12dad4526df299a32563a740db46bb6f50176dbd677f57a8e5` |
| 12 | `theorem` | [log_mono_right](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/log-mono-right--6fbad59ea66820a172435a8b.md) | 143 | `result-track:6fbad59ea66820a172435a8b281cf56fa05ec6b41663f59c93b62cd44de20294` |
| 13 | `def` | [zpowLogGi](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/zpowloggi--274758967e5a800ba58a2a72.md) | 160 | `declaration-track:274758967e5a800ba58a2a722e91c0a1a835ca2a1baf84b940897730b075e37a` |
| 14 | `theorem` | [lt_zpow_iff_log_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/lt-zpow-iff-log-lt--645bc90a4906dbd5dc74d437.md) | 173 | `result-track:645bc90a4906dbd5dc74d437e3d51752c791c07446b58acf85c43803a151212b` |
| 15 | `theorem` | [zpow_le_iff_le_log](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/zpow-le-iff-le-log--81de87b8d9f906451c8d825a.md) | 179 | `result-track:81de87b8d9f906451c8d825aa88ca06d5859d9f12e0f7a444b49ccd9256e726c` |
| 16 | `def` | [clog](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/clog--40dbee1f643badecbe948a4b.md) | 185 | `declaration-track:40dbee1f643badecbe948a4b72de4f5d344535b34810af2936fa7014376ec846` |
| 17 | `theorem` | [clog_of_one_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/clog-of-one-le-right--dce7bb1b4a4be453a28a490e.md) | 189 | `result-track:dce7bb1b4a4be453a28a490e16c185eaa413bea57bf97f9e37b28ae8597069af` |
| 18 | `theorem` | [clog_of_right_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/clog-of-right-le-one--f1e6e288465f1e54c99ebd60.md) | 193 | `result-track:f1e6e288465f1e54c99ebd60c760e83819b572fef1adfaddad5237d7351aff01` |
| 19 | `theorem` | [clog_of_right_le_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/clog-of-right-le-zero--49f1c7c5818989f4a17f9942.md) | 200 | `result-track:49f1c7c5818989f4a17f99428b1de678aedfd2c1bddc36541435cc2684fda35e` |
| 20 | `theorem` | [clog_inv](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/clog-inv--7da23b7426c135a87f6a3de1.md) | 210 | `result-track:7da23b7426c135a87f6a3de1a8944d14ef9fb62a455154a213fbeb09d60a6c6e` |
| 21 | `theorem` | [log_inv](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/log-inv--575514127886bbe92be37e66.md) | 219 | `result-track:575514127886bbe92be37e66bf746eb5ccaf5332a0ce385b2b588ad8be76015a` |
| 22 | `theorem` | [neg_log_inv_eq_clog](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/neg-log-inv-eq-clog--29e3e63fc4d785d4a730e4cd.md) | 224 | `result-track:29e3e63fc4d785d4a730e4cd3934f3081fb1c4860efeff52caeb075663dac5a5` |
| 23 | `theorem` | [neg_clog_inv_eq_log](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/neg-clog-inv-eq-log--9affd266b7410930dc8b1153.md) | 227 | `result-track:9affd266b7410930dc8b1153becbdaa07f372640578454b02cbde5a2b4e9bdd0` |
| 24 | `theorem` | [clog_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/clog-natcast--47de3fef229cf4e14b500059.md) | 231 | `result-track:47de3fef229cf4e14b50005956a7365057c181ba9cbf1b13b1949169bfea0899` |
| 25 | `theorem` | [clog_of_left_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/clog-of-left-le-one--c4feb3169be406c4401bf53f.md) | 237 | `result-track:c4feb3169be406c4401bf53f02718edacc10d414de140bd80694e6084ffe6284` |
| 26 | `theorem` | [self_le_zpow_clog](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/self-le-zpow-clog--0107ec4cf3c7a80cb1925c11.md) | 241 | `result-track:0107ec4cf3c7a80cb1925c1137f9f65ab1018617a35df9f4cffafeed647b2a3f` |
| 27 | `theorem` | [zpow_pred_clog_lt_self](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/zpow-pred-clog-lt-self--b2545324a4f6854ec2359842.md) | 250 | `result-track:b2545324a4f6854ec23598422c5e30e73cf62265d3a3d5fae08f7777949d2b46` |
| 28 | `theorem` | [clog_zero_right](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/clog-zero-right--335ed8feed288ead2b068d3b.md) | 258 | `result-track:335ed8feed288ead2b068d3b0e77bc38177bf0cd397ee90a708d76e5b92c76f0` |
| 29 | `theorem` | [clog_one_right](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/clog-one-right--0a9f4146bdb4fd59a2fef239.md) | 263 | `result-track:0a9f4146bdb4fd59a2fef2394da9083509a61dbd0787cae8a5ae4b0fc887c650` |
| 30 | `theorem` | [clog_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/clog-zpow--fed9c42aad4be92fda440992.md) | 268 | `result-track:fed9c42aad4be92fda44099268a3db26bfcd75a7a735792c3a76c2a125739c4b` |
| 31 | `theorem` | [clog_mono_right](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/clog-mono-right--be3c476ec0377095124c7757.md) | 273 | `result-track:be3c476ec0377095124c7757d2fbb26a82b064ee3c432f3b4115b6551af45ec0` |
| 32 | `def` | [clogZpowGi](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/clogzpowgi--f707e21a7076c73846ab66a8.md) | 282 | `declaration-track:f707e21a7076c73846ab66a862799708ae669edd7a2e9ebbbd8aee3446beb37c` |
| 33 | `theorem` | [zpow_lt_iff_lt_clog](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/zpow-lt-iff-lt-clog--9649b25b1096e21264a011ea.md) | 294 | `result-track:9649b25b1096e21264a011ea4acd990ac1b27c6fc15a42bd9308fdf4fb6ab45b` |
| 34 | `theorem` | [le_zpow_iff_clog_le](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variantf086f108ddf884d2e87535bfb219033df0f146cc65dc781167d8cd135962117f.lean/declarations/le-zpow-iff-clog-le--611bce025f516ef8cc4ea0e2.md) | 300 | `result-track:611bce025f516ef8cc4ea0e2cd8f26ecf928f75b49a90a975eeb54a747171b7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
