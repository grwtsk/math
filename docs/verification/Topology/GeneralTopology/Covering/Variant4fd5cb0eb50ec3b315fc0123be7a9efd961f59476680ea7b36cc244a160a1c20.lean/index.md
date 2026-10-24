# Verification target: GRWTSK.Topology.GeneralTopology.Covering.Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7157fe094bc4abd47635d583f37003dfd318bba",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7157fe094bc4abd47635d583f37003dfd318bba`.

Source path: `GRWTSK/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.IsLocallyHomeomorph` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.FiberBundle.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsEvenlyCovered](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/declarations/isevenlycovered--6cc983599a79b87231a1f9e6.md) | 32 | `declaration-track:6cc983599a79b87231a1f9e6a3063a4d9dfac446b1a6b0e1436cd8e66b7be579` |
| 2 | `def` | [toTrivialization](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/declarations/totrivialization--bbb268aa591b765863d13608.md) | 41 | `declaration-track:bbb268aa591b765863d1360899a2a5e13d408730bf6dc06794a1937dc27d24d3` |
| 3 | `theorem` | [mem_toTrivialization_baseSet](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/declarations/mem-totrivialization-baseset--3ab7dd6a0f36b66b3fcbf558.md) | 47 | `result-track:3ab7dd6a0f36b66b3fcbf558d6628002d403fcec689dcb35916b8af596484204` |
| 4 | `theorem` | [toTrivialization_apply](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/declarations/totrivialization-apply--93c255bdd560c89c1a5852af.md) | 52 | `result-track:93c255bdd560c89c1a5852af6d13a5c84e928cde3f06e01e2999458ae6a9f52a` |
| 5 | `theorem` | [continuousAt](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/declarations/continuousat--09f53d725a902b104cd3325b.md) | 63 | `result-track:09f53d725a902b104cd3325b3e7b9681c1e041f74c49a1f01b1936f32df4c56d` |
| 6 | `theorem` | [to_isEvenlyCovered_preimage](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/declarations/to-isevenlycovered-preimage--5ec4a951409093715bdbb3e2.md) | 69 | `result-track:5ec4a951409093715bdbb3e2aa4ae925054957e253b248989988f57153146198` |
| 7 | `def` | [IsCoveringMapOn](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/declarations/iscoveringmapon--ab2764ec2bfcaab579b140fc.md) | 81 | `declaration-track:ab2764ec2bfcaab579b140fc02f730308d1a4736682f3c87ac6df84c3b256212` |
| 8 | `theorem` | [mk](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/declarations/mk--1a6b26a05d3e85b1944ecaf6.md) | 87 | `result-track:1a6b26a05d3e85b1944ecaf677b9737c30808a691c86c53fa0914c8c4f16e2c5` |
| 9 | `theorem` | [continuousAt](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/declarations/continuousat--a43d57868f003df08832340e.md) | 95 | `result-track:a43d57868f003df08832340e9df30073f10da90667b1bf288435b70fd9599e7e` |
| 10 | `theorem` | [continuousOn](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/declarations/continuouson--6e328e4cbda0e8171d4cce05.md) | 100 | `result-track:6e328e4cbda0e8171d4cce05f9988b15ff9ea111295a47111c6ad17bd651e55a` |
| 11 | `theorem` | [isLocallyHomeomorphOn](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/declarations/islocallyhomeomorphon--1304f9d34568647456ff6048.md) | 104 | `result-track:1304f9d34568647456ff604881e7c9ec5674c10c5902149671eceb225f15bfee` |
| 12 | `def` | [IsCoveringMap](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/declarations/iscoveringmap--918204438b6550864298ee4b.md) | 134 | `declaration-track:918204438b6550864298ee4b2e1bf2888263d23aceee228be182ac50105fb756` |
| 13 | `theorem` | [isCoveringMap_iff_isCoveringMapOn_univ](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/declarations/iscoveringmap-iff-iscoveringmapon-univ--0a0ddb627f7fd1fbb58e6a56.md) | 140 | `result-track:0a0ddb627f7fd1fbb58e6a5673908c66baa27f591f4770a1f999cad25d0f7662` |
| 14 | `theorem` | [IsCoveringMap.isCoveringMapOn](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/declarations/iscoveringmap-iscoveringmapon--f2f2b80393b34b29ec170f53.md) | 144 | `result-track:f2f2b80393b34b29ec170f53bf6513d31479e5d9d4bbf8ae555d7f227f98f0a0` |
| 15 | `theorem` | [mk](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/declarations/mk--f7df319ebce0aa2e1f104dac.md) | 153 | `result-track:f7df319ebce0aa2e1f104dacdd902ad904ed2014bd4f95375b3bc7de2ad83c9e` |
| 16 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/declarations/continuous--0dcb831ad56a4bff9ff39cee.md) | 161 | `result-track:0dcb831ad56a4bff9ff39cee15b1b660a8af31e3feec6232540093df33efc659` |
| 17 | `theorem` | [isLocallyHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/declarations/islocallyhomeomorph--b11bcc8db4236f6d060c24ef.md) | 165 | `result-track:b11bcc8db4236f6d060c24efe6a787ba34888f3cd9e07b74420c2f6a2e83e3d0` |
| 18 | `theorem` | [isOpenMap](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/declarations/isopenmap--dc3f13720453573259c2a221.md) | 169 | `result-track:dc3f13720453573259c2a221e5826452dcff6a5278454ae07ab200c0705df0cd` |
| 19 | `theorem` | [quotientMap](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/declarations/quotientmap--477162d1cb9a59a50d9fda0f.md) | 173 | `result-track:477162d1cb9a59a50d9fda0fc3d499dee1d4b0dd28bfc0df2c813b119c719b9e` |
| 20 | `theorem` | [IsFiberBundle.isCoveringMap](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/declarations/isfiberbundle-iscoveringmap--3abb34a9ab94f73b7dd3d5f6.md) | 182 | `result-track:3abb34a9ab94f73b7dd3d5f66c0f4581e05ed32b4bb00034e09485a61562b1ff` |
| 21 | `theorem` | [FiberBundle.isCoveringMap](../../../../../mathematics/Topology/GeneralTopology/Covering/Variant4fd5cb0eb50ec3b315fc0123be7a9efd961f59476680ea7b36cc244a160a1c20.lean/declarations/fiberbundle-iscoveringmap--f4bcdcd88ef8b929ff3be78a.md) | 188 | `result-track:f4bcdcd88ef8b929ff3be78a3d820edc083f9bc4d4979aba47e7fb5416a7d501` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
