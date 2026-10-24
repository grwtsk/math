# Verification target: GRWTSK.Algebra.GroupTheory.Center.Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ab1aae8665eb9138ece4f2abcf2bae8e1079211",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ab1aae8665eb9138ece4f2abcf2bae8e1079211`.

Source path: `GRWTSK/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Submonoid.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Center` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean/declarations/center--174dc669c24062a36f2051c5.md) | 41 | `declaration-track:174dc669c24062a36f2051c5e25000c1b02dac53cb9b508eb040096add50ab83` |
| 2 | `theorem` | [coe_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean/declarations/coe-center--b1279483bbf2f5e0fb13bc8b.md) | 49 | `result-track:b1279483bbf2f5e0fb13bc8be24edaa03fff5b0bd96cf6600012205764aaab79` |
| 3 | `theorem` | [center_toSubsemigroup](../../../../../mathematics/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean/declarations/center-tosubsemigroup--514309161be242993c4851b3.md) | 55 | `result-track:514309161be242993c4851b30eed19fbcde8a8222372873d4dd821c9b3e4d1e8` |
| 4 | `theorem` | [mem_center_iff](../../../../../mathematics/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean/declarations/mem-center-iff--dad0dbe82d835519aec5a637.md) | 62 | `result-track:dad0dbe82d835519aec5a637ceca20e521a9e851b37f37ef796fc37befc0910c` |
| 5 | `instance` | [decidableMemCenter](../../../../../mathematics/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean/declarations/decidablememcenter--6ca9fee92fb93060dd64abe7.md) | 68 | `declaration-track:6ca9fee92fb93060dd64abe7df59c0923ba99635e6e78e9bb3783c7d7eebc020` |
| 6 | `instance` | [center.commMonoid](../../../../../mathematics/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean/declarations/center-commmonoid--2337fe7adff6df4a90b7ad15.md) | 74 | `declaration-track:2337fe7adff6df4a90b7ad158195b6276d39dbff3a040e31f839b4cba8590dcb` |
| 7 | `instance` | [center.smulCommClass_left](../../../../../mathematics/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean/declarations/center-smulcommclass-left--6af31d5e68cb79dd4fbb8ac6.md) | 79 | `declaration-track:6af31d5e68cb79dd4fbb8ac6819f8b64d88d67372c87db2c39ae052dc390f63d` |
| 8 | `instance` | [center.smulCommClass_right](../../../../../mathematics/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean/declarations/center-smulcommclass-right--8f0f93e3eab38c1f3e5a60ed.md) | 84 | `declaration-track:8f0f93e3eab38c1f3e5a60ed234f7533b8fd0ea810359f5bb0d39cb70f69dbcc` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean/declarations/example--aeda2f44cf60dbbe5b1878df.md) | 91 | `declaration-track:aeda2f44cf60dbbe5b1878df23ee3e641e2ede6f8beabd38b55af4e10392ad99` |
| 10 | `theorem` | [center_eq_top](../../../../../mathematics/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean/declarations/center-eq-top--b7271533867b469912c7726f.md) | 100 | `result-track:b7271533867b469912c7726f97bbbcc3f9161cae78c32121b955d8fb0176eb47` |
| 11 | `def` | [unitsCenterToCenterUnits](../../../../../mathematics/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean/declarations/unitscentertocenterunits--4805e3b7b53661de8fca6e23.md) | 115 | `declaration-track:4805e3b7b53661de8fca6e23b99eea72e9665ec9e03ef380992f6cfd3b4cb50b` |
| 12 | `theorem` | [unitsCenterToCenterUnits_injective](../../../../../mathematics/Algebra/GroupTheory/Center/Variant1f884f9c02762a98901013fa05e2a4cbb80ba6a83e9300bb21ae70f3ea4cd155.lean/declarations/unitscentertocenterunits-injective--1137605efd37a6d4242cd93d.md) | 119 | `result-track:1137605efd37a6d4242cd93d4530ad13b0bd48f4dbf6ce2e15c85a4e46cc3366` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
