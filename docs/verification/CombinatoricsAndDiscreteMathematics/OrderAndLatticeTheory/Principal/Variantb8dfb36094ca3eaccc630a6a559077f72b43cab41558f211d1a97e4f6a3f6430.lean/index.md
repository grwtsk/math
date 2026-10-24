# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Principal.Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03671d268051fa17dff0649a6a12b2272650b914",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03671d268051fa17dff0649a6a12b2272650b914`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.OrderIso` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.CompleteLattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/ici--3e4b3987d199d1784329d791.md) | 42 | `declaration-track:3e4b3987d199d1784329d7917d34a8e0dc0a1e6c01458818a6f0985a632b7896` |
| 2 | `def` | [Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/ioi--89b420787d1b517900b3d0c6.md) | 46 | `declaration-track:89b420787d1b517900b3d0c6ea859b2cdc5dc4318e03dd7479ef8f07ba09e3ac` |
| 3 | `theorem` | [coe_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/coe-ici--d7791b0bb2a0077f11f7c149.md) | 50 | `result-track:d7791b0bb2a0077f11f7c14959f0ff505a8568c1660dc7dc422f99e9ff3155d1` |
| 4 | `theorem` | [coe_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/coe-ioi--868be830d065db1f11792f4c.md) | 54 | `result-track:868be830d065db1f11792f4c8da8a6dff3475f1368ebb4f47c5e3ac9e86d3861` |
| 5 | `theorem` | [mem_Ici_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/mem-ici-iff--a4de988dcaff79f4c78b1fdd.md) | 58 | `result-track:a4de988dcaff79f4c78b1fddfe933c3ee2e70520a1956fc904dae6a816c75ac1` |
| 6 | `theorem` | [mem_Ioi_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/mem-ioi-iff--fc7c6b77885c81d0bf87aefd.md) | 62 | `result-track:fc7c6b77885c81d0bf87aefde29b6dfad46ea02f0ac87b13ad3cfcee35cf99b3` |
| 7 | `theorem` | [map_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/map-ici--19d6953bea9e8fc6f0a16959.md) | 66 | `result-track:19d6953bea9e8fc6f0a169592132ae6acee7e946713dd0fe3575742826bff7da` |
| 8 | `theorem` | [map_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/map-ioi--2b0faea8734db37cda5fa8a9.md) | 71 | `result-track:2b0faea8734db37cda5fa8a9e3b9d159237df8416eac241edfff3e9316192598` |
| 9 | `theorem` | [Ici_le_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/ici-le-ioi--f00404b167ab45f18c49edfd.md) | 75 | `result-track:f00404b167ab45f18c49edfdc23eb5056dda1dfa265f8158d0ebd85351bbceff` |
| 10 | `theorem` | [Ici_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/ici-bot--ec48d358474f3b670c2dd914.md) | 79 | `result-track:ec48d358474f3b670c2dd914794ff400b3d4458d0010b4dec6bfbf2372d1cfb6` |
| 11 | `theorem` | [Ioi_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/ioi-top--6998f071d28ee6369e9d7a12.md) | 83 | `result-track:6998f071d28ee6369e9d7a1251216b734206c6a0869f130957a958358e32b458` |
| 12 | `lemma` | [Ici_ne_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/ici-ne-top--912313eefbfe57d8dbfbb8f2.md) | 86 | `result-track:912313eefbfe57d8dbfbb8f224a7a39acacf9aba41c65495f4601acac4a7320d` |
| 13 | `lemma` | [Ici_lt_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/ici-lt-top--a9035c1b3f8a2917ef1ece3b.md) | 87 | `result-track:a9035c1b3f8a2917ef1ece3ba5bb2c486020f776cbeb76749e20291538d590f0` |
| 14 | `lemma` | [le_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/le-ici--109f21a9c442bbde8280e285.md) | 88 | `result-track:109f21a9c442bbde8280e28504decdf2b3d1337d4d87d95a5a87622ac192c7d6` |
| 15 | `lemma` | [Ici_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/ici-injective--7084e5c47349d0d2e6ead952.md) | 96 | `result-track:7084e5c47349d0d2e6ead952f5edf244ed2b2660bba258bb1478298b7a3b781c` |
| 16 | `lemma` | [Ici_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/ici-inj--2aaee555d85a37ec8c22e470.md) | 99 | `result-track:2aaee555d85a37ec8c22e470da393cf9a2dc108dcbb241556e5ee1bf73336569` |
| 17 | `lemma` | [Ici_ne_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/ici-ne-ici--42a9a03251e24d3e8e4accaf.md) | 101 | `result-track:42a9a03251e24d3e8e4accaf3e35457b6108209027f9ad3b36745b1ee3f30a6a` |
| 18 | `theorem` | [Ici_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/ici-sup--bb1008d2fe5c321e8bce5422.md) | 106 | `result-track:bb1008d2fe5c321e8bce542265b28412357488f77f551b0bb9d9aadd394a37fd` |
| 19 | `theorem` | [Ici_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/ici-ssup--275b22be23a3342887331a3c.md) | 114 | `result-track:275b22be23a3342887331a3c200995c8dbe87f3302c6304c8f2f2bde10e5dfeb` |
| 20 | `theorem` | [Ici_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/ici-isup--1232e42a2a5221dac1008c90.md) | 118 | `result-track:1232e42a2a5221dac1008c90275f215be2de0134e8ef5e824530a34f3bec9b25` |
| 21 | `theorem` | [Ici_iSup₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/ici-isup--0060f26176ec3519c767f1e4.md) | 121 | `result-track:0060f26176ec3519c767f1e47e27663f855e515e8236eca9d56dd20a1d4e7fb7` |
| 22 | `def` | [Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/iic--89af1d698672c03d60b076b5.md) | 136 | `declaration-track:89af1d698672c03d60b076b5d50a202eb847bb17f907549c050d16eebea6c7df` |
| 23 | `def` | [Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/iio--b94c8e960627817c42571b1e.md) | 140 | `declaration-track:b94c8e960627817c42571b1e2237deeb04f2dd066fbdce09fc7ff2d487d0ad0a` |
| 24 | `theorem` | [coe_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/coe-iic--1d47369bc9d0c4f08b988494.md) | 144 | `result-track:1d47369bc9d0c4f08b9884944744d6d1a3537a5d4f15700afe5bfedfc60405dd` |
| 25 | `theorem` | [coe_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/coe-iio--dc2933c624adc82fedd3e3c7.md) | 148 | `result-track:dc2933c624adc82fedd3e3c783f58b1ffa28065899c515a303c357ae49a438a0` |
| 26 | `theorem` | [mem_Iic_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/mem-iic-iff--46cc6c44217bd15f785dd4ea.md) | 152 | `result-track:46cc6c44217bd15f785dd4ea4127915f6aabb67b471d6e7ee7560f783c2aaa09` |
| 27 | `theorem` | [mem_Iio_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/mem-iio-iff--e0c7e9be9ff8096a7ef3b740.md) | 156 | `result-track:e0c7e9be9ff8096a7ef3b7402849157e7645dc183b5a20c6f036b54199479f45` |
| 28 | `theorem` | [map_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/map-iic--2bfff89a24d7889f504d151f.md) | 160 | `result-track:2bfff89a24d7889f504d151fb4700e017ff7dc1c1938920ae4eb0b9b0fef92dd` |
| 29 | `theorem` | [map_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/map-iio--d208350c6c5ad99ec3b31e3c.md) | 165 | `result-track:d208350c6c5ad99ec3b31e3cc5900729febfcf0b4ddb72856a69f2c24257771a` |
| 30 | `theorem` | [Ioi_le_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/ioi-le-ici--e77dde6ac4e8305b45d74742.md) | 169 | `result-track:e77dde6ac4e8305b45d74742c76b1dc722fc2ad5ff4cef4acca9fe80fefbb07a` |
| 31 | `theorem` | [Iic_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/iic-top--8adf5b668a8857f82264a08e.md) | 173 | `result-track:8adf5b668a8857f82264a08ec823cc0f79154c1d3ce4a184a34d2a2d8f70ed17` |
| 32 | `theorem` | [Iio_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/iio-bot--46b189896d7d10ee77ba4f1e.md) | 177 | `result-track:46b189896d7d10ee77ba4f1ec56639fe2ef1532c76c87695ec5a801bf6778d7a` |
| 33 | `lemma` | [Iic_ne_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/iic-ne-bot--ff5534c679e6e0ca2636f7be.md) | 180 | `result-track:ff5534c679e6e0ca2636f7beb960dafce3eb32a38c418a5d5f3aaa573005f6b8` |
| 34 | `lemma` | [bot_lt_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/bot-lt-iic--12a19f36c3c5830f4154616f.md) | 181 | `result-track:12a19f36c3c5830f4154616f1a5cd5ce02ae3cea94eb37426bc6ff170557255a` |
| 35 | `lemma` | [Iic_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/iic-le--19e324b81f4e2b815bc8000b.md) | 182 | `result-track:19e324b81f4e2b815bc8000b50fe9e22d22b7eb0c53282742e992a36b90c21cc` |
| 36 | `lemma` | [Iic_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/iic-injective--2df736706a3f2602f8c28e55.md) | 189 | `result-track:2df736706a3f2602f8c28e5544b54ce02e1b0995feddf56d0e0d1b283d611402` |
| 37 | `lemma` | [Iic_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/iic-inj--1ff674490a15aa12d8fa1d3b.md) | 192 | `result-track:1ff674490a15aa12d8fa1d3bc7792315125dc81c3a891722b0f9e9ae6ec268b9` |
| 38 | `lemma` | [Iic_ne_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/iic-ne-iic--866206ff4fde6f92528a0a62.md) | 194 | `result-track:866206ff4fde6f92528a0a62177b1e9633e06994341fdf3e0258e5ec795b62c9` |
| 39 | `theorem` | [Iic_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/iic-inf--070cb1829037ad5bc5acbbf1.md) | 199 | `result-track:070cb1829037ad5bc5acbbf15af36a48187b37142499c6ed2f4566d80bb954b5` |
| 40 | `theorem` | [Iic_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/iic-sinf--6fc172af23dded8f8725411a.md) | 207 | `result-track:6fc172af23dded8f8725411a1ec94faac885092480440e49016feacaa6c2d9fc` |
| 41 | `theorem` | [Iic_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/iic-iinf--5ed98fbbdd92f91919061c03.md) | 211 | `result-track:5ed98fbbdd92f91919061c03d8d1244680d363fa65f59d97afc3c4f16c8f700c` |
| 42 | `theorem` | [Iic_iInf₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Principal/Variantb8dfb36094ca3eaccc630a6a559077f72b43cab41558f211d1a97e4f6a3f6430.lean/declarations/iic-iinf--213bad2cd9ec925dce2c4e7d.md) | 214 | `result-track:213bad2cd9ec925dce2c4e7d7edee5e6d1eea4d1e3fd497039e5d7c078082dcf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
