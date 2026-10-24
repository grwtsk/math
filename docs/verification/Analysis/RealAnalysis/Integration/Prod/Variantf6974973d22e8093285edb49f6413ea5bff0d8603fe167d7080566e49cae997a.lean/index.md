# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Prod.Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd78c7165354e00666fc352844c3fa6e4353d209",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd78c7165354e00666fc352844c3fa6e4353d209`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Prod` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurableSet_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/measurableset-integrable--006c5622684779bbde8d06cb.md) | 67 | `result-track:006c5622684779bbde8d06cb409c80e602d2f9606af9f2c7c1b14e084313c067` |
| 2 | `theorem` | [MeasureTheory.StronglyMeasurable.integral_prod_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/measuretheory-stronglymeasurable-integral-prod-right--10ad31e851ea2b573ee52de3.md) | 79 | `result-track:10ad31e851ea2b573ee52de30010ac340570fa87eecd603dc01c39986b7bea53` |
| 3 | `theorem` | [MeasureTheory.StronglyMeasurable.integral_prod_right'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/measuretheory-stronglymeasurable-integral-prod-right--2678fe1616bda65eed5804ea.md) | 127 | `result-track:2678fe1616bda65eed5804ea963aedc46137bb72e5248810f80ab0403b576d37` |
| 4 | `theorem` | [MeasureTheory.StronglyMeasurable.integral_prod_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/measuretheory-stronglymeasurable-integral-prod-left--f8d34336abbd3352f2793f81.md) | 134 | `result-track:f8d34336abbd3352f2793f815040581781cc6d34a36fd150340a156103e95a22` |
| 5 | `theorem` | [MeasureTheory.StronglyMeasurable.integral_prod_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/measuretheory-stronglymeasurable-integral-prod-left--b2f24b29a84cd9fe5d5bf8c8.md) | 140 | `result-track:b2f24b29a84cd9fe5d5bf8c817ccb61001017eba6fb7633a1bd402babdc01047` |
| 6 | `theorem` | [integrable_measure_prodMk_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integrable-measure-prodmk-left--076a1b0cf5d8267e8509e4e1.md) | 155 | `result-track:076a1b0cf5d8267e8509e4e140346762ee72efaa04374aa9b22cb7b3e777adf6` |
| 7 | `theorem` | [MeasureTheory.AEStronglyMeasurable.prod_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/measuretheory-aestronglymeasurable-prod-swap--eb13024accffc739ab65b6bf.md) | 179 | `result-track:eb13024accffc739ab65b6bf0eaaf69c44f3cf508d8f607c68597eacedb8e4fc` |
| 8 | `theorem` | [MeasureTheory.AEStronglyMeasurable.comp_fst](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/measuretheory-aestronglymeasurable-comp-fst--b01405513c3e9aaf7c3b0274.md) | 185 | `result-track:b01405513c3e9aaf7c3b0274bdd6b798b2acf2f9e6e10bd22f81ead41ffcb005` |
| 9 | `theorem` | [MeasureTheory.AEStronglyMeasurable.comp_snd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/measuretheory-aestronglymeasurable-comp-snd--27999eabb8a7a5480fffb148.md) | 189 | `result-track:27999eabb8a7a5480fffb148cb1ce40ac8e5fa83efb8038b2997f3f02fc06fba` |
| 10 | `theorem` | [MeasureTheory.AEStronglyMeasurable.integral_prod_right'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/measuretheory-aestronglymeasurable-integral-prod-right--390f5cac912ba7ba9e70deee.md) | 195 | `result-track:390f5cac912ba7ba9e70deee660738173dee0929baca22f23af9eef0647ee33b` |
| 11 | `theorem` | [MeasureTheory.AEStronglyMeasurable.prodMk_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/measuretheory-aestronglymeasurable-prodmk-left--dd2df20f2dc78e439b1a01ff.md) | 201 | `result-track:dd2df20f2dc78e439b1a01ff513cb39074af653d30e5a38a475327df6db6d810` |
| 12 | `theorem` | [integrable_swap_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integrable-swap-iff--7a47a68d38d6c229973466e0.md) | 222 | `result-track:7a47a68d38d6c229973466e04b183baf32137a4f040830bd19c7fc5b6271940a` |
| 13 | `theorem` | [Integrable.swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integrable-swap--18eb3606f025728d2692be6d.md) | 226 | `result-track:18eb3606f025728d2692be6d075eb6c02e29bf286d2ffba1a6fad48345702fb1` |
| 14 | `theorem` | [hasFiniteIntegral_prod_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/hasfiniteintegral-prod-iff--d103a1b9f8a1ce46ba5f5089.md) | 230 | `result-track:d103a1b9f8a1ce46ba5f50895fb4a091b54866774675766458808b5485f2d170` |
| 15 | `theorem` | [hasFiniteIntegral_prod_iff'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/hasfiniteintegral-prod-iff--ceb63c0dc54bfc1307eca55a.md) | 248 | `result-track:ceb63c0dc54bfc1307eca55a7586cfaac58966edb9c72a9d2160bc863cf65b0e` |
| 16 | `theorem` | [integrable_prod_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integrable-prod-iff--05dd0e1be59079181ffb21b8.md) | 265 | `result-track:05dd0e1be59079181ffb21b8c7f3d01f10d739a1e1e1c4bf82d24e15908fcd88` |
| 17 | `theorem` | [integrable_prod_iff'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integrable-prod-iff--27674507c0f1be2be26929b3.md) | 273 | `result-track:27674507c0f1be2be26929b30d54b139b3afec55ca332eea0218e9834dda0bbd` |
| 18 | `theorem` | [Integrable.prod_left_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integrable-prod-left-ae--a1684f7757c6434b347b2167.md) | 280 | `result-track:a1684f7757c6434b347b21676555db42142b25dd4f625fff0a72cbd18925b05a` |
| 19 | `theorem` | [Integrable.prod_right_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integrable-prod-right-ae--d1f5c28e5140ee663f902ddd.md) | 284 | `result-track:d1f5c28e5140ee663f902dddbb10e8f05e5e29bfe64f7c4f2978793085696907` |
| 20 | `theorem` | [Integrable.integral_norm_prod_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integrable-integral-norm-prod-left--45d9843a64ae963c44b0d563.md) | 288 | `result-track:45d9843a64ae963c44b0d563c2c580979d0b5745c1529ff4805fb508226a3402` |
| 21 | `theorem` | [Integrable.integral_norm_prod_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integrable-integral-norm-prod-right--d3b0e5e7ddb7c6bd2ba6e9c4.md) | 292 | `result-track:d3b0e5e7ddb7c6bd2ba6e9c4f12c1b910ff6dbc65204dc3831f6ffb17b7ef0e7` |
| 22 | `theorem` | [Integrable.op_fst_snd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integrable-op-fst-snd--984217fbf5d66e0e56898c99.md) | 297 | `result-track:984217fbf5d66e0e56898c992f48279db513dc3c5093b579d317e9172f11a09d` |
| 23 | `theorem` | [Integrable.smul_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integrable-smul-prod--cda2fd3bf2a12a948ad7acd3.md) | 317 | `result-track:cda2fd3bf2a12a948ad7acd34b1a41af45f74ddffc625f546765b57b642e69bd` |
| 24 | `theorem` | [Integrable.mul_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integrable-mul-prod--69fff65c7fdfc1fbdce1e36c.md) | 326 | `result-track:69fff65c7fdfc1fbdce1e36cac2d10d4d624ea5df20f4339f1212510b41a00de` |
| 25 | `theorem` | [IntegrableOn.swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integrableon-swap--011651d258f869b3ec460acb.md) | 333 | `result-track:011651d258f869b3ec460acb25be4724ada238ce2f6b79eb0e2d162e0f48659d` |
| 26 | `theorem` | [Integrable.integral_prod_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integrable-integral-prod-left--5a4bc010e8de1980532a89a0.md) | 343 | `result-track:5a4bc010e8de1980532a89a0805be60cba7e782b94a4e385081416d0b65305d2` |
| 27 | `theorem` | [Integrable.integral_prod_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integrable-integral-prod-right--05344cb3ddd8cfde1ad263fb.md) | 352 | `result-track:05344cb3ddd8cfde1ad263fb467339ee82cab2feae3b537de28a73d7af9906d7` |
| 28 | `theorem` | [integral_prod_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integral-prod-swap--2e83630bec3836e873041918.md) | 360 | `result-track:2e83630bec3836e8730419188952ef7c1a8294f3f3a609ed6d1bfdb2b3f63fb9` |
| 29 | `theorem` | [setIntegral_prod_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/setintegral-prod-swap--28c31ff79b442705c9dea612.md) | 364 | `result-track:28c31ff79b442705c9dea612e3d76aa838d7083f756a251541a9008e7d3346e7` |
| 30 | `theorem` | [integral_fn_integral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integral-fn-integral-add--453e174e31e9fae293a10ae6.md) | 375 | `result-track:453e174e31e9fae293a10ae63d5dee1ccdc66316535dcbd515d088eb190e578f` |
| 31 | `theorem` | [integral_fn_integral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integral-fn-integral-sub--238d4850be22b865ccfcfd78.md) | 385 | `result-track:238d4850be22b865ccfcfd780d541543d76acda1f2a90778b45516edcd80af0f` |
| 32 | `theorem` | [lintegral_fn_integral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/lintegral-fn-integral-sub--fd869591f85088f48dab3625.md) | 395 | `result-track:fd869591f85088f48dab3625f703603c912743ff6b4b999f22b39aa39ec1857d` |
| 33 | `theorem` | [integral_integral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integral-integral-add--3aa77b4986d1c3a1e971d5d9.md) | 404 | `result-track:3aa77b4986d1c3a1e971d5d90fbb06122e9a289b7880139be83df58e859432cd` |
| 34 | `theorem` | [integral_integral_add'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integral-integral-add--d8172b463e5336e089522bd8.md) | 412 | `result-track:d8172b463e5336e089522bd8dfed283df039c8568ac19434a3504a88022a6ac4` |
| 35 | `theorem` | [integral_integral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integral-integral-sub--c9e76f0fbed1d45394d80a39.md) | 418 | `result-track:c9e76f0fbed1d45394d80a3937e6e1bb18d2f750a78e2c4092d9d1b68ef5dcf0` |
| 36 | `theorem` | [integral_integral_sub'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integral-integral-sub--82d0fd60491b127ac3d278a7.md) | 426 | `result-track:82d0fd60491b127ac3d278a7ef486711d49535816c883f40504420e183d8ea53` |
| 37 | `theorem` | [continuous_integral_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/continuous-integral-integral--7c7f0589b74969058005c33c.md) | 432 | `result-track:7c7f0589b74969058005c33cec89ab3fcadfe27480799d6b14ecba15d4103ebb` |
| 38 | `theorem` | [integral_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integral-prod--6db85f2932309de815c25d49.md) | 457 | `result-track:6db85f2932309de815c25d494f85e3483dc1726e1a8835c463406d8b92e7b0b7` |
| 39 | `theorem` | [integral_prod_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integral-prod-symm--60be5b9f3b7fd91e68647ac1.md) | 480 | `result-track:60be5b9f3b7fd91e68647ac18df2af05255bf7f250f0b4e21b280e86ebc5918f` |
| 40 | `theorem` | [integral_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integral-integral--f2ba97432a8e8be579778740.md) | 485 | `result-track:f2ba97432a8e8be579778740a16b6be620d7845f70f27053883f96dae72dced2` |
| 41 | `theorem` | [integral_integral_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integral-integral-symm--6a44bd2a4a1f358f2493b0b9.md) | 490 | `result-track:6a44bd2a4a1f358f2493b0b9720ea483422eeea9b0a8f0be733f8f3bc33e38ce` |
| 42 | `theorem` | [integral_integral_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integral-integral-swap--1fe2774b840b0531347e5d41.md) | 495 | `result-track:1fe2774b840b0531347e5d41691eaa11ec3f61ffd4cef776a508ef92595c62f2` |
| 43 | `lemma` | [intervalIntegral_integral_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/intervalintegral-integral-swap--658866c894267a630fbbb2d5.md) | 500 | `result-track:658866c894267a630fbbb2d5c14298a50bf000a9c0ea6b59dbd0adfb41593a2c` |
| 44 | `theorem` | [setIntegral_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/setintegral-prod--d5950a2e101c45471b57ad56.md) | 512 | `result-track:d5950a2e101c45471b57ad56093b0c62b13685a0587ccf5f852724382cd6a107` |
| 45 | `theorem` | [integral_prod_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integral-prod-smul--829438e609da939d94e397ae.md) | 518 | `result-track:829438e609da939d94e397ae76faf548d7fbec5ffd978bf4c5e7973b381dca55` |
| 46 | `theorem` | [integral_prod_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integral-prod-mul--ab4dfdcf6db25c6734bb94fd.md) | 529 | `result-track:ab4dfdcf6db25c6734bb94fd804b61c73da792152f8f046f87b6f71873167b52` |
| 47 | `theorem` | [setIntegral_prod_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/setintegral-prod-mul--0c6969806f3f070c872b0cf7.md) | 533 | `result-track:0c6969806f3f070c872b0cf7354da59030c0cff9a0be014d11e9f7354e42f01c` |
| 48 | `theorem` | [integral_fun_snd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integral-fun-snd--0a5053fb412eaeb0b54bf92d.md) | 539 | `result-track:0a5053fb412eaeb0b54bf92db61fdc36902924f0db3550902cb61bf7199ca393` |
| 49 | `theorem` | [integral_fun_fst](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integral-fun-fst--838fa32bbda2f24ada847ac1.md) | 542 | `result-track:838fa32bbda2f24ada847ac17b604d2cc70c02bda44cf0ca485cba3b9d9d5971` |
| 50 | `lemma` | [integral_integral_swap_of_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Prod/Variantf6974973d22e8093285edb49f6413ea5bff0d8603fe167d7080566e49cae997a.lean/declarations/integral-integral-swap-of-hascompactsupport--caf80c5936c1aaa6bc1d3e32.md) | 555 | `result-track:caf80c5936c1aaa6bc1d3e3219d6c29b1d13259553090d9bccc4bd2d3ded037b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
