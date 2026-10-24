# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Fourier.Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12bbe5a0f2ed6bfdee77c9f86bbccfaf5f0c1a1d",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12bbe5a0f2ed6bfdee77c9f86bbccfaf5f0c1a1d`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean.json)

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
| 1 | `def` | [fourierTransformCLM](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/fouriertransformclm--e3f8ebf3594e22a15efd2c97.md) | 59 | `declaration-track:e3f8ebf3594e22a15efd2c976d85c2ad6947ae8580c6e12794f77ed48aa83724` |
| 2 | `instance` | [instFourierTransform](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/instfouriertransform--213e1d96fc02c263f73fb4c2.md) | 94 | `declaration-track:213e1d96fc02c263f73fb4c233db0e5367706af5773d55f4c54d2017ce763190` |
| 3 | `instance` | [instFourierAdd](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/instfourieradd--dc0bb2ed4d0a36a8fbfd9977.md) | 97 | `declaration-track:dc0bb2ed4d0a36a8fbfd9977494e382b578be9724ea55c94fb2967c56e263ef7` |
| 4 | `instance` | [instFourierSMul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/instfouriersmul--8260e2f72c5f464361bb792e.md) | 100 | `declaration-track:8260e2f72c5f464361bb792e3b87d8a0a436ca4bf2abbc3e865a15c4617a69cd` |
| 5 | `instance` | [instContinuousFourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/instcontinuousfourier--31c4ce771ca028c8640ac113.md) | 103 | `declaration-track:31c4ce771ca028c8640ac113f5417b950a39daa06e97db9c2689926a3dc71c1f` |
| 6 | `lemma` | [fourier_coe](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/fourier-coe--ac97b6b2ba33520cef403370.md) | 106 | `result-track:ac97b6b2ba33520cef403370bfb5edfa9e7c4817da7197147a7ff778ab785a95` |
| 7 | `theorem` | [fourierTransformCLM_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/fouriertransformclm-apply--06d5125bd8f42182df857dcb.md) | 109 | `result-track:06d5125bd8f42182df857dcb25215aca87d9ce521686adebe018ad1264a9e1d3` |
| 8 | `instance` | [instFourierTransformInv](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/instfouriertransforminv--f81609b3bfade265f4014e66.md) | 112 | `declaration-track:f81609b3bfade265f4014e665f3b53aabbcf65f5e5acca4365b13cdd257ec0aa` |
| 9 | `instance` | [instFourierInvAdd](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/instfourierinvadd--f37fff93d8e7f800067a6a75.md) | 116 | `declaration-track:f37fff93d8e7f800067a6a7552148a9d2f7fc6f0f3d27c36086c1bd80af349f0` |
| 10 | `instance` | [instFourierInvSMul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/instfourierinvsmul--c6269e5c80e67179ccd1c021.md) | 119 | `declaration-track:c6269e5c80e67179ccd1c021cc2106abc7a986424c42b0fe9451034b5714de7a` |
| 11 | `instance` | [instContinuousFourierInv](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/instcontinuousfourierinv--b43ffea65b239fa65f363a9c.md) | 123 | `declaration-track:b43ffea65b239fa65f363a9c89d51a31b8346a7a09e8bd5780d682f26f6a70dc` |
| 12 | `lemma` | [fourierInv_coe](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/fourierinv-coe--cd39500160897afd8330b17d.md) | 126 | `result-track:cd39500160897afd8330b17d23af38c383ed23152265badfb7ab93e2e6e8671a` |
| 13 | `lemma` | [fourierInv_apply_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/fourierinv-apply-eq--0b767cdbf952afed3d7b73ea.md) | 130 | `result-track:0b767cdbf952afed3d7b73ea2a95cd9a0a13514a00a76182c76c7f3a8b039c21` |
| 14 | `instance` | [instFourierPair](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/instfourierpair--409af1391f1c3127939997cf.md) | 136 | `declaration-track:409af1391f1c3127939997cfa178f830909d351328be6fd0621ebdc2b187c50e` |
| 15 | `instance` | [instFourierInvPair](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/instfourierinvpair--745b3cc13420b2a18a4a29c5.md) | 143 | `declaration-track:745b3cc13420b2a18a4a29c54be186c87417f88d2f6534cc4d949b8cea06a87e` |
| 16 | `theorem` | [fourier_evalCLM_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/fourier-evalclm-eq--4d068eb6a1da8455a1a7084d.md) | 159 | `result-track:4d068eb6a1da8455a1a7084d80c5028ef92ef3b2b22c8c663d2a85c645ef9148` |
| 17 | `theorem` | [fderivCLM_fourier_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/fderivclm-fourier-eq--7cab784fd2977b1dffdf1845.md) | 170 | `result-track:7cab784fd2977b1dffdf184565f70494cef6fcff155716270bde60d5b1371d4b` |
| 18 | `theorem` | [fourier_fderivCLM_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/fourier-fderivclm-eq--d6ea6ab07dde62b868b05a56.md) | 179 | `result-track:d6ea6ab07dde62b868b05a566c7477ad680a52eeb297c25350268867d6317ae7` |
| 19 | `theorem` | [lineDerivOp_fourier_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/linederivop-fourier-eq--8b51390061c9ce91b2a0b801.md) | 190 | `result-track:8b51390061c9ce91b2a0b801a3f7d4631ef141b0951fdd4ec9a44b4b8754f059` |
| 20 | `theorem` | [fourier_lineDerivOp_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/fourier-linederivop-eq--c6c33b3d62dc3bf1b457b72b.md) | 201 | `result-track:c6c33b3d62dc3bf1b457b72bd06369972bd7aef1ba97c7e521093cf98f1aa457` |
| 21 | `theorem` | [lineDerivOp_fourierInv_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/linederivop-fourierinv-eq--3291786be4bd5a50c59d52c8.md) | 210 | `result-track:3291786be4bd5a50c59d52c8c4c8ad3cbc4e2ffdcca8cb916fb39f4328aae02c` |
| 22 | `theorem` | [fourierInv_lineDerivOp_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/fourierinv-linederivop-eq--df7566c352496a5963ba7dc4.md) | 216 | `result-track:df7566c352496a5963ba7dc4fc483a49287c6a1547a52a1d69c629a5a3e4d818` |
| 23 | `theorem` | [integral_bilin_fourier_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/integral-bilin-fourier-eq--578bb5dda967c9d692940de8.md) | 235 | `result-track:578bb5dda967c9d692940de8eef5df6ae45c4726e8f62a1219db5df9cbec9da0` |
| 24 | `theorem` | [integral_fourier_smul_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/integral-fourier-smul-eq--e3b3c860d4912560864b3709.md) | 241 | `result-track:e3b3c860d4912560864b37093c09a634fcc4aa6cf7f6b1a27aae71144d09c45b` |
| 25 | `theorem` | [integral_fourier_mul_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/integral-fourier-mul-eq--a856e635ae66593301b95282.md) | 246 | `result-track:a856e635ae66593301b95282b918e70b3b92671db093fb76ef661c24e2813a3c` |
| 26 | `theorem` | [integral_bilin_fourierInv_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/integral-bilin-fourierinv-eq--ea1e8e0cf2ae2946194b3948.md) | 253 | `result-track:ea1e8e0cf2ae2946194b3948c8708c28414093941cdb8932b349301fc25c1ff7` |
| 27 | `theorem` | [integral_fourierInv_smul_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/integral-fourierinv-smul-eq--96b9b8b5e8000148ad1ebb0c.md) | 260 | `result-track:96b9b8b5e8000148ad1ebb0c05f3365ae4c8f5c63085feaa04303df2d5ae9538` |
| 28 | `theorem` | [integral_fourierInv_mul_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/integral-fourierinv-mul-eq--67e5bbd9630b68ba47b68602.md) | 265 | `result-track:67e5bbd9630b68ba47b68602a058a1d91c40e5260ba714bdd133ed51af720426` |
| 29 | `theorem` | [integral_sesq_fourier_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/integral-sesq-fourier-eq--3dc994e0c452f8a56629b472.md) | 269 | `result-track:3dc994e0c452f8a56629b47237d9fd4465c455a767d957e22882ba61098b9f76` |
| 30 | `theorem` | [integral_sesq_fourier_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/integral-sesq-fourier-fourier--69b1c84e534754a985376160.md) | 277 | `result-track:69b1c84e534754a98537616048797aaaa0674f06b76b726ec284d7e895d138da` |
| 31 | `theorem` | [norm_fourier_apply_le_toLp_one](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/norm-fourier-apply-le-tolp-one--c714388cceb5c70d7f984410.md) | 287 | `result-track:c714388cceb5c70d7f984410f45cc84e958fdda3169ba11b67101b1fbcb447b8` |
| 32 | `theorem` | [norm_fourier_toBoundedContinuousFunction_le_toLp_one](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/norm-fourier-toboundedcontinuousfunction-le-tolp-one--f1b21f2b873034f6b08fdb84.md) | 293 | `result-track:f1b21f2b873034f6b08fdb8461b98f8b5fb4b24135df0047694b4b8ae09e0555` |
| 33 | `theorem` | [norm_fourier_Lp_top_leq_toLp_one](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/norm-fourier-lp-top-leq-tolp-one--1201bd229febf5c1f7d63024.md) | 298 | `result-track:1201bd229febf5c1f7d63024391e1bef21fa3648098853d7ee9e8b037be4fd98` |
| 34 | `theorem` | [integral_inner_fourier_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/integral-inner-fourier-fourier--e97891acb666d75c79aabe70.md) | 310 | `result-track:e97891acb666d75c79aabe70e4597a7f5e9cf673fdfd0e3ff507de8b5c0193cf` |
| 35 | `theorem` | [integral_norm_sq_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/integral-norm-sq-fourier--4f10ae00e57556b2d14243e3.md) | 314 | `result-track:4f10ae00e57556b2d14243e31aa6e2c36286d5ac5cede883f92e954b0608f1b5` |
| 36 | `theorem` | [inner_fourier_toL2_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/inner-fourier-tol2-eq--721f0a338b3400815c1003ae.md) | 320 | `result-track:721f0a338b3400815c1003ae04361994e1fc3609fb75b6efe5f7dd8538133582` |
| 37 | `theorem` | [norm_fourier_toL2_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/declarations/norm-fourier-tol2-eq--cd6b7caf039af89fd6fae69a.md) | 323 | `result-track:cd6b7caf039af89fd6fae69af2eebb8cb90694154a9ba812cd789567880b1611` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
