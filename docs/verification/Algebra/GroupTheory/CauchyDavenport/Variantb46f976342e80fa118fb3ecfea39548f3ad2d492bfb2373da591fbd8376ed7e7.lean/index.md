# Verification target: GRWTSK.Algebra.GroupTheory.CauchyDavenport.Variantb46f976342e80fa118fb3ecfea39548f3ad2d492bfb2373da591fbd8376ed7e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1fb7eb4e95a6bfd22f706fb99d54663051e105a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CauchyDavenport/Variantb46f976342e80fa118fb3ecfea39548f3ad2d492bfb2373da591fbd8376ed7e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CauchyDavenport/Variantb46f976342e80fa118fb3ecfea39548f3ad2d492bfb2373da591fbd8376ed7e7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CauchyDavenport/Variantb46f976342e80fa118fb3ecfea39548f3ad2d492bfb2373da591fbd8376ed7e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1fb7eb4e95a6bfd22f706fb99d54663051e105a`.

Source path: `GRWTSK/Algebra/GroupTheory/CauchyDavenport/Variantb46f976342e80fa118fb3ecfea39548f3ad2d492bfb2373da591fbd8376ed7e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CauchyDavenport/Variantb46f976342e80fa118fb3ecfea39548f3ad2d492bfb2373da591fbd8376ed7e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Additive.ETransform` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Order.Min` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DevosMulRel](../../../../../mathematics/Algebra/GroupTheory/CauchyDavenport/Variantb46f976342e80fa118fb3ecfea39548f3ad2d492bfb2373da591fbd8376ed7e7.lean/declarations/devosmulrel--bcd07602cf9605879cae9d76.md) | 81 | `declaration-track:bcd07602cf9605879cae9d762c917bb025d0484319614f951fa9a6f437f016e8` |
| 2 | `lemma` | [devosMulRel_iff](../../../../../mathematics/Algebra/GroupTheory/CauchyDavenport/Variantb46f976342e80fa118fb3ecfea39548f3ad2d492bfb2373da591fbd8376ed7e7.lean/declarations/devosmulrel-iff--9b4c58b3922aee0b3c3c5f27.md) | 85 | `result-track:9b4c58b3922aee0b3c3c5f2778f7e2568e470929af59de1f0b351bc3ad6cbef4` |
| 3 | `lemma` | [devosMulRel_of_le](../../../../../mathematics/Algebra/GroupTheory/CauchyDavenport/Variantb46f976342e80fa118fb3ecfea39548f3ad2d492bfb2373da591fbd8376ed7e7.lean/declarations/devosmulrel-of-le--f8ac985cc6b5125a5ca603e0.md) | 93 | `result-track:f8ac985cc6b5125a5ca603e026190dcd27198d51b65b84d0fc567e98b3ce9437` |
| 4 | `lemma` | [devosMulRel_of_le_of_le](../../../../../mathematics/Algebra/GroupTheory/CauchyDavenport/Variantb46f976342e80fa118fb3ecfea39548f3ad2d492bfb2373da591fbd8376ed7e7.lean/declarations/devosmulrel-of-le-of-le--885ff7ab65ac8be66573cc90.md) | 98 | `result-track:885ff7ab65ac8be66573cc901944342e571e47904ad9f03970e366fe66e0c4de` |
| 5 | `lemma` | [wellFoundedOn_devosMulRel](../../../../../mathematics/Algebra/GroupTheory/CauchyDavenport/Variantb46f976342e80fa118fb3ecfea39548f3ad2d492bfb2373da591fbd8376ed7e7.lean/declarations/wellfoundedon-devosmulrel--58015914efbea919908f51cf.md) | 104 | `result-track:58015914efbea919908f51cf98027d86ade75ce90632941a71cacb07dfac3eb0` |
| 6 | `lemma` | [cauchy_davenport_minOrder_mul](../../../../../mathematics/Algebra/GroupTheory/CauchyDavenport/Variantb46f976342e80fa118fb3ecfea39548f3ad2d492bfb2373da591fbd8376ed7e7.lean/declarations/cauchy-davenport-minorder-mul--f511075595c3c3694dc247f7.md) | 120 | `result-track:f511075595c3c3694dc247f7783d979c7b8d813610b5ae3b58da42ebcdc9341e` |
| 7 | `lemma` | [cauchy_davenport_mul_of_isTorsionFree](../../../../../mathematics/Algebra/GroupTheory/CauchyDavenport/Variantb46f976342e80fa118fb3ecfea39548f3ad2d492bfb2373da591fbd8376ed7e7.lean/declarations/cauchy-davenport-mul-of-istorsionfree--1e77b07e752fc05c1523e762.md) | 192 | `result-track:1e77b07e752fc05c1523e762d63bd2e438e8ed11c333aa6bcfb0293fa2e258d5` |
| 8 | `lemma` | [ZMod.cauchy_davenport](../../../../../mathematics/Algebra/GroupTheory/CauchyDavenport/Variantb46f976342e80fa118fb3ecfea39548f3ad2d492bfb2373da591fbd8376ed7e7.lean/declarations/zmod-cauchy-davenport--05c994d236d7952186049c86.md) | 203 | `result-track:05c994d236d7952186049c86177fc04709bdc22456cbffbb2b90a5ce1a6be8eb` |
| 9 | `lemma` | [cauchy_davenport_mul_of_linearOrder_isCancelMul](../../../../../mathematics/Algebra/GroupTheory/CauchyDavenport/Variantb46f976342e80fa118fb3ecfea39548f3ad2d492bfb2373da591fbd8376ed7e7.lean/declarations/cauchy-davenport-mul-of-linearorder-iscancelmul--e7e7869c4cfc4e9d88b5c100.md) | 215 | `result-track:e7e7869c4cfc4e9d88b5c1001d227bdd493366e08fe652fc4dbbf9c6d9528eec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
