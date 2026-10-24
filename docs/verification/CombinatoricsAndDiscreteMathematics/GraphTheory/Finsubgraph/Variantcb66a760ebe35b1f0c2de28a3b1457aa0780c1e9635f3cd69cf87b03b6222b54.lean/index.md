# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Finsubgraph.Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d536e4b7b0dcc189e36a50e7dc3f794c2d0e8bf6",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d536e4b7b0dcc189e36a50e7dc3f794c2d0e8bf6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.CofilteredSystem` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Subgraph` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Finsubgraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/finsubgraph--ae9fa8f9664ceb93895a30ad.md) | 43 | `declaration-track:ae9fa8f9664ceb93895a30ad41f775cad95780eec83246f62cf37c096c66c0a5` |
| 2 | `abbrev` | [FinsubgraphHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/finsubgraphhom--e85dca62070413614c38a8f9.md) | 47 | `declaration-track:e85dca62070413614c38a8f903554f2c094570b194f4439fafe92ae61e714c53` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/instance--23ba80ab544e18a42ff2840f.md) | 54 | `declaration-track:23ba80ab544e18a42ff2840fd0453243bf62f74f4ed33db6455edbae47c09bb2` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/instance--a12bf7866f6ee9f796e98ac7.md) | 58 | `declaration-track:a12bf7866f6ee9f796e98ac74ee13769a158a9fb77068037a74be6e4adc68bcf` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/instance--4977193f487e25e0354b478c.md) | 61 | `declaration-track:4977193f487e25e0354b478cdf33b1765f709c9e5554103926f0eb96d6f914be` |
| 6 | `instance` | [instSDiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/instsdiff--b8f7998016e509e5d6a8ff89.md) | 64 | `declaration-track:b8f7998016e509e5d6a8ff89b3982e5970354fe96906d1069d1e2dc1a02ebc7d` |
| 7 | `lemma` | [coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/coe-bot--b81e127922421dfce03bbd74.md) | 67 | `result-track:b81e127922421dfce03bbd743b3212ad64428d2a503ad4df3c3d073c84fcb83e` |
| 8 | `lemma` | [coe_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/coe-sup--03317c64679d5bc2d2e31646.md) | 70 | `result-track:03317c64679d5bc2d2e316460f23f5fa3ac83a56aa64c2b7b1b7263146b18182` |
| 9 | `lemma` | [coe_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/coe-inf--1258957023f543fa70e694a5.md) | 73 | `result-track:1258957023f543fa70e694a5f504dd1cf8e5cedb99dfe9410b56fd0d615b61d5` |
| 10 | `lemma` | [coe_sdiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/coe-sdiff--0f934ff6d87d6e8c461c80fb.md) | 76 | `result-track:0f934ff6d87d6e8c461c80fb344cf933efafcdcdceee4b1bc9db94c977901bf8` |
| 11 | `instance` | [instGeneralizedCoheytingAlgebra](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/instgeneralizedcoheytingalgebra--1b56f2825132e1939b0f517e.md) | 78 | `declaration-track:1b56f2825132e1939b0f517e651820b957768dea4ad1599cd828e0da347e4e30` |
| 12 | `instance` | [instTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/insttop--d7cad74549baeec44ce4c907.md) | 84 | `declaration-track:d7cad74549baeec44ce4c9076dfbf26a6e4d206eb94251a9da19475da3921c4c` |
| 13 | `instance` | [instHasCompl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/insthascompl--61b2caff59596a34cbb67b9d.md) | 85 | `declaration-track:61b2caff59596a34cbb67b9d8b08795a816e70ed9c3e4eb085dc7b3a27eea423` |
| 14 | `instance` | [instHNot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/insthnot--6011905c40eda35524c2ca3a.md) | 86 | `declaration-track:6011905c40eda35524c2ca3a83634137969e113496c9f4363dbb8f0c2d777656` |
| 15 | `instance` | [instHImp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/insthimp--c2d7f15bbc89cbc3433c7325.md) | 87 | `declaration-track:c2d7f15bbc89cbc3433c7325914c240e98d5ac85bbc06daa3077f99aadbde7e8` |
| 16 | `instance` | [instSupSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/instsupset--d2fe3535db24549a4141bf8b.md) | 88 | `declaration-track:d2fe3535db24549a4141bf8b90ac198cf22f06f0fb2f8e27d3779dd997dd59a0` |
| 17 | `instance` | [instInfSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/instinfset--bd6ea847dd4b9b5c06c338ef.md) | 89 | `declaration-track:bd6ea847dd4b9b5c06c338ef95d968389469cc899705f1e6c3aebb43206a0f68` |
| 18 | `lemma` | [coe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/coe-top--910b4f55c547f0350c3142c4.md) | 91 | `result-track:910b4f55c547f0350c3142c4a6cfcb88257f53a9b2b5bfc68cc6c0255684ed67` |
| 19 | `lemma` | [coe_compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/coe-compl--a28464960c501593e8b5d100.md) | 92 | `result-track:a28464960c501593e8b5d1002e8371a7b3086aa9140a8ce6eea43c7a8bfb9ee2` |
| 20 | `lemma` | [coe_hnot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/coe-hnot--147d62a1fbdd0046a258e5c7.md) | 93 | `result-track:147d62a1fbdd0046a258e5c76f28247a143ec8cb13c5dbcbcfbfe16a4e18576d` |
| 21 | `lemma` | [coe_himp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/coe-himp--03795daceb8f2da218a1b869.md) | 96 | `result-track:03795daceb8f2da218a1b869a9d8c12bd002e4b471b59304cf2524f959aaa54d` |
| 22 | `lemma` | [coe_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/coe-ssup--201881d45ceffd96314c7d6a.md) | 99 | `result-track:201881d45ceffd96314c7d6ad6ff32572381d633e2874cf8df96a0ec983e0dc6` |
| 23 | `lemma` | [coe_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/coe-sinf--e52c8205e6c6e36d603741f7.md) | 102 | `result-track:e52c8205e6c6e36d603741f76720f90190594da1aae573eae7e6ed0641378ce3` |
| 24 | `lemma` | [coe_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/coe-isup--06002e1f2d9655592ab6c6d2.md) | 105 | `result-track:06002e1f2d9655592ab6c6d27275b06f140cb105b309960cb22a645164222fc2` |
| 25 | `lemma` | [coe_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/coe-iinf--bf3ec6c777a10d2d91d949d4.md) | 109 | `result-track:bf3ec6c777a10d2d91d949d484d7db20ac9c9075a36545947e8fbed740b53641` |
| 26 | `instance` | [instCompletelyDistribLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/instcompletelydistriblattice--c6d88bc01a04086ae9d690da.md) | 112 | `declaration-track:c6d88bc01a04086ae9d690dafff17b8855bf5e5bc5d393d895e29d5563cb476a` |
| 27 | `def` | [singletonFinsubgraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/singletonfinsubgraph--2bc20ba8cebfe686d15594eb.md) | 120 | `declaration-track:2bc20ba8cebfe686d15594eb12ceeb02be2a01e7b9aeb0039b12c825ebd07efe` |
| 28 | `def` | [finsubgraphOfAdj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/finsubgraphofadj--3af4c800727ed2438080a769.md) | 124 | `declaration-track:3af4c800727ed2438080a76984bcb3415cf120f2e8c6d1b1b91d937a80f2fcdb` |
| 29 | `theorem` | [singletonFinsubgraph_le_adj_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/singletonfinsubgraph-le-adj-left--f4318991078ca63437527b83.md) | 128 | `result-track:f4318991078ca63437527b83f653d1ae5f751a93e4e1104bf7a8010300266854` |
| 30 | `theorem` | [singletonFinsubgraph_le_adj_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/singletonfinsubgraph-le-adj-right--7035438f7bfa0a9d95931e92.md) | 132 | `result-track:7035438f7bfa0a9d95931e92e3087db6107f8a624e7af66d394636117dc7afe6` |
| 31 | `def` | [FinsubgraphHom.restrict](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/finsubgraphhom-restrict--30a17c554311674eac8c02ba.md) | 137 | `declaration-track:30a17c554311674eac8c02ba10f0de942274ba39c7772f2e5889e950ba925f02` |
| 32 | `def` | [finsubgraphHomFunctor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/finsubgraphhomfunctor--02eb5919a5c2d54a814221ff.md) | 143 | `declaration-track:02eb5919a5c2d54a814221ff6cf6e3768a45e41230a3d4e20a97a3b020fd4361` |
| 33 | `theorem` | [nonempty_hom_of_forall_finite_subgraph_hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/declarations/nonempty-hom-of-forall-finite-subgraph-hom--9fc0afefba4b94657815c981.md) | 150 | `result-track:9fc0afefba4b94657815c981163b8d80219ecce54ea5a2fc1a8ce8c60de3055c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
