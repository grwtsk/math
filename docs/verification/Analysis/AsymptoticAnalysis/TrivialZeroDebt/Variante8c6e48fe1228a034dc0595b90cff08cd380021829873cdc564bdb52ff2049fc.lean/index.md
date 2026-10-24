# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.TrivialZeroDebt.Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8d162f2f45f4d685ddf2540ae206f285e0e21dc",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8d162f2f45f4d685ddf2540ae206f285e0e21dc`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.NatInt` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trivialZeroPoint](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/trivialzeropoint--2acf0584807435f164cca66c.md) | 41 | `declaration-track:2acf0584807435f164cca66cb326f9067014be57accc537f469d498d1218c0e9` |
| 2 | `theorem` | [trivialZeroPoint_is_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/trivialzeropoint-is-zero--a0d12475da8783029e1cea97.md) | 44 | `result-track:a0d12475da8783029e1cea9706109712e871f8678d83ca955a2d41dce3a57cce` |
| 3 | `theorem` | [trivialZeroPoint_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/trivialzeropoint-re--7b659235eaec50945a164996.md) | 48 | `result-track:7b659235eaec50945a1649962f3885ab912594fb2af345117c40f168f47a16bd` |
| 4 | `theorem` | [trivialZeroPoint_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/trivialzeropoint-im--04860844f717b3f449b957fd.md) | 53 | `result-track:04860844f717b3f449b957fdbadcaa86a206285d30ca9505aa9991df49d82740` |
| 5 | `theorem` | [zeta_zero_not_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/zeta-zero-not-zero--d8e1d7b94685ae520e022f2e.md) | 57 | `result-track:d8e1d7b94685ae520e022f2e826eedfe7fba823514aeafbe16c12d73ea2491c5` |
| 6 | `def` | [trivialDistance](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/trivialdistance--9bac7cb7e9e5bbff8aa1dc43.md) | 62 | `declaration-track:9bac7cb7e9e5bbff8aa1dc434ec7622e38504a78957f460978a94ed8007de6b7` |
| 7 | `theorem` | [trivialDistance_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/trivialdistance-eq--9c6a8918dc6c21c018c53465.md) | 65 | `result-track:9c6a8918dc6c21c018c5346568e93371a88533e445ae6a7c1578599952133164` |
| 8 | `theorem` | [trivialDistance_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/trivialdistance-pos--b782dc18448d0de1f38b193a.md) | 70 | `result-track:b782dc18448d0de1f38b193a0b5a897f582604bad135b00fb6b2a677658e77a7` |
| 9 | `def` | [trivialContribution](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/trivialcontribution--7b668b29e0d346f2153c5c7b.md) | 75 | `declaration-track:7b668b29e0d346f2153c5c7bd0f660d8ef82434d5f1ffc90e3766d87123dfe0a` |
| 10 | `def` | [zeroEndpoint](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/zeroendpoint--0e875781f44012e0d88ea366.md) | 79 | `declaration-track:0e875781f44012e0d88ea366311957c08c85a366598cd56634cc8c641af1e9b8` |
| 11 | `theorem` | [kernel_zeroEndpoint](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/kernel-zeroendpoint--5ccdc2f023f57a4d5ea900d6.md) | 82 | `result-track:5ccdc2f023f57a4d5ea900d653ad452fee7b9ab520aeb920db33f9f0af09f50d` |
| 12 | `theorem` | [trivialContribution_eq_kernel](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/trivialcontribution-eq-kernel--2863c7a3d94416c37ccc6c15.md) | 90 | `result-track:2863c7a3d94416c37ccc6c15bfc180ba6ba755866870df4e5166dbae7b915557` |
| 13 | `theorem` | [trivialContribution_nonnegative](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/trivialcontribution-nonnegative--70955e94de73e4908db547e7.md) | 103 | `result-track:70955e94de73e4908db547e71079d5773c64ec95ac5f88b058c441f933be0537` |
| 14 | `theorem` | [trivialContribution_positive](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/trivialcontribution-positive--619c5122f0cc05e0ba5fd202.md) | 109 | `result-track:619c5122f0cc05e0ba5fd2028685d09ca1ae1317ba2f82786a16817a2f694fd5` |
| 15 | `theorem` | [trivialContribution_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/trivialcontribution-zero--366ea2f47e02ea53268721c9.md) | 116 | `result-track:366ea2f47e02ea53268721c9d0efaea54d20369060036b8c98da9b8dc80ff8bc` |
| 16 | `theorem` | [zeroEndpoint_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/zeroendpoint-zero--5a5ce556ae61696c28431cdc.md) | 120 | `result-track:5a5ce556ae61696c28431cdc2f505019e4cacecb2ce340623c08bb1b0d4ad385` |
| 17 | `theorem` | [trivialContribution_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/trivialcontribution-neg--4069d8ee4750e529250ea366.md) | 123 | `result-track:4069d8ee4750e529250ea366787be3641162867e3f23f37f5b54952a1f82fb8f` |
| 18 | `theorem` | [hasSum_trivialContribution](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/hassum-trivialcontribution--66d8612239cb6ce85fad48a4.md) | 128 | `result-track:66d8612239cb6ce85fad48a458ab9a83c1661599422e4ed9304b66742fab8a42` |
| 19 | `theorem` | [trivialContribution_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/trivialcontribution-summable--26a19dceb5f2fc36fef0b8ba.md) | 139 | `result-track:26a19dceb5f2fc36fef0b8ba7e842d8c36c9ccaa339024b32c7012c29c52c4b9` |
| 20 | `theorem` | [archimedean_eq_endpoint_add_trivial](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/archimedean-eq-endpoint-add-trivial--7013ed3a349a869888fe061d.md) | 143 | `result-track:7013ed3a349a869888fe061d433de9eeb6d836db83cb75f7d5853a6f86d369db` |
| 21 | `theorem` | [source_minus_endpoint_nonnegative](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/source-minus-endpoint-nonnegative--439133ea51fcd59d28a8868d.md) | 150 | `result-track:439133ea51fcd59d28a8868dc268a263575a09b2b0c0309e2c5ad4459cf52fc2` |
| 22 | `theorem` | [source_minus_endpoint_positive](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/source-minus-endpoint-positive--ba0614cd2ab4d203c7f6547c.md) | 156 | `result-track:ba0614cd2ab4d203c7f6547cc7eace34634a85ea75b85393590f71e38d8139e5` |
| 23 | `theorem` | [source_prefix_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/source-prefix-tail--deb779b0a363ffe17d5797e5.md) | 166 | `result-track:deb779b0a363ffe17d5797e55586d9bdc202cc5be85ac39ea2e59649c6914bef` |
| 24 | `theorem` | [trivialContribution_tail_bounds](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/trivialcontribution-tail-bounds--23a14bc65857fb54a91de129.md) | 175 | `result-track:23a14bc65857fb54a91de129f2616438200e001ceb02bbf6b843f810fc3e5f91` |
| 25 | `theorem` | [trivialContribution_tail_distance_bounds](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variante8c6e48fe1228a034dc0595b90cff08cd380021829873cdc564bdb52ff2049fc.lean/declarations/trivialcontribution-tail-distance-bounds--997eca8faf55c637a73703fc.md) | 193 | `result-track:997eca8faf55c637a73703fcc3719ca829e62a011555642a69efee0bfee6576d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
