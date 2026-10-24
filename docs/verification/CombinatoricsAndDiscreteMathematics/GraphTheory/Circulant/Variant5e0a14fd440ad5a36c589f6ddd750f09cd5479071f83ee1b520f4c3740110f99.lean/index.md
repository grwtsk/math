# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Circulant.Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de168cfa7698245b08470ade7013b9b2e05a699e",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de168cfa7698245b08470ade7013b9b2e05a699e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Fin.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Hasse` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [circulantGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/circulantgraph--0edade7f2ca9b21ec1c8f0c1.md) | 27 | `declaration-track:0edade7f2ca9b21ec1c8f0c1dcf3bc938cb24a8879e3ab401db45b16d9431684` |
| 2 | `theorem` | [circulantGraph_eq_erase_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/circulantgraph-eq-erase-zero--66ad70ae601f0fb905966daf.md) | 32 | `result-track:66ad70ae601f0fb905966daf1ba1d2824fa96ef6330f4ecf3ad04b37e1d8070c` |
| 3 | `theorem` | [circulantGraph_eq_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/circulantgraph-eq-symm--0eae24454cdb3c6034583851.md) | 46 | `result-track:0eae24454cdb3c6034583851b343f3e82f77faa3ddf5fb7fa02829da27c3d581` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/instance--f726df0d8c4d16d15d8dab1b.md) | 53 | `declaration-track:f726df0d8c4d16d15d8dab1bd0a763c6f9ba8df8c3659d7209ae64a5cf5becf7` |
| 5 | `theorem` | [circulantGraph_adj_translate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/circulantgraph-adj-translate--a7c91b40cad6d485524dadfd.md) | 56 | `result-track:a7c91b40cad6d485524dadfda3d0863eb7e7c4e106c815c768009145814c6ace` |
| 6 | `def` | [cycleGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/cyclegraph--a6e99b348fb5dd96888e1fb5.md) | 60 | `declaration-track:a6e99b348fb5dd96888e1fb557405e6b1162a79b5b0d57ceb36e71d0f1c27ea0` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/instance--285ec0e36ac474d23aae71bd.md) | 64 | `declaration-track:285ec0e36ac474d23aae71bd311e3d5fcd9d319a1315c1849aacdf56293cfbbb` |
| 8 | `theorem` | [cycleGraph_zero_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/cyclegraph-zero-adj--3006fa47afb3adf0e9e05056.md) | 68 | `result-track:3006fa47afb3adf0e9e050561b745383279437959db4efe5c63a385f3b8c7a68` |
| 9 | `theorem` | [cycleGraph_zero_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/cyclegraph-zero-eq-bot--22488767237c3818e101bc0a.md) | 70 | `result-track:22488767237c3818e101bc0a31d794c73e2d2867dd612bd64c5537a131df157b` |
| 10 | `theorem` | [cycleGraph_one_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/cyclegraph-one-eq-bot--333f9a8704b493c778c9a133.md) | 71 | `result-track:333f9a8704b493c778c9a133b1333baef1c32d5853466417f1d9b824f7ab9ca3` |
| 11 | `theorem` | [cycleGraph_zero_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/cyclegraph-zero-eq-top--ed39350badd3d6ea3c125bdc.md) | 72 | `result-track:ed39350badd3d6ea3c125bdcfc1b5b13086191384280330983935f0228a2bce1` |
| 12 | `theorem` | [cycleGraph_one_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/cyclegraph-one-eq-top--4b6176e69d0240d5bdd850a2.md) | 73 | `result-track:4b6176e69d0240d5bdd850a28099f89ed9389f0ecd41d40331d026c9ef242ba7` |
| 13 | `theorem` | [cycleGraph_two_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/cyclegraph-two-eq-top--8e35727eb17a7885d0ae3abf.md) | 75 | `result-track:8e35727eb17a7885d0ae3abfb3e8ab89c6ebaf521573d2ee722a16f314dd0995` |
| 14 | `theorem` | [cycleGraph_three_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/cyclegraph-three-eq-top--e9e525bf746ee969548a91b5.md) | 79 | `result-track:e9e525bf746ee969548a91b5aa5703a207666566f58639907a8c7f9864332da2` |
| 15 | `theorem` | [cycleGraph_one_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/cyclegraph-one-adj--aa75ef2de47aad1fbcfc3945.md) | 83 | `result-track:aa75ef2de47aad1fbcfc3945553e4d7c29d904466d34eff8bdc337b086972828` |
| 16 | `theorem` | [cycleGraph_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/cyclegraph-adj--2576af47b72ef26e0228121b.md) | 87 | `result-track:2576af47b72ef26e0228121b77e66b7909cafc3c569d1b17933dfff0e1fe087e` |
| 17 | `theorem` | [cycleGraph_adj'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/cyclegraph-adj--8ad68138885feea1b710f866.md) | 93 | `result-track:8ad68138885feea1b710f86641a57e7c2b91d8051529cf954231b1719c220da0` |
| 18 | `theorem` | [cycleGraph_neighborSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/cyclegraph-neighborset--b9a7e978dd8cd3751f39e111.md) | 100 | `result-track:b9a7e978dd8cd3751f39e111f0c34d643656a3f889c0ca1ca473766d92f11ad8` |
| 19 | `theorem` | [cycleGraph_neighborFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/cyclegraph-neighborfinset--c42005a3a908a80ee29045e1.md) | 106 | `result-track:c42005a3a908a80ee29045e146b88d91f4e7067389b070848257f08b81d24718` |
| 20 | `theorem` | [cycleGraph_degree_two_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/cyclegraph-degree-two-le--2fe29f56be917361c0c03250.md) | 110 | `result-track:2fe29f56be917361c0c03250e74af6ae487a592adf5890cef2f7d5d05ecd3b67` |
| 21 | `theorem` | [cycleGraph_degree_three_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/cyclegraph-degree-three-le--3a82e6f63e32246dc837a76d.md) | 114 | `result-track:3a82e6f63e32246dc837a76db7e3f7151e8d723ed849e10069c79e9fc52b33eb` |
| 22 | `theorem` | [pathGraph_le_cycleGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/pathgraph-le-cyclegraph--6d00bf626f02c60d409ba87e.md) | 120 | `result-track:6d00bf626f02c60d409ba87e8077f5482227e873662c647def8d1ec124ac1827` |
| 23 | `theorem` | [cycleGraph_preconnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/cyclegraph-preconnected--d843b9d128c5b15f60e51389.md) | 131 | `result-track:d843b9d128c5b15f60e51389009f432aabf36e50ca019a1067e97eb49c1e60db` |
| 24 | `theorem` | [cycleGraph_connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/cyclegraph-connected--c24c9a1a52a63bfa8d99b97a.md) | 134 | `result-track:c24c9a1a52a63bfa8d99b97a0c1c207845546aca89057d7cc85948e5729058c9` |
| 25 | `def` | [cycleGraph_EulerianCircuit_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/cyclegraph-euleriancircuit-cons--75303fa9838e045ee0d4ee04.md) | 137 | `declaration-track:75303fa9838e045ee0d4ee043f19c8b2d81746408935f289562f1e7b50ccb837` |
| 26 | `def` | [cycleGraph_EulerianCircuit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/cyclegraph-euleriancircuit--ead5009da29344f8ea2202b8.md) | 146 | `declaration-track:ead5009da29344f8ea2202b8d713523067508b81f1129c3313c8afa2c3204e79` |
| 27 | `theorem` | [cycleGraph_EulerianCircuit_cons_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/cyclegraph-euleriancircuit-cons-length--1cef341feb402903cff8c30a.md) | 151 | `result-track:1cef341feb402903cff8c30a17875c08f6efb71facd5cd00ebb4155e11cd4698` |
| 28 | `theorem` | [cycleGraph_EulerianCircuit_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean/declarations/cyclegraph-euleriancircuit-length--baa4bce011ff20cc0e2fc454.md) | 161 | `result-track:baa4bce011ff20cc0e2fc4542223e8e9482b083585235b1750a11b134350088a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
