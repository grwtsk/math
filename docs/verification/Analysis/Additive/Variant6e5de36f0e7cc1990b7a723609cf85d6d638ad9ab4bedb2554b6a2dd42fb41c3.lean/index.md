# Verification target: GRWTSK.Analysis.Additive.Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdac8511081f6dc4cfa3c1dc55526c9d93132940",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean/index.md) · [Full source](../../../../mathematics/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdac8511081f6dc4cfa3c1dc55526c9d93132940`.

Source path: `GRWTSK/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Partition.Split` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.Mul` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoxAdditiveMap](../../../../mathematics/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean/declarations/boxadditivemap--31a056d8304d404e5d7b91b7.md) | 50 | `declaration-track:31a056d8304d404e5d7b91b76608e14f975df8148482c1615a9c80bbabf1647a` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean/declarations/instance--c9bc1953e8c58090e80078b6.md) | 70 | `declaration-track:c9bc1953e8c58090e80078b625eca390a513edaf1e10e86f15a02831416e624e` |
| 3 | `theorem` | [coe_mk](../../../../mathematics/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean/declarations/coe-mk--83ebe3bca2508486ee5159b1.md) | 77 | `result-track:83ebe3bca2508486ee5159b1b70da6dc06db1c486a340b3d98d6d3b9b86bef5e` |
| 4 | `theorem` | [coe_injective](../../../../mathematics/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean/declarations/coe-injective--2c590a8893ba45a95aecc7e1.md) | 79 | `result-track:2c590a8893ba45a95aecc7e12ef4d741ac345f9c7b59425bf0925e496e3fce55` |
| 5 | `theorem` | [coe_inj](../../../../mathematics/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean/declarations/coe-inj--4f928374f757bad834ffe5ab.md) | 82 | `result-track:4f928374f757bad834ffe5ab0c0a34c2807ffa0c1dfc349b9c6d584f993beef2` |
| 6 | `theorem` | [sum_partition_boxes](../../../../mathematics/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean/declarations/sum-partition-boxes--2fd1e1b78a370ce4093632b4.md) | 84 | `result-track:2fd1e1b78a370ce4093632b49860ff120ccf2e1baf2bf3017fdb32029c0600dd` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean/declarations/instance--98836d9da7f3791ab885573b.md) | 89 | `declaration-track:98836d9da7f3791ab885573b52b21f7d1631ff23aaa07f454c8f0f6610182a2e` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean/declarations/instance--a51af1ca10b78a00c4317ee7.md) | 92 | `declaration-track:a51af1ca10b78a00c4317ee7427993bbb52431b499658d7efb832b3ff9d0f8f4` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean/declarations/instance--7f477dbd8d7a3fd4c40e9080.md) | 95 | `declaration-track:7f477dbd8d7a3fd4c40e9080ac39dea39a4531f543e608ca97fd1d0dbcc3b600` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean/declarations/instance--b61dab6b1540a830978a7e76.md) | 100 | `declaration-track:b61dab6b1540a830978a7e76b1c04fdcf5865067fcc6463d5e6b809b21dd6678` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean/declarations/instance--79e97ba9c0aa0e77f36cb383.md) | 105 | `declaration-track:79e97ba9c0aa0e77f36cb38328506e0280cb5a066ec350768cd43ebd8be2c517` |
| 12 | `theorem` | [map_split_add](../../../../mathematics/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean/declarations/map-split-add--3aa27ab5cdf2daa6d92aed09.md) | 109 | `result-track:3aa27ab5cdf2daa6d92aed096e78a8e26f186a64b346d62402c4051f136cb8cf` |
| 13 | `def` | [restrict](../../../../mathematics/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean/declarations/restrict--e1dd58647e19985ed069bc87.md) | 116 | `declaration-track:e1dd58647e19985ed069bc874316daa5725e47e297948d55e2e521aecc10782a` |
| 14 | `def` | [ofMapSplitAdd](../../../../mathematics/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean/declarations/ofmapsplitadd--6bc15a08458616e077c05ee3.md) | 121 | `declaration-track:6bc15a08458616e077c05ee3367e9db78e47d89fdda5c4267829406cd52c1456` |
| 15 | `def` | [map](../../../../mathematics/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean/declarations/map--de5e584f85f321b4163c2c95.md) | 146 | `declaration-track:de5e584f85f321b4163c2c95b68d66eca1eaaa51655d09298db55344bc9fbf13` |
| 16 | `theorem` | [sum_boxes_congr](../../../../mathematics/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean/declarations/sum-boxes-congr--abf3f87fd7b11c5497f44019.md) | 152 | `result-track:abf3f87fd7b11c5497f44019a4b03846d8bb8e1d1ee24baabaf780dba2e07821` |
| 17 | `def` | [toSMul](../../../../mathematics/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean/declarations/tosmul--2a8d487db868b50dec4f2a4d.md) | 176 | `declaration-track:2a8d487db868b50dec4f2a4da1a0be11abbb292db1de951a9364e63be727022d` |
| 18 | `theorem` | [toSMul_apply](../../../../mathematics/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean/declarations/tosmul-apply--ffc8ba489ea85ff6c39eefca.md) | 180 | `result-track:ffc8ba489ea85ff6c39eefca084b89a5cbd1bdc486fee1d8727f48d1df44a502` |
| 19 | `def` | [upperSubLower.](../../../../mathematics/Analysis/Additive/Variant6e5de36f0e7cc1990b7a723609cf85d6d638ad9ab4bedb2554b6a2dd42fb41c3.lean/declarations/uppersublower--cf8c36ed32ed90af080160d5.md) | 189 | `declaration-track:cf8c36ed32ed90af080160d5e658d263dc16796a1f63f9a2300dfaa3ecb71318` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
