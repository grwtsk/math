# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f84bdbaf3a8762bba2b6e9a496677f20b93c77e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f84bdbaf3a8762bba2b6e9a496677f20b93c77e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.BilinearForm.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Finite` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorDistrib](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean/declarations/tensordistrib--417e9f18b014b83bee6386fe.md) | 51 | `declaration-track:417e9f18b014b83bee6386fef1c7fa8becaa5752e9685f06aaa68a91124fb4ac` |
| 2 | `theorem` | [tensorDistrib_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean/declarations/tensordistrib-tmul--48493779066dc62fb5abfaf8.md) | 62 | `result-track:48493779066dc62fb5abfaf88099a1421f23810aebe052595facb776e83f67df` |
| 3 | `abbrev` | [tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean/declarations/tmul--240061cff3c70ce20effbdcd.md) | 69 | `declaration-track:240061cff3c70ce20effbdcdcebbbe61b55f5bd1a428ecd81127554e17d2ff9a` |
| 4 | `lemma` | [tmul_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean/declarations/tmul-issymm--cd42349be0810ce9e9f4907c.md) | 75 | `result-track:cd42349be0810ce9e9f4907c682a3ec01128b4d89a6e845b68b62a239b746b0b` |
| 5 | `def` | [baseChange](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean/declarations/basechange--505d107a2cc5490786d67651.md) | 85 | `declaration-track:505d107a2cc5490786d6765150712e6ccb725c4ed9ea07a8d871a69464ce87c3` |
| 6 | `theorem` | [baseChange_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean/declarations/basechange-tmul--6acf28b08b02d2d99f3642da.md) | 89 | `result-track:6acf28b08b02d2d99f3642daa82fdaf5820e14a661a0eec88409c5eeb353bccd` |
| 7 | `lemma` | [baseChange_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean/declarations/basechange-issymm--b938eb97fe2545b8db49a41b.md) | 94 | `result-track:b938eb97fe2545b8db49a41bd082f962f3f1ae0037cd34ccddf230749e20145c` |
| 8 | `def` | [tensorDistrib](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean/declarations/tensordistrib--59ec99694841a038f52458de.md) | 107 | `declaration-track:59ec99694841a038f52458def4830b39128e68ecc7791e8c2868f688a2473f81` |
| 9 | `theorem` | [tensorDistrib_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean/declarations/tensordistrib-tmul--824d346140b82a74e979a8e6.md) | 115 | `result-track:824d346140b82a74e979a8e687b7a8d7024909912c89425269cd77aae5f5c240` |
| 10 | `abbrev` | [tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean/declarations/tmul--6dadb3d868fb34b988688527.md) | 122 | `declaration-track:6dadb3d868fb34b9886885270d093ef39a9b8650fb89a1edfd3b18cf47bcc1c4` |
| 11 | `lemma` | [_root_.LinearMap.IsSymm.tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean/declarations/root-linearmap-issymm-tmul--c4d11e4ee3f86bc5eac6b8bd.md) | 127 | `result-track:c4d11e4ee3f86bc5eac6b8bd7837e1c27c87bcd8211852ec59d21ded01d29222` |
| 12 | `def` | [baseChange](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean/declarations/basechange--785f27001d502373365f7fde.md) | 135 | `declaration-track:785f27001d502373365f7fde50a6f42a9aaeb9a171945ee784b196e4c236b989` |
| 13 | `theorem` | [baseChange_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean/declarations/basechange-tmul--be60892d3801969a9b9572fa.md) | 139 | `result-track:be60892d3801969a9b9572fa909fc4e76d7d4e91a9b2cc45d3c5d51d0bc71cf8` |
| 14 | `lemma` | [IsSymm.baseChange](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean/declarations/issymm-basechange--5e85afe8d7af7bb3cc8cdb40.md) | 146 | `result-track:5e85afe8d7af7bb3cc8cdb40f5ab2aac991078d1770640cc9da81081a11b61dd` |
| 15 | `def` | [tensorDistribEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean/declarations/tensordistribequiv--213d1f55f5ff30044af58183.md) | 165 | `declaration-track:213d1f55f5ff30044af5818387a42a6a991c605b2a842b062481309af31bbeac` |
| 16 | `theorem` | [tensorDistribEquiv_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean/declarations/tensordistribequiv-tmul--7ea28b92bf64c0d83c1067ff.md) | 175 | `result-track:7ea28b92bf64c0d83c1067ffeb5dd3b9e79c8cf55b90813f9534217dbb323ddf` |
| 17 | `theorem` | [tensorDistribEquiv_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean/declarations/tensordistribequiv-tolinearmap--81f8e4860b5aaa5080444ff5.md) | 184 | `result-track:81f8e4860b5aaa5080444ff585cbe274fa9c94edd5023a4b1e242b349c735e97` |
| 18 | `theorem` | [tensorDistribEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant769090a408b7e62ad875d93cd92e5b07e6e3aee15382936ee00f3f626681e754.lean/declarations/tensordistribequiv-apply--7b866e3ac41e638ffb5a6a6c.md) | 191 | `result-track:7b866e3ac41e638ffb5a6a6c06315f5a7a8efdfc12329f425fbb50d595d22962` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
