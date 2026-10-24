# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Challenge.Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fd6da2ac9259462416359c309249c302cc4a6a8",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fd6da2ac9259462416359c309249c302cc4a6a8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 34; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsNontrivialZero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/isnontrivialzero--6c8f867f773f577a0e398f91.md) | 62 | `declaration-track:6c8f867f773f577a0e398f91f042915810d026ed7f3c11274f2d61fc2082b0f8` |
| 2 | `def` | [zeroMult](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/zeromult--c2b8a843b3cc43e400c87d1e.md) | 67 | `declaration-track:c2b8a843b3cc43e400c87d1e1ba1e7638f39dc4563aa8cdf43c017b19e86f65e` |
| 3 | `def` | [zerosIn](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/zerosin--31e67dabf61c1127e694f90a.md) | 71 | `declaration-track:31e67dabf61c1127e694f90aa55c08fb6e0b7d65be3923c10f503eed9fa7dad2` |
| 4 | `def` | [Ncount](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/ncount--283ae9f50721bdbf5d1fb734.md) | 76 | `declaration-track:283ae9f50721bdbf5d1fb7342a2cc29ef0b410ccf85e04f59c235d7108de2694` |
| 5 | `def` | [Ndist](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/ndist--00e06dc81549e400fe379b32.md) | 80 | `declaration-track:00e06dc81549e400fe379b3268a8d3db67a3fd7d3dc1ebf88a929b75391473fe` |
| 6 | `def` | [N0star](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/n0star--b7bb3ffb0d85e6960dd99935.md) | 84 | `declaration-track:b7bb3ffb0d85e6960dd999359b4d77597ba47a76a5ee74590672054a359c5e4f` |
| 7 | `def` | [N0simple](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/n0simple--d40e981b7c0f82ec03287d6c.md) | 88 | `declaration-track:d40e981b7c0f82ec03287d6cabba05c45f8a657149ba79f10a2ccae0724532c7` |
| 8 | `def` | [IsNontrivialZeroL](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/isnontrivialzerol--9c6c39e8e74276d338c842fd.md) | 100 | `declaration-track:9c6c39e8e74276d338c842fd8557c30a2783f48812eb61cc0954d00a76f8526a` |
| 9 | `def` | [zeroMultL](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/zeromultl--d5186183cceba87c7b9b3cff.md) | 103 | `declaration-track:d5186183cceba87c7b9b3cffd655fc6913f6c1fe3317cd2cc27723204b23225b` |
| 10 | `def` | [zerosInL](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/zerosinl--520a7b782b5c8604cfba7d16.md) | 106 | `declaration-track:520a7b782b5c8604cfba7d165138d11691bf5c64202eda3f38c1a03b40c657a3` |
| 11 | `def` | [NcountL](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/ncountl--a206ca0fbd8f3d35b3c19ee7.md) | 109 | `declaration-track:a206ca0fbd8f3d35b3c19ee7fb008b7ad75cd58bd0a240b4cc3ce7dac5a7ba5e` |
| 12 | `def` | [NdistL](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/ndistl--ce74352d5dd64c47b046390b.md) | 111 | `declaration-track:ce74352d5dd64c47b046390be32c0e8df14377e7dc185eddfe7cd61874dbd9f6` |
| 13 | `def` | [N0starL](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/n0starl--e371dabd9b9039c6240d9271.md) | 113 | `declaration-track:e371dabd9b9039c6240d9271946ee5911e052f6ab36d86417d01f95d2bb09244` |
| 14 | `def` | [N0simpleL](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/n0simplel--891b1bfbfb840f1e897cb3be.md) | 115 | `declaration-track:891b1bfbfb840f1e897cb3be7e670c73f53c0e8ccd742d064f9cf543f615990a` |
| 15 | `def` | [cMT](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/cmt--77faeb5cf5406467445b01c0.md) | 127 | `declaration-track:77faeb5cf5406467445b01c074e3f3ffb22267c26f62e6d71d375245d82a3106` |
| 16 | `theorem` | [two_thirds_on_critical_line](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/two-thirds-on-critical-line--21b54eed6d5036742b4a583e.md) | 139 | `result-track:21b54eed6d5036742b4a583e9119a418f1480b4f9cb01d2747647c6db035cc79` |
| 17 | `theorem` | [two_thirds_on_critical_line_cumulative](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/two-thirds-on-critical-line-cumulative--e8adec3ff535c4ae89bc3ecb.md) | 144 | `result-track:e8adec3ff535c4ae89bc3ecbd878854e6c0512a4cc479eac5cd681bf049605d0` |
| 18 | `theorem` | [two_thirds_simple_on_critical_line](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/two-thirds-simple-on-critical-line--d11625f20fa53286730b3e97.md) | 150 | `result-track:d11625f20fa53286730b3e97df0c82f40e325dc3229c32f6983ce0c73a900eac` |
| 19 | `theorem` | [two_thirds_simple_on_critical_line_cumulative](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/two-thirds-simple-on-critical-line-cumulative--6a687ab25b91b9b26345e378.md) | 155 | `result-track:6a687ab25b91b9b26345e3781c3de62980ef34595806712672a7432f4c31e64c` |
| 20 | `theorem` | [five_sixths_distinct](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/five-sixths-distinct--34f4ad865de9c6bf1c080d71.md) | 160 | `result-track:34f4ad865de9c6bf1c080d7108e3dfacaef6885b2257d5718baed8e2290690cd` |
| 21 | `theorem` | [five_sixths_distinct_cumulative](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/five-sixths-distinct-cumulative--b31b1fbe80003d821049df59.md) | 165 | `result-track:b31b1fbe80003d821049df59fec09409b515eb72edbbf1bf8c30438fdbddb9f3` |
| 22 | `theorem` | [montgomery_taylor_on_critical_line](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/montgomery-taylor-on-critical-line--98e68a2c8893f47de4837c83.md) | 171 | `result-track:98e68a2c8893f47de4837c83e560c26baf9bd7bfaed16c4e9675d92554f72747` |
| 23 | `theorem` | [montgomery_taylor_simple_on_critical_line_mult](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/montgomery-taylor-simple-on-critical-line-mult--6f9d7712635ddb668e30d840.md) | 177 | `result-track:6f9d7712635ddb668e30d840eb3a75961009f5b5365ac1946287dfd3d3ef0ad2` |
| 24 | `theorem` | [montgomery_taylor_simple_on_critical_line_mult_cumulative](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/montgomery-taylor-simple-on-critical-line-mult-cumulative--9c36269ec31bab4b480e0290.md) | 182 | `result-track:9c36269ec31bab4b480e02905eaff24f77d3202a7067ec232d672db7abcb3152` |
| 25 | `theorem` | [montgomery_taylor_distinct_mult](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/montgomery-taylor-distinct-mult--4d6bd643a61bd9a7aa0612c3.md) | 187 | `result-track:4d6bd643a61bd9a7aa0612c37d345864c1adb79abc9044225ab58451f0e5988a` |
| 26 | `theorem` | [montgomery_taylor_distinct_mult_cumulative](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/montgomery-taylor-distinct-mult-cumulative--938f2fef9b244c1d626a209d.md) | 192 | `result-track:938f2fef9b244c1d626a209d12fc9ffefcb2ca1f34056820ad09eb8eb274fbb4` |
| 27 | `theorem` | [dirichlet_two_thirds_on_critical_line](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/dirichlet-two-thirds-on-critical-line--4ad4ae014c14a1b7896d57ca.md) | 199 | `result-track:4ad4ae014c14a1b7896d57cab659c60e944a67cef3cbe92219ea03536b0948c5` |
| 28 | `theorem` | [dirichlet_two_thirds_simple_on_critical_line](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/dirichlet-two-thirds-simple-on-critical-line--bd7cca8c013ab349193133f5.md) | 206 | `result-track:bd7cca8c013ab349193133f5dca4fd0de50bea1cea22fca33d59adc5768ed015` |
| 29 | `theorem` | [dirichlet_five_sixths_distinct](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/dirichlet-five-sixths-distinct--c6408178d162e6b6c3b5ad64.md) | 213 | `result-track:c6408178d162e6b6c3b5ad6418b7c4ce283c48fcbb4dbc20cee7de30cdd855f8` |
| 30 | `theorem` | [dirichlet_montgomery_taylor_on_critical_line](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/dirichlet-montgomery-taylor-on-critical-line--1a512c685b3de71e58217358.md) | 220 | `result-track:1a512c685b3de71e58217358e7c4142579467a364172732b0dbf55fa108863aa` |
| 31 | `theorem` | [dirichlet_montgomery_taylor_simple_on_critical_line_mult](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/dirichlet-montgomery-taylor-simple-on-critical-line-mult--826e6135a73549a9389d004e.md) | 227 | `result-track:826e6135a73549a9389d004eeefd08a9e0db4621ba4bc08db73dc43df7950a72` |
| 32 | `theorem` | [dirichlet_montgomery_taylor_distinct_mult](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Challenge/Variant460fb9b1dce8fff3b1cee0bb41833acefb683dd80bb3101c2d270ebb662f69f8.lean/declarations/dirichlet-montgomery-taylor-distinct-mult--6c9382d646f40ee76fa8e235.md) | 234 | `result-track:6c9382d646f40ee76fa8e2353220c2be28c999bc2c83618cf3b67fa4919898db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
