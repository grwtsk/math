# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Prod.Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed7b763b03b159e0d154db748dbe7f4c548d588d",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed7b763b03b159e0d154db748dbe7f4c548d588d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Multiset` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Vector.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ULift` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.NAry` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/instance--c0b32d4a5d3e0f48582e0879.md) | 25 | `declaration-track:c0b32d4a5d3e0f48582e087993f12ca518884be6424468aab657ac43dd5ab9af` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/instance--61f886c795ac4013f1c463f3.md) | 30 | `declaration-track:61f886c795ac4013f1c463f34de21e5f06439ea6bba7fe50d0d11d7fa8945bae` |
| 3 | `theorem` | [prod_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/prod-left--407bf3552b533f868e0aa569.md) | 33 | `result-track:407bf3552b533f868e0aa569ca129659a733f532b5b2828dbffcbb3f542465af` |
| 4 | `theorem` | [prod_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/prod-right--1bea327ea5c2c97a03b7576c.md) | 36 | `result-track:1bea327ea5c2c97a03b7576c18aa2304d357591c71a456efa643f62325ae05c9` |
| 5 | `instance` | [Pi.finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/pi-finite--e6a03099b0a2368d497b643c.md) | 41 | `declaration-track:e6a03099b0a2368d497b643c4e6beb94f7f79662a51155dc861e3360d7ebeed4` |
| 6 | `instance` | [Function.Embedding.finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/function-embedding-finite--2358f53f1eb857e852cf0f83.md) | 50 | `declaration-track:2358f53f1eb857e852cf0f831c5fcc1eb9e75095b8264e1584ef37a3bccf6b55` |
| 7 | `instance` | [Equiv.finite_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/equiv-finite-right--839cfecb12bbef4dc616b600.md) | 57 | `declaration-track:839cfecb12bbef4dc616b600ade7bd89f89c9af9173b48d37c7004045974f754` |
| 8 | `instance` | [Equiv.finite_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/equiv-finite-left--1e0bcc522bc1a6e170e0749e.md) | 61 | `declaration-track:1e0bcc522bc1a6e170e0749ecbe80b4b198792c8cfe92f2ad40d7d212ddb3963` |
| 9 | `instance` | [MulEquiv.finite_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/mulequiv-finite-left--9d49732416a8497d9ab2a2f8.md) | 65 | `declaration-track:9d49732416a8497d9ab2a2f8d9bcf1610d27a09e6c836c9e04fd2f7073b9cfa5` |
| 10 | `instance` | [MulEquiv.finite_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/mulequiv-finite-right--e9dbdab051de39bb57beee6b.md) | 69 | `declaration-track:e9dbdab051de39bb57beee6be003ffc8b03f29e33565339b069e88a1aa23362b` |
| 11 | `instance` | [fintypeProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/fintypeprod--594c05c802f0a14ec22893f6.md) | 85 | `declaration-track:594c05c802f0a14ec22893f6e7a81b96b343aeb41777df781731c0a33f6273b7` |
| 12 | `instance` | [fintypeOffDiag](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/fintypeoffdiag--86e57d30d745f433b541b5b4.md) | 89 | `declaration-track:86e57d30d745f433b541b5b41c83393b3baf91344341c62aaa617974080c7757` |
| 13 | `instance` | [fintypeImage2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/fintypeimage2--cbe8f352c134f588f133bad3.md) | 93 | `declaration-track:cbe8f352c134f588f133bad3bfc73e3e64523a3d67a589112114f1a13310ab70` |
| 14 | `instance` | [finite_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/finite-prod--caca48e0ed821ce16cf42511.md) | 116 | `declaration-track:caca48e0ed821ce16cf42511ba48824d666cf841d543da5beab71330d9ee3a66` |
| 15 | `instance` | [finite_image2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/finite-image2--1d0b40d1151c1d0b10a6af56.md) | 120 | `declaration-track:1d0b40d1151c1d0b10a6af5691a8c3bf363376d811d9980642d414f2e94c668b` |
| 16 | `theorem` | [Finite.prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/finite-prod--58f6dc43be0776b0eef496e0.md) | 145 | `result-track:58f6dc43be0776b0eef496e049576007364196547a1f7333d91f8be28d725f15` |
| 17 | `theorem` | [Finite.of_prod_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/finite-of-prod-left--012ae09cc8d37735c2f2fac8.md) | 150 | `result-track:012ae09cc8d37735c2f2fac8cf97ba45f2efdd273d8b943bc11db2208e7c5738` |
| 18 | `theorem` | [Finite.of_prod_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/finite-of-prod-right--8cae28ea8dbf345b32c984f4.md) | 153 | `result-track:8cae28ea8dbf345b32c984f4b5ff3f86670b1541bd0ff940e62b2d84abfc30db` |
| 19 | `theorem` | [Infinite.prod_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/infinite-prod-left--7e08a1f8d05c473f194193f2.md) | 156 | `result-track:7e08a1f8d05c473f194193f29d2988e20a5bb6c43bec2e3f12e1a75db9b56b62` |
| 20 | `theorem` | [Infinite.prod_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/infinite-prod-right--b075bc6223ce05711eb2d62b.md) | 159 | `result-track:b075bc6223ce05711eb2d62bc793379cd1cd6b107f2b14d183da723375c57b82` |
| 21 | `theorem` | [infinite_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/infinite-prod--a0d176faf47b655bc815c64c.md) | 162 | `result-track:a0d176faf47b655bc815c64c5a3c286b7e7358da6ac5f2deef25354a33eceb35` |
| 22 | `theorem` | [finite_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/finite-prod--a43e10d71727ebcedcfdb41a.md) | 172 | `result-track:a43e10d71727ebcedcfdb41a3037c5f6249db613b0c15f3a91b548c02111ad9e` |
| 23 | `theorem` | [Finite.offDiag](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/finite-offdiag--d177d9c74f6b5fa1e9ac7942.md) | 175 | `result-track:d177d9c74f6b5fa1e9ac7942c37b1ac4d7670c968f69c3a0f10319463f867253` |
| 24 | `theorem` | [Finite.image2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/finite-image2--79904a2d6a73dc4d69c4ac6a.md) | 178 | `result-track:79904a2d6a73dc4d69c4ac6a5f2e4a3e9b03856d64bca522bd683e73a501305a` |
| 25 | `theorem` | [Finite.toFinset_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/finite-tofinset-prod--91b85a234603e0ecc50e8a71.md) | 190 | `result-track:91b85a234603e0ecc50e8a71a4624826d8c8c1b4ba603bdeb22d1ea61b859f55` |
| 26 | `theorem` | [Finite.toFinset_offDiag](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/finite-tofinset-offdiag--7c461823658a3d42aaecc96e.md) | 194 | `result-track:7c461823658a3d42aaecc96e6b548614b019fbab5b728effe047cf11093882d5` |
| 27 | `theorem` | [finite_image_fst_and_snd_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/finite-image-fst-and-snd-iff--9ee8f9c9fdde70dc969b7de6.md) | 198 | `result-track:9ee8f9c9fdde70dc969b7de6f24619c868e0398aae895d3378433a8006567979` |
| 28 | `theorem` | [Infinite.image2_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/infinite-image2-left--877c484563d5739c181670e3.md) | 211 | `result-track:877c484563d5739c181670e35adb503fe2ab47f4c934bd30bcee93dc46e70c51` |
| 29 | `theorem` | [Infinite.image2_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/infinite-image2-right--eea225da7d97581f41335979.md) | 215 | `result-track:eea225da7d97581f41335979ae3620ade353c9ea1b525fdd583fa138c53f1caa` |
| 30 | `theorem` | [infinite_image2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/infinite-image2--bf942104afc2c40c2b0ec9a6.md) | 219 | `result-track:bf942104afc2c40c2b0ec9a647a4841e54e8383fef67a4bddb6f9d07dea65712` |
| 31 | `lemma` | [finite_image2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Varianta1373430b14f30c7a3fc4052cf6e8fae15ec15d2b72a2141b1d8dac49e6e3595.lean/declarations/finite-image2--cfd69ad96afb7d9282128102.md) | 228 | `result-track:cfd69ad96afb7d92821281021f6beab10bfa090bf1481b635713aedfa7e25903` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
