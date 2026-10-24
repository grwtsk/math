# Verification target: GRWTSK.Algebra.GroupTheory.Min.Variantd34aeb257b74797e06a4ee9c66e18360659ce3eb06d6b2944d599019bb784875

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f661e9a14e6a5b9c4da1d778efc6551eadb7397f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Min/Variantd34aeb257b74797e06a4ee9c66e18360659ce3eb06d6b2944d599019bb784875.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Min/Variantd34aeb257b74797e06a4ee9c66e18360659ce3eb06d6b2944d599019bb784875.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Min/Variantd34aeb257b74797e06a4ee9c66e18360659ce3eb06d6b2944d599019bb784875.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f661e9a14e6a5b9c4da1d778efc6551eadb7397f`.

Source path: `GRWTSK/Algebra/GroupTheory/Min/Variantd34aeb257b74797e06a4ee9c66e18360659ce3eb06d6b2944d599019bb784875.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Min/Variantd34aeb257b74797e06a4ee9c66e18360659ce3eb06d6b2944d599019bb784875.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [minOrder](../../../../../mathematics/Algebra/GroupTheory/Min/Variantd34aeb257b74797e06a4ee9c66e18360659ce3eb06d6b2944d599019bb784875.lean/declarations/minorder--39ae16f3e5cda0af02937641.md) | 39 | `declaration-track:39ae16f3e5cda0af029376415e6809da7b5f8a14ef6cbffc83f1bb9939be8065` |
| 2 | `lemma` | [le_minOrder](../../../../../mathematics/Algebra/GroupTheory/Min/Variantd34aeb257b74797e06a4ee9c66e18360659ce3eb06d6b2944d599019bb784875.lean/declarations/le-minorder--a7b19646471a15e58b7881cb.md) | 44 | `result-track:a7b19646471a15e58b7881cbc837a3ac330e912040085b284b97b6c3e03360d6` |
| 3 | `lemma` | [minOrder_le_orderOf](../../../../../mathematics/Algebra/GroupTheory/Min/Variantd34aeb257b74797e06a4ee9c66e18360659ce3eb06d6b2944d599019bb784875.lean/declarations/minorder-le-orderof--fd91062604dd3ac07fb510f4.md) | 48 | `result-track:fd91062604dd3ac07fb510f4bc51cd7a73e5f0da34f691a8f9d3b45bffbeb0bc` |
| 4 | `lemma` | [le_minOrder_iff_forall_subgroup](../../../../../mathematics/Algebra/GroupTheory/Min/Variantd34aeb257b74797e06a4ee9c66e18360659ce3eb06d6b2944d599019bb784875.lean/declarations/le-minorder-iff-forall-subgroup--7010e52f8b3d0bfd477abf70.md) | 57 | `result-track:7010e52f8b3d0bfd477abf705670a5bbe100677c371c08a8928ffa66a74b2b26` |
| 5 | `lemma` | [minOrder_le_natCard](../../../../../mathematics/Algebra/GroupTheory/Min/Variantd34aeb257b74797e06a4ee9c66e18360659ce3eb06d6b2944d599019bb784875.lean/declarations/minorder-le-natcard--726dc29f067fa86e9097b317.md) | 68 | `result-track:726dc29f067fa86e9097b31784c9f94c17bc5fb8d55cf830f79312483a0a2f5a` |
| 6 | `lemma` | [minOrder_eq_top](../../../../../mathematics/Algebra/GroupTheory/Min/Variantd34aeb257b74797e06a4ee9c66e18360659ce3eb06d6b2944d599019bb784875.lean/declarations/minorder-eq-top--762f5d40a83358c5d357946b.md) | 72 | `result-track:762f5d40a83358c5d357946bdf281594a3acb40b3ba9abcee2917f8b2ccbf501` |
| 7 | `lemma` | [minOrder_eq_top_iff](../../../../../mathematics/Algebra/GroupTheory/Min/Variantd34aeb257b74797e06a4ee9c66e18360659ce3eb06d6b2944d599019bb784875.lean/declarations/minorder-eq-top-iff--51bbfec9ebf33e87c4ee7c28.md) | 81 | `result-track:51bbfec9ebf33e87c4ee7c2808b1818f1a6a78e158e162906d1232ffe7ff4431` |
| 8 | `lemma` | [minOrder](../../../../../mathematics/Algebra/GroupTheory/Min/Variantd34aeb257b74797e06a4ee9c66e18360659ce3eb06d6b2944d599019bb784875.lean/declarations/minorder--65aaded6dcffd8412430b766.md) | 92 | `result-track:65aaded6dcffd8412430b766072143eec9aad99183a6d14e0e20a072f1c226bb` |
| 9 | `lemma` | [minOrder_of_prime](../../../../../mathematics/Algebra/GroupTheory/Min/Variantd34aeb257b74797e06a4ee9c66e18360659ce3eb06d6b2944d599019bb784875.lean/declarations/minorder-of-prime--7a598c7704aa7ced59259d53.md) | 108 | `result-track:7a598c7704aa7ced59259d53b52b76fbae57da7aa85c5acbe38e568dfc363129` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
