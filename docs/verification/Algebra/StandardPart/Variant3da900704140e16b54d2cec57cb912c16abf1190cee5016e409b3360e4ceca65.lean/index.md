# Verification target: GRWTSK.Algebra.StandardPart.Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1379dbc8a5c6b9067f47ca62b5bedb507630c82",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/index.md) · [Full source](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1379dbc8a5c6b9067f47ca62b5bedb507630c82`.

Source path: `GRWTSK/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.Real.Hom` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FiniteElement](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/finiteelement--d183096523389fa0da4c69f3.md) | 49 | `declaration-track:d183096523389fa0da4c69f3606910aebafe5cc1ac1284d0c8729d0651cb55ee` |
| 2 | `theorem` | [val_zero](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/val-zero--12654be3e94bc0bd4d14bc5d.md) | 55 | `result-track:12654be3e94bc0bd4d14bc5da78f2a494ca275e41fb7ab0554342728c27dd16b` |
| 3 | `theorem` | [val_one](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/val-one--1695fee90e3c9f2704911065.md) | 56 | `result-track:1695fee90e3c9f2704911065bf80571a2ba391225df8769a532257d57d017cae` |
| 4 | `theorem` | [val_add](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/val-add--35928e3e029bf636973dffef.md) | 57 | `result-track:35928e3e029bf636973dffef6d4c330f9964e9c221f2f8ad5e71b7b676f49a4b` |
| 5 | `theorem` | [val_sub](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/val-sub--805302db214c390910a67b76.md) | 58 | `result-track:805302db214c390910a67b76bdfbbabd2a530cf5f70551cc0bafa41285273b05` |
| 6 | `theorem` | [val_mul](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/val-mul--8ed443c3a5286bffab2bbd34.md) | 59 | `result-track:8ed443c3a5286bffab2bbd34d7426e8eb3868bdad937b8e94a9f697089affe4b` |
| 7 | `theorem` | [ext](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/ext--329cacbc676fb2d13fafd6bd.md) | 61 | `result-track:329cacbc676fb2d13fafd6bdbd78beb99bb1121ed2c38303dd8d67ec9d5414ca` |
| 8 | `def` | [mk](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/mk--7e63ea6e8ebe8f7dc9c7a789.md) | 64 | `declaration-track:7e63ea6e8ebe8f7dc9c7a7896ea86fd778e3eb98a858e48b585ffd8960c4fce3` |
| 9 | `theorem` | [mk_zero](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/mk-zero--b6dcba6ced0a952b1a74ab87.md) | 66 | `result-track:b6dcba6ced0a952b1a74ab87fa8a0205b56e7a5dc0eb412138329a5c337d3501` |
| 10 | `theorem` | [mk_one](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/mk-one--24fd912520eff4443ac4275e.md) | 67 | `result-track:24fd912520eff4443ac4275e45d8ff97b9f4fa6dd846a2988fde9b62c5d5947c` |
| 11 | `theorem` | [mk_natCast](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/mk-natcast--a1926212dfa6a961b036995f.md) | 68 | `result-track:a1926212dfa6a961b036995f1f3b34219810132c1181715010ba6835c1c36dfb` |
| 12 | `theorem` | [mk_intCast](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/mk-intcast--119115ef1defbd951608c111.md) | 69 | `result-track:119115ef1defbd951608c111acca658dcfb78cbcac40fc6a98571b53f7f31b31` |
| 13 | `theorem` | [neg_mk](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/neg-mk--02a7253c03b7fd24a7898b8e.md) | 72 | `result-track:02a7253c03b7fd24a7898b8e0bd6b9a9bc84f0911c28ffac49e3377ea9b5b5b3` |
| 14 | `theorem` | [mk_add_mk](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/mk-add-mk--0d13a044b7da7ad1b684c8ac.md) | 77 | `result-track:0d13a044b7da7ad1b684c8acecebc74460334ed657cc120b199383fbf871866a` |
| 15 | `theorem` | [mk_sub_mk](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/mk-sub-mk--50b23709e5f7c8b113c074d2.md) | 82 | `result-track:50b23709e5f7c8b113c074d2c88a96b3fa1ba81c3307f01061b8eb50a24d2550` |
| 16 | `theorem` | [mk_mul_mk](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/mk-mul-mk--b604a8f8c02e5b3a4b0a5550.md) | 87 | `result-track:b604a8f8c02e5b3a4b0a5550488ca4a9a3ca888c78c31fea7d000b026dea0b3b` |
| 17 | `theorem` | [mk_le_mk](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/mk-le-mk--a079dbd819acda6c822fe53d.md) | 92 | `result-track:a079dbd819acda6c822fe53df68080d8af30bb9eb05c8b64d60f02867e769884` |
| 18 | `theorem` | [mk_lt_mk](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/mk-lt-mk--98e71362b59f1b41ab1256bd.md) | 96 | `result-track:98e71362b59f1b41ab1256bda1b1465f87116331f63cc55b2cde9c608e4a81b5` |
| 19 | `theorem` | [not_isUnit_iff_mk_pos](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/not-isunit-iff-mk-pos--89591a50e6f75fef86ded55c.md) | 99 | `result-track:89591a50e6f75fef86ded55cf42a6e67e48b30b8f90048a314b79d4adf7d1b2d` |
| 20 | `theorem` | [isUnit_iff_mk_eq_zero](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/isunit-iff-mk-eq-zero--9b34737ec546e98726931bbe.md) | 102 | `result-track:9b34737ec546e98726931bbe35e5127e1a3010a80c05690b05c2a3454b5174b7` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/instance--b12ecf6d2c48e5b8c08acf51.md) | 105 | `declaration-track:b12ecf6d2c48e5b8c08acf511cc2cc140a680f34acbdc29103550afcf70533d2` |
| 22 | `theorem` | [mk_ratCast](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/mk-ratcast--e54bea126e98c7f986f4d0fb.md) | 108 | `result-track:e54bea126e98c7f986f4d0fb67c742c60f7f995fc279c01e97bb53864f575ffe` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/instance--0974de2c9dbd914c40a86d28.md) | 111 | `declaration-track:0974de2c9dbd914c40a86d282d62620f9c8b3bd2f8d9ab60a89ba7317d9e85d1` |
| 24 | `def` | [FiniteResidueField](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/finiteresiduefield--a058ee9e2785c9cbf182bd2b.md) | 123 | `declaration-track:a058ee9e2785c9cbf182bd2b8a064c7f27e49f8c44db1607a820d4026b89b043` |
| 25 | `instance` | [ordConnected_preimage_mk'](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/ordconnected-preimage-mk--3862c960e8245372a5a89951.md) | 130 | `declaration-track:3862c960e8245372a5a8995181f9138d96fd34cf9c5744bfe6b85c8c79ea8bf0` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/instance--d76cf20c25f6cce00569acb3.md) | 140 | `declaration-track:d76cf20c25f6cce00569acb387e4d9dcdc11b74b1fc2a661388f7c26d993e83e` |
| 27 | `def` | [mk](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/mk--2c17aece7681907ecb223d5a.md) | 148 | `declaration-track:2c17aece7681907ecb223d5ad19bd4e02a737bb176698c493792b9ee7efc0356` |
| 28 | `theorem` | [ind](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/ind--8ad85f315490f993212fa892.md) | 153 | `result-track:8ad85f315490f993212fa892729d99448b65ef9e94058f744d234d277d8c088b` |
| 29 | `instance` | [ordConnected_preimage_mk](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/ordconnected-preimage-mk--0652fc5042079a00a2725ff7.md) | 156 | `declaration-track:0652fc5042079a00a2725ff71669010efbf3052716b3485e9e1c25aa76114988` |
| 30 | `theorem` | [mk_eq_mk](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/mk-eq-mk--b4c03c5ac09b38be0c113ecd.md) | 161 | `result-track:b4c03c5ac09b38be0c113ecd20c350ea91a8a6c46a9b10c240e85f6dd7e21409` |
| 31 | `theorem` | [mk_eq_zero](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/mk-eq-zero--16af1dacc92e331bab707dfc.md) | 166 | `result-track:16af1dacc92e331bab707dfce8db1531eb342dfc7c42293a22f5b2d904b21362` |
| 32 | `theorem` | [mk_ne_zero](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/mk-ne-zero--6fd23d6a36ef14ac2250d8b5.md) | 170 | `result-track:6fd23d6a36ef14ac2250d8b5d8100f9157d073f599b91ccff21a7cb9518330a5` |
| 33 | `theorem` | [mk_le_mk](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/mk-le-mk--716590b188acdc99ddb26824.md) | 173 | `result-track:716590b188acdc99ddb26824f720283189c0a83cef0e669be26f208a0079644d` |
| 34 | `theorem` | [mk_lt_mk](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/mk-lt-mk--43d20717ebd1a63d4b45b882.md) | 178 | `result-track:43d20717ebd1a63d4b45b882aabe476c71632332ff55f1a1d699ef633047adf8` |
| 35 | `theorem` | [lt_of_mk_lt_mk](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/lt-of-mk-lt-mk--ffaf8e1f08404c6c1c5168a6.md) | 183 | `result-track:ffaf8e1f08404c6c1c5168a66a8c9927a071bfbb00bea6b06f21191a1c863773` |
| 36 | `theorem` | [mul_le_mul_of_nonneg_left'](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/mul-le-mul-of-nonneg-left--1013187a05c4d374867332fd.md) | 186 | `result-track:1013187a05c4d374867332fdf85d727fd8d31b84379d3b0635c9ece1da0c7150` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/instance--38d7d1031eaaab6eef49690f.md) | 196 | `declaration-track:38d7d1031eaaab6eef49690f130d138e46e4328bc30554a9d0add1b402fd6290` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/instance--13319f0af64a850d1435b585.md) | 210 | `declaration-track:13319f0af64a850d1435b58533aae2b902c237cb4c566df02aaa1360337837dc` |
| 39 | `theorem` | [mk_ratCast](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/mk-ratcast--691207d4017a39ef0edb967f.md) | 225 | `result-track:691207d4017a39ef0edb967ff81981b5b9f29d8ce8f8247255377faff2d73376` |
| 40 | `def` | [ofArchimedean](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/ofarchimedean--2ab2b027e3375f71ad4d7a03.md) | 234 | `declaration-track:2ab2b027e3375f71ad4d7a03ad6ed310e7fd27744e871eb8521f4c97ffd89828` |
| 41 | `theorem` | [ofArchimedean_apply](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/ofarchimedean-apply--37ab80cfc5ed9e504a4e705e.md) | 248 | `result-track:37ab80cfc5ed9e504a4e705e769294d1a8627beb8ac4d0e7a660bc302c720847` |
| 42 | `theorem` | [ofArchimedean_injective](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/ofarchimedean-injective--ce0f1abedee62c3426a6c25a.md) | 252 | `result-track:ce0f1abedee62c3426a6c25a4fc18f6cf183a172e06ce510470dca5b27e20829` |
| 43 | `theorem` | [ofArchimedean_inj](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/ofarchimedean-inj--c0cbc44ca542c4b83cf95435.md) | 260 | `result-track:c0cbc44ca542c4b83cf954356c14bd1fdcf9725a603067196fa985b0fc520719` |
| 44 | `def` | [stdPart](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart--3915ed98dd589615fcd38fef.md) | 273 | `declaration-track:3915ed98dd589615fcd38fef83c5d9a41550f40495edc08b320ad00c8bc2350a` |
| 45 | `theorem` | [stdPart_of_mk_nonneg](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-of-mk-nonneg--ad3870052659a688debb977e.md) | 277 | `result-track:ad3870052659a688debb977ef1cf9e746929e97e6534290fe83a7786d3f6c528` |
| 46 | `theorem` | [stdPart_eq_zero](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-eq-zero--15ccad0e767ea2962624297c.md) | 284 | `result-track:15ccad0e767ea2962624297ca8701608ef700fe57f2b3986a831e72c662c8248` |
| 47 | `theorem` | [stdPart_monotoneOn](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-monotoneon--adafffbd7db627ac46ec45e5.md) | 297 | `result-track:adafffbd7db627ac46ec45e52aafed9c1c5626eabe1e928fbe2f70cbfefee242` |
| 48 | `theorem` | [stdPart_zero](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-zero--a5b7e1ed55416cb485c4febc.md) | 305 | `result-track:a5b7e1ed55416cb485c4febc590ed75f4a89d68d122f6fcd8c70b03c1fffe29a` |
| 49 | `theorem` | [stdPart_one](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-one--10ef617c55dcb7a4f14eef0e.md) | 309 | `result-track:10ef617c55dcb7a4f14eef0eb947c778727a72b4c71bef74c42e61716926a2e0` |
| 50 | `theorem` | [stdPart_neg](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-neg--cf5393bb0343e51cdeec1dee.md) | 313 | `result-track:cf5393bb0343e51cdeec1dee1fce224e2b234cf40eb268d9a20f8ea4b864cfc2` |
| 51 | `theorem` | [stdPart_inv](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-inv--fece67a8b73ed20c831f6f1a.md) | 320 | `result-track:fece67a8b73ed20c831f6f1a95bdb5850e2a8aad26def57e43be65d4461a230e` |
| 52 | `theorem` | [stdPart_add](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-add--095839e110f270d4f945a9f5.md) | 334 | `result-track:095839e110f270d4f945a9f5cf2975248077a7da7bd4adfd3cb8a2085610e154` |
| 53 | `theorem` | [stdPart_add_eq_right](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-add-eq-right--f5d6bb43c4219fa2506808d6.md) | 339 | `result-track:f5d6bb43c4219fa2506808d69f5d3c6e7a040121eabf4ac05b0199d06b520054` |
| 54 | `theorem` | [stdPart_add_eq_left](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-add-eq-left--0476269331d8deea320233f8.md) | 346 | `result-track:0476269331d8deea320233f828a05a1a978524192b4e6106b3240d3ef9505897` |
| 55 | `theorem` | [stdPart_sub](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-sub--b5ddcc9dd88bec1a33db439e.md) | 349 | `result-track:b5ddcc9dd88bec1a33db439e158e225a48b84bf2f60ed3d3321128fd249a8f80` |
| 56 | `theorem` | [stdPart_sub_eq_right](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-sub-eq-right--53b8e3c1ec31ac959cd83d8e.md) | 353 | `result-track:53b8e3c1ec31ac959cd83d8e5086131851359407a4788366d471eee9944ac56d` |
| 57 | `theorem` | [stdPart_sub_eq_left](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-sub-eq-left--f5e805e770964637bac904e8.md) | 356 | `result-track:f5e805e770964637bac904e8c812b185a39fe31fef90397e6780f314b6f35529` |
| 58 | `theorem` | [stdPart_mul](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-mul--3a5857521deb791abb1238db.md) | 359 | `result-track:3a5857521deb791abb1238dbca3a5bb25086ecb3b3c515e8a74a482305de7fc0` |
| 59 | `theorem` | [stdPart_div](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-div--1f9cd680a430edfc066f0ba9.md) | 364 | `result-track:1f9cd680a430edfc066f0ba9b923a28744edc1675cfbac4a0e125784280075e5` |
| 60 | `theorem` | [stdPart_ratCast](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-ratcast--cc9ca9cc9966068255c7523c.md) | 370 | `result-track:cc9ca9cc9966068255c7523c7c3eab4c396fad240846b49252f418406f9b8e4f` |
| 61 | `theorem` | [stdPart_intCast](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-intcast--4d0accb5ef6e0c1ab7e8e9b0.md) | 375 | `result-track:4d0accb5ef6e0c1ab7e8e9b045e16a12c93352d830660eff7b546d91196264dd` |
| 62 | `theorem` | [stdPart_natCast](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-natcast--59afc4601a5cc07c104fad1d.md) | 379 | `result-track:59afc4601a5cc07c104fad1d0ed214630459f56a8e52f07189fad88847a7edc8` |
| 63 | `theorem` | [stdPart_ofNat](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-ofnat--2a5731d9a7f2135dae2c7d11.md) | 383 | `result-track:2a5731d9a7f2135dae2c7d115b591acc8e7247b6b8772c17fd750b75354e5e3e` |
| 64 | `theorem` | [stdPart_map_real](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-map-real--7b6d4ec1f3dd8adf37df0eb7.md) | 387 | `result-track:7b6d4ec1f3dd8adf37df0eb7ae0ff2c15c928bd4119aaa1d00880707623a97bb` |
| 65 | `theorem` | [stdPart_real](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-real--5016880984ea047add22d9b3.md) | 392 | `result-track:5016880984ea047add22d9b347cb493b49b5989e7d9e314dc31a17392044d010` |
| 66 | `theorem` | [ofArchimedean_stdPart](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/ofarchimedean-stdpart--7b821464a016b0dad6327171.md) | 395 | `result-track:7b821464a016b0dad63271711b65071d3e7b89f399b2b152d0456a4f8fc9cfb4` |
| 67 | `theorem` | [stdPart_nonneg](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-nonneg--5dfef9850db1b9e20abc54fd.md) | 400 | `result-track:5dfef9850db1b9e20abc54fd04f890067a6d2d7161447310b047274d06cb60f5` |
| 68 | `theorem` | [stdPart_nonpos](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-nonpos--2a87f0865c531ddaaeaf2924.md) | 406 | `result-track:2a87f0865c531ddaaeaf2924df91a0e10e6b937649d6a3f30c4e6e825e4454c8` |
| 69 | `theorem` | [mk_sub_pos_iff](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/mk-sub-pos-iff--1dc4a9f54d6ceae96e4c4e20.md) | 410 | `result-track:1dc4a9f54d6ceae96e4c4e2026f1e5e02a31e73e9a44d3ae2c5f1cf7491c4c6b` |
| 70 | `theorem` | [mk_sub_stdPart_pos](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/mk-sub-stdpart-pos--03e9855c48bfe390c231c59b.md) | 417 | `result-track:03e9855c48bfe390c231c59b8324e13f71f512a3aa9de113daab1e9d4dbfc836` |
| 71 | `theorem` | [lt_of_lt_stdPart](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/lt-of-lt-stdpart--05edb37cece6922cbc8c32ef.md) | 420 | `result-track:05edb37cece6922cbc8c32ef18fa8dcfb3e0def1786561a1ead087f96b1c56e5` |
| 72 | `theorem` | [lt_of_stdPart_lt](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/lt-of-stdpart-lt--eba041b2d4b92c032b2159c0.md) | 428 | `result-track:eba041b2d4b92c032b2159c0941ead488a14f5ad8b25128fb6da5ac3f866cd34` |
| 73 | `theorem` | [stdPart_le_of_le](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-le-of-le--f69fafa4d91789f6766a4f43.md) | 432 | `result-track:f69fafa4d91789f6766a4f439e39a2c159a534542d06ab84b5fd1a04d4a82f78` |
| 74 | `theorem` | [le_stdPart_of_le](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/le-stdpart-of-le--bb7f2b5ba64f71bf7fd75ca4.md) | 435 | `result-track:bb7f2b5ba64f71bf7fd75ca448ab5ae8a3599be57299770290188fb58cb320c7` |
| 75 | `theorem` | [stdPart_eq](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-eq--defd6eec4582521a2d1db245.md) | 438 | `result-track:defd6eec4582521a2d1db2459317624da223e43364f34503c88938b0efb8c84a` |
| 76 | `theorem` | [stdPart_eq_sInf](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-eq-sinf--e3a80b327cd85959903b5ac3.md) | 449 | `result-track:e3a80b327cd85959903b5ac365de8e426faa8c6504212693e361ba4cb5559d98` |
| 77 | `theorem` | [stdPart_eq_sSup](../../../../mathematics/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/declarations/stdpart-eq-ssup--064e03ab9ad98d7a03a62441.md) | 472 | `result-track:064e03ab9ad98d7a03a62441fbb2e1332438bae64b8225510ff35dec6a2cfea2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
