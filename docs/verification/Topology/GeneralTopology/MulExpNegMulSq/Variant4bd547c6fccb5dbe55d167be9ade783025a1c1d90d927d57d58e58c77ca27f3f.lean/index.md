# Verification target: GRWTSK.Topology.GeneralTopology.MulExpNegMulSq.Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4873e363c7da3da79fa83e1b7b22a55fd1f67ef4",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4873e363c7da3da79fa83e1b7b22a55fd1f67ef4`.

Source path: `GRWTSK/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Normed` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulExpNegMulSq](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/declarations/mulexpnegmulsq--9e567f0fbb3b792b2b5c458d.md) | 43 | `declaration-track:9e567f0fbb3b792b2b5c458d80ce278dd763ff139338226121e70d22eeb5b20d` |
| 2 | `theorem` | [mulExpNegSq_apply](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/declarations/mulexpnegsq-apply--71276f4ab7a2fdcf9e344c26.md) | 45 | `result-track:71276f4ab7a2fdcf9e344c26d87beb3cb3016c2a2ab3142e1e7a78ee13a84b44` |
| 3 | `theorem` | [neg_mulExpNegMulSq_neg](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/declarations/neg-mulexpnegmulsq-neg--ea3245621be616a816dafb58.md) | 47 | `result-track:ea3245621be616a816dafb587e05e6d0e42a9434bee3a8fbdcea59a03cb91cb1` |
| 4 | `theorem` | [mulExpNegMulSq_one_le_one](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/declarations/mulexpnegmulsq-one-le-one--8a5252214934659c0350918a.md) | 50 | `result-track:8a5252214934659c0350918a09c745be75411dfe08b34433c0ca146f899c409e` |
| 5 | `theorem` | [neg_one_le_mulExpNegMulSq_one](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/declarations/neg-one-le-mulexpnegmulsq-one--f7c4ed9d6c32b6be63eb3aa6.md) | 56 | `result-track:f7c4ed9d6c32b6be63eb3aa6f365f599c235b546e5346af8d107822664b3b8c0` |
| 6 | `theorem` | [abs_mulExpNegMulSq_one_le_one](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/declarations/abs-mulexpnegmulsq-one-le-one--3e33321cd264c239af8162c1.md) | 60 | `result-track:3e33321cd264c239af8162c1a134e29e5330e24573da9e33241f4f27c8107258` |
| 7 | `theorem` | [continuous_mulExpNegMulSq](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/declarations/continuous-mulexpnegmulsq--aca9f96b0bd5cbe607ce528a.md) | 66 | `result-track:aca9f96b0bd5cbe607ce528aa462d3fab962d52187ed6942da54ef00378abdb2` |
| 8 | `theorem` | [_root_.Continuous.mulExpNegMulSq](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/declarations/root-continuous-mulexpnegmulsq--cce47102bb1ba2468864c0bd.md) | 70 | `result-track:cce47102bb1ba2468864c0bd144d6c54f12a15a127811b092b900bb17d55110f` |
| 9 | `theorem` | [differentiableAt_mulExpNegMulSq](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/declarations/differentiableat-mulexpnegmulsq--1047a48975296cbe0d2ad32f.md) | 74 | `result-track:1047a48975296cbe0d2ad32f31b27cf83b51be195e121d0b41b7aa7c4dce6300` |
| 10 | `theorem` | [differentiable_mulExpNegMulSq](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/declarations/differentiable-mulexpnegmulsq--a5c1961473d38bea58a3b81a.md) | 78 | `result-track:a5c1961473d38bea58a3b81acd525cdfa06c587741859d3b38df90939ba22cb1` |
| 11 | `theorem` | [hasDerivAt_mulExpNegMulSq](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/declarations/hasderivat-mulexpnegmulsq--7148052ba81acd8e11c7a2d9.md) | 81 | `result-track:7148052ba81acd8e11c7a2d9489752311dbc38ce464deb9a21b8f41c4bf477a3` |
| 12 | `theorem` | [deriv_mulExpNegMulSq](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/declarations/deriv-mulexpnegmulsq--1914ab0b399b6764961fb8d7.md) | 89 | `result-track:1914ab0b399b6764961fb8d7b81ddc18e37e24fcb1556ae8f55f0ada5e2c8287` |
| 13 | `theorem` | [norm_deriv_mulExpNegMulSq_le_one](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/declarations/norm-deriv-mulexpnegmulsq-le-one--3603d243a73e185ea34d0d49.md) | 93 | `result-track:3603d243a73e185ea34d0d4904f0c1529a33cf6418b32f18798384ac8a0b1e4b` |
| 14 | `theorem` | [nnnorm_deriv_mulExpNegMulSq_le_one](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/declarations/nnnorm-deriv-mulexpnegmulsq-le-one--8b62237c3b47b09fd506f234.md) | 108 | `result-track:8b62237c3b47b09fd506f234926bc7c2136ca474b9f446f92eb65fd61e491786` |
| 15 | `theorem` | [lipschitzWith_one_mulExpNegMulSq](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/declarations/lipschitzwith-one-mulexpnegmulsq--3577c2a3e4237dd567f27b2e.md) | 114 | `result-track:3577c2a3e4237dd567f27b2e7b21d8fd2fdd421cb9137f49c686735b9400fc95` |
| 16 | `theorem` | [mulExpNegMulSq_eq_sqrt_mul_mulExpNegMulSq_one](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/declarations/mulexpnegmulsq-eq-sqrt-mul-mulexpnegmulsq-one--da724c4015fb44dca90731e3.md) | 119 | `result-track:da724c4015fb44dca90731e3eb64c4f16d7b82022d9a5e74dd089ee4160f56fe` |
| 17 | `theorem` | [abs_mulExpNegMulSq_le](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/declarations/abs-mulexpnegmulsq-le--855309aaf3ec45ce554ae1bc.md) | 132 | `result-track:855309aaf3ec45ce554ae1bc33992bec9d17eb91c2bf3b4db03a18974a4a177b` |
| 18 | `theorem` | [dist_mulExpNegMulSq_le_two_mul_sqrt](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/declarations/dist-mulexpnegmulsq-le-two-mul-sqrt--b07d220aee4730e226c26697.md) | 138 | `result-track:b07d220aee4730e226c266972060dfe499f6ca3c42507f3653417321a656cbbc` |
| 19 | `theorem` | [dist_mulExpNegMulSq_le_dist](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/declarations/dist-mulexpnegmulsq-le-dist--2b39896b5063b4c3a2e0a3c3.md) | 144 | `result-track:2b39896b5063b4c3a2e0a3c306a7b48708a4beb616318da4cfd3a1fe30e89916` |
| 20 | `theorem` | [tendsto_mulExpNegMulSq](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/declarations/tendsto-mulexpnegmulsq--3a4593b2f74f10ad60c7c0ec.md) | 150 | `result-track:3a4593b2f74f10ad60c7c0ec82c769eb25a1fe61ca889981391ccaa7e992e66d` |
| 21 | `theorem` | [abs_mulExpNegMulSq_comp_le_norm](../../../../../mathematics/Topology/GeneralTopology/MulExpNegMulSq/Variant4bd547c6fccb5dbe55d167be9ade783025a1c1d90d927d57d58e58c77ca27f3f.lean/declarations/abs-mulexpnegmulsq-comp-le-norm--bdb5a96e45f8366ed66ca495.md) | 159 | `result-track:bdb5a96e45f8366ed66ca495536c7f83b8d810c6843c08ca56297c6cbf821ef5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
