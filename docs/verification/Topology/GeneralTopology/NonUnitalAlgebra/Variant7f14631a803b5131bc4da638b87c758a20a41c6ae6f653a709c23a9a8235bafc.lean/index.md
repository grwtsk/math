# Verification target: GRWTSK.Topology.GeneralTopology.NonUnitalAlgebra.Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d26f0b85e48330185959ff5cda4c4f48aaa750c5",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d26f0b85e48330185959ff5cda4c4f48aaa750c5`.

Source path: `GRWTSK/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.NonUnitalSubalgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instIsTopologicalSemiring](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/declarations/instistopologicalsemiring--cea00ea7de989f00cf27b425.md) | 31 | `declaration-track:cea00ea7de989f00cf27b425efdf27440697c86dfb7afd66722a0d1bb966f115` |
| 2 | `def` | [topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/declarations/topologicalclosure--4eee8e3c3954073fdcf5e437.md) | 36 | `declaration-track:4eee8e3c3954073fdcf5e43788c5fd2602334f20f6ffe4e815c6716a6741db0b` |
| 3 | `theorem` | [le_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/declarations/le-topologicalclosure--85e234f473f4dfd28cba8acc.md) | 40 | `result-track:85e234f473f4dfd28cba8acc2633a328d7fe17e073a95e50cba52fe4df7667dc` |
| 4 | `theorem` | [isClosed_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/declarations/isclosed-topologicalclosure--7655ddf9907113b2a9a18da3.md) | 43 | `result-track:7655ddf9907113b2a9a18da341a97f92e42ab6dbd08557ec7611775206a8947a` |
| 5 | `theorem` | [topologicalClosure_minimal](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/declarations/topologicalclosure-minimal--398102966635b6c5d14f913e.md) | 46 | `result-track:398102966635b6c5d14f913ef622548169e01490dc7e524d5e65bf00f843f46d` |
| 6 | `abbrev` | [nonUnitalCommSemiringTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/declarations/nonunitalcommsemiringtopologicalclosure--c10f82c5e3c51be88d4074d8.md) | 54 | `declaration-track:c10f82c5e3c51be88d4074d8d5a59dc2fa2dd6015f350551d4aa6671d0d72fca` |
| 7 | `instance` | [instIsTopologicalRing](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/declarations/instistopologicalring--9bf50dcc55674a693f2d1d10.md) | 66 | `declaration-track:9bf50dcc55674a693f2d1d1097a69d0eb3b8ab4918ad3a60eb2b5a1ee6ad95b2` |
| 8 | `abbrev` | [nonUnitalCommRingTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/declarations/nonunitalcommringtopologicalclosure--4dd14b784a40b1f1f8639518.md) | 73 | `declaration-track:4dd14b784a40b1f1f86395187afc6f7212579c13b58c079a0c76fa11552005c4` |
| 9 | `def` | [elemental](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/declarations/elemental--69fcd0f688245aef7cd61f84.md) | 90 | `declaration-track:69fcd0f688245aef7cd61f844bb99474aff5be79e22cd4055b87c11839f93d32` |
| 10 | `theorem` | [self_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/declarations/self-mem--85d71f3fe3e570f17d6cb735.md) | 96 | `result-track:85d71f3fe3e570f17d6cb73584cd73685c49f8133dd1be5172eec7900bbeb91f` |
| 11 | `theorem` | [le_of_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/declarations/le-of-mem--badf0c74860b5f8514817cc0.md) | 100 | `result-track:badf0c74860b5f8514817cc07188655f55ff72944d17e9b59157224be907a54b` |
| 12 | `theorem` | [le_iff_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/declarations/le-iff-mem--a87a819f90854201bffb0e44.md) | 105 | `result-track:a87a819f90854201bffb0e44cc51efd1139f46c0ab9108f8c543b901ef2a30d7` |
| 13 | `instance` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/declarations/isclosed--2cbc9345a4e965479087605e.md) | 109 | `declaration-track:2cbc9345a4e965479087605ec580ef9b379da274543ba45c9aff0e7c68cc09fb` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/declarations/instance--c0b605d76a6ebfc5e935e1d9.md) | 112 | `declaration-track:c0b605d76a6ebfc5e935e1d9139ec5455886493a6b9c9aeef9e5c0bb9dcd577b` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/declarations/instance--37c0c613dbb803f584a77b44.md) | 120 | `declaration-track:37c0c613dbb803f584a77b44587a61f31637939d5fa22009a95e79bfe9c8921f` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/declarations/instance--679518328fc371cab671e4da.md) | 126 | `declaration-track:679518328fc371cab671e4dab1c047c5f03d34b740dcb3953f7a1fa8156a9e0f` |
| 17 | `theorem` | [isClosedEmbedding_coe](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/declarations/isclosedembedding-coe--cdf2b6dec3db95921defd0d3.md) | 133 | `result-track:cdf2b6dec3db95921defd0d3b42e5b8fd99a9dfda14650b5ff462b07c7ec3f96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
