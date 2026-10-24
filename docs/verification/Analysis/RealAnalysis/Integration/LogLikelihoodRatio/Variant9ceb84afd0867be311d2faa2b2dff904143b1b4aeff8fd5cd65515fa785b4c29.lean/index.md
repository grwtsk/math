# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogLikelihoodRatio.Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10d76d1ddf3b944010ccdf2a404ebd671f0fa340",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10d76d1ddf3b944010ccdf2a404ebd671f0fa340`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean.json)

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
| 1 | `def` | [llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/llr--40f9478bdbb7de54241dc2b2.md) | 37 | `declaration-track:40f9478bdbb7de54241dc2b2cc7b65b0790a9f4ee4f3c7274e9b3b433ee73333` |
| 2 | `lemma` | [llr_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/llr-def--4b0321b1a58eeb0db801092b.md) | 39 | `result-track:4b0321b1a58eeb0db801092b5e79d663d88061d6bcbeb537c417353fc1f52190` |
| 3 | `lemma` | [llr_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/llr-self--c61e5348682876fdec4e926b.md) | 41 | `result-track:c61e5348682876fdec4e926bf344f72d2bbe09e6a4fcf1ec8927b0505a502ae7` |
| 4 | `lemma` | [exp_llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/exp-llr--4c62de0b107b77ea93ad2248.md) | 44 | `result-track:4c62de0b107b77ea93ad2248ef122809c8d1e366edb62455896413f4130a76d4` |
| 5 | `lemma` | [exp_llr_of_ac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/exp-llr-of-ac--89a02fce63bf135d3dfc5f08.md) | 53 | `result-track:89a02fce63bf135d3dfc5f084205a3cea16c89b5f47711c95efbdac9b477e956` |
| 6 | `lemma` | [exp_llr_of_ac'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/exp-llr-of-ac--b8a9198b236f5a75c979e94c.md) | 59 | `result-track:b8a9198b236f5a75c979e94ce3726567ed411447a5870a907542ba643bbd3fbe` |
| 7 | `lemma` | [neg_llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/neg-llr--c46f42342e0220a491a34951.md) | 64 | `result-track:c46f42342e0220a491a34951b841bc70629d0659b9e01228d8687e8128daeb5b` |
| 8 | `lemma` | [exp_neg_llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/exp-neg-llr--5fcdb22cb1f02a5e694ccef9.md) | 70 | `result-track:5fcdb22cb1f02a5e694ccef92d9518cf26b32af0993c49941ba68cc85623d99a` |
| 9 | `lemma` | [exp_neg_llr'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/exp-neg-llr--9c20d1f72734de08302a9318.md) | 76 | `result-track:9c20d1f72734de08302a9318a2deece0ed8c1a38f58c8e5edeb63b41f4ffc3b6` |
| 10 | `lemma` | [measurable_llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/measurable-llr--0da212c321760f761f5c412d.md) | 83 | `result-track:0da212c321760f761f5c412d3b56541e7086600f2583f8c506d5ee65b1693d7b` |
| 11 | `lemma` | [stronglyMeasurable_llr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/stronglymeasurable-llr--34de06e2f6f372bb0c8d17f3.md) | 87 | `result-track:34de06e2f6f372bb0c8d17f3e6f684ef2aa3a4bbc988fd00ac79c20a2af7c427` |
| 12 | `lemma` | [llr_smul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/llr-smul-left--011104a262ac80e7ac1e535f.md) | 90 | `result-track:011104a262ac80e7ac1e535fc42ccd6b64347b0096154fd9bc9d654835e65d7d` |
| 13 | `lemma` | [llr_smul_nnreal_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/llr-smul-nnreal-left--accd55b09889959d4f5d290f.md) | 107 | `result-track:accd55b09889959d4f5d290f67de77f41217cf7833252bc96381602c7c15ed22` |
| 14 | `lemma` | [llr_smul_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/llr-smul-right--c4de25496ba20090042e0545.md) | 115 | `result-track:c4de25496ba20090042e0545cba3fd99df67bd3c51f6a70c06d26bb51c28a238` |
| 15 | `lemma` | [llr_smul_nnreal_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/llr-smul-nnreal-right--a46a0600e7b3fa3fd4f6103a.md) | 133 | `result-track:a46a0600e7b3fa3fd4f6103a720643a7ddc1b578540d4a73e30c991159f9d45e` |
| 16 | `lemma` | [llr_smul_inv_left_eq_smul_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/llr-smul-inv-left-eq-smul-right--c36ae51159465e20e0985e73.md) | 141 | `result-track:c36ae51159465e20e0985e73adadc19a5d2e5f3e05126ad67137b00bd0ad954a` |
| 17 | `lemma` | [llr_smul_same](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/llr-smul-same--267c79c7bdc6d636c2bf9633.md) | 151 | `result-track:267c79c7bdc6d636c2bf9633822855a06ec0a728ace333f68233d43ac7e20712` |
| 18 | `lemma` | [llr_smul_nnreal_same](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/llr-smul-nnreal-same--c5ea112927764e2360b39ed8.md) | 159 | `result-track:c5ea112927764e2360b39ed8a0c064b06b9f6240f394b2a8e680a9a638a3a76a` |
| 19 | `lemma` | [integrable_rnDeriv_mul_log_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/integrable-rnderiv-mul-log-iff--91a020e6c5b44f7c6a37d802.md) | 166 | `result-track:91a020e6c5b44f7c6a37d802e737cea923a4699c45ce6112c6a5a18c3810c1ab` |
| 20 | `lemma` | [integral_rnDeriv_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/integral-rnderiv-mul-log--d300b5d1eba8aaba6ca0bc5d.md) | 171 | `result-track:d300b5d1eba8aaba6ca0bc5debf6fbe8e521d0bb2f6f38ca165b73b29f4ff4c4` |
| 21 | `lemma` | [llr_tilted_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/llr-tilted-left--ba194d702eef755a5a9360a0.md) | 177 | `result-track:ba194d702eef755a5a9360a0a4cc06bc6883f38684b57c9abc6e7f589b6eae72` |
| 22 | `lemma` | [integrable_llr_tilted_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/integrable-llr-tilted-left--f08b490fbe1ea718f4e55614.md) | 195 | `result-track:f08b490fbe1ea718f4e55614d1ac0c561b731135db58d0628f4875b1c8bdaad4` |
| 23 | `lemma` | [integral_llr_tilted_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/integral-llr-tilted-left--a094279867e396303b93248f.md) | 202 | `result-track:a094279867e396303b93248f32b889c58c5820aa405b880296e5ea0be0e84fb9` |
| 24 | `lemma` | [llr_tilted_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/llr-tilted-right--b7939ff2508eeaf097f22f8c.md) | 216 | `result-track:b7939ff2508eeaf097f22f8c621df125d8853bcf2f6c955999f20289118d1644` |
| 25 | `lemma` | [integrable_llr_tilted_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/integrable-llr-tilted-right--1c0cfeeab9529c09607a2c78.md) | 231 | `result-track:1c0cfeeab9529c09607a2c7809ee1c6c911c848526847a3760ec586f24440fba` |
| 26 | `lemma` | [integral_llr_tilted_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/declarations/integral-llr-tilted-right--75ce32807fa30b5ea86c7d8b.md) | 238 | `result-track:75ce32807fa30b5ea86c7d8bb8d2c90e3cfe41cf5c8b50121fd4c90aeaba0120` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
