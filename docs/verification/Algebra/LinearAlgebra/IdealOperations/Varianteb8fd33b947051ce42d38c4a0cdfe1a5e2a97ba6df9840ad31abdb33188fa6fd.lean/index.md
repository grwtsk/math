# Verification target: GRWTSK.Algebra.LinearAlgebra.IdealOperations.Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "634b9b7800cefcb2b69b03285f09854bedb18e10",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `634b9b7800cefcb2b69b03285f09854bedb18e10`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Ideal` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_comap_le](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/map-comap-le--83a39dcbc9dc7e850fc27197.md) | 56 | `result-track:83a39dcbc9dc7e850fc27197f5fe70d58b0cba2ead54006493e110df6e71ec63` |
| 2 | `theorem` | [map_comap_eq](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/map-comap-eq--b6f7544be66c824d15bb0763.md) | 59 | `result-track:b6f7544be66c824d15bb0763621f87faa924a12cbf0b6de074600aa7a011cdb9` |
| 3 | `theorem` | [le_comap_map](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/le-comap-map--a2a9c82ceb0b760ffba92467.md) | 63 | `result-track:a2a9c82ceb0b760ffba924672451069d90ad886f3a15ee0139d7f8c1eadaa52d` |
| 4 | `theorem` | [comap_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/comap-map-eq--a3b84d3221eca15f14f83b4b.md) | 66 | `result-track:a3b84d3221eca15f14f83b4b02fdab708654ca969b7b33bf91803f28710c7a61` |
| 5 | `theorem` | [map_comap_incl](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/map-comap-incl--1ccfff59e33fb3f0d7af7bfa.md) | 71 | `result-track:1ccfff59e33fb3f0d7af7bfa57550d90751cd47473fe2e562421b051dae271e7` |
| 6 | `instance` | [hasBracket](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/hasbracket--44f36558bdd54388653ff070.md) | 79 | `declaration-track:44f36558bdd54388653ff070d1dc79b163c85b901fed242bbdd832edbc4e2943` |
| 7 | `theorem` | [lieIdeal_oper_eq_span](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/lieideal-oper-eq-span--ff8a3f8d60443e8a00ed8a76.md) | 82 | `result-track:ff8a3f8d60443e8a00ed8a769296abca9e8cbe48ca806b6aadb986b2218d1591` |
| 8 | `theorem` | [lieIdeal_oper_eq_linear_span](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/lieideal-oper-eq-linear-span--c269f4b7f7481330495d4f6e.md) | 88 | `result-track:c269f4b7f7481330495d4f6e9e9868a81a2938c6900f2140ad3ae571d2eb2203` |
| 9 | `theorem` | [lieIdeal_oper_eq_linear_span'](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/lieideal-oper-eq-linear-span--8f960d00ef93f8001977dacf.md) | 108 | `result-track:8f960d00ef93f8001977dacfa95f3ed8c1087137b4375baa1536f5a88903883e` |
| 10 | `theorem` | [lie_le_iff](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/lie-le-iff--020b23143913257b552e3036.md) | 119 | `result-track:020b23143913257b552e30367bfaeac6609fe4a60a3c22a4f1f4c2c6466e32ba` |
| 11 | `theorem` | [lie_coe_mem_lie](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/lie-coe-mem-lie--ab4725eb1bd580bd56e71322.md) | 126 | `result-track:ab4725eb1bd580bd56e713224277eede9f23f918401d82b581f97a86999aa449` |
| 12 | `theorem` | [lie_mem_lie](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/lie-mem-lie--41d76be87672899171551de1.md) | 130 | `result-track:41d76be87672899171551de144b21916ab8e10ffa573853bc7855ae9b9fb1b86` |
| 13 | `theorem` | [lie_comm](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/lie-comm--acf4fe121ee6cd64fe631151.md) | 133 | `result-track:acf4fe121ee6cd64fe631151346afe6feb31624abb691ef8246ce561b4b82bee` |
| 14 | `theorem` | [lie_le_right](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/lie-le-right--44740cfb6524dde93260459a.md) | 140 | `result-track:44740cfb6524dde93260459a635edf93f9bb371086f682ad6aa33a49a77b3703` |
| 15 | `theorem` | [lie_le_left](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/lie-le-left--aade7a3eb1ac629e59c95be9.md) | 144 | `result-track:aade7a3eb1ac629e59c95be90f1c0517f548388b78538b748ad062b69d7ad2b1` |
| 16 | `theorem` | [lie_le_inf](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/lie-le-inf--54b844e7c30c4104754a3b35.md) | 146 | `result-track:54b844e7c30c4104754a3b35668d26b5938c62b87f92515bf4471e3cc7772b8e` |
| 17 | `theorem` | [lie_bot](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/lie-bot--bc915da004935a19a9b2e3ae.md) | 149 | `result-track:bc915da004935a19a9b2e3ae86931db73720da0990ccdc231817c71a608e6a35` |
| 18 | `theorem` | [bot_lie](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/bot-lie--0800acc7428c92e21ce987de.md) | 152 | `result-track:0800acc7428c92e21ce987de5b5d56960f9e5286b697f23f5c662f7d4911dbc3` |
| 19 | `theorem` | [lie_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/lie-eq-bot-iff--c8c1a5d57ca3aecaea79259c.md) | 157 | `result-track:c8c1a5d57ca3aecaea79259c33f7feef5c4504012b54899a6da734f68be4f588` |
| 20 | `theorem` | [mono_lie](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/mono-lie--b7dfdd7c21aebd1fa894e139.md) | 164 | `result-track:b7dfdd7c21aebd1fa894e139ac4ce3ab9461e1107d9d26c13eb36e0a77b8d666` |
| 21 | `theorem` | [mono_lie_left](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/mono-lie-left--f94ee3f7357db2e43fb1659b.md) | 171 | `result-track:f94ee3f7357db2e43fb1659b8e363481141ade9584ee753ad3c3e016f6585af6` |
| 22 | `theorem` | [mono_lie_right](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/mono-lie-right--e238e9aca6fcad6bb55937c7.md) | 175 | `result-track:e238e9aca6fcad6bb55937c7c2ac07d08fc2aa85b0e0d695c7f9cfa2c6e718e4` |
| 23 | `theorem` | [lie_sup](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/lie-sup--baa33b942cd51dc22fd9b76c.md) | 179 | `result-track:baa33b942cd51dc22fd9b76c69c0dc5efa5e13e2cc8691e2fe611124f4f2e58e` |
| 24 | `theorem` | [sup_lie](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/sup-lie--29eac867cac3ca2c76f5a9d5.md) | 194 | `result-track:29eac867cac3ca2c76f5a9d5744ed38abfcb5915c66ac1878cc2e7c83ee41501` |
| 25 | `theorem` | [lie_inf](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/lie-inf--e5487d260dc4578a64cc90eb.md) | 208 | `result-track:e5487d260dc4578a64cc90eb731036568825137de7420cb900458b423ae04dcb` |
| 26 | `theorem` | [inf_lie](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/inf-lie--8bb1547d820896495acb4437.md) | 212 | `result-track:8bb1547d820896495acb4437538587bf1f7399f0817561216360680fbd3d555e` |
| 27 | `theorem` | [map_bracket_eq](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/map-bracket-eq--e2a357aa500be150ec68ae8e.md) | 216 | `result-track:e2a357aa500be150ec68ae8ed43cfbac3b61d980fab991b6232559bdef931159` |
| 28 | `theorem` | [comap_bracket_eq](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/comap-bracket-eq--d433b22f2a64d492b51ddfb4.md) | 229 | `result-track:d433b22f2a64d492b51ddfb4f2e519ccfa6edb61464cfbb9131c45fe3eff185e` |
| 29 | `theorem` | [map_bracket_le](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/map-bracket-le--af9bca683a48fc733d4b6f2f.md) | 248 | `result-track:af9bca683a48fc733d4b6f2fe1f5e4ebd9752f2090acbd698b108a8547749aeb` |
| 30 | `theorem` | [map_bracket_eq](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/map-bracket-eq--960542614740000fd2c91c8c.md) | 259 | `result-track:960542614740000fd2c91c8c9e5d49c89f3ad9155de10e8410ce7c2f1c0c7f8b` |
| 31 | `theorem` | [comap_bracket_le](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/comap-bracket-le--3609c50d4d526bb90bff15a7.md) | 271 | `result-track:3609c50d4d526bb90bff15a7725165900ecb745215bb41b210f80407d7e7b6aa` |
| 32 | `theorem` | [map_comap_incl](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/map-comap-incl--8501f47c25f8be3965529391.md) | 277 | `result-track:8501f47c25f8be3965529391a114f7ff191f04c8d53d25328f9cb7e318627db0` |
| 33 | `theorem` | [comap_bracket_eq](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/comap-bracket-eq--df90cc13df5fd82f123c4fd0.md) | 282 | `result-track:df90cc13df5fd82f123c4fd0f6b1b22e744597fa9d5b761220c27d73b988f205` |
| 34 | `theorem` | [map_comap_bracket_eq](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/map-comap-bracket-eq--3c1c26b1cbaf4e05f460636c.md) | 303 | `result-track:3c1c26b1cbaf4e05f460636c417c8c213fa97784b19d5a9be0214b0007027aa7` |
| 35 | `theorem` | [comap_bracket_incl](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/comap-bracket-incl--4989b23879b66c72d108d801.md) | 308 | `result-track:4989b23879b66c72d108d8011594d1947f0ce640cfabe76272d096732cf69d7e` |
| 36 | `theorem` | [comap_bracket_incl_of_le](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/declarations/comap-bracket-incl-of-le--6999887d2d61ad2f5578b0b1.md) | 320 | `result-track:6999887d2d61ad2f5578b0b1914175a2cdb4933aa1f4962502c3e2bd7f3c2075` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
