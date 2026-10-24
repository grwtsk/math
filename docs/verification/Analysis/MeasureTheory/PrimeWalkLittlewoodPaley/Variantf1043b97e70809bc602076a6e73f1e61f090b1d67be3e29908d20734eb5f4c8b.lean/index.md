# Verification target: GRWTSK.Analysis.MeasureTheory.PrimeWalkLittlewoodPaley.Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ca5e2e8966c33b5da92cb49ccae5655cc467054",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ca5e2e8966c33b5da92cb49ccae5655cc467054`.

Source path: `GRWTSK/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dyadicScale](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/dyadicscale--63a400c65e71efc988776bf5.md) | 62 | `declaration-track:63a400c65e71efc988776bf58de1c9aacf81d5c0a5b0972ccab7129565e49a0e` |
| 2 | `theorem` | [dyadicScale_pos](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/dyadicscale-pos--28ade18c313916f120b241c4.md) | 66 | `result-track:28ade18c313916f120b241c45a82d87568b2098dc8fe622e51d9e58eefb58f59` |
| 3 | `theorem` | [dyadicScale_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/dyadicscale-ne-zero--0c50afc797b880664c078b92.md) | 70 | `result-track:0c50afc797b880664c078b927ff8702639f5975233d9a0666f0ef1f9179e08ce` |
| 4 | `structure` | [DyadicConvolutionKernel](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/dyadicconvolutionkernel--3d580e740288b89c36ca7ac7.md) | 76 | `declaration-track:3d580e740288b89c36ca7ac79084e1422142b8ae6fa66b3bdb753a564775fc30` |
| 5 | `def` | [scaledKernel](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/scaledkernel--5b616ecf2869f7f3ccd7451c.md) | 87 | `declaration-track:5b616ecf2869f7f3ccd7451c0a12146de819c7a8a684f05b5f89bc6d743afc69` |
| 6 | `theorem` | [scaledKernel_integrable](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/scaledkernel-integrable--b85fc0af7b59aec862988d24.md) | 91 | `result-track:b85fc0af7b59aec862988d24c5618c018482743905b9fd75983c2d22e36e947d` |
| 7 | `theorem` | [scaledKernel_integral_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/scaledkernel-integral-eq-zero--f14f0f4c2d4040faeb633a5b.md) | 96 | `result-track:f14f0f4c2d4040faeb633a5b9440d4c7a5c7bb50824be694cfd9e95c9099f039` |
| 8 | `def` | [complexScaledKernel](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/complexscaledkernel--c36bdad30c436e0465c953af.md) | 111 | `declaration-track:c36bdad30c436e0465c953af147e9fede7a8b3a6a48eeec4e9cdf055c677f69d` |
| 9 | `theorem` | [complexScaledKernel_integrable](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/complexscaledkernel-integrable--fd1574e8d291347d809c56d6.md) | 115 | `result-track:fd1574e8d291347d809c56d62590a5a1fa48ea421791bb50f75574cfb4b3261e` |
| 10 | `def` | [frequencyMultiplier](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/frequencymultiplier--8030673e3013824162f4e5be.md) | 123 | `declaration-track:8030673e3013824162f4e5be1003c309f3ac3be4110a3f6ecaa50afc9f674c51` |
| 11 | `theorem` | [frequencyMultiplier_continuous](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/frequencymultiplier-continuous--47005ed28f20df2b21416edb.md) | 128 | `result-track:47005ed28f20df2b21416edba08a674a530661fc24f291cdfb4c24353575064c` |
| 12 | `theorem` | [frequencyMultiplier_zero](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/frequencymultiplier-zero--b50e0ebe405b6f6e7fc23413.md) | 135 | `result-track:b50e0ebe405b6f6e7fc2341395106c8e90cee0e59f3b878e73f02d0cfbfb3b5d` |
| 13 | `structure` | [LittlewoodPaleyFrequencyCertificate](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/littlewoodpaleyfrequencycertificate--411bdb5cb147f0ba39624304.md) | 148 | `declaration-track:411bdb5cb147f0ba39624304bd9e6618ef084af7baf71eed5a9f20158d6a5b8f` |
| 14 | `def` | [IsLittlewoodPaleyFamily](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/islittlewoodpaleyfamily--328e1876a42f2779d2684880.md) | 164 | `declaration-track:328e1876a42f2779d268488017c9db31797c0a3d8e74788b286162ed2b97564a` |
| 15 | `def` | [HasFrequencyPartition](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/hasfrequencypartition--cb3da4f38fa320b8baabf7e9.md) | 170 | `declaration-track:cb3da4f38fa320b8baabf7e9f3188e7e0c2072b37d72da6052c46f47ad38c20d` |
| 16 | `def` | [bochnerProjection](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/bochnerprojection--e8ae34ea8d52c6d012bd88e4.md) | 178 | `declaration-track:e8ae34ea8d52c6d012bd88e4e8e4f3b185001cbc890244c9ef4600d28cee0c6f` |
| 17 | `def` | [ProjectionExists](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/projectionexists--18e6a560bf651fe1dda5d3c8.md) | 187 | `declaration-track:18e6a560bf651fe1dda5d3c84b7ccc02a904878bb6e42e2c5efcd1264e18375a` |
| 18 | `theorem` | [bochnerProjection_apply](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/bochnerprojection-apply--b47cfc465406708ae102e938.md) | 194 | `result-track:b47cfc465406708ae102e93883c924cb95dbff5a0b08bfb765274f3afd6ee3c7` |
| 19 | `theorem` | [bochnerProjection_zero](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/bochnerprojection-zero--0c318fe7e40a572faf6fd796.md) | 202 | `result-track:0c318fe7e40a572faf6fd796643187061e4f5514305eeda68879b1014b529cbe` |
| 20 | `theorem` | [bochnerProjection_smul](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/bochnerprojection-smul--b85aaf1ab3db3c253b66c5b4.md) | 209 | `result-track:b85aaf1ab3db3c253b66c5b49881c1017bc6cb15bd9e454fd2898f043331ce07` |
| 21 | `theorem` | [bochnerProjection_add](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/bochnerprojection-add--24c2d55e8d59ec22cb6de84e.md) | 216 | `result-track:24c2d55e8d59ec22cb6de84ea4c70324a553ced785d2132eb91c53b018d01a75` |
| 22 | `def` | [finiteSquareEnergy](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/finitesquareenergy--1bf2b2418af678fd76b50da7.md) | 228 | `declaration-track:1bf2b2418af678fd76b50da757f80632cac3ab1a24039e6350ec7022fd28591f` |
| 23 | `def` | [finiteSquareFunction](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/finitesquarefunction--4c90ae60d7898acfc934a458.md) | 237 | `declaration-track:4c90ae60d7898acfc934a458cf241f856242b2136f4d6e48fa3d12314a86fa76` |
| 24 | `theorem` | [finiteSquareEnergy_nonneg](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/finitesquareenergy-nonneg--0857e743995a4fdaebff161d.md) | 244 | `result-track:0857e743995a4fdaebff161d3714a41e0a6d6b320a2cc0e70041e0637d31cae9` |
| 25 | `theorem` | [finiteSquareFunction_sq](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/finitesquarefunction-sq--869be25b00243ec89e1a7104.md) | 252 | `result-track:869be25b00243ec89e1a710468bd112532c4e5eec5b4cbf020cf3999ad1b18f7` |
| 26 | `theorem` | [finiteSquareFunction_nonneg](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/finitesquarefunction-nonneg--ea4dc796c85a50cf0e83115e.md) | 261 | `result-track:ea4dc796c85a50cf0e83115eba20e61e4924be6166ad9a81202186beacf041a5` |
| 27 | `theorem` | [finiteSquareEnergy_empty](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/finitesquareenergy-empty--21ac59b6f9549bbc52b3ef5b.md) | 269 | `result-track:21ac59b6f9549bbc52b3ef5b3518eec0960515b51f41080533218c8b365f1b67` |
| 28 | `theorem` | [finiteSquareFunction_empty](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/finitesquarefunction-empty--2f4e774c65f861c525a008f2.md) | 276 | `result-track:2f4e774c65f861c525a008f2b8f9cede8d3d3e8850a52a8a79da232a3ce6974c` |
| 29 | `theorem` | [finiteSquareEnergy_insert](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/finitesquareenergy-insert--cbbee22ed98bee6d719a836b.md) | 283 | `result-track:cbbee22ed98bee6d719a836bdf3241b8fdb02af2dfa8578025c5f6fcd4a59ec4` |
| 30 | `theorem` | [finiteSquareEnergy_zero](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/finitesquareenergy-zero--094d3afe40ae9f16d479dcad.md) | 293 | `result-track:094d3afe40ae9f16d479dcad89ed7881d4d5a8fe5ec80f02b84a206294cab26d` |
| 31 | `theorem` | [finiteSquareFunction_zero](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/finitesquarefunction-zero--f349b1a48f2ab91ffb8ec19c.md) | 300 | `result-track:f349b1a48f2ab91ffb8ec19c36495b83d5c9a97461a98e6d315faff3b790cc80` |
| 32 | `theorem` | [finiteSquareEnergy_aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/finitesquareenergy-aestronglymeasurable--19eae87b1b974a408e95feac.md) | 310 | `result-track:19eae87b1b974a408e95feac537b6d869de1a3aa74f974f4ba6a7840c58a57bc` |
| 33 | `theorem` | [finiteSquareFunction_aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/finitesquarefunction-aestronglymeasurable--54597765ed874f0581f93b32.md) | 322 | `result-track:54597765ed874f0581f93b32fa2d5287e2282dc11eb3f7bad444198605f7c835` |
| 34 | `theorem` | [finiteSquareEnergy_integrable](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/finitesquareenergy-integrable--8c6d70958deed123092f9c2c.md) | 334 | `result-track:8c6d70958deed123092f9c2c6ea15b72d8b484dc862cf27c0afef692d666f4f2` |
| 35 | `def` | [bridgeProjection](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/bridgeprojection--1340808844ce592df9a3e599.md) | 352 | `declaration-track:1340808844ce592df9a3e59993f18666834ad5cdfd5835713cd981a9d9257af9` |
| 36 | `theorem` | [bridgeProjection_apply](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/bridgeprojection-apply--da755040293a70726b6041f2.md) | 360 | `result-track:da755040293a70726b6041f2d656491333b2cbb70e2ef7554239a49352335caf` |
| 37 | `def` | [bridgeFiniteSquareFunction](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/bridgefinitesquarefunction--79769a203bef53bbca21e5a9.md) | 371 | `declaration-track:79769a203bef53bbca21e5a972b27129eec3760d24780358db186c6cbb7dcfd3` |
| 38 | `theorem` | [bridgeFiniteSquareFunction_apply](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/bridgefinitesquarefunction-apply--ce011e2d3fa22266598f6e13.md) | 379 | `result-track:ce011e2d3fa22266598f6e138000c2ff19f88a4908b5fdf6a72da7b9aa4aa2d9` |
| 39 | `def` | [IsInfiniteSquareFunction](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/isinfinitesquarefunction--0572f6a42371ae79a2caa360.md) | 396 | `declaration-track:0572f6a42371ae79a2caa36065f9522f0b86946f29a6a4ded7e10f6ed205281a` |
| 40 | `def` | [HasLittlewoodPaleyLpEquivalence](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/haslittlewoodpaleylpequivalence--351e60d8049183fb039c3e05.md) | 407 | `declaration-track:351e60d8049183fb039c3e0517cd7cd6e9c0c97a7ecdac2bbbb562d134f1c84c` |
| 41 | `def` | [HasLittlewoodPaleyEquivalence](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/haslittlewoodpaleyequivalence--8b8c448bb272a54d43317000.md) | 422 | `declaration-track:8b8c448bb272a54d433170003e226666e64aaefcf2b3754c91c1ef78627d2542` |
| 42 | `def` | [HasMaximalEstimate](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/hasmaximalestimate--50d23f7587cc9474e70f3919.md) | 430 | `declaration-track:50d23f7587cc9474e70f3919cbb58bca089fcceaa30b8cefe71d781aff55fe4e` |
| 43 | `def` | [HasArithmeticDyadicBridge](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLittlewoodPaley/Variantf1043b97e70809bc602076a6e73f1e61f090b1d67be3e29908d20734eb5f4c8b.lean/declarations/hasarithmeticdyadicbridge--dc5f6252936b51af22b87af1.md) | 444 | `declaration-track:dc5f6252936b51af22b87af159bb6ea5911b2e74d4c2d4e51185c1a470ab0f26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
