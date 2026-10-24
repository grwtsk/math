# Verification target: GRWTSK.Algebra.LinearAlgebra.VectorSpace.Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4917de3f02ee80596470458eeb71f968f205532",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4917de3f02ee80596470458eeb71f968f205532`.

Source path: `GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DFinsupp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean/declarations/basis--17890f9a30a6ea7e6465f079.md) | 41 | `declaration-track:17890f9a30a6ea7e6465f07998f764c347f8e24eb329ab42bc12ea7c9f51db83` |
| 2 | `instance` | [_root_.GRWTSK.Algebra.LinearAlgebra.Basis.Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.Module.Free.dfinsupp](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean/declarations/root-grwtsk-algebra-linearalgebra-basis-varianteb0d9b7c33b1cfbe454fb4307--c7e7779bec76bd3adf486851.md) | 47 | `declaration-track:c7e7779bec76bd3adf486851910345b47a4e5bb82513113559cb7feba1171e7a` |
| 3 | `theorem` | [linearIndependent_single](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean/declarations/linearindependent-single--f091aa7d68da3fd7371bec2f.md) | 54 | `result-track:f091aa7d68da3fd7371bec2f795c2e70cf18178a5f75ea4682bc146705dd65ae` |
| 4 | `lemma` | [linearIndependent_single_iff](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean/declarations/linearindependent-single-iff--39f9ed112ff15d4dc2245c2d.md) | 63 | `result-track:39f9ed112ff15d4dc2245c2d2e107efc61b3a12ef0cc99c5db1c6fac054f3b97` |
| 5 | `theorem` | [linearIndependent_single](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean/declarations/linearindependent-single--9d71781b097cbceb139f1abc.md) | 77 | `result-track:9d71781b097cbceb139f1abc0f88714c9155c560ad56cbba0ede94ec9fdc9dff` |
| 6 | `lemma` | [linearIndependent_single_iff](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean/declarations/linearindependent-single-iff--e011c1f18157a7b80be6ccec.md) | 85 | `result-track:e011c1f18157a7b80be6ccec4617007415e381faf810602238eb2670c8f78062` |
| 7 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean/declarations/basis--b558cb05750218fd1ba3930f.md) | 94 | `declaration-track:b558cb05750218fd1ba3930f4e53eb1b75686f88b245b77ebace51f063b37da0` |
| 8 | `theorem` | [basis_repr](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean/declarations/basis-repr--70df6a458a959dc2fcb53473.md) | 99 | `result-track:70df6a458a959dc2fcb53473f2ab5e2a9d1e557888d63f1c72f63896f6f297b8` |
| 9 | `theorem` | [coe_basis](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean/declarations/coe-basis--2c54687ce069ed0b4271e878.md) | 104 | `result-track:2c54687ce069ed0b4271e8785dde6bba5cd3fac2039a6dea0fc352aa6340e166` |
| 10 | `instance` | [_root_.GRWTSK.Algebra.LinearAlgebra.Basis.Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.Module.Free.finsupp](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean/declarations/root-grwtsk-algebra-linearalgebra-basis-varianteb0d9b7c33b1cfbe454fb4307--5b4eef73fc72f1f82c8fae46.md) | 115 | `declaration-track:5b4eef73fc72f1f82c8fae4640be863b9a5780354638db6814f18154b4bc6ca3` |
| 11 | `def` | [basisSingleOne](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean/declarations/basissingleone--b61a5c202fdc11754fc3b28a.md) | 120 | `declaration-track:b61a5c202fdc11754fc3b28af7f364ba7343ef1a36b62f418ebb2ff2fb4da653` |
| 12 | `theorem` | [coe_basisSingleOne](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean/declarations/coe-basissingleone--df15f2b4c3b47742bee2be0a.md) | 124 | `result-track:df15f2b4c3b47742bee2be0af83310a061bd4aea027635a7aa418e6c2846befb` |
| 13 | `lemma` | [linearIndependent_single_one](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean/declarations/linearindependent-single-one--1d4056771d175a87c38e3d75.md) | 128 | `result-track:1d4056771d175a87c38e3d75e4242e7d89c1d30cf02c74480a7443d399ee734f` |
| 14 | `lemma` | [linearIndependent_single_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean/declarations/linearindependent-single-of-ne-zero--25e22471237f676d32408d55.md) | 138 | `result-track:25e22471237f676d32408d5541671c67d54148a4e0d5cbc41e1a8b1a68124497` |
| 15 | `lemma` | [Module.Free.trans](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean/declarations/module-free-trans--e69df0570eeeb40c1ab99272.md) | 148 | `result-track:e69df0570eeeb40c1ab992727dfb25d4369ddb19d9bae44abbd5ba54da3b62d0` |
| 16 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.Basis.Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.Finset.sum_single_ite](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean/declarations/root-grwtsk-algebra-linearalgebra-basis-varianteb0d9b7c33b1cfbe454fb4307--97c81d13f5aacdd63cd7dc77.md) | 166 | `result-track:97c81d13f5aacdd63cd7dc7762a425d5cdd0ce937d23511c22cd7f1d2137d226` |
| 17 | `theorem` | [equivFun_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean/declarations/equivfun-symm-single--4b99b9b87a9f3eaf688ffddf.md) | 172 | `result-track:4b99b9b87a9f3eaf688ffddf74a38bc3365042140bfa13d779dc5a2fe0fb9c45` |
| 18 | `theorem` | [Basis.repr_smul'](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant3a00dcbce2f53b12058a1492ce3fedb3097ca48e2743287c9693098308e23bb7.lean/declarations/basis-repr-smul--f518840e4f3b7cb698424d89.md) | 185 | `result-track:f518840e4f3b7cb698424d899737b9d3e46d9f97a39943f957630a572f886a9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
