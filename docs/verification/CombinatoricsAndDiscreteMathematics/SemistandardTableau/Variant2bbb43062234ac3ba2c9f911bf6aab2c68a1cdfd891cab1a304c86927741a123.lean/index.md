# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SemistandardTableau.Variant2bbb43062234ac3ba2c9f911bf6aab2c68a1cdfd891cab1a304c86927741a123

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3568197c76b771ca85c77a4526fbcba678f85e1f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant2bbb43062234ac3ba2c9f911bf6aab2c68a1cdfd891cab1a304c86927741a123.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant2bbb43062234ac3ba2c9f911bf6aab2c68a1cdfd891cab1a304c86927741a123.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant2bbb43062234ac3ba2c9f911bf6aab2c68a1cdfd891cab1a304c86927741a123.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3568197c76b771ca85c77a4526fbcba678f85e1f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant2bbb43062234ac3ba2c9f911bf6aab2c68a1cdfd891cab1a304c86927741a123.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant2bbb43062234ac3ba2c9f911bf6aab2c68a1cdfd891cab1a304c86927741a123.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Young.YoungDiagram` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SemistandardYoungTableau](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant2bbb43062234ac3ba2c9f911bf6aab2c68a1cdfd891cab1a304c86927741a123.lean/declarations/semistandardyoungtableau--91f52f4bdd30cdbbbea8ac75.md) | 52 | `declaration-track:91f52f4bdd30cdbbbea8ac75793ab731d303f463478e652216587efeb9fe524b` |
| 2 | `instance` | [instFunLike](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant2bbb43062234ac3ba2c9f911bf6aab2c68a1cdfd891cab1a304c86927741a123.lean/declarations/instfunlike--09abc4db3d00554b7686698e.md) | 64 | `declaration-track:09abc4db3d00554b7686698e4221627041d9484f34f68890713ea1e1f3189c9e` |
| 3 | `theorem` | [to_fun_eq_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant2bbb43062234ac3ba2c9f911bf6aab2c68a1cdfd891cab1a304c86927741a123.lean/declarations/to-fun-eq-coe--4feb53a4a14e60bc81bb1661.md) | 72 | `result-track:4feb53a4a14e60bc81bb166190ba6a1cdde4db1b873c4b48e24f36f0313e70a9` |
| 4 | `theorem` | [ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant2bbb43062234ac3ba2c9f911bf6aab2c68a1cdfd891cab1a304c86927741a123.lean/declarations/ext--0b8844676ebac3742f0ed843.md) | 77 | `result-track:0b8844676ebac3742f0ed843dd8718d46127f4d69f1758fe067d9a536b2bf595` |
| 5 | `def` | [copy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant2bbb43062234ac3ba2c9f911bf6aab2c68a1cdfd891cab1a304c86927741a123.lean/declarations/copy--5d87f27b6051d07c7156793a.md) | 85 | `declaration-track:5d87f27b6051d07c7156793a9ee229e7f099d456b17e6570d47114a394ccdffa` |
| 6 | `theorem` | [coe_copy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant2bbb43062234ac3ba2c9f911bf6aab2c68a1cdfd891cab1a304c86927741a123.lean/declarations/coe-copy--f2f63d93914776c3e6a844b4.md) | 93 | `result-track:f2f63d93914776c3e6a844b48776bc1a17d6a1e87697bb7f1b4fdff8764bd9f4` |
| 7 | `theorem` | [copy_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant2bbb43062234ac3ba2c9f911bf6aab2c68a1cdfd891cab1a304c86927741a123.lean/declarations/copy-eq--6290b5224653cd41252ef2de.md) | 97 | `result-track:6290b5224653cd41252ef2debb0e3914570e8373aaa6518c1e9266bb535fe55a` |
| 8 | `theorem` | [row_weak](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant2bbb43062234ac3ba2c9f911bf6aab2c68a1cdfd891cab1a304c86927741a123.lean/declarations/row-weak--d2624555da4588c3fd7953a1.md) | 101 | `result-track:d2624555da4588c3fd7953a1d4a837264051b237f5b2ea4430b8f837b3dc1f9f` |
| 9 | `theorem` | [col_strict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant2bbb43062234ac3ba2c9f911bf6aab2c68a1cdfd891cab1a304c86927741a123.lean/declarations/col-strict--9654bb0962327e968fa2be72.md) | 105 | `result-track:9654bb0962327e968fa2be720c928359b4876c9c1e53372903dc438b87bcb653` |
| 10 | `theorem` | [zeros](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant2bbb43062234ac3ba2c9f911bf6aab2c68a1cdfd891cab1a304c86927741a123.lean/declarations/zeros--0cfdd45e34ad3bc18edfde7d.md) | 109 | `result-track:0cfdd45e34ad3bc18edfde7d7b398d8ea4433cd5f594e8c89065fa525a21a7f8` |
| 11 | `theorem` | [row_weak_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant2bbb43062234ac3ba2c9f911bf6aab2c68a1cdfd891cab1a304c86927741a123.lean/declarations/row-weak-of-le--69f72af9788796263d40ccfb.md) | 113 | `result-track:69f72af9788796263d40ccfb6ca31207476316d3d2d8d050fa7a5fdebc13d9de` |
| 12 | `theorem` | [col_weak](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant2bbb43062234ac3ba2c9f911bf6aab2c68a1cdfd891cab1a304c86927741a123.lean/declarations/col-weak--0ae70f98f02c03364de3776d.md) | 119 | `result-track:0ae70f98f02c03364de3776d9df25a1d748f2a436a237281f7e282b430d374cb` |
| 13 | `def` | [highestWeight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant2bbb43062234ac3ba2c9f911bf6aab2c68a1cdfd891cab1a304c86927741a123.lean/declarations/highestweight--0ea7ac1aa4c4d8aa5ae0bce5.md) | 126 | `declaration-track:0ea7ac1aa4c4d8aa5ae0bce54a2c0df4c26c4d77e4c767e8b22c1848c884ae14` |
| 14 | `theorem` | [highestWeight_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant2bbb43062234ac3ba2c9f911bf6aab2c68a1cdfd891cab1a304c86927741a123.lean/declarations/highestweight-apply--c9478c7cb11cc9ce0bfa8d0d.md) | 135 | `result-track:c9478c7cb11cc9ce0bfa8d0d50c409085cda9f950d7a671add3182469d29ab2e` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant2bbb43062234ac3ba2c9f911bf6aab2c68a1cdfd891cab1a304c86927741a123.lean/declarations/instance--551afc447e430b8be3bd9667.md) | 139 | `declaration-track:551afc447e430b8be3bd9667556c263dc8a72c6eb5c01ea73d075c52be8ba862` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
