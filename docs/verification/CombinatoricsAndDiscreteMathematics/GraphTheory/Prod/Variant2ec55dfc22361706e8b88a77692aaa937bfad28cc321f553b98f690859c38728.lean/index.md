# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Prod.Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56bc9eaf626e5ce7af69ee758e8c8fa1c544ed0a",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56bc9eaf626e5ce7af69ee758e8c8fa1c544ed0a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Connectivity` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boxProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/boxprod--c9020cf2e3c4c5f7e2ffd38c.md) | 44 | `declaration-track:c9020cf2e3c4c5f7e2ffd38cafd13c7b54f4af6d99c90b3602bdac4a3f2c3664` |
| 2 | `theorem` | [boxProd_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/boxprod-adj--4a6b2aa99e88b20a898cd01d.md) | 56 | `result-track:4a6b2aa99e88b20a898cd01da71fa28dde2d07eca4226cf8dc583fe015737bae` |
| 3 | `theorem` | [boxProd_adj_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/boxprod-adj-left--606b8e238deb85ff9c46035a.md) | 61 | `result-track:606b8e238deb85ff9c46035a7e1d9d54d962ea228fdc79402eb03195572bd6fa` |
| 4 | `theorem` | [boxProd_adj_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/boxprod-adj-right--132471ff7827b168e5c92142.md) | 66 | `result-track:132471ff7827b168e5c92142ab46daa7ce651ae7e7a356734d7296f237cf0ab7` |
| 5 | `theorem` | [boxProd_neighborSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/boxprod-neighborset--7f617bb35b0f8ae2bb0fb2ee.md) | 70 | `result-track:7f617bb35b0f8ae2bb0fb2ee52df236509210ad35d507b4266126e56df6bf67c` |
| 6 | `def` | [boxProdComm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/boxprodcomm--05a6b66ce8343a26dd90d804.md) | 81 | `declaration-track:05a6b66ce8343a26dd90d80451244a8d278b1de6f4f577788881e522ee4f004d` |
| 7 | `def` | [boxProdAssoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/boxprodassoc--447004c38bf349ac5ac0f9f6.md) | 86 | `declaration-track:447004c38bf349ac5ac0f9f6f21fb02c483f5327ab06fddad14edbb029e25da7` |
| 8 | `def` | [boxProdLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/boxprodleft--dfc07b28bb5e90f1fdbfebf7.md) | 94 | `declaration-track:dfc07b28bb5e90f1fdbfebf714e70393364922a3614e25ce29dcf602d8bb0c22` |
| 9 | `def` | [boxProdRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/boxprodright--818ab512e8525f52cd5e1cc8.md) | 102 | `declaration-track:818ab512e8525f52cd5e1cc852c0cc7e6a471027fc8b088f9f81967e6303eb6f` |
| 10 | `def` | [boxProdLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/boxprodleft--b7a85c8361a412730a22794c.md) | 113 | `declaration-track:b7a85c8361a412730a22794c17b7905fe2aa21f315d1dcb6cd796dda033cb2ea` |
| 11 | `def` | [boxProdRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/boxprodright--568addad1c2a87859c77c1d2.md) | 120 | `declaration-track:568addad1c2a87859c77c1d2acd9c965ed3d1d08bde6290c1d897295c49f7e30` |
| 12 | `def` | [ofBoxProdLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/ofboxprodleft--65de31ff9622969d6344dfe5.md) | 127 | `declaration-track:65de31ff9622969d6344dfe55e1300d25c9873efc99b0c801e9beb27bfa53056` |
| 13 | `def` | [ofBoxProdRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/ofboxprodright--4deb207c8b0f7ad556ca56bf.md) | 137 | `declaration-track:4deb207c8b0f7ad556ca56bf04415497e87a01a61107177ee0150b199479dac7` |
| 14 | `theorem` | [ofBoxProdLeft_boxProdLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/ofboxprodleft-boxprodleft--03c661d2ad8bc70a2f118c07.md) | 147 | `result-track:03c661d2ad8bc70a2f118c07462fdb598a8f4c2cfa7bd05244077667c2ff33dd` |
| 15 | `theorem` | [ofBoxProdLeft_boxProdRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/ofboxprodleft-boxprodright--d6272ea36b98e5d8130f2279.md) | 157 | `result-track:d6272ea36b98e5d8130f2279f5189524173cee9d9b6d81cf58b32f9aea8f99e0` |
| 16 | `theorem` | [Preconnected.boxProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/preconnected-boxprod--355e975b29b6965401dac86a.md) | 171 | `result-track:355e975b29b6965401dac86aa0e005df2aac96244e29cb185eeb2e049f76305c` |
| 17 | `theorem` | [Preconnected.ofBoxProdLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/preconnected-ofboxprodleft--f398cf9827eaa48527bf075f.md) | 180 | `result-track:f398cf9827eaa48527bf075fb6cd8c9319977b07f275f6428c7c070970c2512d` |
| 18 | `theorem` | [Preconnected.ofBoxProdRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/preconnected-ofboxprodright--7511298695a473b9bc8def4f.md) | 188 | `result-track:7511298695a473b9bc8def4f43d4d1499df7d3eeb1ab9af33a2cdef8ee4c1158` |
| 19 | `theorem` | [Connected.boxProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/connected-boxprod--a3906b4a9cef7236cd4df423.md) | 196 | `result-track:a3906b4a9cef7236cd4df423bbebe6078b2bfc858a7c2535f6718d0ca86e3a3a` |
| 20 | `theorem` | [Connected.ofBoxProdLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/connected-ofboxprodleft--94ff645cde87b14d756f816e.md) | 202 | `result-track:94ff645cde87b14d756f816eafb47d4826c6b6d26148dd9e6d87f05620874d2f` |
| 21 | `theorem` | [Connected.ofBoxProdRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/connected-ofboxprodright--be4946d3ba8dae574ff427ac.md) | 208 | `result-track:be4946d3ba8dae574ff427ac2d8acb6f99d283273f4bab528b94df53c4280ce8` |
| 22 | `theorem` | [boxProd_connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/boxprod-connected--1246c32533cc83b2ad9821e4.md) | 215 | `result-track:1246c32533cc83b2ad9821e450eef52ad64fcb592433670c26ab601aa9b9be5e` |
| 23 | `instance` | [boxProdFintypeNeighborSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/boxprodfintypeneighborset--6b7865523b4c0a90aea33f60.md) | 219 | `declaration-track:6b7865523b4c0a90aea33f60bbdf3ffb0cf0064b43a5aef2e192989d8b591285` |
| 24 | `theorem` | [boxProd_neighborFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/boxprod-neighborfinset--a788b6363894f434b769f969.md) | 231 | `result-track:a788b6363894f434b769f96932a37c77cebec25d19458be12321c27d9f70e604` |
| 25 | `theorem` | [boxProd_degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prod/Variant2ec55dfc22361706e8b88a77692aaa937bfad28cc321f553b98f690859c38728.lean/declarations/boxprod-degree--48979097d615b483fdec3796.md) | 242 | `result-track:48979097d615b483fdec3796f9cba011edb5aa614eec6a58ee9d9552dae1e99d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
