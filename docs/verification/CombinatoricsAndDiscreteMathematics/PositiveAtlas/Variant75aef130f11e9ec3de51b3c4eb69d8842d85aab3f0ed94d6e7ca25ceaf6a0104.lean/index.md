# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PositiveAtlas.Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "369acd1b9c6ef3433e80baddc77623e4c0dad732",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `369acd1b9c6ef3433e80baddc77623e4c0dad732`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ProvenanceProjection` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.FiniteFeatureGeometry` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteFibreWeights](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/finitefibreweights--425ef9c5f3ad9879cc8d4e5e.md) | 21 | `declaration-track:425ef9c5f3ad9879cc8d4e5e800ffd977de9bb7b4e2d3b3a257468eafc29a05b` |
| 2 | `def` | [mass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/mass--a28a10715e301ac7cdb50912.md) | 34 | `declaration-track:a28a10715e301ac7cdb50912bd41bf83583190a61eec8b708b661c028f0b26f5` |
| 3 | `theorem` | [mass_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/mass-pos--9e327247867f4578388571c5.md) | 36 | `result-track:9e327247867f4578388571c5c69c6731a759b41157a39d56a362cc64e99236a8` |
| 4 | `theorem` | [mass_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/mass-ne-zero--d8e48c42d5bfb0cd4f46ee97.md) | 39 | `result-track:d8e48c42d5bfb0cd4f46ee977fca3010b922bde283b5123c784350f102e63827` |
| 5 | `def` | [mean](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/mean--e4d63103f3bc16a68ff30f8c.md) | 43 | `declaration-track:e4d63103f3bc16a68ff30f8cc2b42ecd2c0392283d4aff6e51673ced8ba451d6` |
| 6 | `def` | [FibreConstant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/fibreconstant--fd7d69c3d9b8277d72e4ad36.md) | 47 | `declaration-track:fd7d69c3d9b8277d72e4ad36e27840e1a37085e3ae12593c306401005aa640c6` |
| 7 | `theorem` | [mass_mul_mean](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/mass-mul-mean--1e0c1cd1a91a7ad18760e13b.md) | 49 | `result-track:1e0c1cd1a91a7ad18760e13b52743f5da105d2bc21645df716dd60bdfd60fe34` |
| 8 | `theorem` | [mean_constant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/mean-constant--68b666eb1a4ef6846a5667cd.md) | 53 | `result-track:68b666eb1a4ef6846a5667cdd649b1f69e6ea5ff1a9958a1cf3f0dc123f33558` |
| 9 | `theorem` | [mean_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/mean-add--1c9ada47008fe4e3c7104952.md) | 59 | `result-track:1c9ada47008fe4e3c7104952d8c752f1648eaa854142a3d405daa30133897408` |
| 10 | `theorem` | [mean_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/mean-smul--d090cff500914099cf12d3e3.md) | 64 | `result-track:d090cff500914099cf12d3e3c914bc476f8f7f32883361f6c0640f331c92de40` |
| 11 | `def` | [averaging](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/averaging--b5ff7ffd5bad490d4dd9749c.md) | 73 | `declaration-track:b5ff7ffd5bad490d4dd9749c2dcc05b1134b82e47dd0410e2ad38c87edf379a6` |
| 12 | `theorem` | [averaging_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/averaging-apply--577a684fbf2fb529590ffb1d.md) | 81 | `result-track:577a684fbf2fb529590ffb1d3e7b563eeb136a91f959f1ec5a9bf7918efed0ec` |
| 13 | `theorem` | [averaging_fibreConstant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/averaging-fibreconstant--c1cd2244edefecd4620baaab.md) | 85 | `result-track:c1cd2244edefecd4620baaab049fb35e07145aeb7c4a6ae54316ae25b1815fd1` |
| 14 | `theorem` | [averaging_eq_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/averaging-eq-self--91252510d95265d91491f490.md) | 88 | `result-track:91252510d95265d91491f490f6987e6b1deb71811673cd7e14ad7dbae2574272` |
| 15 | `theorem` | [averaging_eq_self_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/averaging-eq-self-iff--9219612ec2dbd4f768671585.md) | 96 | `result-track:9219612ec2dbd4f768671585dac7e582d032b407f971eb915147b9ad5ac8ffc4` |
| 16 | `theorem` | [averaging_idempotent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/averaging-idempotent--272fc4c61a302c3fc1862e3e.md) | 102 | `result-track:272fc4c61a302c3fc1862e3e1f7458402a98950a9b427e79ab17ae74a35e56a7` |
| 17 | `theorem` | [weighted_residual_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/weighted-residual-sum--5f9194bdbff8224e3fd72115.md) | 106 | `result-track:5f9194bdbff8224e3fd72115f8af9c3c2bd21e72b15ccaaade616018a6584da5` |
| 18 | `def` | [positiveForm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/positiveform--e215ab2a96fff3a1abb5eb6d.md) | 117 | `declaration-track:e215ab2a96fff3a1abb5eb6d1ced24c14cb763f06f8076b15442fc270a13f371` |
| 19 | `def` | [flattenObservable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/flattenobservable--fd8c24e6a82e7c68355e2a3d.md) | 139 | `declaration-track:fd8c24e6a82e7c68355e2a3dd19db17a9839509939e70307301d543df729de20` |
| 20 | `theorem` | [positiveForm_eq_featureForm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/positiveform-eq-featureform--41903aba47385994316f4482.md) | 147 | `result-track:41903aba47385994316f4482331813d631c1abc223740eee2ff567fc32983247` |
| 21 | `theorem` | [fibreConstant_orthogonal_residual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/fibreconstant-orthogonal-residual--899aaaa5d2e336d8c0157d7e.md) | 156 | `result-track:899aaaa5d2e336d8c0157d7efc22232709b8d2725b543c531c473ab3422e96b5` |
| 22 | `def` | [projector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/projector--5062a63d28ae771b16deacdb.md) | 168 | `declaration-track:5062a63d28ae771b16deacdbf2e4148648584ddfd7aa86a8e85a5aa356268ffa` |
| 23 | `theorem` | [form_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/form-eq-zero-iff--d495720571107b825b2fece1.md) | 174 | `result-track:d495720571107b825b2fece1d63116a4b85917e8bf9e306b020a05f78026140d` |
| 24 | `theorem` | [quadratic_decomposition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/quadratic-decomposition--6542585abfff6b562f0ba1e0.md) | 189 | `result-track:6542585abfff6b562f0ba1e090472839115900fda3bdad4438d1558f323fd730` |
| 25 | `theorem` | [averaging_contraction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/averaging-contraction--fafbc65dd20336f898ad6d88.md) | 195 | `result-track:fafbc65dd20336f898ad6d88ed460478d0df8ab85a076f67be88446cfcba5ee1` |
| 26 | `theorem` | [residual_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/residual-zero-iff--40ba139141dd70593824a593.md) | 201 | `result-track:40ba139141dd70593824a5930e7565d1fa160efa134c91938cfc3e3e4d3abb72` |
| 27 | `theorem` | [averaging_self_adjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/averaging-self-adjoint--5a02f2978095b43b37c2c27d.md) | 207 | `result-track:5a02f2978095b43b37c2c27d946e20d4cc98b917123011e040ba21add9978755` |
| 28 | `theorem` | [approximation_decomposition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/approximation-decomposition--e077a09b6999ea7c1e5bd570.md) | 223 | `result-track:e077a09b6999ea7c1e5bd5705f1e639f8003d26f1f51c191c1bccd5390fa49a2` |
| 29 | `theorem` | [averaging_minimizes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/averaging-minimizes--e0cdc75e3373873b56e9ff48.md) | 234 | `result-track:e0cdc75e3373873b56e9ff488354a8577393f6b95771814163ebadcba35920e9` |
| 30 | `theorem` | [minimal_error_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/minimal-error-iff--fff92019fbebaf2a397a9ed6.md) | 243 | `result-track:fff92019fbebaf2a397a9ed6c83d14b458bb81ba5abad9a49b446233dde3a137` |
| 31 | `theorem` | [fibreConstant_iff_factors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/fibreconstant-iff-factors--41d73f375b7e5ab6f7f7fdff.md) | 258 | `result-track:41d73f375b7e5ab6f7f7fdff8c5ac0ab57557706b6fd87bbbe81b6658dd58d8d` |
| 32 | `theorem` | [averaging_coarser](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/averaging-coarser--befd1f1aa950c6992640118c.md) | 267 | `result-track:befd1f1aa950c6992640118c4ae2a581da7fe745c392ff7ff3d6c0d09f7e9224` |
| 33 | `theorem` | [coarser_averaging](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/coarser-averaging--f91d99fd2f07e4eea0260b13.md) | 274 | `result-track:f91d99fd2f07e4eea0260b1305befd100cc26f1e05c1e4c31010d646c3ad3c3c` |
| 34 | `theorem` | [coarser_error_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/coarser-error-monotone--552d91f273b37e16ee2cf81d.md) | 290 | `result-track:552d91f273b37e16ee2cf81dec3492580c3c822e9b7bd2f6e1d3d4a9016d8146` |
| 35 | `def` | [unequalWeights](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/unequalweights--357be5e29c786fc8ae8e2a9d.md) | 306 | `declaration-track:357be5e29c786fc8ae8e2a9da79715373686f25738a2c40ad1c0addb60e6ac3c` |
| 36 | `def` | [varying](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/varying--f07802fe5b9f50acd6c068cb.md) | 311 | `declaration-track:f07802fe5b9f50acd6c068cbb743bc4a37a77155c10087d6df013b7745853c11` |
| 37 | `theorem` | [unequal_average](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/unequal-average--81f527a61e26dfda4147e91d.md) | 314 | `result-track:81f527a61e26dfda4147e91dc91fbaf6a23e012871525cdac8dc369464e44f79` |
| 38 | `theorem` | [unequal_residual_energy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/unequal-residual-energy--03bb4eb1a2f9724b577b769a.md) | 320 | `result-track:03bb4eb1a2f9724b577b769adb6c656b2c6fa1d6dc961e28bc5e2a972e89874b` |
| 39 | `theorem` | [varying_not_fixed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/varying-not-fixed--ebdab8741b4361eaa89f371f.md) | 328 | `result-track:ebdab8741b4361eaa89f371f153986af51eb515641f0efccfde07ef362c5e90a` |
| 40 | `theorem` | [singleton_fibres_retain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant75aef130f11e9ec3de51b3c4eb69d8842d85aab3f0ed94d6e7ca25ceaf6a0104.lean/declarations/singleton-fibres-retain--84c050eb835579fe71f22640.md) | 335 | `result-track:84c050eb835579fe71f22640fb321964ac440f02355c7ed893eabc78ae3a120c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
