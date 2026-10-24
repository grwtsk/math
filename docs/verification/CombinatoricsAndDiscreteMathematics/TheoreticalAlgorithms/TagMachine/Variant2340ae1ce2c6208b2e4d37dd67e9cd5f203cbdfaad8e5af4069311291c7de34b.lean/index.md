# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TagMachine.Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a241ae64bf6bcd9943445e09793d7814c8989d7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a241ae64bf6bcd9943445e09793d7814c8989d7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagReduction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TagMachineState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/declarations/tagmachinestate--d89058569818d6d4ef93835a.md) | 26 | `declaration-track:d89058569818d6d4ef93835ab4855b94aa582e6791b3e2f853fc72f69c6ddc13` |
| 2 | `inductive` | [TagMachineStep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/declarations/tagmachinestep--7dda23a6f356afd09a882527.md) | 34 | `declaration-track:7dda23a6f356afd09a88252713b34885deb92cd6099f32a4a0bc7f2eeeb93b6a` |
| 3 | `def` | [TagMachineAdmin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/declarations/tagmachineadmin--faa23d8bb9c3f0d804203887.md) | 41 | `declaration-track:faa23d8bb9c3f0d8042038870d9f16972dd0088e76ff0c5e94a0f17f90302fba` |
| 4 | `theorem` | [tag_machine_simulation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/declarations/tag-machine-simulation--d20a5e5dc7555034edb95342.md) | 45 | `result-track:d20a5e5dc7555034edb95342d0321deaf17a9d2fe8c3e1f42666973be273ce85` |
| 5 | `theorem` | [tag_machine_fiber_well_founded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/declarations/tag-machine-fiber-well-founded--3c07e5584f4252f80a64b47f.md) | 54 | `result-track:3c07e5584f4252f80a64b47f034886d4fcd802d0e63f514137a41a3f226fcc9a` |
| 6 | `theorem` | [tag_machine_strongly_normalizing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/declarations/tag-machine-strongly-normalizing--cb9a24f633e3e925117d892a.md) | 59 | `result-track:cb9a24f633e3e925117d892a9621f444e2a5cb84622f732eac70b9b64f24d08e` |
| 7 | `theorem` | [tag_machine_preserves_typing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/declarations/tag-machine-preserves-typing--87a47e61d39b68a58cc6e5ad.md) | 65 | `result-track:87a47e61d39b68a58cc6e5ad470df81810db0f4250db9599d77774f499b5b2d0` |
| 8 | `theorem` | [tag_machine_classification](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/declarations/tag-machine-classification--917cb7b0e6da683c8dd31bb6.md) | 74 | `result-track:917cb7b0e6da683c8dd31bb6067ebd75799da90b2535d3a6b52bd574ecb28d2f` |
| 9 | `theorem` | [tag_machine_total_budget](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/declarations/tag-machine-total-budget--d3968ab6b8136394d5e62593.md) | 88 | `result-track:d3968ab6b8136394d5e6259323f1636515f6641add652a490ff3b27d959cc16e` |
| 10 | `def` | [tagMachineNext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/declarations/tagmachinenext--de2d08731927aad49706ed55.md) | 95 | `declaration-track:de2d08731927aad49706ed5542bfc3799828cf9cee0f04775a6690c00df3a4f5` |
| 11 | `theorem` | [tag_machine_next_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/declarations/tag-machine-next-correct--1a1acdbd5955a699e485c17f.md) | 101 | `result-track:1a1acdbd5955a699e485c17fab668511c7f1679ac9f36fc739a15f18c1f9c944` |
| 12 | `def` | [tagMachineReducer](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/declarations/tagmachinereducer--d9361e7439a25bcca05a6cf9.md) | 121 | `declaration-track:d9361e7439a25bcca05a6cf9505a5dd983963f8bb39449f36a4072c1adc51d6d` |
| 13 | `theorem` | [tag_machine_discharge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/declarations/tag-machine-discharge--526501eafb4185a4008d7b77.md) | 128 | `result-track:526501eafb4185a4008d7b77ad8d48ff22b163657b21d3bfa78e7a11a165f60d` |
| 14 | `theorem` | [tag_machine_lift_trace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/declarations/tag-machine-lift-trace--f98639634b1a40d7a3e7a4b9.md) | 135 | `result-track:f98639634b1a40d7a3e7a4b9db97652afcd42b06510a82c04bbbeaf089acb280` |
| 15 | `def` | [tagMachineNormalize](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/declarations/tagmachinenormalize--6be3496c328df675228f758f.md) | 145 | `declaration-track:6be3496c328df675228f758f2866fe45f2ecc87849dc6a49d7c803c066ef85ba` |
| 16 | `theorem` | [tag_machine_normalize_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/declarations/tag-machine-normalize-spec--3d14281ef199bc617562d7bf.md) | 149 | `result-track:3d14281ef199bc617562d7bfabe8793ec11a304296ade760ca13c5c37ee83b28` |
| 17 | `theorem` | [tag_machine_normalize_preserves_typing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/declarations/tag-machine-normalize-preserves-typing--b8558f841857358641ee50fc.md) | 160 | `result-track:b8558f841857358641ee50fc6522d5770cfb273ea5e1bbf570ed7a7b38b1a61d` |
| 18 | `theorem` | [tag_machine_preserves_evaluation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/declarations/tag-machine-preserves-evaluation--0b9bb02dddf1ee173ea959ce.md) | 167 | `result-track:0b9bb02dddf1ee173ea959ce37db745a1e6614812ef532982232def635d3ba20` |
| 19 | `theorem` | [tag_machine_normalize_preserves_evaluation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/declarations/tag-machine-normalize-preserves-evaluation--854af68de49886ca127c08b4.md) | 177 | `result-track:854af68de49886ca127c08b46e42ab3736cf51d8867f19339ae4b30de9b9eeae` |
| 20 | `theorem` | [checked_tag_machine_trace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/declarations/checked-tag-machine-trace--045d23e9bbe45d09ba572117.md) | 184 | `result-track:045d23e9bbe45d09ba572117af929e6d441146e2786d3390c19158fef07d0b0e` |
| 21 | `theorem` | [checked_tag_machine_budget](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/declarations/checked-tag-machine-budget--12f28f6359dea9c87e9495fd.md) | 192 | `result-track:12f28f6359dea9c87e9495fd8d138b1374e26e009f0e86ffaf01c590c1b33673` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
