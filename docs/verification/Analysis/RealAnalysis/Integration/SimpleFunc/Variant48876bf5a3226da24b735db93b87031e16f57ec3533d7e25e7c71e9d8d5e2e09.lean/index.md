# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SimpleFunc.Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d5c9380c34692eb83f0af27bfde738dbb47b0a0",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d5c9380c34692eb83f0af27bfde738dbb47b0a0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_eq_sum_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/norm-eq-sum-mul--bde04199424bb1981c159c96.md) | 45 | `result-track:bde04199424bb1981c159c96d1c080725e1b7533939a793bbf3b36aefa3a692f` |
| 2 | `def` | [setToL1S](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1s--e8f83f70b994e597a77ec254.md) | 69 | `declaration-track:e8f83f70b994e597a77ec25482008057acd93ce75e47342468326ddba79a64be` |
| 3 | `theorem` | [setToL1S_eq_setToSimpleFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1s-eq-settosimplefunc--a458d42d253e9c99dccb40e6.md) | 72 | `result-track:a458d42d253e9c99dccb40e675c3e42d1bfa9b7a15c12419c6a32f06c7ce4a81` |
| 4 | `theorem` | [setToL1S_zero_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1s-zero-left--721673eff4971c9f732ead47.md) | 77 | `result-track:721673eff4971c9f732ead477a643f40d332bcc9f5a61e777ebe75f20f1e67bc` |
| 5 | `theorem` | [setToL1S_zero_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1s-zero-left--799b05a6e4e06fbeb9b3be02.md) | 80 | `result-track:799b05a6e4e06fbeb9b3be02e16bb03a2ed463b70adeced7f0b46249a03a04de` |
| 6 | `theorem` | [setToL1S_congr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1s-congr--f7373070b5d53716fa7dbea8.md) | 84 | `result-track:f7373070b5d53716fa7dbea89237355a7f03bcae89fddbd641938f440019f374` |
| 7 | `theorem` | [setToL1S_congr_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1s-congr-left--7624ce3671edd48961cbbf2a.md) | 89 | `result-track:7624ce3671edd48961cbbf2a18beed56a86ebae001e45ae53192f4fa045f979f` |
| 8 | `theorem` | [setToL1S_congr_measure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1s-congr-measure--773e916597a5399e5b709d49.md) | 97 | `result-track:773e916597a5399e5b709d49ebada4c61663aed44819955bd1fa87156aa91cb3` |
| 9 | `theorem` | [setToL1S_add_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1s-add-left--999ed3155bb7f15b1fe8110e.md) | 107 | `result-track:999ed3155bb7f15b1fe8110e636c6a0a9ef39ed7758f295f341456930ec52034` |
| 10 | `theorem` | [setToL1S_add_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1s-add-left--0b51f8e185995688d295a8b4.md) | 111 | `result-track:0b51f8e185995688d295a8b41a1473e2a9783642411fd192cb6a3570b3a39c04` |
| 11 | `theorem` | [setToL1S_smul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1s-smul-left--c782125375003ce5eef65596.md) | 116 | `result-track:c782125375003ce5eef65596302a75e796cea0f3c73306cee590825f20c264ad` |
| 12 | `theorem` | [setToL1S_smul_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1s-smul-left--099a79e2dc94e459b99a853a.md) | 120 | `result-track:099a79e2dc94e459b99a853a29cd297a1af6c0c6a87e80b77003a541eca62640` |
| 13 | `theorem` | [setToL1S_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1s-add--a4770c6cc49bc223c7b864f4.md) | 125 | `result-track:a4770c6cc49bc223c7b864f4e58381ecbe68b3cd704416dfd548950b075ffe0b` |
| 14 | `theorem` | [setToL1S_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1s-neg--66c859480acc9ec3c869312c.md) | 135 | `result-track:66c859480acc9ec3c869312cd25e85b3c62652853ff57a1967b9a5261343701a` |
| 15 | `theorem` | [setToL1S_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1s-sub--e7409a4fe45647d9c1b6f8f0.md) | 143 | `result-track:e7409a4fe45647d9c1b6f8f0404d643a8063829410907372b2efc18e62a15062` |
| 16 | `theorem` | [setToL1S_smul_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1s-smul-real--a82f064d5c4945383aa0575b.md) | 148 | `result-track:a82f064d5c4945383aa0575b66caf500a6df638cef82769001c19c104f004c08` |
| 17 | `theorem` | [setToL1S_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1s-smul--2eced44e4dafa74499051ae8.md) | 156 | `result-track:2eced44e4dafa74499051ae80166bd8eb9f6a8e9c0979e8a9ab0efbef1cda4d7` |
| 18 | `theorem` | [norm_setToL1S_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/norm-settol1s-le--367d44073759efbf04305bb9.md) | 165 | `result-track:367d44073759efbf04305bb946f592f220866831cd013bdee0821b011c262991` |
| 19 | `theorem` | [setToL1S_indicatorConst](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1s-indicatorconst--7b879e230c55cc63df18353d.md) | 173 | `result-track:7b879e230c55cc63df18353da57dff0c23c619d95a341c72a8be9f95361b3a56` |
| 20 | `theorem` | [setToL1S_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1s-const--6a5604cec013beed5185bbad.md) | 183 | `result-track:6a5604cec013beed5185bbad999958088a814a7679138cd1678cd98c7ea373ca` |
| 21 | `theorem` | [setToL1S_mono_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1s-mono-left--66e0762b8621336cbb023451.md) | 195 | `result-track:66e0762b8621336cbb02345106d399159a3d7972e057dced98421779bdc7d3e6` |
| 22 | `theorem` | [setToL1S_mono_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1s-mono-left--904476a86dd0a3f57ea12c12.md) | 199 | `result-track:904476a86dd0a3f57ea12c128a9a58c2f328658adcdc73daf2fb1810ca27f5bf` |
| 23 | `theorem` | [setToL1S_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1s-nonneg--34be7562431431c72dba7238.md) | 205 | `result-track:34be7562431431c72dba72384181df7d51a6c878de70d1c5dfa26030f24d8cfd` |
| 24 | `theorem` | [setToL1S_mono](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1s-mono--805eaad30b5bbb65cb4f084a.md) | 217 | `result-track:805eaad30b5bbb65cb4f084aac891fddb8d9f0428aeb6aa0bf45dc9cf9308a02` |
| 25 | `def` | [setToL1SCLM'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1sclm--c39f863eae8793f076be0774.md) | 231 | `declaration-track:c39f863eae8793f076be077416c7318863d7e662b76f737643d28e97147fc7b2` |
| 26 | `def` | [setToL1SCLM](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1sclm--f90228a0d01a6e4afa0fd338.md) | 239 | `declaration-track:f90228a0d01a6e4afa0fd338406bd755c55ba79a70b9aabff57efd26aa06aa04` |
| 27 | `theorem` | [setToL1SCLM_zero_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1sclm-zero-left--63dbe1c21be24279b62cf90f.md) | 250 | `result-track:63dbe1c21be24279b62cf90fdd18bc4f35515c4931efb7eb5f8d1286484bf4c0` |
| 28 | `theorem` | [setToL1SCLM_zero_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1sclm-zero-left--1aaf75318e421fbe59ce770f.md) | 254 | `result-track:1aaf75318e421fbe59ce770fd30c71fc0c04aff781477055ab3090d601228e77` |
| 29 | `theorem` | [setToL1SCLM_congr_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1sclm-congr-left--008f600e7cd333e697d824ee.md) | 259 | `result-track:008f600e7cd333e697d824ee5b5c3049e5b711b33eda0b427d139e0e0286f786` |
| 30 | `theorem` | [setToL1SCLM_congr_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1sclm-congr-left--23c07d717166ca3325308493.md) | 264 | `result-track:23c07d717166ca3325308493efeee4bdf276896fc250aa51260de15818693e4e` |
| 31 | `theorem` | [setToL1SCLM_congr_measure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1sclm-congr-measure--68e975d7221a103255e883bf.md) | 269 | `result-track:68e975d7221a103255e883bf0680a6261931068bff066626fd814158ca9dfa0d` |
| 32 | `theorem` | [setToL1SCLM_add_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1sclm-add-left--2e20dde06aa5f70d5daea4b2.md) | 274 | `result-track:2e20dde06aa5f70d5daea4b286becf91f39613a6fec2a2a093d033b94b7c74da` |
| 33 | `theorem` | [setToL1SCLM_add_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1sclm-add-left--7a7c3bc09419e774f00d4bf1.md) | 279 | `result-track:7a7c3bc09419e774f00d4bf109fc398e4aabcb206a246d0462ba27168cd2b30b` |
| 34 | `theorem` | [setToL1SCLM_smul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1sclm-smul-left--928bcc3c980663d56e8df85d.md) | 285 | `result-track:928bcc3c980663d56e8df85d1561ec1ab2e5d2e0789f416a9d5dc7f90fdfc9ac` |
| 35 | `theorem` | [setToL1SCLM_smul_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1sclm-smul-left--24761b60cc5dc77d597c07bc.md) | 289 | `result-track:24761b60cc5dc77d597c07bc0777c9106e6321d41521367f9774b2c7280c538f` |
| 36 | `theorem` | [norm_setToL1SCLM_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/norm-settol1sclm-le--d86920753fe1d71f12bf1498.md) | 295 | `result-track:d86920753fe1d71f12bf14989ddc2150cde99a3d205c72c0e4ae83a122579a38` |
| 37 | `theorem` | [norm_setToL1SCLM_le'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/norm-settol1sclm-le--1b4aa4dafa065c103f29d598.md) | 299 | `result-track:1b4aa4dafa065c103f29d59873b9b5edae270ffe5032a291f9ea460e076fda2f` |
| 38 | `theorem` | [setToL1SCLM_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1sclm-const--7d5d8cf21ff1a0c2392ca03a.md) | 303 | `result-track:7d5d8cf21ff1a0c2392ca03af2d9bacc9922c6ab1106333aad4dfdb6041bcedc` |
| 39 | `theorem` | [setToL1SCLM_mono_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1sclm-mono-left--f8ce47123a94f62d8c72d0d2.md) | 315 | `result-track:f8ce47123a94f62d8c72d0d2f4359fdecafa1cf7699b5075a30b8da1c6cc478d` |
| 40 | `theorem` | [setToL1SCLM_mono_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1sclm-mono-left--678a57c6b967106ff57e366d.md) | 321 | `result-track:678a57c6b967106ff57e366d1313bf33a926660ba71decf7c0414204b4de5dda` |
| 41 | `theorem` | [setToL1SCLM_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1sclm-nonneg--a9e29ebec6d103bfef149ca0.md) | 328 | `result-track:a9e29ebec6d103bfef149ca0c53a540f3c79a79293d5476b2de91b1dccb77f2e` |
| 42 | `theorem` | [setToL1SCLM_mono](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/declarations/settol1sclm-mono--6a39330d8d7d0d4221169ac1.md) | 333 | `result-track:6a39330d8d7d0d4221169ac157722ba1db2619b6b291c9af3239491c058d541b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
