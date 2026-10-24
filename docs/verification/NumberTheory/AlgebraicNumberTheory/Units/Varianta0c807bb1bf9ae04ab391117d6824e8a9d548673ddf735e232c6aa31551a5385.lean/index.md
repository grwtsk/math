# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.Units.Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66d08b2d1ad077baefa0c80f98d63011b825c029",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66d08b2d1ad077baefa0c80f98d63011b825c029`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Torsion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Embeddings` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Norm` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Rat.RingOfIntegers.isUnit_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean/declarations/rat-ringofintegers-isunit-iff--f21ceb3ca46db33944c078e3.md) | 45 | `result-track:f21ceb3ca46db33944c078e3af315fc9597058995a748f660195c587373d2674` |
| 2 | `theorem` | [isUnit_iff_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean/declarations/isunit-iff-norm--af7d869e0f382f6f3e361b3b.md) | 59 | `result-track:af7d869e0f382f6f3e361b3bd960d14fb72b27d8dd3c2e2899f26dab1d1d9fa9` |
| 3 | `theorem` | [coe_injective](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean/declarations/coe-injective--bf1c7ee68c680b0432eb897b.md) | 71 | `result-track:bf1c7ee68c680b0432eb897ba6566ac1c48d194eae04884f4d8c4c1cb209e4ce` |
| 4 | `theorem` | [coe_mul](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean/declarations/coe-mul--2d1fd281ccce91d24d2826fc.md) | 76 | `result-track:2d1fd281ccce91d24d2826fc806e052cb3a1144eef5eff3972deb3d49886a439` |
| 5 | `theorem` | [coe_pow](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean/declarations/coe-pow--56e5080292222a1cb9a2239f.md) | 78 | `result-track:56e5080292222a1cb9a2239f440e61c5a038f723e5ef7287a2a14140ad2cc69e` |
| 6 | `theorem` | [coe_zpow](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean/declarations/coe-zpow--ad25d8f62e3f6dc4fc365f12.md) | 81 | `result-track:ad25d8f62e3f6dc4fc365f12390e037d2dc61184c8666d165f2cb2cc04d03bdf` |
| 7 | `theorem` | [coe_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean/declarations/coe-one--63e1b56a359b2af6f67c63d6.md) | 85 | `result-track:63e1b56a359b2af6f67c63d67857310ef1753097cba767caedbf94f8f412069b` |
| 8 | `theorem` | [coe_neg_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean/declarations/coe-neg-one--6d285ca84761ed7b3bdd8e61.md) | 87 | `result-track:6d285ca84761ed7b3bdd8e6146b62e7c4f00ba2751da6909978e86ca2c778fe3` |
| 9 | `theorem` | [coe_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean/declarations/coe-ne-zero--15cf68c507881434c161f6b0.md) | 89 | `result-track:15cf68c507881434c161f6b0e69b20e5f3eb118fb6a3a739224313eff000e0ec` |
| 10 | `def` | [torsion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean/declarations/torsion--a783ea7d0959040a940894c8.md) | 99 | `declaration-track:a783ea7d0959040a940894c8c5667cf17c98f09647ebf38875c18130a5c18b46` |
| 11 | `theorem` | [mem_torsion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean/declarations/mem-torsion--1e80c44750f0f97bcd044825.md) | 101 | `result-track:1e80c44750f0f97bcd044825bbfd882af9df49a6530e2f08f3306a41f38f4756` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean/declarations/instance--19f40395d6405b85130e5c63.md) | 111 | `declaration-track:19f40395d6405b85130e5c6391240da992baa79790e4ee8c8e9d973e282817f5` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean/declarations/instance--d239c9fdec2a5662255e884f.md) | 114 | `declaration-track:d239c9fdec2a5662255e884f053d5c78b82d109874ca1c63bd87bf8763cad7db` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean/declarations/instance--f26dff43a4321b9f7d8332b4.md) | 125 | `declaration-track:f26dff43a4321b9f7d8332b4e2ebdb3f277f6d948fc26a180a1bb36510aa9466` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean/declarations/instance--e9471f336afcbd23fa5d1708.md) | 128 | `declaration-track:e9471f336afcbd23fa5d1708faef832afd32bbcfe3b640d58318daec387c566b` |
| 16 | `def` | [torsion_order](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean/declarations/torsion-order--ffca76b8953563756ed35177.md) | 131 | `declaration-track:ffca76b8953563756ed3517732e1a164e51f300832151bc05811e54a34207227` |
| 17 | `theorem` | [rootsOfUnity_eq_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean/declarations/rootsofunity-eq-one--a0fa92821e62857b9f47e1ed.md) | 135 | `result-track:a0fa92821e62857b9f47e1ed4575c8e2de9f58f8d99fcabaa17284ba97980b8e` |
| 18 | `theorem` | [rootsOfUnity_eq_torsion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Units/Varianta0c807bb1bf9ae04ab391117d6824e8a9d548673ddf735e232c6aa31551a5385.lean/declarations/rootsofunity-eq-torsion--532e7263db9beae02eca5d4f.md) | 149 | `result-track:532e7263db9beae02eca5d4f859a9fbb682086ff15dba44eac2c20c93559b1b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
