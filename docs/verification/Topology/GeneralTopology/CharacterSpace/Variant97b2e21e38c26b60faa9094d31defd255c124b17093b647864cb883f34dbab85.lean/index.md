# Verification target: GRWTSK.Topology.GeneralTopology.CharacterSpace.Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1af3568c1883797367e2a8729493c73980813959",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1af3568c1883797367e2a8729493c73980813959`.

Source path: `GRWTSK/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.WeakDual` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Spectrum.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Algebra` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [characterSpace](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/declarations/characterspace--c1e1ffdcecdb435b96bd630d.md) | 40 | `declaration-track:c1e1ffdcecdb435b96bd630d9be308a2e682a3f70ccf7d8ef813520c0ab77420` |
| 2 | `instance` | [instFunLike](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/declarations/instfunlike--922875e1398e30bf71c9c492.md) | 55 | `declaration-track:922875e1398e30bf71c9c492770c4da6048898ccee8814d391cde149f3008acb` |
| 3 | `instance` | [instContinuousLinearMapClass](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/declarations/instcontinuouslinearmapclass--6af6612b55b3376247be6697.md) | 60 | `declaration-track:6af6612b55b3376247be6697809cfc3f0c31022496e907b39c30613fc3e75c18` |
| 4 | `theorem` | [coe_coe](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/declarations/coe-coe--4591cf38792e12e79bf2ebac.md) | 68 | `result-track:4591cf38792e12e79bf2ebac520ba53c4ed0218fa80a1677620d0841d8a45079` |
| 5 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/declarations/ext--8ccc7de416fa28551d81c1b2.md) | 72 | `result-track:8ccc7de416fa28551d81c1b2531f5fe9af3f83cc3f2a180d2e5a2cc87d0d9f2b` |
| 6 | `def` | [toCLM](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/declarations/toclm--d2fc89f7210cc0f67f16b602.md) | 76 | `declaration-track:d2fc89f7210cc0f67f16b602e27b071bce5b3bfae156d205d3f6d86a11f1c82f` |
| 7 | `theorem` | [coe_toCLM](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/declarations/coe-toclm--69383800a54d14e3d59bf2b4.md) | 80 | `result-track:69383800a54d14e3d59bf2b4eb45234cc9b2608338f3239611e15e1848fc6fc3` |
| 8 | `instance` | [instNonUnitalAlgHomClass](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/declarations/instnonunitalalghomclass--280947c6eb54c69b42f3f1d4.md) | 84 | `declaration-track:280947c6eb54c69b42f3f1d4f528c4fa6a7ef49c5949e1ad151190dbf23cab17` |
| 9 | `def` | [toNonUnitalAlgHom](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/declarations/tononunitalalghom--bfcc5aba1bd10d81ae06f78c.md) | 91 | `declaration-track:bfcc5aba1bd10d81ae06f78c641e206af12151eba0bd892ffe8960a6c49303a4` |
| 10 | `theorem` | [coe_toNonUnitalAlgHom](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/declarations/coe-tononunitalalghom--7eb484d5638e86dbaf07a433.md) | 99 | `result-track:7eb484d5638e86dbaf07a433e8cb41c3d832dcad69496e83545583780224f41d` |
| 11 | `instance` | [instIsEmpty](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/declarations/instisempty--bee6d9fef9a993eed817bf9f.md) | 102 | `declaration-track:bee6d9fef9a993eed817bf9fe0dbd56ae3e3466d6b66151a53b660ecea63b265` |
| 12 | `theorem` | [union_zero](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/declarations/union-zero--d8150872c77691a33fb93269.md) | 109 | `result-track:d8150872c77691a33fb93269285bec416c1bdfef977d96f4703d9d900053951d` |
| 13 | `theorem` | [union_zero_isClosed](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/declarations/union-zero-isclosed--c61518ee6ac971371d1e1252.md) | 118 | `result-track:c61518ee6ac971371d1e125293f88f66adcf9d59875742a4fbc28093a7c70e93` |
| 14 | `instance` | [instAlgHomClass](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/declarations/instalghomclass--d9253ee2bbd447965458dab2.md) | 134 | `declaration-track:d9253ee2bbd447965458dab299ff4bf30f8d488a2ed298d621ef4309c7425e96` |
| 15 | `def` | [toAlgHom](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/declarations/toalghom--09017372bd7d59ee28e9d14f.md) | 149 | `declaration-track:09017372bd7d59ee28e9d14fd0c25fc5c989648bb6ed4ffe43abebaccbc447de` |
| 16 | `theorem` | [eq_set_map_one_map_mul](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/declarations/eq-set-map-one-map-mul--78a7e7a1c61222754f985c20.md) | 154 | `result-track:78a7e7a1c61222754f985c20611ec26f8149ace054c6d3d18842773573afbcac` |
| 17 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/declarations/isclosed--dd847ce2e91c73250b7039e9.md) | 168 | `result-track:dd847ce2e91c73250b7039e996169ea875f0268fe40242b861c4c3bda56fb2f4` |
| 18 | `theorem` | [apply_mem_spectrum](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/declarations/apply-mem-spectrum--555765a760d1059762066389.md) | 181 | `result-track:555765a760d1059762066389d3c5b47e63ea5439288aae354dfd609d4b0b44e6` |
| 19 | `theorem` | [ext_ker](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/declarations/ext-ker--4fec6e7c71652e800a494c14.md) | 184 | `result-track:4fec6e7c71652e800a494c14b39c33fba0d9bf8984b39d82213c87fd0473222e` |
| 20 | `instance` | [ker_isMaximal](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/declarations/ker-ismaximal--1497f2365b0b9fc2af0fc6fc.md) | 200 | `declaration-track:1497f2365b0b9fc2af0fc6fca4522a9353fb0d37c65760c8c353bef46e7a5b17` |
| 21 | `def` | [gelfandTransform](../../../../../mathematics/Topology/GeneralTopology/CharacterSpace/Variant97b2e21e38c26b60faa9094d31defd255c124b17093b647864cb883f34dbab85.lean/declarations/gelfandtransform--ede0c3ccaa98a883132340c7.md) | 217 | `declaration-track:ede0c3ccaa98a883132340c798aeca9449990caa1639b18346a68445ed286763` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
