# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MStructure.Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2dfc3f920e06e2787afa6cf9b4d00209c4185ac2",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2dfc3f920e06e2787afa6cf9b4d00209c4185ac2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Idempotent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsLprojection](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/islprojection--fd4f7a05c89ecc190c3729be.md) | 79 | `declaration-track:fd4f7a05c89ecc190c3729be9ac3e2b32e51756ce0ec5db4fbb1eafd2cf97802` |
| 2 | `structure` | [IsMprojection](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/ismprojection--8cbeea9f29b8093a916c8be4.md) | 88 | `declaration-track:8cbeea9f29b8093a916c8be43d09315c906164bddea6b257814103016071d721` |
| 3 | `theorem` | [Lcomplement](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/lcomplement--32d1f5bf6abd5fab07d7ed54.md) | 97 | `result-track:32d1f5bf6abd5fab07d7ed54f00b23348b47601529891b8d3e40e895b20c3d93` |
| 4 | `theorem` | [Lcomplement_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/lcomplement-iff--6d6fa7f9fede8da92c07e6c6.md) | 102 | `result-track:6d6fa7f9fede8da92c07e6c6186c10e9873eda554a9b674cf904dbca5078c907` |
| 5 | `theorem` | [commute](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/commute--a7e2107ced7bdac2973db52e.md) | 105 | `result-track:a7e2107ced7bdac2973db52e4d3bf0aeb53e0604e646c60018091db5b52ddb05` |
| 6 | `theorem` | [mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/mul--3cb5431d87bbb119a947638b.md) | 144 | `result-track:3cb5431d87bbb119a947638b16ab8fe8eedf92f9f99d52691e67fc618a0f499f` |
| 7 | `theorem` | [join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/join--bd2bb5b7bff195c80bfd6db0.md) | 161 | `result-track:bd2bb5b7bff195c80bfd6db0b534dc150c8f4a65d8b5f43d84d1821f8c1bb5bc` |
| 8 | `instance` | [Subtype.hasCompl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/subtype-hascompl--bb1cc36314aad669e7731925.md) | 166 | `declaration-track:bb1cc36314aad669e7731925a126175fd957d8f7e7d4f95129d01fbfff0a470c` |
| 9 | `theorem` | [coe_compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/coe-compl--0ad0857c7d76bcc164e415ba.md) | 170 | `result-track:0ad0857c7d76bcc164e415bac32070d4b487e37769849a041b8b34a890d76afe` |
| 10 | `instance` | [Subtype.inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/subtype-inf--b8d00fade8307c173e26c50f.md) | 173 | `declaration-track:b8d00fade8307c173e26c50fdeeae872a62c1ceee51c0b803059d60b333d199f` |
| 11 | `theorem` | [coe_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/coe-inf--06dafe3a5c981d2ad4270998.md) | 177 | `result-track:06dafe3a5c981d2ad427099858cd8fb9fbe72fdc4f3546a7c2a06ca00411c370` |
| 12 | `instance` | [Subtype.sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/subtype-sup--8f80de969603ed80cfac36a3.md) | 181 | `declaration-track:8f80de969603ed80cfac36a361d33e442ba1dd8d4bcec4b3739d2aeb487b5c9f` |
| 13 | `theorem` | [coe_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/coe-sup--dd2040cbfb024f81cf3ddb8f.md) | 185 | `result-track:dd2040cbfb024f81cf3ddb8f91447ed1c60bc2d57b5203486dfb6812b9da94a5` |
| 14 | `instance` | [Subtype.sdiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/subtype-sdiff--fb2d3f87d6e0a76de2c57aca.md) | 189 | `declaration-track:fb2d3f87d6e0a76de2c57aca461c7455d84fee206a3345683c3e97f10bdcbeaa` |
| 15 | `theorem` | [coe_sdiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/coe-sdiff--8cd39cdc232b9294ffa26998.md) | 193 | `result-track:8cd39cdc232b9294ffa26998402f6cb35c436b615f41f5f1d140e475ed588b3d` |
| 16 | `instance` | [Subtype.partialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/subtype-partialorder--939e0ce26b25cc80b6a15eb8.md) | 197 | `declaration-track:939e0ce26b25cc80b6a15eb8bf1266a6cf234799d41e3baff614e659f0a5916b` |
| 17 | `theorem` | [le_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/le-def--d4d9eef05b86bf46057b7e0a.md) | 206 | `result-track:d4d9eef05b86bf46057b7e0ae1e01f2878b158e1e88bd51b1dfca0d66a87a5bc` |
| 18 | `instance` | [Subtype.zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/subtype-zero--7c98d4741c01f09032b2dcc5.md) | 210 | `declaration-track:7c98d4741c01f09032b2dcc50142e5e2b5f8bee3f0b046315d5c887add370cc8` |
| 19 | `theorem` | [coe_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/coe-zero--82ff8d0f3af9fd614f503380.md) | 215 | `result-track:82ff8d0f3af9fd614f5033806dfb0a506d8b9d4eba6a1236fda411068822cb5f` |
| 20 | `instance` | [Subtype.one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/subtype-one--142564ec23ff9d871e42a401.md) | 218 | `declaration-track:142564ec23ff9d871e42a4017e453457bad13a28caa4d741d67a7fa2dfb4a9c3` |
| 21 | `theorem` | [coe_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/coe-one--55777ef2537a27fb5a45ab63.md) | 222 | `result-track:55777ef2537a27fb5a45ab6351d4f791e5762d6f25fefac0b06a84c51087fdb8` |
| 22 | `instance` | [Subtype.boundedOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/subtype-boundedorder--171bf4028a09185edec579e4.md) | 225 | `declaration-track:171bf4028a09185edec579e45b897e70cacca8fe6a297ed9cff77c4e50b69589` |
| 23 | `theorem` | [coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/coe-bot--1d04128e44737d5286778d96.md) | 233 | `result-track:1d04128e44737d5286778d96461f9bbc9fa67646487f4b5a7f7eb47f1e085af6` |
| 24 | `theorem` | [coe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/coe-top--472a09c00251452b920b05ab.md) | 238 | `result-track:472a09c00251452b920b05ab55113975f689a81a91e452bc70a67b590e727f32` |
| 25 | `theorem` | [compl_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/compl-mul--5f69b744d4e48b385f62a67f.md) | 242 | `result-track:5f69b744d4e48b385f62a67fcd95ff5ead0a3c0afed3570e385eaa6ba45e4b37` |
| 26 | `theorem` | [mul_compl_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/mul-compl-self--e73c31f9e079f638b2794044.md) | 245 | `result-track:e73c31f9e079f638b2794044b7eca982c89251c5ed1bc23cca1fe5dee185da63` |
| 27 | `theorem` | [distrib_lattice_lemma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/distrib-lattice-lemma--570c7786aab44ea76f6c5bdd.md) | 248 | `result-track:570c7786aab44ea76f6c5bdd298f7a1d23783992f8bc3309c5cd6df7dfd3d78f` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/instance--ea4eae3757c2d03c4c3686e5.md) | 262 | `declaration-track:ea4eae3757c2d03c4c3686e5ddcaf1fa5b96fc312f909e2141830d691937e7e8` |
| 29 | `instance` | [Subtype.distribLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/subtype-distriblattice--d5f51cd6b4d00e0e67040b48.md) | 285 | `declaration-track:d5f51cd6b4d00e0e67040b48deb24e878b5039af775cf5b09ec2c87c4ac39bde` |
| 30 | `instance` | [Subtype.BooleanAlgebra](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantc8bde9c3715baa4589afd1a07727bca54e030bd7756bf337fb0446842dc001f5.lean/declarations/subtype-booleanalgebra--7b72d33eee26cb6c36a7afea.md) | 300 | `declaration-track:7b72d33eee26cb6c36a7afeae4527d415c28c62a2cf3222f517544ceca9f487f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
