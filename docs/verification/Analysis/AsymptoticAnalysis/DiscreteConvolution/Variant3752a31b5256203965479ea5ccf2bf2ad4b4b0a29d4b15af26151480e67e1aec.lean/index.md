# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.DiscreteConvolution.Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7de72f1d982b8ce1a57189f79d97c9d1d7b2427c",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7de72f1d982b8ce1a57189f79d97c9d1d7b2427c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulFiber](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/mulfiber--d6f75761deb20e80bcd22b93.md) | 99 | `declaration-track:d6f75761deb20e80bcd22b93185bd5ee2009bd9251b74ba7999426af6036ae37` |
| 2 | `lemma` | [mem_mulFiber](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/mem-mulfiber--e85d4f613034fc8c6ff7e989.md) | 102 | `result-track:e85d4f613034fc8c6ff7e98922f5ca7e856c88681b10cf3442888c0558fc27b8` |
| 3 | `lemma` | [mulFiber_one_mem](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/mulfiber-one-mem--6991fc8fb164ead41497f50a.md) | 105 | `result-track:6991fc8fb164ead41497f50a63b4d780d4b51518ac2bda958cf9dd15d3f57b90` |
| 4 | `def` | [convolution](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/convolution--7078f2dab19c04b7468cd943.md) | 122 | `declaration-track:7078f2dab19c04b7468cd943c70ac3f084abd10d1b4645daae13a21d1bbe9d8f` |
| 5 | `lemma` | [zero_convolution](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/zero-convolution--41020ed848976af0c02a068b.md) | 142 | `result-track:41020ed848976af0c02a068b809e7755010fd7abcc21fe0092866b85d9c2cc0b` |
| 6 | `lemma` | [convolution_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/convolution-zero--e0df3c3f14fcec3303a6c422.md) | 147 | `result-track:e0df3c3f14fcec3303a6c422fae0659bd4fa8ed33a8d2e9b28ee884d14baa725` |
| 7 | `lemma` | [single_convolution](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/single-convolution--42540afb26e9a36cc8fe9dbc.md) | 152 | `result-track:42540afb26e9a36cc8fe9dbc1d43213294355f950ab1fa302a7032203a8a9e51` |
| 8 | `lemma` | [convolution_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/convolution-single--07c5c1a7084f3cb3ee951eba.md) | 160 | `result-track:07c5c1a7084f3cb3ee951eba961f8aa3f46a3a84c533584f6bc9719ed84682a4` |
| 9 | `def` | [ConvolutionExistsAt](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/convolutionexistsat--9dacd87ea9c13b298d816df2.md) | 180 | `declaration-track:9dacd87ea9c13b298d816df26dd6002d89a77715c757ef396cd0950997d542c9` |
| 10 | `def` | [ConvolutionExists](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/convolutionexists--5246b88ba4ae53e425ef2e20.md) | 192 | `declaration-track:5246b88ba4ae53e425ef2e20430d80f5e01dcc14e522457be1168a1fdef66399` |
| 11 | `lemma` | [ConvolutionExistsAt.distrib_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/convolutionexistsat-distrib-add--78e725b77c9531ba6b6f7e61.md) | 198 | `result-track:78e725b77c9531ba6b6f7e61619051d4ba98cf1e98dd54999a85bfdf60a29c7e` |
| 12 | `lemma` | [ConvolutionExists.distrib_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/convolutionexists-distrib-add--da68510958025f889b9ad373.md) | 205 | `result-track:da68510958025f889b9ad373d4dfb19c91a7cf7ef2c6dd30287d4438091fa8a9` |
| 13 | `lemma` | [ConvolutionExistsAt.add_distrib](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/convolutionexistsat-add-distrib--3d12d5521c10b4a1cd7a3d16.md) | 211 | `result-track:3d12d5521c10b4a1cd7a3d16075e47c9025f6d1e43a778562d1de9484244aa32` |
| 14 | `lemma` | [ConvolutionExists.add_distrib](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/convolutionexists-add-distrib--2f9fb9580890a26623f0ee42.md) | 218 | `result-track:2f9fb9580890a26623f0ee42fd0816f7366a22cf51cee3da976ebc174555bfd1` |
| 15 | `lemma` | [ConvolutionExistsAt.smul_convolution](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/convolutionexistsat-smul-convolution--35fbc155525a7fa60a81676e.md) | 227 | `result-track:35fbc155525a7fa60a81676eb42454b0a4f17252dd805558a7c103900a9f25d0` |
| 16 | `lemma` | [ConvolutionExistsAt.convolution_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/convolutionexistsat-convolution-smul--ca0747ecd514706e7a427bc2.md) | 233 | `result-track:ca0747ecd514706e7a427bc2776fd01083000166645647288d6ed497b497bec5` |
| 17 | `lemma` | [mulFiber_eq_mulAntidiagonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/mulfiber-eq-mulantidiagonal--163bd5a317640506db0c1212.md) | 247 | `result-track:163bd5a317640506db0c121238756bbea1232000ef4475974e3cc13e6f04d348` |
| 18 | `lemma` | [mulFiber_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/mulfiber-finite--3e8ff7846d5c74049f46db6c.md) | 255 | `result-track:3e8ff7846d5c74049f46db6c59d8b2d22c26c79e445fcbe2022370ebf035cecd` |
| 19 | `lemma` | [convolution_eq_sum_mulAntidiagonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/convolution-eq-sum-mulantidiagonal--06d95bc5d0f11f1613072032.md) | 266 | `result-track:06d95bc5d0f11f1613072032f14cb88814a38d5c38e543cf169562bdb3bf3fd6` |
| 20 | `lemma` | [convolutionExists_of_hasMulAntidiagonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/convolutionexists-of-hasmulantidiagonal--4fffff93aaaa0d8b40c7b825.md) | 278 | `result-track:4fffff93aaaa0d8b40c7b825453951383f4202d9da541930381656c791c9676d` |
| 21 | `def` | [mulFiber_swapEquiv](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/mulfiber-swapequiv--6efd612cfad9639928c072fa.md) | 293 | `declaration-track:6efd612cfad9639928c072faccbe9eaeb07f134300f69d990817b033b80d9084` |
| 22 | `theorem` | [convolution_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/convolution-comm--156f81bc3c068e4117dd2c33.md) | 300 | `result-track:156f81bc3c068e4117dd2c33e64e37df40c82c4bf7ac3bb5bb0238d8565f1fa6` |
| 23 | `def` | [ringConvolution](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/ringconvolution--ba467ad1c8e0887fb2c66bf1.md) | 319 | `declaration-track:ba467ad1c8e0887fb2c66bf107f4c001e0b09ee29813f8701e4ecfe81cacce98` |
| 24 | `lemma` | [ringConvolution_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/ringconvolution-apply--fa983670e052f8094679d03e.md) | 329 | `result-track:fa983670e052f8094679d03ec4403b708ddbc3cd64035b10a728d3a49ac3d8b4` |
| 25 | `lemma` | [zero_ringConvolution](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/zero-ringconvolution--d6213b331e08f89281f4cd70.md) | 333 | `result-track:d6213b331e08f89281f4cd70da8219f7e0b56e3ced08927a2b3435f78b321cbb` |
| 26 | `lemma` | [ringConvolution_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/ringconvolution-zero--ce93eb98eec61f06f4e2d8ab.md) | 338 | `result-track:ce93eb98eec61f06f4e2d8aba782b64ebd52d5e65cc70985147655a7d9dec6ea` |
| 27 | `lemma` | [single_ringConvolution](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/single-ringconvolution--0eeaf8666a8415844b264cc0.md) | 349 | `result-track:0eeaf8666a8415844b264cc02f44a3eb6c052eae64aea2d0a68b3164361b1630` |
| 28 | `lemma` | [ringConvolution_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/ringconvolution-single--0f950448733eb6a1dcc174c4.md) | 354 | `result-track:0f950448733eb6a1dcc174c4f35406b63b43a034a77066f127944006c6a869d6` |
| 29 | `lemma` | [ringConvolution_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/ringconvolution-add--02317fe7aff308f8b61b6c33.md) | 366 | `result-track:02317fe7aff308f8b61b6c33e5e77ca484590fc4f38fcb9423fc77f41aa7c830` |
| 30 | `lemma` | [add_ringConvolution](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/add-ringconvolution--be7dac1c5dfd3ddbf5520415.md) | 372 | `result-track:be7dac1c5dfd3ddbf5520415586d4f351bd117ab960259adbe9e8f0d318f2c45` |
| 31 | `lemma` | [smul_ringConvolution](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/smul-ringconvolution--71bcea3ffc271507e5cb5eee.md) | 386 | `result-track:71bcea3ffc271507e5cb5eeed62c464ff9d49dcf592346677649e90a2b20bc4e` |
| 32 | `lemma` | [ringConvolution_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/ringconvolution-smul--5afb1de36b4b6f3f1865b488.md) | 393 | `result-track:5afb1de36b4b6f3f1865b488480d05ceffdabb38043d0bb91c5d75c8510b98f6` |
| 33 | `lemma` | [ringConvolution_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/ringconvolution-comm--7f994fc54c115d0db87bf77b.md) | 405 | `result-track:7f994fc54c115d0db87bf77b78aa4b082abb888a29359abc0f43a7e6f74fd067` |
| 34 | `lemma` | [ringConvolution_eq_sum_mulAntidiagonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/declarations/ringconvolution-eq-sum-mulantidiagonal--d38c08be039a437cda2a4689.md) | 419 | `result-track:d38c08be039a437cda2a4689094b61357e80bfc6e8080fd9ccd5afaff18bbf3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
