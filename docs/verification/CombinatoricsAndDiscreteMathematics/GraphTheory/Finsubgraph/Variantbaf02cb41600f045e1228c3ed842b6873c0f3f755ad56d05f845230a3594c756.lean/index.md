# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Finsubgraph.Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba1eabb77752d47729a14f8da2e3b77f54e64db4",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba1eabb77752d47729a14f8da2e3b77f54e64db4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.CofilteredSystem` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Subgraph` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Finsubgraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/finsubgraph--dc0e079433972d5072e24610.md) | 51 | `declaration-track:dc0e079433972d5072e246105e5099a10f62937707e3ff9d81481f8a1d9732e2` |
| 2 | `abbrev` | [FinsubgraphHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/finsubgraphhom--38ed359664f259b95059372d.md) | 55 | `declaration-track:38ed359664f259b95059372d16d3f68872e3acf6ec5770cad707c540d86495fc` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/instance--83de095f8ce4cf081e54cfef.md) | 62 | `declaration-track:83de095f8ce4cf081e54cfefa8af6aa4b51278cb4474e50acbce8ce9465a5713` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/instance--e24e5deed5cbd7f9a93ba348.md) | 66 | `declaration-track:e24e5deed5cbd7f9a93ba34810acda0f738734b7b448c78ecb6872b94df3b6ac` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/instance--625d0944b84734811dc0de43.md) | 69 | `declaration-track:625d0944b84734811dc0de437b9400992737936bf5e6f0acd16b52255290fe50` |
| 6 | `instance` | [instSDiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/instsdiff--302d95c45bba7dbe1973c212.md) | 72 | `declaration-track:302d95c45bba7dbe1973c212eb3f9dfdae9463495561c234c8979ccc77050e9c` |
| 7 | `lemma` | [coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/coe-bot--6330f0595d522ff6a3699334.md) | 75 | `result-track:6330f0595d522ff6a3699334ab6960611a91379180add42c9a960584926ca5cb` |
| 8 | `lemma` | [coe_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/coe-sup--aadc02835b70c596677cd7c7.md) | 78 | `result-track:aadc02835b70c596677cd7c77e424b4e0d8cf63a7b862e1d32209e4a32799e86` |
| 9 | `lemma` | [coe_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/coe-inf--97f04d231959a1ccb6d93ce6.md) | 81 | `result-track:97f04d231959a1ccb6d93ce62ff5dfab61d9568c9827c0dbc871ee85de989207` |
| 10 | `lemma` | [coe_sdiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/coe-sdiff--9bb32be97ad1198fa7a31aeb.md) | 84 | `result-track:9bb32be97ad1198fa7a31aebaca30339268f0914f6cfc23fb01dc684d5c65520` |
| 11 | `instance` | [instGeneralizedCoheytingAlgebra](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/instgeneralizedcoheytingalgebra--91be6b21a8574e339be22152.md) | 86 | `declaration-track:91be6b21a8574e339be22152d4538ee7cf5ef9186d29cbcd9f16f5bb0b99f869` |
| 12 | `instance` | [instTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/insttop--98bd2a1de0359db8f781e67f.md) | 92 | `declaration-track:98bd2a1de0359db8f781e67f4f395b46cb26fa6990348500c59c73cb861ae89b` |
| 13 | `instance` | [instHasCompl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/insthascompl--142c7e86fc540cee0f7b113b.md) | 93 | `declaration-track:142c7e86fc540cee0f7b113bdbf753fd60cdfdd5e65d4a4197a1ee986ee580b5` |
| 14 | `instance` | [instHNot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/insthnot--9a4399f55831335323a7daa6.md) | 94 | `declaration-track:9a4399f55831335323a7daa6a6a6b059339c90f832f91b0505500eccc81f5909` |
| 15 | `instance` | [instHImp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/insthimp--e21ad4ce257a4f37343aba2b.md) | 95 | `declaration-track:e21ad4ce257a4f37343aba2b2062e30e96b8dec891f843730a962b8b4d74008b` |
| 16 | `instance` | [instSupSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/instsupset--0e4f801c345e79bb42bc9d1b.md) | 96 | `declaration-track:0e4f801c345e79bb42bc9d1be2634030448e272552417ecf5b8d16d8274a51f7` |
| 17 | `instance` | [instInfSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/instinfset--77c93aa3b29b7c013059baf6.md) | 97 | `declaration-track:77c93aa3b29b7c013059baf6bdc7d48969615d0229ca826e3056c9d547accf2a` |
| 18 | `lemma` | [coe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/coe-top--210aa51b88587a6527c5c844.md) | 99 | `result-track:210aa51b88587a6527c5c8442951601274b7df7e58cc16c87b32a1fdd4ea4efc` |
| 19 | `lemma` | [coe_compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/coe-compl--9019159aebb41c8303506dde.md) | 100 | `result-track:9019159aebb41c8303506dde592fadd516fe116f605dbd38b617dd2d3480c20b` |
| 20 | `lemma` | [coe_hnot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/coe-hnot--fdb77e2d93e1fbf93f96432e.md) | 101 | `result-track:fdb77e2d93e1fbf93f96432e0157782c630770799cabe2bf8c3c301854c87916` |
| 21 | `lemma` | [coe_himp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/coe-himp--e1d897b210470627597d5518.md) | 104 | `result-track:e1d897b210470627597d5518a9e501adc6ff9028863b31ba31cc91ad6be793af` |
| 22 | `lemma` | [coe_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/coe-ssup--e5b39c190fa3cd6ac8c6426a.md) | 107 | `result-track:e5b39c190fa3cd6ac8c6426a8ed7471288091a94972844206acce6365b31627a` |
| 23 | `lemma` | [coe_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/coe-sinf--3ffc5809bbb75dee1142e6e1.md) | 110 | `result-track:3ffc5809bbb75dee1142e6e134d6bb99887fa4c170bb5781d898f68046ce4a91` |
| 24 | `lemma` | [coe_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/coe-isup--015af5c63debafe9557031ee.md) | 113 | `result-track:015af5c63debafe9557031ee461b3909a2d916dac4201eb51924040b6ec0e3a7` |
| 25 | `lemma` | [coe_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/coe-iinf--c0bec57b15c97e7f565d6d55.md) | 117 | `result-track:c0bec57b15c97e7f565d6d55772e406e50fe3b6ee05e694fa225a07f878272e9` |
| 26 | `instance` | [instCompletelyDistribLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/instcompletelydistriblattice--0309e9daf9eabe85fc89a18e.md) | 120 | `declaration-track:0309e9daf9eabe85fc89a18e126a748c471c4e64ffe61e906975154ae3c2772f` |
| 27 | `def` | [singletonFinsubgraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/singletonfinsubgraph--577c91be235337bfe4dff594.md) | 128 | `declaration-track:577c91be235337bfe4dff594eee893d88d79bdd358182149555438163eea0801` |
| 28 | `def` | [finsubgraphOfAdj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/finsubgraphofadj--8897eea6bd380bd2031b3d45.md) | 132 | `declaration-track:8897eea6bd380bd2031b3d4585568c80be913fff41ef907be9585843ba095cef` |
| 29 | `theorem` | [singletonFinsubgraph_le_adj_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/singletonfinsubgraph-le-adj-left--913b9de151d4da894511ed50.md) | 136 | `result-track:913b9de151d4da894511ed5007abcc594b17f578e453942034719605b319db74` |
| 30 | `theorem` | [singletonFinsubgraph_le_adj_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/singletonfinsubgraph-le-adj-right--8f2c35e71536fd522bdc6d40.md) | 140 | `result-track:8f2c35e71536fd522bdc6d4026d8109f6962d2fe24786a60003f25b02a3d030d` |
| 31 | `def` | [FinsubgraphHom.restrict](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/finsubgraphhom-restrict--a2beacdd06245fc14e8ac4e0.md) | 145 | `declaration-track:a2beacdd06245fc14e8ac4e01d82a0211bd00250d8738be49a7b83102792059a` |
| 32 | `def` | [finsubgraphHomFunctor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/finsubgraphhomfunctor--cf97f55fe0b1fd555a422a1e.md) | 151 | `declaration-track:cf97f55fe0b1fd555a422a1e918c3f90a82066b34c9d9ae197b372dafb2479a0` |
| 33 | `theorem` | [nonempty_hom_of_forall_finite_subgraph_hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/declarations/nonempty-hom-of-forall-finite-subgraph-hom--a1aceab68f8fed5d0a9aa3e7.md) | 158 | `result-track:a1aceab68f8fed5d0a9aa3e79835e916e472f46ec06bd9de32820e1a0ed534ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
