# Verification target: GRWTSK.Topology.GeneralTopology.GroupCompletion.Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9be7a663fae22b2cb6c343183574513a6df8f09",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9be7a663fae22b2cb6c343183574513a6df8f09`.

Source path: `GRWTSK/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.UniformMulAction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Completion` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Pointwise` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/instance--c652b9ad014d1215de8f66cc.md) | 50 | `declaration-track:c652b9ad014d1215de8f66cc9b43de1c55a101520577f6e7e1b50c43114c15ca` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/instance--432bccc68c391be065b6854a.md) | 53 | `declaration-track:432bccc68c391be065b6854a42699ef77c909ea9f0d936a35956cdea9c35637f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/instance--3d938cf9f078d8fb2411333a.md) | 56 | `declaration-track:3d938cf9f078d8fb2411333a4f0d36975412a14ab88c1fb1f0bbb9af03d97aa8` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/instance--6e3dacae18f197c80cb38960.md) | 59 | `declaration-track:6e3dacae18f197c80cb38960833732085cb5a5ff93e0457cdda3a12681e904d0` |
| 5 | `theorem` | [UniformSpace.Completion.coe_zero](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/uniformspace-completion-coe-zero--25c2723bf7d09bb92ac25098.md) | 63 | `result-track:25c2723bf7d09bb92ac25098a9954702f846cc27544b2b5a6912b2c2e346fd2a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/instance--4b5275f9d58c4fd2c74bbef6.md) | 74 | `declaration-track:4b5275f9d58c4fd2c74bbef6b43d9d0ef3998b57d23627e7ba735c256c88bdcc` |
| 7 | `theorem` | [coe_neg](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/coe-neg--c74b0a50e1294a9bd68fd847.md) | 89 | `result-track:c74b0a50e1294a9bd68fd847676accca7ef95d7a99e3193747c3a74b5e28f681` |
| 8 | `theorem` | [coe_sub](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/coe-sub--9f41c48839a6daa8afb51609.md) | 93 | `result-track:9f41c48839a6daa8afb51609d42c2d3d0e4c683ec0f6734d7c2bd61b5e5190ae` |
| 9 | `theorem` | [coe_add](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/coe-add--fb012c61fb1b339fda132873.md) | 97 | `result-track:fb012c61fb1b339fda1328732bba7dcfc495078170d8b97a2ac3097a0dd129b4` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/instance--da3c90038d87e7241fb87ae9.md) | 100 | `declaration-track:da3c90038d87e7241fb87ae9317de56330ef75484ad0e29f2e59c18674ec24b5` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/instance--150cfcdbdf73817b6e6b433a.md) | 131 | `declaration-track:150cfcdbdf73817b6e6b433a956ab2cb8565e8d0ebdf74bf817266473363fe07` |
| 12 | `instance` | [addGroup](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/addgroup--dcffb8f241d3095ce160e7c0.md) | 157 | `declaration-track:dcffb8f241d3095ce160e7c002a61a5ba245d400a54f03c1aa77788281d52234` |
| 13 | `instance` | [isUniformAddGroup](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/isuniformaddgroup--fda37ce9c86aa084a5640357.md) | 167 | `declaration-track:fda37ce9c86aa084a56403578941458982072107324a22c6791cb5a590b27dea` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/instance--f9cdddd1d63942bb508509cd.md) | 170 | `declaration-track:f9cdddd1d63942bb508509cdfa0dd710f5dd6f259bfc65b4cf2adea3ff27623b` |
| 15 | `def` | [toCompl](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/tocompl--8186c623c00c44fc1659d2f5.md) | 182 | `declaration-track:8186c623c00c44fc1659d2f5114427786928a938a551fdd020cea737d931702b` |
| 16 | `theorem` | [continuous_toCompl](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/continuous-tocompl--8bc4c1bc94503972002847e0.md) | 187 | `result-track:8bc4c1bc94503972002847e0b2a3c179257d211c983583b72f969229e33ac470` |
| 17 | `theorem` | [isDenseInducing_toCompl](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/isdenseinducing-tocompl--0c0626dd0be980c3604ce186.md) | 191 | `result-track:0c0626dd0be980c3604ce186d59ac1cb8395d74fd9775d2f601c1100099bf7b2` |
| 18 | `instance` | [instAddCommGroup](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/instaddcommgroup--d2ca9caa138ddcec8b8d109c.md) | 200 | `declaration-track:d2ca9caa138ddcec8b8d109c0696402cbd0430654a1e8a028d6ba0bf26354a02` |
| 19 | `instance` | [instModule](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/instmodule--be9e58d3430281aac20594df.md) | 210 | `declaration-track:be9e58d3430281aac20594df91d11149ddd929a4a44100a96e70e3d644b235df` |
| 20 | `def` | [AddMonoidHom.extension](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/addmonoidhom-extension--28fc92e5d1027a22dc272959.md) | 231 | `declaration-track:28fc92e5d1027a22dc272959a6a05ef6c37a3674b47aea5a0bedb94817017192` |
| 21 | `theorem` | [AddMonoidHom.extension_coe](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/addmonoidhom-extension-coe--476bad9909c20b91458819e4.md) | 245 | `result-track:476bad9909c20b91458819e477efca262b531f7cbe51ddb12f3a37a6395d12ae` |
| 22 | `theorem` | [AddMonoidHom.continuous_extension](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/addmonoidhom-continuous-extension--3bbdd2561e82bfe09f619b01.md) | 250 | `result-track:3bbdd2561e82bfe09f619b01d2d93d8d49a3dc4f636a9de7d3ec839316de8735` |
| 23 | `def` | [AddMonoidHom.completion](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/addmonoidhom-completion--62d468bf57b55bb36b03813c.md) | 255 | `declaration-track:62d468bf57b55bb36b03813c7f2f5ed7bbce607c2a7f5936ab4840432a6e64bc` |
| 24 | `theorem` | [AddMonoidHom.continuous_completion](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/addmonoidhom-continuous-completion--a6348587fe49b08a4f074398.md) | 259 | `result-track:a6348587fe49b08a4f074398d86cb8a07f13d3af532a374f94fbd657dc5c6750` |
| 25 | `theorem` | [AddMonoidHom.completion_coe](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/addmonoidhom-completion-coe--e0fcfedc8be4ff8d2843c5d1.md) | 263 | `result-track:e0fcfedc8be4ff8d2843c5d1473e4c257581547815a066b5a63619ac48edbb15` |
| 26 | `theorem` | [AddMonoidHom.completion_zero](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/addmonoidhom-completion-zero--c4d5691c0e201db2649fdbc9.md) | 267 | `result-track:c4d5691c0e201db2649fdbc9cd5b32343c7b366fff33ef4a12e87508a8800e29` |
| 27 | `theorem` | [AddMonoidHom.completion_add](../../../../../mathematics/Topology/GeneralTopology/GroupCompletion/Variantc9aec9aabc1af2187f1c7c5bd508e7591d0316be84242a74744cda8514e43c0e.lean/declarations/addmonoidhom-completion-add--6f71a507ccc5befcd2e253cd.md) | 276 | `result-track:6f71a507ccc5befcd2e253cd29b89b37726fa7dbf3bf15e13a809661d4b61a69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
