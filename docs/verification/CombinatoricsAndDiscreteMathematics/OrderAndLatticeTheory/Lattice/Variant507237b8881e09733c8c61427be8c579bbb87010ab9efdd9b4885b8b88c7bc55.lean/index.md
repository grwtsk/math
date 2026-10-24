# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variant507237b8881e09733c8c61427be8c579bbb87010ab9efdd9b4885b8b88c7bc55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58ab18f42e9fffbf5e7a61b4c44eecba81df9b74",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant507237b8881e09733c8c61427be8c579bbb87010ab9efdd9b4885b8b88c7bc55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant507237b8881e09733c8c61427be8c579bbb87010ab9efdd9b4885b8b88c7bc55.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant507237b8881e09733c8c61427be8c579bbb87010ab9efdd9b4885b8b88c7bc55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58ab18f42e9fffbf5e7a61b4c44eecba81df9b74`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant507237b8881e09733c8c61427be8c579bbb87010ab9efdd9b4885b8b88c7bc55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant507237b8881e09733c8c61427be8c579bbb87010ab9efdd9b4885b8b88c7bc55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.OrderIso` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mul_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant507237b8881e09733c8c61427be8c579bbb87010ab9efdd9b4885b8b88c7bc55.lean/declarations/mul-sup--9f92437cc58cec86439a2a61.md) | 55 | `result-track:9f92437cc58cec86439a2a616d468dfa443f396757410991b0dd19d7740940b6` |
| 2 | `lemma` | [sup_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant507237b8881e09733c8c61427be8c579bbb87010ab9efdd9b4885b8b88c7bc55.lean/declarations/sup-mul--cb0d19e6c9c02dda821eec31.md) | 60 | `result-track:cb0d19e6c9c02dda821eec31cb77eb1894080dbb1ee3aa04e7883677571f37c3` |
| 3 | `lemma` | [mul_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant507237b8881e09733c8c61427be8c579bbb87010ab9efdd9b4885b8b88c7bc55.lean/declarations/mul-inf--9a5285c3dac507043f3ae40a.md) | 65 | `result-track:9a5285c3dac507043f3ae40ac7350cc03c11663e0a0ea94dfe50a1bf1636e4d2` |
| 4 | `lemma` | [inf_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant507237b8881e09733c8c61427be8c579bbb87010ab9efdd9b4885b8b88c7bc55.lean/declarations/inf-mul--92454c652dd06f82522212c1.md) | 70 | `result-track:92454c652dd06f82522212c1fe30fbe7cef227639f50f3b8da977e3709722a82` |
| 5 | `lemma` | [sup_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant507237b8881e09733c8c61427be8c579bbb87010ab9efdd9b4885b8b88c7bc55.lean/declarations/sup-div--80f77437f64b193888344981.md) | 75 | `result-track:80f77437f64b193888344981aacf0b60e6e952b768c411d2d9dd1a11b13883e4` |
| 6 | `lemma` | [inf_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant507237b8881e09733c8c61427be8c579bbb87010ab9efdd9b4885b8b88c7bc55.lean/declarations/inf-div--3c468876dacf1537820783eb.md) | 80 | `result-track:3c468876dacf1537820783ebdd7b9cec08531425e6b332ccb28f8cf4396d3e86` |
| 7 | `lemma` | [inv_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant507237b8881e09733c8c61427be8c579bbb87010ab9efdd9b4885b8b88c7bc55.lean/declarations/inv-sup--62786c23316ff8ad75603928.md) | 87 | `result-track:62786c23316ff8ad75603928c589ece1cb7bab41a423d5e6905db0c927297a9f` |
| 8 | `lemma` | [inv_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant507237b8881e09733c8c61427be8c579bbb87010ab9efdd9b4885b8b88c7bc55.lean/declarations/inv-inf--19b019bf84261a0a1bd7be63.md) | 89 | `result-track:19b019bf84261a0a1bd7be6352cc174de4cee72b55397600edb7deb5e3f29e81` |
| 9 | `lemma` | [div_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant507237b8881e09733c8c61427be8c579bbb87010ab9efdd9b4885b8b88c7bc55.lean/declarations/div-sup--b6000acadb33c27a6c8ef60e.md) | 92 | `result-track:b6000acadb33c27a6c8ef60e1caa3e03e5b1e7ed70263c165ea488d1abbe7c3b` |
| 10 | `lemma` | [div_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant507237b8881e09733c8c61427be8c579bbb87010ab9efdd9b4885b8b88c7bc55.lean/declarations/div-inf--a1771f9b4e6e563b848ec37e.md) | 95 | `result-track:a1771f9b4e6e563b848ec37e0b9e74636e8703f9dd7fb1ef4d3de03aed776265` |
| 11 | `lemma` | [pow_two_semiclosed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant507237b8881e09733c8c61427be8c579bbb87010ab9efdd9b4885b8b88c7bc55.lean/declarations/pow-two-semiclosed--38a7bff440bee260051f79b2.md) | 101 | `result-track:38a7bff440bee260051f79b2aa895feba0c4703f1b77afa837424c62ad3d8928` |
| 12 | `lemma` | [inf_mul_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant507237b8881e09733c8c61427be8c579bbb87010ab9efdd9b4885b8b88c7bc55.lean/declarations/inf-mul-sup--caaf39b4c38bc75aef4c5608.md) | 117 | `result-track:caaf39b4c38bc75aef4c5608fc34ce6e7d260a9ffcbdee9b6919b8004b8db86a` |
| 13 | `def` | [CommGroup.toDistribLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant507237b8881e09733c8c61427be8c579bbb87010ab9efdd9b4885b8b88c7bc55.lean/declarations/commgroup-todistriblattice--7601869d328923cd607f5939.md) | 127 | `declaration-track:7601869d328923cd607f5939090cbdf60bf0df42718e475f123f82b6440051a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
