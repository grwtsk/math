# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsNormal.Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd4f98ba621877b50d94e57076e148815c4ab131",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd4f98ba621877b50d94e57076e148815c4ab131`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SuccPred.InitialSeg` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsNormal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean/declarations/isnormal--38fe43f00575ae8a9a29df0a.md) | 39 | `declaration-track:38fe43f00575ae8a9a29df0ab658b8b1027a188f956eb8180b2a89b1cff721a1` |
| 2 | `theorem` | [of_mem_lowerBounds_upperBounds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean/declarations/of-mem-lowerbounds-upperbounds--d56c4eccd0e93f0f384ad3a6.md) | 49 | `result-track:d56c4eccd0e93f0f384ad3a6cefd5ae1ca7fa843cd5b96cd6f28092ee5707134` |
| 3 | `theorem` | [of_succ_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean/declarations/of-succ-lt--e2659a6e3f5e79950cfa13bc.md) | 55 | `result-track:e2659a6e3f5e79950cfa13bcb6639f325653960e2e3f374baabf35e2bf0198c4` |
| 4 | `theorem` | [le_iff_forall_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean/declarations/le-iff-forall-le--75696373924034179efafe88.md) | 72 | `result-track:75696373924034179efafe884c89c814fe99397d2264071e6d4a03438ebdb701` |
| 5 | `theorem` | [lt_iff_exists_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean/declarations/lt-iff-exists-lt--76b87d363c4eeaaa2bce8044.md) | 76 | `result-track:76b87d363c4eeaaa2bce8044e1b646931025c9f909cc8e38a6b19e0e8853cbe9` |
| 6 | `theorem` | [map_isSuccLimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean/declarations/map-issucclimit--794b7389766f31d755f8b41f.md) | 80 | `result-track:794b7389766f31d755f8b41f588318b25ab4c2597982fdd09dbb9feb605225e0` |
| 7 | `theorem` | [map_isLUB](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean/declarations/map-islub--095a55f605258ac89927216c.md) | 89 | `result-track:095a55f605258ac89927216c91febee90a6881df84f0192c9c22e42a657f5dc5` |
| 8 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsNormal.Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.InitialSeg.isNormal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-is--b4d3bd7ef801957647fa0dff.md) | 104 | `result-track:b4d3bd7ef801957647fa0dffb7e771665c8bc587c8a50bcd00d77e30b82ffe49` |
| 9 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsNormal.Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.PrincipalSeg.isNormal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-is--93ee22c282fa66c4bc2662a0.md) | 110 | `result-track:93ee22c282fa66c4bc2662a005d3d2786bf252d4218a5aea535070bee57631d1` |
| 10 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsNormal.Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.OrderIso.isNormal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-is--ab3c7c8810388a38914ce78b.md) | 113 | `result-track:ab3c7c8810388a38914ce78be1122af4420b25b666d8ef874422c11064e21a87` |
| 11 | `theorem` | [id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean/declarations/id--4e78738f0caad7c43a592633.md) | 116 | `result-track:4e78738f0caad7c43a592633fc2468ab58e7b83d00c458e73b4a5f04b6615857` |
| 12 | `theorem` | [comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean/declarations/comp--5ca4cb3e8a85f4ca8912c0cf.md) | 119 | `result-track:5ca4cb3e8a85f4ca8912c0cf988d4d480d3d627fe8a0e35a821efbb96c9caac8` |
| 13 | `theorem` | [map_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean/declarations/map-ssup--6d185e8d396753bbc5a8468a.md) | 131 | `result-track:6d185e8d396753bbc5a8468a8dcbaeb15226dd47b6157dcc71d64c7b52079149` |
| 14 | `theorem` | [map_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean/declarations/map-isup--28f266c1587152289c06d639.md) | 135 | `result-track:28f266c1587152289c06d639b7b93c927da3af22384a28e6e0a137be29e49b90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
