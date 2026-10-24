# Verification target: GRWTSK.Algebra.GroupTheory.MulOpposite.Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6435909124f63d14940891ba20b0a82f7975d74",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6435909124f63d14940891ba20b0a82f7975d74`.

Source path: `GRWTSK/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.MulOpposite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [op](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean/declarations/op--22f207a99072d51c7f606321.md) | 32 | `declaration-track:22f207a99072d51c7f60632156c6ce1d173ae90d0b338b241b956a6e7c77200e` |
| 2 | `theorem` | [mem_op](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean/declarations/mem-op--dca6b283891065c31c20778d.md) | 39 | `result-track:dca6b283891065c31c20778de1d46c4279317cb38a7acd85ce2f4a90efdf7a99` |
| 3 | `lemma` | [op_toSubmonoid](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean/declarations/op-tosubmonoid--550904a8f352cbf18ceeb678.md) | 41 | `result-track:550904a8f352cbf18ceeb6785d72b2f6e64d65a2e0bfe043188666b8d44119ba` |
| 4 | `def` | [unop](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean/declarations/unop--b151c6f5889ae3c3d13796c1.md) | 48 | `declaration-track:b151c6f5889ae3c3d13796c18fcf0b032834fb54ff2086bd583bbc259b94c017` |
| 5 | `theorem` | [mem_unop](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean/declarations/mem-unop--e947436cd7ef759f0e9b8ea8.md) | 55 | `result-track:e947436cd7ef759f0e9b8ea88fdab6249865a1751e87a36b7828246980bd44a8` |
| 6 | `lemma` | [unop_toSubmonoid](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean/declarations/unop-tosubmonoid--4153970d19602bedca9ac4c9.md) | 57 | `result-track:4153970d19602bedca9ac4c9fd433e1cb406f6b638ffb39ac0838c50050cf972` |
| 7 | `theorem` | [unop_op](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean/declarations/unop-op--6405d16dc603c2ef443d41e3.md) | 62 | `result-track:6405d16dc603c2ef443d41e3cf395d0508dccb96f755fbd909efa3e26fb4d035` |
| 8 | `theorem` | [op_unop](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean/declarations/op-unop--faffe068363717d122843804.md) | 65 | `result-track:faffe068363717d1228438042ddbd04fdff3c8de6f022ac2c94fae8c21414202` |
| 9 | `theorem` | [op_le_iff](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean/declarations/op-le-iff--a5f2e409c760ff8cf0ff7b73.md) | 70 | `result-track:a5f2e409c760ff8cf0ff7b73f577384e1b5f8ac81ad98f2427ac6bd9ab2df69e` |
| 10 | `theorem` | [le_op_iff](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean/declarations/le-op-iff--c73895afa4fab4d2b31b7bc4.md) | 74 | `result-track:c73895afa4fab4d2b31b7bc416df1adf3400c3a20cb42df210af527f125164b0` |
| 11 | `theorem` | [op_le_op_iff](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean/declarations/op-le-op-iff--8fff48ac141b583b6a0200c4.md) | 78 | `result-track:8fff48ac141b583b6a0200c49877a860ce80eb0e73cca08370350477904a4c18` |
| 12 | `theorem` | [unop_le_unop_iff](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean/declarations/unop-le-unop-iff--9666b384162da0cef50c70e9.md) | 82 | `result-track:9666b384162da0cef50c70e9e69e3c69235b8fb93c322de9f5f721822ae09080` |
| 13 | `def` | [opEquiv](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean/declarations/opequiv--bd3a70edca8108572be6bb3e.md) | 88 | `declaration-track:bd3a70edca8108572be6bb3e9556df889aac4b2a504322a6f0c868dd3d102447` |
| 14 | `theorem` | [op_injective](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean/declarations/op-injective--22a07a149cd8d60d3f47014b.md) | 96 | `result-track:22a07a149cd8d60d3f47014b928af2e48561bc1064d66fec40e1b9c06d178b7e` |
| 15 | `theorem` | [unop_injective](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean/declarations/unop-injective--fb1a0582fa46e06b276203ee.md) | 99 | `result-track:fb1a0582fa46e06b276203ee8b98d91861da26d42ef40d41e571ca14111ad79b` |
| 16 | `theorem` | [op_inj](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean/declarations/op-inj--4612a9f60c1f3599f750a648.md) | 102 | `result-track:4612a9f60c1f3599f750a648756cf7ddb6c851715ff318e6219b71ef91488b74` |
| 17 | `theorem` | [unop_inj](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean/declarations/unop-inj--27bb6b973b7a815596626c67.md) | 105 | `result-track:27bb6b973b7a815596626c67c331512df7bc71201037836106c3a158b6d67d6d` |
| 18 | `def` | [equivOp](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean/declarations/equivop--2f895caa5aa0c3b4a3fca64b.md) | 109 | `declaration-track:2f895caa5aa0c3b4a3fca64b903164de07ec4c6d9d9a9422c58399b815d15b32` |
| 19 | `theorem` | [op_normalizer](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean/declarations/op-normalizer--646c629cc66e2cb8e74d6c16.md) | 113 | `result-track:646c629cc66e2cb8e74d6c1613ec67b5e7d4464a4f80d7b3fa5670d22139c6b7` |
| 20 | `theorem` | [unop_normalizer](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant5f11e8224de1f153164812d521a34af3b985f4dbdb4afdd0b4edcc57af635a76.lean/declarations/unop-normalizer--093410a61489bbe67972d353.md) | 118 | `result-track:093410a61489bbe67972d3539c33c3380cac53d3fa304684b9164a5fdc10ea03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
