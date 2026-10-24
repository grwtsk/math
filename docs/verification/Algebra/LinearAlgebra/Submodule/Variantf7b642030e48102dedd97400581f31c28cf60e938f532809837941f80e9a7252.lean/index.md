# Verification target: GRWTSK.Algebra.LinearAlgebra.Submodule.Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bb41e12d2201a80c271862fdbf234035d06aa64",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bb41e12d2201a80c271862fdbf234035d06aa64`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Pointwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Module` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Operations` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [localized₀](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/localized--04df33257b8ea11a2c07b898.md) | 50 | `declaration-track:04df33257b8ea11a2c07b898bb75d4ec8ede75a7f7a8522fbf6cdb5c3fe551d0` |
| 2 | `def` | [localized'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/localized--10222cefc5448c16b573f02d.md) | 61 | `declaration-track:10222cefc5448c16b573f02deabc05cad99535c0ef777a822a7d2c6dfa0ee6fa` |
| 3 | `lemma` | [mem_localized₀](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/mem-localized--2da0fe71ac24c92e47357a89.md) | 67 | `result-track:2da0fe71ac24c92e47357a8901a6800a862d8022384a4bb9669b4068e605df97` |
| 4 | `lemma` | [mem_localized'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/mem-localized--cc92cfebcbd4d33aabdff1ab.md) | 71 | `result-track:cc92cfebcbd4d33aabdff1aba7ee6d14b91a7faa06781eac312a80398710ec1b` |
| 5 | `lemma` | [restrictScalars_localized'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/restrictscalars-localized--5cda32cf37e6bcee88f1d416.md) | 76 | `result-track:5cda32cf37e6bcee88f1d416c5ba67715fce2d55d3642b9fe14206b274a38cfb` |
| 6 | `theorem` | [localized'_eq_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/localized-eq-span--ee65e67752f01c725f22056e.md) | 80 | `result-track:ee65e67752f01c725f22056ec6ffe9e489f34bde8bd37bd9c58c0189f5ee72dc` |
| 7 | `def` | [localized'gi](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/localized-gi--c65ce1df90fc7e410e1805e4.md) | 88 | `declaration-track:c65ce1df90fc7e410e1805e41cc1fdac124a49faad659db98148c307b132a12f` |
| 8 | `abbrev` | [localized](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/localized--f3a6df5ed2b08f8a457fe606.md) | 101 | `declaration-track:f3a6df5ed2b08f8a457fe6060d4a2496ef9263bb141b8df264fab4ed4508d4d1` |
| 9 | `lemma` | [localized₀_bot](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/localized-bot--5f57b6596e8fb7b0921caac3.md) | 105 | `result-track:5f57b6596e8fb7b0921caac372fe09f5bc8f95fdcd743eaeeece9db01634d051` |
| 10 | `lemma` | [localized'_bot](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/localized-bot--d7100c56c386b069fcd577e7.md) | 111 | `result-track:d7100c56c386b069fcd577e7c3ddbd64f7a4f97d75382e70f68e09a55b314f06` |
| 11 | `lemma` | [localized₀_top](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/localized-top--ccc34daa1a365f5e120cfef1.md) | 115 | `result-track:ccc34daa1a365f5e120cfef169c748bbcb1b29ab7d0842721ed6ba6ab4ec0b2c` |
| 12 | `lemma` | [localized'_top](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/localized-top--1b95b0751d1a09170d5b142e.md) | 122 | `result-track:1b95b0751d1a09170d5b142e0cc4152d380601aabd88bf4fb8bcf33015b8e2ac` |
| 13 | `lemma` | [localized'_span](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/localized-span--235a9ee7f1d687a9ab469f8d.md) | 126 | `result-track:235a9ee7f1d687a9ab469f8dca6a7c77dfdf18ffb35951de8f8a904f4ccc6505` |
| 14 | `lemma` | [localized₀_smul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/localized-smul--f8fc90e55d6b8d25b29e7d01.md) | 129 | `result-track:f8fc90e55d6b8d25b29e7d014f8330bd0ce21768dd68904c8ff2a615fd4245a5` |
| 15 | `lemma` | [restrictScalars_localized'_smul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/restrictscalars-localized-smul--520177603f3dbb21a6661620.md) | 142 | `result-track:520177603f3dbb21a6661620467b26c0c24395ba5316ec5d1471b5119930544d` |
| 16 | `lemma` | [localized'_smul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/localized-smul--d49aa122c57217085c5ee026.md) | 153 | `result-track:d49aa122c57217085c5ee026e18810b32cb504e026e010d82c57954f09b3f7a4` |
| 17 | `def` | [toLocalized₀](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/tolocalized--5eef6131abee1d32831c29c8.md) | 160 | `declaration-track:5eef6131abee1d32831c29c89e9ab129624a10c946d58997efd3e77154f5a5d6` |
| 18 | `def` | [toLocalized'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/tolocalized--bab6fa4703bd59faa46c3477.md) | 164 | `declaration-track:bab6fa4703bd59faa46c34776b11fbab0700e2d80f2b52470bf8b2288540a247` |
| 19 | `abbrev` | [toLocalized](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/tolocalized--c1a2fb61e097268d3086491a.md) | 167 | `declaration-track:c1a2fb61e097268d3086491a66191c34b7736155b0a173d04a997905a0ecded9` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/instance--17407b5ae5689bb15145631a.md) | 170 | `declaration-track:17407b5ae5689bb15145631a60a23bcdd9d14383279a0d7d1663210f05bd327d` |
| 21 | `instance` | [isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/islocalizedmodule--bc76e8c823cfad65e7aa81c0.md) | 186 | `declaration-track:bc76e8c823cfad65e7aa81c0d195d97340c6b7f32ceb91791f5a4b900b2e5020` |
| 22 | `def` | [localizedEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/localizedequiv--fcd7504c9343f4eb2cd3ba87.md) | 191 | `declaration-track:fcd7504c9343f4eb2cd3ba87c440bb30880da6ab82b7d217dee956e5a2ede7a7` |
| 23 | `lemma` | [localized₀_le_localized₀_of_smul_le](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/localized-le-localized-of-smul-le--46ded590986bc73b4c0d84bc.md) | 198 | `result-track:46ded590986bc73b4c0d84bc08282d0624073c1b24352e7012978e3b3a5c32f4` |
| 24 | `lemma` | [localized'_le_localized'_of_smul_le](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/localized-le-localized-of-smul-le--a769f5eb112e6a1e6a27bd1f.md) | 204 | `result-track:a769f5eb112e6a1e6a27bd1fac50cc3627eb10f82e854ba4e62d8809950413dc` |
| 25 | `def` | [Submodule.toLocalizedQuotient'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/submodule-tolocalizedquotient--8cb8df5d5048aa3c872fa744.md) | 219 | `declaration-track:8cb8df5d5048aa3c872fa74496655808115fd6b56926ab0a355a209db3115e3e` |
| 26 | `abbrev` | [Submodule.toLocalizedQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/submodule-tolocalizedquotient--e02265a3357fc8fc22d780a9.md) | 223 | `declaration-track:e02265a3357fc8fc22d780a9cb53422a98d8956bc5a24393ba86ca14b530cb73` |
| 27 | `lemma` | [Submodule.toLocalizedQuotient'_mk](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/submodule-tolocalizedquotient-mk--d96a51a4c27a9b9a8483a6d8.md) | 228 | `result-track:d96a51a4c27a9b9a8483a6d83b780ea6d5511394490f9367c8fa6bd8720a8ce2` |
| 28 | `instance` | [IsLocalizedModule.toLocalizedQuotient'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/islocalizedmodule-tolocalizedquotient--f9cb1fde41a14f959bad6d39.md) | 232 | `declaration-track:f9cb1fde41a14f959bad6d39ee50a64b652ce290628bc4533a804bdff92d6734` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/instance--3b3fbc057e92ae62cdd7a86f.md) | 253 | `declaration-track:3b3fbc057e92ae62cdd7a86fdbc0a61f667cbee213730470784745b1414591cc` |
| 30 | `def` | [localizedQuotientEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/localizedquotientequiv--523b4dd6433d90aa41a0338c.md) | 258 | `declaration-track:523b4dd6433d90aa41a0338ccbd21adc453ef84acd97e4698853d8ab88164f80` |
| 31 | `lemma` | [ker_localizedMap_eq_localized₀_ker](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/ker-localizedmap-eq-localized-ker--c531c1f28ff46172d140e8bd.md) | 274 | `result-track:c531c1f28ff46172d140e8bdd7e97529bbab0d71c48b59b555d9286923a34725` |
| 32 | `lemma` | [localized'_ker_eq_ker_localizedMap](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/localized-ker-eq-ker-localizedmap--ab80ccb2e1c6b636221daf5e.md) | 286 | `result-track:ab80ccb2e1c6b636221daf5ec3748e11ced316b2878adccfffc8fce5e8c5bf18` |
| 33 | `lemma` | [ker_localizedMap_eq_localized'_ker](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/ker-localizedmap-eq-localized-ker--9d6228adc520b917314586f4.md) | 290 | `result-track:9d6228adc520b917314586f47e3042b18dbef511a6cc1bfeca51702629503adb` |
| 34 | `def` | [toKerIsLocalized](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/tokerislocalized--9347b7a79e8657328e7423f8.md) | 301 | `declaration-track:9347b7a79e8657328e7423f89f30d18430522cadf7146165aaae15b24ecf31bb` |
| 35 | `lemma` | [toKerLocalized_isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/tokerlocalized-islocalizedmodule--1ecd0876be00aff2174d52d0.md) | 308 | `result-track:1ecd0876be00aff2174d52d08eff7ba2572f96bd59830a08af7100a9ccd4cd6c` |
| 36 | `lemma` | [range_localizedMap_eq_localized₀_range](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/range-localizedmap-eq-localized-range--0b45454a9a8c66e6c01314a4.md) | 315 | `result-track:0b45454a9a8c66e6c01314a400f1be02b575cae84b2acf114871864697c73434` |
| 37 | `lemma` | [localized'_range_eq_range_localizedMap](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantf7b642030e48102dedd97400581f31c28cf60e938f532809837941f80e9a7252.lean/declarations/localized-range-eq-range-localizedmap--3f91c457e776ce57fe717ba5.md) | 320 | `result-track:3f91c457e776ce57fe717ba57da33f8e585efbde303c143583d8bcb4c2f4ed4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
