# Verification target: GRWTSK.Analysis.MeasureTheory.Condexp.Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e36038de505042ae8e6ff60dbf0bddb84f6f15bf",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e36038de505042ae8e6ff60dbf0bddb84f6f15bf`.

Source path: `GRWTSK/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.MeasureComp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.CondDistrib` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.ConditionalProbability` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.comp_snd_map_prod_id](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/root-measuretheory-aestronglymeasurable-comp-snd-map-prod-id--3990af552b92c512d75dd1d2.md) | 44 | `result-track:3990af552b92c512d75dd1d24945d30af3f5be558eb91471d630270ec0b71d19` |
| 2 | `theorem` | [_root_.MeasureTheory.Integrable.comp_snd_map_prod_id](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/root-measuretheory-integrable-comp-snd-map-prod-id--7c89d73cd7a7689450d07e36.md) | 52 | `result-track:7c89d73cd7a7689450d07e3685e19d9ebb5ae731522984f99a7365a052f84b6f` |
| 3 | `lemma` | [condExpKernel_eq](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/condexpkernel-eq--255761ae8a68b156cfd70ece.md) | 80 | `result-track:255761ae8a68b156cfd70ecede35f3b35d247222efb2913be623bae8245fc46b` |
| 4 | `lemma` | [condExpKernel_apply_eq_condDistrib](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/condexpkernel-apply-eq-conddistrib--d5e446f20673b2ce42e6b2a8.md) | 88 | `result-track:d5e446f20673b2ce42e6b2a80687670c8e1ec90fd785da8a4ca5b890570e2a09` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/instance--80bbdbe819a74c00452c1a9a.md) | 95 | `declaration-track:80bbdbe819a74c00452c1a9ae4f331605990ff932dcc15a9b24804e437cbae1d` |
| 6 | `lemma` | [compProd_trim_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/compprod-trim-condexpkernel--e5ce13fe3a1de948d5a5b810.md) | 100 | `result-track:e5ce13fe3a1de948d5a5b810f5227b817f240da9533d57977fd32d655f796900` |
| 7 | `lemma` | [condExpKernel_comp_trim](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/condexpkernel-comp-trim--0cab2db034202b7cd3ca52a9.md) | 114 | `result-track:0cab2db034202b7cd3ca52a951b40a51c3da52811a6d1bbd3eebb6a7c3211bcd` |
| 8 | `theorem` | [measurable_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/measurable-condexpkernel--16842c93ff28285ca08e771c.md) | 122 | `result-track:16842c93ff28285ca08e771c992857dae272b40879f976665fa50363defd4380` |
| 9 | `theorem` | [stronglyMeasurable_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/stronglymeasurable-condexpkernel--de3e7d959dfea511d055cfa0.md) | 132 | `result-track:de3e7d959dfea511d055cfa0699a3b58699c33f1bd0f57c47a99dc74f0cf42c9` |
| 10 | `theorem` | [_root_.MeasureTheory.StronglyMeasurable.integral_condExpKernel'](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/root-measuretheory-stronglymeasurable-integral-condexpkernel--accd51b04160f720de384b24.md) | 139 | `result-track:accd51b04160f720de384b24b6b0519c4d96c5d830ad8eef727aeb904bbee564` |
| 11 | `theorem` | [_root_.MeasureTheory.StronglyMeasurable.integral_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/root-measuretheory-stronglymeasurable-integral-condexpkernel--2c2f16b576184fad88699894.md) | 146 | `result-track:2c2f16b576184fad886998941107d5278c2b469c005d2c5eab05960f89099fb4` |
| 12 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.integral_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/root-measuretheory-aestronglymeasurable-integral-condexpkernel--fa3029425e7acd270a64edee.md) | 151 | `result-track:fa3029425e7acd270a64edee0d2106345258e547abfd9096921578d884644250` |
| 13 | `theorem` | [aestronglyMeasurable_integral_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/aestronglymeasurable-integral-condexpkernel--6d452e944d8dd27039d8ff6f.md) | 164 | `result-track:6d452e944d8dd27039d8ff6f837bd7e74b5e7f6d0b11d3bb26d7a9a12459ecaf` |
| 14 | `lemma` | [aestronglyMeasurable_trim_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/aestronglymeasurable-trim-condexpkernel--d01949d3e53ad5bf87829439.md) | 181 | `result-track:d01949d3e53ad5bf8782943977e94bbceea64f87ceee26c62aad07b0ac38345c` |
| 15 | `theorem` | [_root_.MeasureTheory.Integrable.condExpKernel_ae](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/root-measuretheory-integrable-condexpkernel-ae--bc513e2e866237cc21d51dac.md) | 193 | `result-track:bc513e2e866237cc21d51dac54c12b9d4c35ea547ee86b4acac6292911d14d6d` |
| 16 | `theorem` | [_root_.MeasureTheory.Integrable.integral_norm_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/root-measuretheory-integrable-integral-norm-condexpkernel--b0c5bed7205ec21e4c61b96b.md) | 205 | `result-track:b0c5bed7205ec21e4c61b96be9f935da2c52372ec4bac6f3ca10a8dd0502bb07` |
| 17 | `theorem` | [_root_.MeasureTheory.Integrable.norm_integral_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/root-measuretheory-integrable-norm-integral-condexpkernel--42f23e7b5d0cd95a8aaa229c.md) | 217 | `result-track:42f23e7b5d0cd95a8aaa229c980bc503020722ac157a42586238e41213b90932` |
| 18 | `theorem` | [_root_.MeasureTheory.Integrable.integral_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/root-measuretheory-integrable-integral-condexpkernel--1a3b7b5ea6596ff480615c3e.md) | 230 | `result-track:1a3b7b5ea6596ff480615c3e30e4860e77f51686cbe44f7a8052d53edd351776` |
| 19 | `theorem` | [integrable_toReal_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/integrable-toreal-condexpkernel--9169e360a91b9633ae4c1364.md) | 243 | `result-track:9169e360a91b9633ae4c1364e76e2436863f6c2f3f8c7a03d75e1d3b38e93671` |
| 20 | `lemma` | [condExpKernel_ae_eq_condExp'](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/condexpkernel-ae-eq-condexp--ab9c223861f8ffa1f13a0a9c.md) | 254 | `result-track:ab9c223861f8ffa1f13a0a9cd7e06f1fe9157bfb9dc78aa57b8cd9861f85de41` |
| 21 | `lemma` | [condExpKernel_ae_eq_condExp](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/condexpkernel-ae-eq-condexp--0ae3af78ec85b9518b4f286d.md) | 268 | `result-track:0ae3af78ec85b9518b4f286dd99d7cb760208a5fe7f8eb3e8f80e97a99bb3197` |
| 22 | `lemma` | [condExpKernel_ae_eq_trim_condExp](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/condexpkernel-ae-eq-trim-condexp--633f542cd4b97a29fe06d288.md) | 276 | `result-track:633f542cd4b97a29fe06d288dae1eea47e83cc4c0ac58e9d90d5a279f5c36b57` |
| 23 | `theorem` | [condExp_ae_eq_integral_condExpKernel'](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/condexp-ae-eq-integral-condexpkernel--64d04277a2dd0dd24a3ead61.md) | 287 | `result-track:64d04277a2dd0dd24a3ead615cc1f85f0222e07f7d7533a2947e211d078532d5` |
| 24 | `theorem` | [condExp_ae_eq_integral_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/condexp-ae-eq-integral-condexpkernel--64383451f90614e40c897e2a.md) | 303 | `result-track:64383451f90614e40c897e2a1beb27824c7fb2a92547b819c065a6741ffca15e` |
| 25 | `theorem` | [condExp_ae_eq_trim_integral_condExpKernel_of_stronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/condexp-ae-eq-trim-integral-condexpkernel-of-stronglymeasurable--6ef5737ef06574714f2207b4.md) | 312 | `result-track:6ef5737ef06574714f2207b42f141731d7a9b554fe87eb797a620bcac4cce98c` |
| 26 | `theorem` | [condExp_ae_eq_trim_integral_condExpKernel](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/condexp-ae-eq-trim-integral-condexpkernel--490084beff16be1cbbd2f816.md) | 323 | `result-track:490084beff16be1cbbd2f8160acb4560f3f34f463e1af1df47cf49afe768891d` |
| 27 | `lemma` | [condExp_generateFrom_singleton](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/condexp-generatefrom-singleton--fc7648c67c2b209137ec8d51.md) | 343 | `result-track:fc7648c67c2b209137ec8d513dce35914008ddbc81f0e483d59fd066cedaae09` |
| 28 | `lemma` | [condExp_set_generateFrom_singleton](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/condexp-set-generatefrom-singleton--89111ce44fb0c46ed1101490.md) | 376 | `result-track:89111ce44fb0c46ed11014906076e52bc61e28d96cc65300dd6f6cb64494d379` |
| 29 | `lemma` | [condExpKernel_singleton_ae_eq_cond](../../../../../mathematics/Analysis/MeasureTheory/Condexp/Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.lean/declarations/condexpkernel-singleton-ae-eq-cond--e65c05567c4251775fcdfc6c.md) | 384 | `result-track:e65c05567c4251775fcdfc6c9309b58550cf0fcc6d90299a063416ffe99f3f71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
