# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95c6b48fdd5bed02d830263ecbe8061125129514",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95c6b48fdd5bed02d830263ecbe8061125129514`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean.json)

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
| 1 | `class` | [Group](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/declarations/group--47017e5c3e537a353b804c32.md) | 41 | `declaration-track:47017e5c3e537a353b804c32ec3ff55d5efcf2d92334eecadda91dc8a6171a3d` |
| 2 | `class` | [AddGroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/declarations/addgroup--ab79b81d48403bed24aff3c0.md) | 52 | `declaration-track:ab79b81d48403bed24aff3c00a604cf4847f07852af376e9b314d6a0f540c91d` |
| 3 | `theorem` | [inv_mul_cancel](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/declarations/inv-mul-cancel--792eaf32992974a2a7cf3c1a.md) | 62 | `result-track:792eaf32992974a2a7cf3c1a499b5122aaba5932c20d909631e50d69470fd0c7` |
| 4 | `theorem` | [inv_eq_of_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/declarations/inv-eq-of-mul--9cabe0456178bc185ad6d17f.md) | 66 | `result-track:9cabe0456178bc185ad6d17f2c59fa0d493a2eaa6bdb1b986e9f2f8ce3e2a6e4` |
| 5 | `theorem` | [mul_inv_cancel](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/declarations/mul-inv-cancel--5368f737f0fb3b0eb78fedfc.md) | 70 | `result-track:5368f737f0fb3b0eb78fedfc56ad5cd517787410062422816f81ce110f63ad64` |
| 6 | `theorem` | [div_self'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/declarations/div-self--0da38d8cfcc923e1815c5d8f.md) | 74 | `result-track:0da38d8cfcc923e1815c5d8f234ed60401d98c043af8e3c4d801352e7298af7b` |
| 7 | `theorem` | [inv_mul_cancel_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/declarations/inv-mul-cancel-left--d6239db37b35ed4765d83cc8.md) | 77 | `result-track:d6239db37b35ed4765d83cc88d914b103aaf474e7941638cea7d41c18826c6e4` |
| 8 | `theorem` | [mul_inv_cancel_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/declarations/mul-inv-cancel-left--21486ccdb0f96bad3f4bf786.md) | 81 | `result-track:21486ccdb0f96bad3f4bf786c4d938d5eec6f91d271eddb45f218bdd50011c6e` |
| 9 | `theorem` | [mul_inv_cancel_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/declarations/mul-inv-cancel-right--5c0c48ea0b6de0cb7827ffd9.md) | 85 | `result-track:5c0c48ea0b6de0cb7827ffd97dab6864ef4c5f336dd3942a76eb59ff7394312a` |
| 10 | `theorem` | [mul_div_cancel_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/declarations/mul-div-cancel-right--6d45bfeb97f7b94f1c428604.md) | 89 | `result-track:6d45bfeb97f7b94f1c4286048b4c2a4be2b43f093fdbeb88fe4e4f4665092ac7` |
| 11 | `theorem` | [inv_mul_cancel_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/declarations/inv-mul-cancel-right--e049bbbed6e0e8957006eeda.md) | 93 | `result-track:e049bbbed6e0e8957006eeda83dbde11f5783af0a09d9f90709a1ff357af0c4f` |
| 12 | `theorem` | [div_mul_cancel](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/declarations/div-mul-cancel--1809118bcb74dace504c5bef.md) | 97 | `result-track:1809118bcb74dace504c5bef64ccdf23e2453884feb800a2676d2de1c72e530d` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/declarations/instance--f251f1221c9a85eef13590c4.md) | 101 | `declaration-track:f251f1221c9a85eef13590c4ced3fe1e4a9f8eb916d389f71cda7447f8efeb6e` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/declarations/instance--dee5effd5bf4e2c12aecdc20.md) | 110 | `declaration-track:dee5effd5bf4e2c12aecdc2091abd876a67e9d5ade1a7b433358f464015d181a` |
| 15 | `class` | [AddCommGroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/declarations/addcommgroup--9695ec77239b618ddcfa6465.md) | 119 | `declaration-track:9695ec77239b618ddcfa64657093f5842e174acb1b9d5dfad3aa06c07373e839` |
| 16 | `class` | [CommGroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/declarations/commgroup--f3ccedf8b7f7678a3ac2be0a.md) | 124 | `declaration-track:f3ccedf8b7f7678a3ac2be0aa812577430d2d79dc298b0f40b3ac36a15664f15` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/declarations/instance--53da97fcadcc033cb847014b.md) | 132 | `declaration-track:53da97fcadcc033cb847014bd1e34c1bbd3df6d9720b759d6add6ddc78777640` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/declarations/instance--b3a3281a576ff1f4321adf4b.md) | 137 | `declaration-track:b3a3281a576ff1f4321adf4bbdd6158382f180eb456ae13aff58951146b0b258` |
| 19 | `lemma` | [inv_mul_cancel_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/declarations/inv-mul-cancel-comm--4b111b9ac5d1cd23777b25df.md) | 140 | `result-track:4b111b9ac5d1cd23777b25df6d22e124c91fda01dba71e1baa2cd75da9fd5669` |
| 20 | `lemma` | [mul_inv_cancel_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/declarations/mul-inv-cancel-comm--01caa409178c3764277abdf2.md) | 144 | `result-track:01caa409178c3764277abdf23452c30a9ccc9634acf29c63c098ff1d47b9dc42` |
| 21 | `lemma` | [inv_mul_cancel_comm_assoc](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/declarations/inv-mul-cancel-comm-assoc--fe7b17e6126ae66276dc006d.md) | 146 | `result-track:fe7b17e6126ae66276dc006d9f8333b6b94832e04ab50b48584cf7587e0f029f` |
| 22 | `lemma` | [mul_inv_cancel_comm_assoc](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant28f83af7e5493814893d7eb4b59eaf5ee30d0302a4e45037f579f09496f706ce.lean/declarations/mul-inv-cancel-comm-assoc--2f38ce82dead339e822534a1.md) | 149 | `result-track:2f38ce82dead339e822534a144e3fc61550683055583a23c10da05a28324fd7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
