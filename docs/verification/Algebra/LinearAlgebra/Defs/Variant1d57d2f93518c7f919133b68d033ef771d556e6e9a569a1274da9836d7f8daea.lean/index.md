# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0f11e51c157a7b98591e36d68753aa2166a76e2",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0f11e51c157a7b98591e36d68753aa2166a76e2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Module](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean/declarations/module--970d4a15368775f9fb9126a4.md) | 58 | `declaration-track:970d4a15368775f9fb9126a4350568785310ac1ff79247a87e93db922fd28643` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean/declarations/instance--3deb06cf9f8405413b811110.md) | 71 | `declaration-track:3deb06cf9f8405413b811110750734145419468d0ec04ce04a5f36d96449acd9` |
| 3 | `theorem` | [add_smul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean/declarations/add-smul--b6256eb630bab17a4540f8b5.md) | 77 | `result-track:b6256eb630bab17a4540f8b5b61e957f7439e6ab3925ce78ccca18e2d3a4a9ab` |
| 4 | `theorem` | [Convex.combo_self](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean/declarations/convex-combo-self--ccdc165c8f41ad8c3e1be674.md) | 80 | `result-track:ccdc165c8f41ad8c3e1be674d45df489c9182429eb1ce41a93aebed3bd8fd6a3` |
| 5 | `theorem` | [two_smul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean/declarations/two-smul--e03657488e39973f2d34de9d.md) | 85 | `result-track:e03657488e39973f2d34de9dfc4c33810e02b0e7103f8d3b98e5a847705c5211` |
| 6 | `abbrev` | [Function.Injective.module](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean/declarations/function-injective-module--8e7764676d867712dc25afd5.md) | 89 | `declaration-track:8e7764676d867712dc25afd53f8a831b16c38a2c85891a33f27c962523611320` |
| 7 | `abbrev` | [Function.Surjective.module](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean/declarations/function-surjective-module--33aa3dcd90866c2a354f0ca3.md) | 97 | `declaration-track:33aa3dcd90866c2a354f0ca3d5f5e10d69076b12b3e3b8fbc354ed5a56f5ee8f` |
| 8 | `theorem` | [Module.eq_zero_of_zero_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean/declarations/module-eq-zero-of-zero-eq-one--2298d32e9c5650fd19bd69bb.md) | 109 | `result-track:2298d32e9c5650fd19bd69bbca0f3cf1c6acbc02d2949296681a321f6145b09f` |
| 9 | `theorem` | [smul_add_one_sub_smul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean/declarations/smul-add-one-sub-smul--a12ed8840bb0401359777e1a.md) | 113 | `result-track:a12ed8840bb0401359777e1a547079d7501b0979c1c90a37a5fd056cb507eba2` |
| 10 | `theorem` | [Convex.combo_eq_smul_sub_add](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean/declarations/convex-combo-eq-smul-sub-add--4a21c09385bafb3e3c098f49.md) | 122 | `result-track:4a21c09385bafb3e3c098f49b3b4864d3c7df81c81c0dcb126bb93301a2c1e11` |
| 11 | `theorem` | [Module.ext'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean/declarations/module-ext--4681329a70fc004bad3f9fd2.md) | 132 | `result-track:4681329a70fc004bad3f9fd29cf875b04ad5e8f0c6cd1ad46d64bcf488b15559` |
| 12 | `theorem` | [neg_smul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean/declarations/neg-smul--7554d12902b5743872e89f1f.md) | 143 | `result-track:7554d12902b5743872e89f1f2e08afc326579d3e8e951649e907ebbb84e805f3` |
| 13 | `theorem` | [neg_smul_neg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean/declarations/neg-smul-neg--df638ff28915bc9922816632.md) | 146 | `result-track:df638ff28915bc99228166328ae3706f98048eb9ec02c715421add0add3dd230` |
| 14 | `theorem` | [neg_one_smul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean/declarations/neg-one-smul--2d548c4cef0794c29009309f.md) | 150 | `result-track:2d548c4cef0794c29009309ffdccea8c861b00745ce05798322c8e10439f63f8` |
| 15 | `theorem` | [sub_smul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean/declarations/sub-smul--8c77fe01c120f9f5a470ae97.md) | 154 | `result-track:8c77fe01c120f9f5a470ae9726ec195dab4c6ee16313a660dd64862402ba9a02` |
| 16 | `theorem` | [Module.subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean/declarations/module-subsingleton--96a0c646fa5a8164ade03900.md) | 161 | `result-track:96a0c646fa5a8164ade0390008a0cdc251566e0df85b75eb24897db2aa60f90a` |
| 17 | `theorem` | [Module.nontrivial](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean/declarations/module-nontrivial--0038e51e8736e10d6ed82830.md) | 166 | `result-track:0038e51e8736e10d6ed828308d81b256e3350ae60158da96f58d4046f3f5d093` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean/declarations/instance--0706baca89a9aeef599b0d8f.md) | 171 | `declaration-track:0706baca89a9aeef599b0d8f10ed1501000b7222e3c1c790586121b978d50d7e` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant1d57d2f93518c7f919133b68d033ef771d556e6e9a569a1274da9836d7f8daea.lean/declarations/instance--a44a8bc376dfc0c39a3450a7.md) | 177 | `declaration-track:a44a8bc376dfc0c39a3450a792550c9d0fbfc86cccdf1c3d35ee9cf6fdb5bc7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
