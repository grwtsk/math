# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a018e7cd9cf73cca86af3af0ae8a63aa6f463f20",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a018e7cd9cf73cca86af3af0ae8a63aa6f463f20`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean.json)

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
| 1 | `class` | [PseudoMetrizableSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/pseudometrizablespace--126b9a57db26b57ae3a1778a.md) | 42 | `declaration-track:126b9a57db26b57ae3a1778ae34462600fdc25317ab71745476d041e78dad6d1` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/instance--f9731d8e267d79d9eceb1670.md) | 47 | `declaration-track:f9731d8e267d79d9eceb1670fa03765e1ab5a13a8c91059293279b68de33a5e1` |
| 3 | `abbrev` | [pseudoMetrizableSpaceUniformity](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/pseudometrizablespaceuniformity--08547de951a40aac5a9565cd.md) | 55 | `declaration-track:08547de951a40aac5a9565cd2c0588b1fc2b748829a876de882a6983e0d58422` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/example--5b16deda095a7933194d4d49.md) | 60 | `declaration-track:5b16deda095a7933194d4d494e7336860a08a731ca751143b2eca8633d9d6a29` |
| 5 | `theorem` | [pseudoMetrizableSpaceUniformity_countably_generated](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/pseudometrizablespaceuniformity-countably-generated--8fa5f3e65ca61e1ae4a96f97.md) | 65 | `result-track:8fa5f3e65ca61e1ae4a96f97382f1e8a8d90d601998b79dbd8e4854298408c1f` |
| 6 | `instance` | [pseudoMetrizableSpace_prod](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/pseudometrizablespace-prod--7d362a61fb306fd85f8c5d28.md) | 70 | `declaration-track:7d362a61fb306fd85f8c5d28cc3365b89535341801a0032e31f4212655f6d16c` |
| 7 | `theorem` | [_root_.Topology.IsInducing.pseudoMetrizableSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/root-topology-isinducing-pseudometrizablespace--a6fe2a9f79002e65c013682a.md) | 82 | `result-track:a6fe2a9f79002e65c013682ab7b9d2aa9534bc1f2f3d08c6e8e75c45680a4ca9` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/instance--75d7485d8ed80d4723036325.md) | 91 | `declaration-track:75d7485d8ed80d4723036325bef9d1f3df406f5ba5d966eee97d7ae54464bef8` |
| 9 | `instance` | [PseudoMetrizableSpace.subtype](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/pseudometrizablespace-subtype--b4ee6abed0d54184278efe99.md) | 98 | `declaration-track:b4ee6abed0d54184278efe9959f2b1d8daa969e195f619f50d3c3ac322a07c92` |
| 10 | `instance` | [pseudoMetrizableSpace_pi](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/pseudometrizablespace-pi--6651a720d64d124aac5f7889.md) | 102 | `declaration-track:6651a720d64d124aac5f7889df049d13c15cd531949c8eb85b40a0532de9ff65` |
| 11 | `instance` | [PseudoMetrizableSpace.regularSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/pseudometrizablespace-regularspace--12e5e9e340a54c67dceab46c.md) | 108 | `declaration-track:12e5e9e340a54c67dceab46c920ab5ec9319c96dab812f5fda9adf34a945b506` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/instance--5e816a6a97850fd00478e8c8.md) | 112 | `declaration-track:5e816a6a97850fd00478e8c8ead1105511a76f53fef4f2e79d78f5dc184176f2` |
| 13 | `class` | [MetrizableSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/metrizablespace--58a1ecdd1e88ee7b4025f13d.md) | 125 | `declaration-track:58a1ecdd1e88ee7b4025f13ddda7f927a5e6203504452b1c2d7e6b28d976dca3` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/instance--435b14d6c786c57d90a58774.md) | 132 | `declaration-track:435b14d6c786c57d90a5877440a26002c2907036bdf7367ed3983aa445eb1ec4` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/instance--cbdc2f87d6416b823c071dff.md) | 135 | `declaration-track:cbdc2f87d6416b823c071dff46fe4cd7c64eda79116beb00f4c55b50b809d2ee` |
| 16 | `instance` | [metrizableSpace_prod](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/metrizablespace-prod--c3a9e7d23ca24fedbf253b10.md) | 139 | `declaration-track:c3a9e7d23ca24fedbf253b10da8e831922aa4b31cb831fa36789224d057d66a4` |
| 17 | `theorem` | [_root_.Topology.IsEmbedding.metrizableSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/root-topology-isembedding-metrizablespace--fbab611d9825f9bef4063060.md) | 144 | `result-track:fbab611d9825f9bef4063060b37d29c33e7b694609b0b145de906e49cb274755` |
| 18 | `instance` | [MetrizableSpace.subtype](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/metrizablespace-subtype--4d9e50eda7964e214aaaa14f.md) | 149 | `declaration-track:4d9e50eda7964e214aaaa14f020993d71a6e436600801c5158bbead9d82025f6` |
| 19 | `instance` | [metrizableSpace_pi](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/metrizablespace-pi--85b1269df1680a05d1253a7f.md) | 152 | `declaration-track:85b1269df1680a05d1253a7f7aef77f70ae37e4ceb30175b65c13786d313bc1b` |
| 20 | `theorem` | [IsSeparable.secondCountableTopology](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/isseparable-secondcountabletopology--cbda8fd117bc8e59bc1ea93e.md) | 154 | `result-track:cbda8fd117bc8e59bc1ea93eb9599e8ac3a02e93b35b121f40825ebbab28ecf1` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/instance--5cf29cd07e28f5352304166b.md) | 166 | `declaration-track:5cf29cd07e28f5352304166bb0446e6c2036da26fcf1055d300720e90451ead0` |
| 22 | `theorem` | [IsSeparable.exists_countable_dense_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/isseparable-exists-countable-dense-subset--a03a55a2a597ca8e71a3d7f2.md) | 185 | `result-track:a03a55a2a597ca8e71a3d7f2c0e4bc09fba02e17d73dfbdf772d57f5fe7e7047` |
| 23 | `theorem` | [IsSeparable.separableSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/isseparable-separablespace--26e982b55b20aecb77727d0c.md) | 200 | `result-track:26e982b55b20aecb77727d0c5d129dd935ceff1dd832db44688b3e7e22954e95` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb3109255e290e85cfeaca128a66def49978c4e9fe22866c499e9882132bd3ac8.lean/declarations/instance--269d74714d30b7e0457622aa.md) | 207 | `declaration-track:269d74714d30b7e0457622aa7a01310a887aab5e776492ca4118e04ab28161c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
