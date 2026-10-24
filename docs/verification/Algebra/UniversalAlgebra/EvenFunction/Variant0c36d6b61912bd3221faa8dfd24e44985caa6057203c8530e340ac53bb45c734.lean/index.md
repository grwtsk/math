# Verification target: GRWTSK.Algebra.UniversalAlgebra.EvenFunction.Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "187797b3fe00166ff01dafdadc910dff5327e5f2",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `187797b3fe00166ff01dafdadc910dff5327e5f2`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Even](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/even--e73a6e5619f364d2d9fb69b9.md) | 34 | `declaration-track:e73a6e5619f364d2d9fb69b9785cfb0042dda527b8891ab87297fe17649f543d` |
| 2 | `def` | [Odd](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/odd--99955649e9268720b33b5936.md) | 37 | `declaration-track:99955649e9268720b33b59362522b071bd53e7eba2b3740a2040fba3b22ac3cb` |
| 3 | `lemma` | [Even.const](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/even-const--34ed32ae04de786d4288f8f3.md) | 40 | `result-track:34ed32ae04de786d4288f8f3aa06f0fac424e00058a78cb6a8c90d546a0e07c5` |
| 4 | `lemma` | [Even.zero](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/even-zero--97effb6e947ae52516eb3dd2.md) | 43 | `result-track:97effb6e947ae52516eb3dd2d675e0f3e38e42e42eb41b220d8c93c8a588abcc` |
| 5 | `lemma` | [Odd.zero](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/odd-zero--0ea1f4ee2d6de61a9a4f8831.md) | 46 | `result-track:0ea1f4ee2d6de61a9a4f883197a37feb49f147852e545080b9d05683736c58e9` |
| 6 | `lemma` | [Even.left_comp](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/even-left-comp--5c85d4f404ad7f126d0a5ab1.md) | 53 | `result-track:5c85d4f404ad7f126d0a5ab151b7131574e516316517089f733fa8b1b8d4bd4e` |
| 7 | `lemma` | [Even.comp_odd](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/even-comp-odd--cfe0ed041c753b90c4bba89e.md) | 57 | `result-track:cfe0ed041c753b90c4bba89e9ea332e4898615f719c3e84bee35692ef6aecacc` |
| 8 | `lemma` | [Odd.comp_odd](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/odd-comp-odd--e24db9c65c86abd9a5ab13de.md) | 63 | `result-track:e24db9c65c86abd9a5ab13de639514974d1036370d1ef75cbdeb12e2a95227c7` |
| 9 | `lemma` | [Even.add](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/even-add--927696a6a2b228fb3a367063.md) | 70 | `result-track:927696a6a2b228fb3a367063440ac2e1cc611a49988536674674273ca054170f` |
| 10 | `lemma` | [Odd.add](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/odd-add--7662643ff299c337a66e0d02.md) | 74 | `result-track:7662643ff299c337a66e0d02e63e19a37aff63f26f73e5324d64b3aebcf9e6d1` |
| 11 | `lemma` | [Even.smul_even](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/even-smul-even--765870502125818e80f17146.md) | 82 | `result-track:765870502125818e80f1714665ffbbf06a8e7a54d6da2ba5c9132e98896647ee` |
| 12 | `lemma` | [Even.smul_odd](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/even-smul-odd--7e5e2d0ab579b2a7526eb2ac.md) | 86 | `result-track:7e5e2d0ab579b2a7526eb2acd3841dbc0bf8226c60415c624a8f4be5d5f2c1f7` |
| 13 | `lemma` | [Odd.smul_even](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/odd-smul-even--82e799c6cbf185b2e8ed197f.md) | 91 | `result-track:82e799c6cbf185b2e8ed197fcf92c9037dea91ea27c6c07499ccdc71f429450c` |
| 14 | `lemma` | [Odd.smul_odd](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/odd-smul-odd--d9317464c8d7ee222c73418f.md) | 96 | `result-track:d9317464c8d7ee222c73418fc32650c2642cc65e55044d94827d4375e648619f` |
| 15 | `lemma` | [Even.const_smul](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/even-const-smul--5520d3c9eb7a3711c3523b77.md) | 101 | `result-track:5520d3c9eb7a3711c3523b77486b85132bb48e374f7303fe10d66e8c16f80102` |
| 16 | `lemma` | [Odd.const_smul](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/odd-const-smul--f91421da04c34569c617abf8.md) | 105 | `result-track:f91421da04c34569c617abf8c6c7a40d24c06e8f730addd02062ee6a7f35af6d` |
| 17 | `lemma` | [Even.mul_even](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/even-mul-even--8e170d566da30bd2de21ac30.md) | 116 | `result-track:8e170d566da30bd2de21ac3004b236dbfee68955399109fa5e216ebf810a22c4` |
| 18 | `lemma` | [Even.mul_odd](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/even-mul-odd--6235a4c99166c26631dc5bf6.md) | 120 | `result-track:6235a4c99166c26631dc5bf6670492f0fdc9c368fa21a4b2034f13a0aaf434aa` |
| 19 | `lemma` | [Odd.mul_even](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/odd-mul-even--a43e83472b7b4e622c356c97.md) | 124 | `result-track:a43e83472b7b4e622c356c97eee4ea3c1e53f5d22a45e1892b84e74b086fb59c` |
| 20 | `lemma` | [Odd.mul_odd](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/odd-mul-odd--402e0990101b0e7e9555420d.md) | 128 | `result-track:402e0990101b0e7e9555420db05b3202ec862b8cd7288ab25dd4405097456b48` |
| 21 | `lemma` | [zero_of_even_and_odd](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/zero-of-even-and-odd--f2e00da4f81126b45671f602.md) | 143 | `result-track:f2e00da4f81126b45671f602321a3fa251202006cbd841995bcff97fe601b7c5` |
| 22 | `lemma` | [Odd.sum_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/odd-sum-eq-zero--444f6479f0ba2c3f081c2780.md) | 148 | `result-track:444f6479f0ba2c3f081c27801c89397606c1c5da0d2f0e0e8afa738b211a3d99` |
| 23 | `lemma` | [Odd.map_zero](../../../../../mathematics/Algebra/UniversalAlgebra/EvenFunction/Variant0c36d6b61912bd3221faa8dfd24e44985caa6057203c8530e340ac53bb45c734.lean/declarations/odd-map-zero--cd5ccc831d0ac44564542189.md) | 153 | `result-track:cd5ccc831d0ac44564542189897362303ace0d1f62796d90b7ce229a3d180fa5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
