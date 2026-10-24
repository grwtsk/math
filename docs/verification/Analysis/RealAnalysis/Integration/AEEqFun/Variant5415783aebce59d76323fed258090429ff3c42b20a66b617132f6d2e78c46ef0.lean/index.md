# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AEEqFun.Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b34e6beadc792075e9c5be0f09ee8af3e66f0f4",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b34e6beadc792075e9c5be0f09ee8af3e66f0f4`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.L1Space.Integrable` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/integrable--dd6e52ff566ff569683aab39.md) | 52 | `declaration-track:dd6e52ff566ff569683aab396bfc4817a191d31eb700bf79d4b6c7b95ff8b765` |
| 2 | `theorem` | [integrable_mk](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/integrable-mk--bdb9961d654aeaf87aeb8d25.md) | 55 | `result-track:bdb9961d654aeaf87aeb8d25d33ad8bf8105faf48409528caa0a2f861bc6f61a` |
| 3 | `theorem` | [integrable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/integrable-coefn--8a231a56320177febab4e197.md) | 61 | `result-track:8a231a56320177febab4e1971a1868bc89bd1c50d0b60433455c47b75a403f6c` |
| 4 | `theorem` | [integrable_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/integrable-zero--c6938e562f80e44a69d03252.md) | 64 | `result-track:c6938e562f80e44a69d0325248edd804171c178930dc247af00d7f552d427128` |
| 5 | `theorem` | [Integrable.neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/integrable-neg--b87f11c0d72e6f778209a940.md) | 71 | `result-track:b87f11c0d72e6f778209a94073a602f59ffb1b1e3a48f0dcbc2c87ea7d2649cc` |
| 6 | `theorem` | [integrable_iff_mem_L1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/integrable-iff-mem-l1--2e0e33fa253664a657093e51.md) | 76 | `result-track:2e0e33fa253664a657093e518c13932eeb15621813b3606334312051ceb61654` |
| 7 | `theorem` | [Integrable.add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/integrable-add--df8703316cc6945051d77b86.md) | 80 | `result-track:df8703316cc6945051d77b86f39c7e023a1af68da940da6dd079fc95bc979cc3` |
| 8 | `theorem` | [Integrable.sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/integrable-sub--1dd19d8fef70c491b4a0fcf5.md) | 85 | `result-track:1dd19d8fef70c491b4a0fcf52a7954c9af28a8174222c145c540c9fbb3ee7df9` |
| 9 | `theorem` | [Integrable.smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/integrable-smul--b9704fb0b106c3f3dccdb1ec.md) | 95 | `result-track:b9704fb0b106c3f3dccdb1ec1c1762e607b8aa917a48f80ff12bba7e39217cf1` |
| 10 | `theorem` | [integrable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/integrable-coefn--d80599d3ee2cbb93d54652d4.md) | 108 | `result-track:d80599d3ee2cbb93d54652d4455031ff1ffb7da253500b5452d082a5279d8afd` |
| 11 | `theorem` | [hasFiniteIntegral_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/hasfiniteintegral-coefn--503cc3ef371bc8b8ecc80bd6.md) | 112 | `result-track:503cc3ef371bc8b8ecc80bd67071cdf78f0ce3c026c564b2730d11faae7661ae` |
| 12 | `theorem` | [stronglyMeasurable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/stronglymeasurable-coefn--52a08e2ffd1930936668b33d.md) | 116 | `result-track:52a08e2ffd1930936668b33de0267f903db748f5fd400c6c908fe72a81a78c03` |
| 13 | `theorem` | [measurable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/measurable-coefn--bab53e52679dce2be9fafb86.md) | 120 | `result-track:bab53e52679dce2be9fafb86e4c84081ad6a0e1e9be1c75e76a8c08d4ceacb27` |
| 14 | `theorem` | [aestronglyMeasurable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/aestronglymeasurable-coefn--2a38d4faec7edc88d1d31624.md) | 124 | `result-track:2a38d4faec7edc88d1d31624638ef33e4f587b4351bf6b6298a0645f301f7145` |
| 15 | `theorem` | [aemeasurable_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/aemeasurable-coefn--f1cb66003278b0f5a136c4c7.md) | 128 | `result-track:f1cb66003278b0f5a136c4c7eda6307ea6a63012a3b45b0ebbca8fd5be269463` |
| 16 | `theorem` | [edist_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/edist-def--8499fef101c4db192edd986d.md) | 131 | `result-track:8499fef101c4db192edd986dc4f500e55b1be1aede75e10ca83a1bd286602f2d` |
| 17 | `theorem` | [dist_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/dist-def--15343bdf14457c8f05e163d1.md) | 136 | `result-track:15343bdf14457c8f05e163d15aa4ae3dabd64ae2cb8a0f827b66535464a4333c` |
| 18 | `theorem` | [norm_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/norm-def--6db962cb09ce9962c5e9ac18.md) | 139 | `result-track:6db962cb09ce9962c5e9ac18deaaa639c58d168464ca384db46ef191adaeebfa` |
| 19 | `theorem` | [norm_sub_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/norm-sub-eq-lintegral--f9284d81768908c00c57dacc.md) | 145 | `result-track:f9284d81768908c00c57daccebc4f11a90e08068e03834cbf817f21123d93bff` |
| 20 | `theorem` | [ofReal_norm_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/ofreal-norm-eq-lintegral--4d6e95a0962ad8926597180a.md) | 152 | `result-track:4d6e95a0962ad8926597180a9d22012144076ec539451ec522b7273f81101fdd` |
| 21 | `theorem` | [ofReal_norm_sub_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/ofreal-norm-sub-eq-lintegral--77e32407a8141a8d9aeae1ca.md) | 159 | `result-track:77e32407a8141a8d9aeae1ca154673583960f15d201c39cae962f610e06202c6` |
| 22 | `def` | [toL1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/tol1--93c61d846c909127101e77eb.md) | 173 | `declaration-track:93c61d846c909127101e77eb7dfd9b49c65c9ebd9a89bbb6bc080dff9f3e8f6c` |
| 23 | `theorem` | [toL1_coeFn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/tol1-coefn--46a236e6c873ae253cf19a26.md) | 177 | `result-track:46a236e6c873ae253cf19a26147a520c88220b72874d22496ac7d87b05ebe0aa` |
| 24 | `theorem` | [coeFn_toL1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/coefn-tol1--86bb8ac32b5e93d3cbb3b844.md) | 180 | `result-track:86bb8ac32b5e93d3cbb3b8446b84c62847602a463ee839dce6a53216ead07ea4` |
| 25 | `theorem` | [toL1_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/tol1-zero--6d236f236c47e5f8cb44e24c.md) | 184 | `result-track:6d236f236c47e5f8cb44e24c1f7effc5ed64f34407b2d3aaf57cc54c36c27ab9` |
| 26 | `theorem` | [toL1_eq_mk](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/tol1-eq-mk--b5c02f31e8cd92f48e0908fd.md) | 188 | `result-track:b5c02f31e8cd92f48e0908fd6563394ea688323a1285ea6695f485ca03d5ea22` |
| 27 | `theorem` | [toL1_eq_toL1_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/tol1-eq-tol1-iff--76f15f8dbf7941ef46cd9555.md) | 193 | `result-track:76f15f8dbf7941ef46cd9555bc62a26750dab33a4010e8e6fe62eede05b4051d` |
| 28 | `theorem` | [toL1_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/tol1-add--7a207166f0747136d49a78cc.md) | 197 | `result-track:7a207166f0747136d49a78ccfec5c7ad417f654a42d8d60677094c0e02b2ed86` |
| 29 | `theorem` | [toL1_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/tol1-neg--f5a17909809f8e98a4cf62f0.md) | 201 | `result-track:f5a17909809f8e98a4cf62f0c234135a7874d04014dd6dc824e4e3ce967d606b` |
| 30 | `theorem` | [toL1_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/tol1-sub--3541e671953105cd354cbb3c.md) | 204 | `result-track:3541e671953105cd354cbb3c9085a28efc1f930b3a7cbed7c7bad36452829920` |
| 31 | `theorem` | [norm_toL1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/norm-tol1--23d1969ce2fcef25d0a4d435.md) | 208 | `result-track:23d1969ce2fcef25d0a4d435abd556f40fe33fad4f660e509289256861c0fcf6` |
| 32 | `theorem` | [enorm_toL1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/enorm-tol1--846ee256f6f51f2d448ea029.md) | 212 | `result-track:846ee256f6f51f2d448ea029b894e373223318dbbbef1a3e5434aefa7941c68b` |
| 33 | `theorem` | [norm_toL1_eq_lintegral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/norm-tol1-eq-lintegral-norm--73f97d580216785d23baed9f.md) | 218 | `result-track:73f97d580216785d23baed9f64649b37cfb201e31a666d430515ccd3c1851f6a` |
| 34 | `theorem` | [edist_toL1_toL1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/edist-tol1-tol1--c19a297c0d50dce767bfeb94.md) | 223 | `result-track:c19a297c0d50dce767bfeb9402c2ff1ddd8b49a02b0354b8d4d6f9c8b2f2965b` |
| 35 | `theorem` | [edist_toL1_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/edist-tol1-zero--7e8c7a1b8bb2895edc61fcab.md) | 229 | `result-track:7e8c7a1b8bb2895edc61fcaba0eaac029c125857855e86cff1993ebf039fadae` |
| 36 | `theorem` | [toL1_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/tol1-smul--7bb1c4167d835645d0d8daab.md) | 236 | `result-track:7bb1c4167d835645d0d8daab7a83bf900be2d80cddfae494c1c14821c33cc6f2` |
| 37 | `theorem` | [toL1_smul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean/declarations/tol1-smul--4a7451918272c8ddfe6dd86a.md) | 240 | `result-track:4a7451918272c8ddfe6dd86ac58f5a9bf7d597eb0de6b0194d2204231af5dc1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
