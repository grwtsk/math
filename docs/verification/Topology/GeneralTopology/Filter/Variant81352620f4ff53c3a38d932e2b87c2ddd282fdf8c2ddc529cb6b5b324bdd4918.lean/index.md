# Verification target: GRWTSK.Topology.GeneralTopology.Filter.Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91e86144086125c3c7743582c50fee4b6c156c76",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91e86144086125c3c7743582c50fee4b6c156c76`.

Source path: `GRWTSK/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Empty` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Filter` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/filter--ff1ef375a6923755f128714b.md) | 56 | `declaration-track:ff1ef375a6923755f128714b75ea4348ad1334dbe372b2f8ceafe2eaedac300e` |
| 2 | `def` | [knownToBeFinsetNotSet](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/knowntobefinsetnotset--41f8f3bf8ef01e2279467300.md) | 66 | `declaration-track:41f8f3bf8ef01e2279467300bfce80f0450e4a9bc635ab06128a7aaa2bf96763` |
| 3 | `def` | [elabFinsetBuilderSep](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/elabfinsetbuildersep--f83926d438bafefeed767b35.md) | 99 | `declaration-track:f83926d438bafefeed767b35f37060884ab3e4da1aaf668fe2740109d57adc8c` |
| 4 | `theorem` | [filter_val](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/filter-val--a42ea46275f8a8f67107e935.md) | 121 | `result-track:a42ea46275f8a8f67107e935df06097b679c02718df1f38e7e160cc410282cac` |
| 5 | `theorem` | [filter_subset](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/filter-subset--016cae7226cf8973daf48936.md) | 125 | `result-track:016cae7226cf8973daf4893668606ef9b00e0e4e3b82fb28ca27c42ee0ca00fd` |
| 6 | `theorem` | [mem_filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/mem-filter--1dec2aced33fe21364bf2136.md) | 131 | `result-track:1dec2aced33fe21364bf213657767664cc0ca38ae0378ae266f7920c8eaedb74` |
| 7 | `theorem` | [mem_of_mem_filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/mem-of-mem-filter--a0fa81f719bee34584f8a87f.md) | 134 | `result-track:a0fa81f719bee34584f8a87f780d6ba2acc54ffc066433745060428da857825f` |
| 8 | `theorem` | [filter_ssubset](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/filter-ssubset--6408017619d9d59417835a98.md) | 137 | `result-track:6408017619d9d59417835a98a92133ec7b550a02e4127115dc2b8342f1637d7c` |
| 9 | `theorem` | [filter_filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/filter-filter--bd8f62e7d902694463a271c8.md) | 145 | `result-track:bd8f62e7d902694463a271c83088f9275cea9596d68d4cf83d39746b2fb13bca` |
| 10 | `theorem` | [filter_comm](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/filter-comm--221758973954b02a64d877bb.md) | 149 | `result-track:221758973954b02a64d877bb7fedbbff95421e732000e1740b86f808acaa870e` |
| 11 | `theorem` | [filter_congr_decidable](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/filter-congr-decidable--2cc252f8e586422faa76d168.md) | 153 | `result-track:2cc252f8e586422faa76d168c87f9ec8206ef512c0b2e73f081a1bd3d12ecc4a` |
| 12 | `theorem` | [filter_True](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/filter-true--3fe6a4264e7aa724e63bb346.md) | 157 | `result-track:3fe6a4264e7aa724e63bb346fd9aed14492a61f00cabb70babf341a1aefa2b66` |
| 13 | `theorem` | [filter_False](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/filter-false--bb7156f80ce1e4ce8841bda2.md) | 160 | `result-track:bb7156f80ce1e4ce8841bda2eb4fefbc9052e760b7558a3b4c37c8f41803afb4` |
| 14 | `lemma` | [filter_eq_self](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/filter-eq-self--d455d6c42bc6b0e23d0508b3.md) | 164 | `result-track:d455d6c42bc6b0e23d0508b3823a3f4396d10976fa859dd27b3fa9d75f6de4bb` |
| 15 | `theorem` | [filter_eq_empty_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/filter-eq-empty-iff--90437ff6722c1a0a0dfb1767.md) | 166 | `result-track:90437ff6722c1a0a0dfb1767692bcda01f48d14b24f465e57f484ab41d144e10` |
| 16 | `theorem` | [filter_nonempty_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/filter-nonempty-iff--714e991306c4cbf09b5dbe40.md) | 168 | `result-track:714e991306c4cbf09b5dbe40e5fd11940059daa16b9b2628d15c013af4b65a64` |
| 17 | `theorem` | [filter_true_of_mem](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/filter-true-of-mem--eb9aa89ae04c89dae61d8b71.md) | 173 | `result-track:eb9aa89ae04c89dae61d8b716837aaaac99f0feb4d9e4f618096ea8b62303d92` |
| 18 | `theorem` | [filter_false_of_mem](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/filter-false-of-mem--5c2935eb0551a57f91d27aef.md) | 176 | `result-track:5c2935eb0551a57f91d27aef977312db4001f81d48a5c7bd621c8496d3a228f0` |
| 19 | `theorem` | [filter_const](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/filter-const--4c5aa658d6b878e2353fd557.md) | 179 | `result-track:4c5aa658d6b878e2353fd5573032138a956ae722fc2bccd8b2e59d2ec422bc46` |
| 20 | `theorem` | [filter_congr](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/filter-congr--61d3c904e182bc6e1918a528.md) | 182 | `result-track:61d3c904e182bc6e1918a528ddfe8f3cf9a933e4e481d95c98ea5319b4760449` |
| 21 | `theorem` | [filter_empty](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/filter-empty--f12c9c053bbf65bd5669c14d.md) | 188 | `result-track:f12c9c053bbf65bd5669c14d805ef23d5baf6a5f860de1788e0427c7a06a7b58` |
| 22 | `theorem` | [filter_subset_filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/filter-subset-filter--f66450f1675b8cf4b394d6b6.md) | 192 | `result-track:f66450f1675b8cf4b394d6b6c93320517a3da91ee6fb9495831a54ab79440fc8` |
| 23 | `theorem` | [monotone_filter_left](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/monotone-filter-left--3ff0d675bea2446c11074751.md) | 195 | `result-track:3ff0d675bea2446c11074751faa3e5c5b69124bdad0f1193a14095e80f246788` |
| 24 | `theorem` | [monotone_filter_right](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/monotone-filter-right--f9a15de922f22373bbc5c973.md) | 198 | `result-track:f9a15de922f22373bbc5c9738a22826d493307035222ee970bb80b5e06478e40` |
| 25 | `theorem` | [coe_filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/coe-filter--d49c0c2fe8f50ebf6fb911a0.md) | 203 | `result-track:d49c0c2fe8f50ebf6fb911a0f0ef8350538d4cf8530346c11b66087710e4d4b1` |
| 26 | `theorem` | [subset_coe_filter_of_subset_forall](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/subset-coe-filter-of-subset-forall--1d95d2d750975dadffba25b8.md) | 206 | `result-track:1d95d2d750975dadffba25b881ed810196506aee41e71d2d2f53e13bd46f3586` |
| 27 | `theorem` | [disjoint_filter_filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/disjoint-filter-filter--33e1b17df47bc398a4a5f22d.md) | 209 | `result-track:33e1b17df47bc398a4a5f22d51a6e57cbbc6c680d98d96b2f1370d0568539c2b` |
| 28 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.Filter.Variant7f98572c4c5b71058e7ec042cf7e8bb9c38d27f65567504f1040dc4a8f7f64a3.Set.pairwiseDisjoint_filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/root-grwtsk-topology-generaltopology-filter-variant7f98572c4c5b71058e7ec--c57b4b429a258e821482f5e9.md) | 214 | `result-track:c57b4b429a258e821482f5e945e186042d804d26eaf0730c126c982dca8167dd` |
| 29 | `theorem` | [disjoint_filter_and_not_filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/disjoint-filter-and-not-filter--89b21c71ecc366ec7d6d5281.md) | 221 | `result-track:89b21c71ecc366ec7d6d52817f168348ee94a75a2c357d5f1b4ff474f0d01f34` |
| 30 | `lemma` | [filter_inj](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/filter-inj--8841d80472a58478ca0469a1.md) | 230 | `result-track:8841d80472a58478ca0469a1a53568a3813bf9ccfdbb9b6bdfae612e128365ce` |
| 31 | `lemma` | [filter_inj'](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/declarations/filter-inj--69ec32e55566ceccad3eecad.md) | 233 | `result-track:69ec32e55566ceccad3eecad74640aa74c71bd24d0fc9434839631382ce2bfd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
