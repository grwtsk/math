# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenBlockDecomposition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06b3aa7f3cbe130682a62541f829a7973e7cd18d",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06b3aa7f3cbe130682a62541f829a7973e7cd18d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.JetContourBlocks`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenJetCandidate`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenJetCandidate.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [widths](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/widths--505c226d176a256a8add91c1.md) | 28 | `declaration-track:505c226d176a256a8add91c19fca35dcea5cb2e53402c4b998c237080a6ae1ea` |
| 2 | `def` | [expected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/expected--a0e01ba855154606391731a7.md) | 31 | `declaration-track:a0e01ba855154606391731a7f31dd9dd553978f3239a02e9f43f7957b76b56ab` |
| 3 | `theorem` | [partition_checked](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/partition-checked--e9c0106b8115b586856549a2.md) | 33 | `result-track:e9c0106b8115b586856549a2aeb4792d4d96dc3d7b804274a15146a0c046912c` |
| 4 | `theorem` | [widths_sum](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/widths-sum--b6fa39297195c78d500c746e.md) | 35 | `result-track:b6fa39297195c78d500c746e313fd7144152b36ff6f7f5060934179c3a9271aa` |
| 5 | `theorem` | [expected_shape](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/expected-shape--d9a559a20cccdbb15ac7771d.md) | 37 | `result-track:d9a559a20cccdbb15ac7771d1d72dd211eefdb321fc0e513aeee534cf7bcaed5` |
| 6 | `def` | [directImage](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/directimage--b1c5bdca155578fc1e1dfbd7.md) | 40 | `declaration-track:b1c5bdca155578fc1e1dfbd7a62a27b13b8ec7ca304948db02fb537edb4d92bd` |
| 7 | `theorem` | [plan_at](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/plan-at--4adb2507af5e4d65e9bd4713.md) | 42 | `result-track:4adb2507af5e4d65e9bd4713bd3acee1ec4a58adaf534c82516f08495976ed2c` |
| 8 | `theorem` | [image_at](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/image-at--5371f52f0a1b21278b2361ee.md) | 47 | `result-track:5371f52f0a1b21278b2361ee56d85fa6da2e13c2e038db1792f8d57174d359d9` |
| 9 | `theorem` | [image_last](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/image-last--4aa5f1d74bc57d2b07f908e9.md) | 53 | `result-track:4aa5f1d74bc57d2b07f908e92563047d5ea5ae81c62e3c9e9e05d7c9b14a1e01` |
| 10 | `theorem` | [image_at_eq_direct](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/image-at-eq-direct--bf974e1ede94e8795ce01e4c.md) | 58 | `result-track:bf974e1ede94e8795ce01e4c3e05b3669fb7666bbde8760040aadba62e926238` |
| 11 | `theorem` | [vertex_eq_direct](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/vertex-eq-direct--f5b60a8b4b6be0f8d3f9941e.md) | 66 | `result-track:f5b60a8b4b6be0f8d3f9941e7bc2153c4ff1560f3fec978938432dbc500d602a` |
| 12 | `def` | [directTest](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/directtest--b847ae0bbb76ad84ebf3d487.md) | 70 | `declaration-track:b847ae0bbb76ad84ebf3d4871ef17900027c1ba8880e1758587a75af4ae7c6cb` |
| 13 | `def` | [directTerm](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/directterm--8276a059ec2e31a36e6cbeed.md) | 75 | `declaration-track:8276a059ec2e31a36e6cbeedee9afe22e953cd53e8993af923df794466da566d` |
| 14 | `theorem` | [test_refines](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/test-refines--ccf823ac562a32c7e5f31b22.md) | 78 | `result-track:ccf823ac562a32c7e5f31b22c51f576872d7c5f506bce6f8137815b01a3bd83c` |
| 15 | `theorem` | [term_refines](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/term-refines--8a900caca6ce707cf6b77e20.md) | 84 | `result-track:8a900caca6ce707cf6b77e209b4a39bd55933036c19d0c04a5b475f9919b2c54` |
| 16 | `theorem` | [header](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/header--6f492c870bbcfe559dbbc70c.md) | 90 | `result-track:6f492c870bbcfe559dbbc70cac62846a6f7dc4645a180d545a7ba4dd75dc8cd8` |
| 17 | `theorem` | [allRange_refines](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/allrange-refines--dc0a367ca3f817eced4082e7.md) | 102 | `result-track:dc0a367ca3f817eced4082e7918f40adf7c72d86346e4641694a916459998202` |
| 18 | `theorem` | [sumRange_refines](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/sumrange-refines--c992bd1481965e1a2a71c68d.md) | 108 | `result-track:c992bd1481965e1a2a71c68d4fb9c868b79192e479a0f7cda50b4f8af4fef768` |
| 19 | `theorem` | [success_iff_ranges](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/success-iff-ranges--e166fd12d0427a869ea52cb5.md) | 115 | `result-track:e166fd12d0427a869ea52cb5a583ec24c2b1ff78ce8a820694a916e3c5bd67e5` |
| 20 | `theorem` | [success_iff_exists_blocks](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/success-iff-exists-blocks--2b6d2a5afcd57fb6f3d09078.md) | 136 | `result-track:2b6d2a5afcd57fb6f3d09078735015dbba60efa73424a9af6ba84374d3c5ef91` |
| 21 | `def` | [BlockObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/blockobligations--e2d48adec600ba5c8e05bc75.md) | 142 | `declaration-track:e2d48adec600ba5c8e05bc75da8c3e7202d5e400114ea35f339d9e85d2f42a71` |
| 22 | `def` | [verifyExpected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/verifyexpected--d1127845b5d6d3d662781d9a.md) | 145 | `declaration-track:d1127845b5d6d3d662781d9a1c73d2c7f8e5db361a05327e7707b127ffd5eb16` |
| 23 | `theorem` | [success_of_blocks](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/success-of-blocks--90dcbc105aaf04877eb6d151.md) | 147 | `result-track:90dcbc105aaf04877eb6d151c99aeae5125dbbbffb38120e32f89a3252091579` |
| 24 | `theorem` | [success_of_verified](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/success-of-verified--8b6bd3366e691038dc5e0f3d.md) | 150 | `result-track:8b6bd3366e691038dc5e0f3d1544ba3dc7e87259e5990cf2a6b98cfb963dad10` |
| 25 | `theorem` | [count_one_of_blocks](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/count-one-of-blocks--fcc8b10cebaf12bd32650ddd.md) | 153 | `result-track:fcc8b10cebaf12bd32650ddd5a662f479a0a12bf4b89b5d9112ed01d79c7593f` |
| 26 | `theorem` | [complete_pair_of_blocks](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/declarations/complete-pair-of-blocks--dec73d0dbb123c09f3fa342b.md) | 157 | `result-track:dec73d0dbb123c09f3fa342bdb376b93e0d9c5a21e79a08ddb9254d584268f04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
