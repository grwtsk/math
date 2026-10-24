# Verification target: GRWTSK.Algebra.AdicValuation.Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01459b30636367b86f6fa08480022ecb9ff9f71f",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/index.md) · [Full source](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01459b30636367b86f6fa08480022ecb9ff9f71f`.

Source path: `GRWTSK/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.ExtendToLocalization` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.ValuationSubring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ValuedField` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.TypeTags` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [intValuationDef](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/intvaluationdef--9521613c584f36c2ebacdaa5.md) | 86 | `declaration-track:9521613c584f36c2ebacdaa5ee82a676863da5c1051c8e91ff91f8b525475267` |
| 2 | `theorem` | [intValuationDef_if_pos](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/intvaluationdef-if-pos--51d47d7e98c98d53a2af6ffd.md) | 93 | `result-track:51d47d7e98c98d53a2af6ffd05d4ba40ed03ff52a00e788a79cadf84f7b07296` |
| 3 | `theorem` | [intValuationDef_if_neg](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/intvaluationdef-if-neg--a1f7fbf3026d86b25cfe20f2.md) | 97 | `result-track:a1f7fbf3026d86b25cfe20f27332ab740221d9c94c1a0e5b959ae597c8c56031` |
| 4 | `theorem` | [int_valuation_ne_zero](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/int-valuation-ne-zero--e761ea8c50140b712ba00758.md) | 105 | `result-track:e761ea8c50140b712ba00758be9925a3e1ad8b5653c50f383d005958ee1d01d3` |
| 5 | `theorem` | [int_valuation_ne_zero'](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/int-valuation-ne-zero--f6a7919e427cb8f0b26f4794.md) | 111 | `result-track:f6a7919e427cb8f0b26f47945ff1ab4e29a43cd54d3da2e16ffb615cd03d4375` |
| 6 | `theorem` | [int_valuation_zero_le](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/int-valuation-zero-le--f347d771aa151ff8ad1e13d7.md) | 116 | `result-track:f347d771aa151ff8ad1e13d7359c61a79c7832516d650d6c18ac3b88886b8124` |
| 7 | `theorem` | [int_valuation_le_one](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/int-valuation-le-one--29513940dbfea77dddfe280e.md) | 122 | `result-track:29513940dbfea77dddfe280e1c158155917d92cb4234f82431f723cf6b7e295a` |
| 8 | `theorem` | [int_valuation_lt_one_iff_dvd](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/int-valuation-lt-one-iff-dvd--d8853bdbecb77325520feb61.md) | 132 | `result-track:d8853bdbecb77325520feb612050e0af776b5ad7c24e2b288bda1e1338584a16` |
| 9 | `theorem` | [int_valuation_le_pow_iff_dvd](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/int-valuation-le-pow-iff-dvd--40a145ba0cd0fd4d73f67c05.md) | 147 | `result-track:40a145ba0cd0fd4d73f67c05e90f3165f74f9c21e86d7e61fb03d31a9c743dd8` |
| 10 | `theorem` | [IntValuation.map_zero'](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/intvaluation-map-zero--38a34a313c4bb22646469480.md) | 159 | `result-track:38a34a313c4bb22646469480601ff75236c0b44880c1bfa49d24601c48b47a15` |
| 11 | `theorem` | [IntValuation.map_one'](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/intvaluation-map-one--d74858466de15c041afa79af.md) | 164 | `result-track:d74858466de15c041afa79afc17b50e58993bd6b9f0da83fbc1ca3e0d161f777` |
| 12 | `theorem` | [IntValuation.map_mul'](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/intvaluation-map-mul--e3a12cbfba066eca5008ddee.md) | 172 | `result-track:e3a12cbfba066eca5008ddee99cde7b6dc03d83658b42d734629e6c2fba387a6` |
| 13 | `theorem` | [IntValuation.le_max_iff_min_le](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/intvaluation-le-max-iff-min-le--0627088ff9c3bf35cbcad177.md) | 186 | `result-track:0627088ff9c3bf35cbcad177f403b223190ecd06ca418258a0bbbba607a5bc68` |
| 14 | `theorem` | [IntValuation.map_add_le_max'](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/intvaluation-map-add-le-max--bc24728bd72872d61b885b84.md) | 195 | `result-track:bc24728bd72872d61b885b843826cb997bca91c9dcc2e9e0bd95e5cad4e89d0c` |
| 15 | `def` | [intValuation](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/intvaluation--9acb5f32a824252d5d6a9d0d.md) | 231 | `declaration-track:9acb5f32a824252d5d6a9d0daf2994cbed4e80360cbd31f9bfa490e3d0971386` |
| 16 | `theorem` | [int_valuation_exists_uniformizer](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/int-valuation-exists-uniformizer--60cf89664c0f9239f10acb11.md) | 240 | `result-track:60cf89664c0f9239f10acb11f1da8d9b84adfe1049c83d4864a6336f335f7cec` |
| 17 | `def` | [valuation](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/valuation--3df4d13050eb1c62e25210e5.md) | 269 | `declaration-track:3df4d13050eb1c62e25210e576d9d5a9c685d85d22f9743d443939344748271d` |
| 18 | `theorem` | [valuation_def](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/valuation-def--145ff9b432d6978984061dec.md) | 274 | `result-track:145ff9b432d6978984061decb75b0208e90fc789344225e3611f9f33a6d36333` |
| 19 | `theorem` | [valuation_of_mk'](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/valuation-of-mk--8fe7c900b35361d66a8dd145.md) | 282 | `result-track:8fe7c900b35361d66a8dd145a805efe45c85afe3effb21c764c1f5067d28aa4d` |
| 20 | `theorem` | [valuation_of_algebraMap](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/valuation-of-algebramap--595868a0c6db953535f79c8e.md) | 292 | `result-track:595868a0c6db953535f79c8e8e02c8d5fa2710c2a04c31a74bd186e5a15907ed` |
| 21 | `theorem` | [valuation_le_one](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/valuation-le-one--2ada36d08f1918e808921cbd.md) | 297 | `result-track:2ada36d08f1918e808921cbd222956a24c882fc87873f06a81242a0ad9193d3e` |
| 22 | `theorem` | [valuation_lt_one_iff_dvd](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/valuation-lt-one-iff-dvd--d5ed7691e7d494c97d484711.md) | 302 | `result-track:d5ed7691e7d494c97d4847116439e2a29f0c8c24cc8385c4c447df5f58c03ac8` |
| 23 | `theorem` | [valuation_exists_uniformizer](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/valuation-exists-uniformizer--d5451d2cf54943bb71b45dee.md) | 310 | `result-track:d5451d2cf54943bb71b45dee1e0c47416873e17a59b070d53274ec0211d2f2c7` |
| 24 | `theorem` | [valuation_uniformizer_ne_zero](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/valuation-uniformizer-ne-zero--812758eac9df9b413f0a603a.md) | 318 | `result-track:812758eac9df9b413f0a603a7e0c16f5fdd72c826d1d67dabf8d828208e66a5f` |
| 25 | `def` | [adicValued](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/adicvalued--6a328c78176a64f305f12894.md) | 333 | `declaration-track:6a328c78176a64f305f12894bfe47b8c9d3908f92ab37f87276d7fd0fd851363` |
| 26 | `theorem` | [adicValued_apply](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/adicvalued-apply--c6611c37627277c323e3e4dd.md) | 337 | `result-track:c6611c37627277c323e3e4dd284a6d95bbf247db36c5332567daa4035fe4f6b3` |
| 27 | `def` | [adicCompletion](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/adiccompletion--18a18f6e123c7f6a94b655c6.md) | 344 | `declaration-track:18a18f6e123c7f6a94b655c685586429aaa35824ef0f04560c0aea44cb5b5b9c` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/instance--95b6de4ace37e946d13cdc9f.md) | 348 | `declaration-track:95b6de4ace37e946d13cdc9fdeb022c02c8e85e9240421e2ecac425f5ba2c8ff` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/instance--ffb4cb31bbd7e55f249a6a6b.md) | 352 | `declaration-track:ffb4cb31bbd7e55f249a6a6be7c249a18c60de35241269a1ea4a466a53918fad` |
| 30 | `instance` | [valuedAdicCompletion](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/valuedadiccompletion--229844a22da79abdef722de6.md) | 355 | `declaration-track:229844a22da79abdef722de6d8911b4484583fbd2d85221cae4350fc4cb1fb0b` |
| 31 | `theorem` | [valuedAdicCompletion_def](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/valuedadiccompletion-def--ca88758ae1192359d277ef98.md) | 359 | `result-track:ca88758ae1192359d277ef983a60ab0f7827bc6f3d018165a25bda500aa294fd` |
| 32 | `instance` | [adicCompletion_completeSpace](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/adiccompletion-completespace--bd5ea2e2f03231fff4ec8e37.md) | 364 | `declaration-track:bd5ea2e2f03231fff4ec8e37bc6930f2b5ba5e125d16ff710e8115fdc01bd021` |
| 33 | `instance` | [AdicCompletion.instCoe](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/adiccompletion-instcoe--a0225ffbf8f17ceb8aa5a648.md) | 373 | `declaration-track:a0225ffbf8f17ceb8aa5a6482b31bec753246fc28bc56ab14bd57ec64d9a5704` |
| 34 | `def` | [adicCompletionIntegers](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/adiccompletionintegers--05204d05fc02d7803f3ae8f9.md) | 377 | `declaration-track:05204d05fc02d7803f3ae8f97f11aaa068f71bdf9890fce610587984c24c00bf` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/instance--606256e8d444ab84c2810eaa.md) | 381 | `declaration-track:606256e8d444ab84c2810eaa3b3401d5e0b96447ced31f427724cc9be8aefdcf` |
| 36 | `theorem` | [mem_adicCompletionIntegers](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/mem-adiccompletionintegers--5b8fca90f9087305439167b3.md) | 386 | `result-track:5b8fca90f9087305439167b356b50e47e530b2b7f5ef2027346d4f3d1d8ca626` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/instance--c69ab73e63f961914011cd37.md) | 393 | `declaration-track:c69ab73e63f961914011cd37d69a16377da1d39bb7493f7960c0e906e143937c` |
| 38 | `instance` | [adicValued.uniformContinuousConstSMul](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/adicvalued-uniformcontinuousconstsmul--45c4d929e0efb985e29c398d.md) | 398 | `declaration-track:45c4d929e0efb985e29c398d9e56fd897d22119c98f9286d6ebd89e0b8f6ef5c` |
| 39 | `instance` | [AdicCompletion.algebra'](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/adiccompletion-algebra--9ca58c3a8000e652518bc053.md) | 403 | `declaration-track:9ca58c3a8000e652518bc0537aa19955ee0eb22398d2202ba6ba3f8836f50d62` |
| 40 | `theorem` | [coe_smul_adicCompletion](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/coe-smul-adiccompletion--4105c075fff8f996fd68a82c.md) | 409 | `result-track:4105c075fff8f996fd68a82c878bc29bf1ace4fe7c916f62c8ad2d08d114d800` |
| 41 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/instance--a0362f05101fc0e94b65e6e4.md) | 414 | `declaration-track:a0362f05101fc0e94b65e6e4d407d5f46e6b04ef2cd1c20398b0c4899f9f2199` |
| 42 | `theorem` | [algebraMap_adicCompletion'](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/algebramap-adiccompletion--f327ac97da3bcb4c86ff5a8a.md) | 417 | `result-track:f327ac97da3bcb4c86ff5a8a3734a9a06257c1e9670eb52dfbfb37baf10ffdc1` |
| 43 | `theorem` | [algebraMap_adicCompletion](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/algebramap-adiccompletion--a7f1e915e272ab9c60823045.md) | 422 | `result-track:a7f1e915e272ab9c608230454ec5f70cfa3718c9c7c853736cfd768e8a5d8a2d` |
| 44 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/instance--d639c0d45d9d57ad7e8bfcdd.md) | 427 | `declaration-track:d639c0d45d9d57ad7e8bfcdda71f4d97e59e24419058215cf664843501845bf9` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/instance--8f04c3672bccad3c819aea5b.md) | 431 | `declaration-track:8f04c3672bccad3c819aea5b8c2d61dbabad701f87f47e81a4f1c6c45e382e32` |
| 46 | `theorem` | [coe_smul_adicCompletionIntegers](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/coe-smul-adiccompletionintegers--9cf3169cf6bb02b3dd812708.md) | 477 | `result-track:9cf3169cf6bb02b3dd812708d3012604a420e8963362679ecd58a04e793dd983` |
| 47 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/instance--4d7a6b22817aa2a32848846c.md) | 482 | `declaration-track:4d7a6b22817aa2a32848846c52ea31bd328f472f56ebbd2749408fd0fc3595b4` |
| 48 | `instance` | [AdicCompletion.instIsScalarTower'](../../../../mathematics/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/declarations/adiccompletion-instisscalartower--45af8e27256b7b420021b791.md) | 491 | `declaration-track:45af8e27256b7b420021b7918c4f4129344582c64d22b263d565f59c1f2cb1cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
