# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.MeasurePreserving.Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f6c3bdf0c9b6bd09a18a20622dcbe7f5442b6a2",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f6c3bdf0c9b6bd09a18a20622dcbe7f5442b6a2`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.AEMeasurable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.EventuallyConst` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MeasurePreserving](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/measurepreserving--34c3550c91da9b9676da0b8c.md) | 49 | `declaration-track:34c3550c91da9b9676da0b8ce95ce0dfcb216f49fb2d6d3662885ec5f3b665ba` |
| 2 | `theorem` | [_root_.GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.MeasurePreserving.Variant32c9469e6b11e21972710cefd5491ce7a03c67de9aecf83d787f41aa982a71dd.Measurable.measurePreserving](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/root-grwtsk-differentialequationsanddynamicalsystems-dynamicalsystems-me--0dde531b1d1b59a4b068de7d.md) | 54 | `result-track:0dde531b1d1b59a4b068de7d92da1fce0ce6a55096b7fd2c1ef4bfc4f34cd31f` |
| 3 | `theorem` | [id](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/id--d890dbaabbed9634d31195f1.md) | 60 | `result-track:d890dbaabbed9634d31195f1cf21c99b004581c758cf8e09d2e3920f47898e4c` |
| 4 | `theorem` | [aemeasurable](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/aemeasurable--bcf9959ac110dfb59e8dbf8b.md) | 63 | `result-track:bcf9959ac110dfb59e8dbf8b5c7e9beebf05f5582ed87005a5ce73a82fe81c3c` |
| 5 | `theorem` | [of_isEmpty](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/of-isempty--24666338c74d7ae234442608.md) | 67 | `result-track:24666338c74d7ae23444260819f7f9cbe2407d4d7ceea6c5e70a9a93b11b0ce5` |
| 6 | `theorem` | [symm](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/symm--f7d25157fe3e61e06c73ab3b.md) | 71 | `result-track:f7d25157fe3e61e06c73ab3bd5d9bb29c79fcf564baff068f507375a353d09a3` |
| 7 | `theorem` | [restrict_preimage](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/restrict-preimage--7e8dc3a8b66749630a21f210.md) | 76 | `result-track:7e8dc3a8b66749630a21f210a0121af720f69b7c8b354e94c4e99457da4cce55` |
| 8 | `theorem` | [restrict_preimage_emb](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/restrict-preimage-emb--5ae5fb29889e4926a686270f.md) | 80 | `result-track:5ae5fb29889e4926a686270f4f88d2884ffadc25ecd69bc2c43f3a0246037ac6` |
| 9 | `theorem` | [restrict_image_emb](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/restrict-image-emb--2c44798d36389108cd59bb55.md) | 85 | `result-track:2c44798d36389108cd59bb5579cb4c53566704876a44c592ab9aea342de145ca` |
| 10 | `theorem` | [aemeasurable_comp_iff](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/aemeasurable-comp-iff--d2f0ca6c9e4f92390c55bae3.md) | 89 | `result-track:d2f0ca6c9e4f92390c55bae3ba1d8a9342998507e9536a885511abed4e3f7e1c` |
| 11 | `theorem` | [quasiMeasurePreserving](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/quasimeasurepreserving--9183d61ca20e5025b009f3ef.md) | 93 | `result-track:9183d61ca20e5025b009f3ef85ed1d4bee8c4dd434645cefd5b899756586f633` |
| 12 | `theorem` | [comp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/comp--efdfa1385094467702fccc01.md) | 97 | `result-track:efdfa1385094467702fccc0125e4102e8d364c48c7f57284ff7cff17911eff6f` |
| 13 | `theorem` | [trans](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/trans--96bdb5520df57c2dab7c1a2b.md) | 103 | `result-track:96bdb5520df57c2dab7c1a2b8e29f798ca7df0d454edfac9d0c78f9d50dcfc1b` |
| 14 | `theorem` | [comp_left_iff](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/comp-left-iff--9bbfb4d54af6b93f1b58a567.md) | 109 | `result-track:9bbfb4d54af6b93f1b58a567754770b784053a8fa32183c2d7248fe38cdc7903` |
| 15 | `theorem` | [comp_right_iff](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/comp-right-iff--0e5be3e3be82fa326469785c.md) | 115 | `result-track:0e5be3e3be82fa326469785c325eb40d2259903fbe46e4590ad9935c1e28a33c` |
| 16 | `theorem` | [sigmaFinite](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/sigmafinite--d832a0812abdabb4a03db582.md) | 121 | `result-track:d832a0812abdabb4a03db5821a67b74e317c058c48bfa2d8e736237abd73d0c3` |
| 17 | `theorem` | [sfinite](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/sfinite--762e8c5fc157c844d1436dfc.md) | 125 | `result-track:762e8c5fc157c844d1436dfc0a9ac58605b49d0e7bed4d13b8bd233ba7ebe3a7` |
| 18 | `theorem` | [measure_preimage](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/measure-preimage--6c2b5ce65c2c74e717c37a69.md) | 130 | `result-track:6c2b5ce65c2c74e717c37a696253b8e4f76a3198fb7cec17fbc5433d162f2b96` |
| 19 | `theorem` | [measureReal_preimage](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/measurereal-preimage--14417766a3138bbc40f6b2eb.md) | 135 | `result-track:14417766a3138bbc40f6b2eb0e6b39ad1d5eeb5679b07700a9ab3f663bd7c3f8` |
| 20 | `theorem` | [measure_preimage_emb](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/measure-preimage-emb--765146a9655b75e8e78d2c56.md) | 139 | `result-track:765146a9655b75e8e78d2c56c374440af11f6e88da7519d818a90681fac68853` |
| 21 | `theorem` | [measure_preimage_equiv](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/measure-preimage-equiv--62a9b309a469fe324e650853.md) | 143 | `result-track:62a9b309a469fe324e65085369e77edab2dfa978b707dc3536a706bf29976cf1` |
| 22 | `theorem` | [measure_preimage_le](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/measure-preimage-le--27edac42a586e1e475d5bf35.md) | 147 | `result-track:27edac42a586e1e475d5bf3580ec74b7c067f451c4371c6d8e2eb1b5d1dff747` |
| 23 | `theorem` | [preimage_null](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/preimage-null--5a069fb63a14f78a4753f35d.md) | 152 | `result-track:5a069fb63a14f78a4753f35d24c91950bcee76a84a019f949bb6abe867bd323e` |
| 24 | `theorem` | [aeconst_comp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/aeconst-comp--7bf3af76ccf3dcabc57a40d6.md) | 156 | `result-track:7bf3af76ccf3dcabc57a40d6c453d362909b97439815669d59fcf17730c1b8e7` |
| 25 | `theorem` | [aeconst_preimage](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/aeconst-preimage--263dbbc1c89583bfeebad497.md) | 163 | `result-track:263dbbc1c89583bfeebad497d38d066435050c0913ae0bd11d83db90ec181617` |
| 26 | `theorem` | [add_measure](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/add-measure--90a6f3776f7552d629e7196e.md) | 168 | `result-track:90a6f3776f7552d629e7196e08f2beaf5617b36b36618065ea2c61db9ea39afd` |
| 27 | `theorem` | [smul_measure](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/smul-measure--8ddf051ca9b3b38d35d0d5b6.md) | 173 | `result-track:8ddf051ca9b3b38d35d0d5b69f8c8adc2196440760c7d6235d6b8a8c2b31d162` |
| 28 | `theorem` | [iterate](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/iterate--73152626b5471ab2a70e4bfa.md) | 180 | `result-track:73152626b5471ab2a70e4bfa413949524121a2a3aa78ee6f6e2722aac01e6ecb` |
| 29 | `lemma` | [measure_symmDiff_preimage_iterate_le](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/measure-symmdiff-preimage-iterate-le--52756ca5fef68e35586d754f.md) | 186 | `result-track:52756ca5fef68e35586d754f693dc7a3a2378380026be5e9a3f9fda2e8f90217` |
| 30 | `theorem` | [exists_mem_iterate_mem_of_measure_univ_lt_mul_measure](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/exists-mem-iterate-mem-of-measure-univ-lt-mul-measure--98722cb52fe28f53b482b807.md) | 198 | `result-track:98722cb52fe28f53b482b807941fb1cd0a3518867bab14d9bcca2ac88a4f3582` |
| 31 | `theorem` | [exists_mem_iterate_mem](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/exists-mem-iterate-mem--2b0bd541738bba47d89fc671.md) | 217 | `result-track:2b0bd541738bba47d89fc67129063833055097003c5241d9eb9fbce4ea166787` |
| 32 | `theorem` | [measurePreserving_symm](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/MeasurePreserving/Variant2e2cc6610edd14e09af63ff0fa6d0b6a4e431f6b8c985527c9685ba33171a8f8.lean/declarations/measurepreserving-symm--952b4d4d8193678bc39b6e5c.md) | 227 | `result-track:952b4d4d8193678bc39b6e5cb4dfb4b906be25e2a06ab8b5e913bf2f6205a80a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
