# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finsupp.Variant2f5eae57bf9ba1096f23bbfd7d7e256d738fc1a542463f88adde9ebe1beab0a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40a714f5c4591d00fd0baea46c9d1d29801f9176",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finsupp/Variant2f5eae57bf9ba1096f23bbfd7d7e256d738fc1a542463f88adde9ebe1beab0a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant2f5eae57bf9ba1096f23bbfd7d7e256d738fc1a542463f88adde9ebe1beab0a7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant2f5eae57bf9ba1096f23bbfd7d7e256d738fc1a542463f88adde9ebe1beab0a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40a714f5c4591d00fd0baea46c9d1d29801f9176`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finsupp/Variant2f5eae57bf9ba1096f23bbfd7d7e256d738fc1a542463f88adde9ebe1beab0a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finsupp/Variant2f5eae57bf9ba1096f23bbfd7d7e256d738fc1a542463f88adde9ebe1beab0a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Multiset` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mk_finsupp_lift_of_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant2f5eae57bf9ba1096f23bbfd7d7e256d738fc1a542463f88adde9ebe1beab0a7.lean/declarations/mk-finsupp-lift-of-fintype--0b458c7ddfa436d50665eeac.md) | 25 | `result-track:0b458c7ddfa436d50665eeac7de55975670968c1776c20179d29ac82ffb680ad` |
| 2 | `theorem` | [mk_finsupp_of_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant2f5eae57bf9ba1096f23bbfd7d7e256d738fc1a542463f88adde9ebe1beab0a7.lean/declarations/mk-finsupp-of-fintype--31335ca00167802dbca81cef.md) | 29 | `result-track:31335ca00167802dbca81cef933272e9a13e15201ad4bd12948b318bc67f8d97` |
| 3 | `theorem` | [mk_finsupp_lift_of_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant2f5eae57bf9ba1096f23bbfd7d7e256d738fc1a542463f88adde9ebe1beab0a7.lean/declarations/mk-finsupp-lift-of-infinite--eef658888aa621e2b5d01ceb.md) | 33 | `result-track:eef658888aa621e2b5d01ceb3510b269b7803ccdd2d34d8e86bf44875a5f7522` |
| 4 | `theorem` | [mk_finsupp_of_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant2f5eae57bf9ba1096f23bbfd7d7e256d738fc1a542463f88adde9ebe1beab0a7.lean/declarations/mk-finsupp-of-infinite--b66aa345a2358e6b41bd0fa9.md) | 48 | `result-track:b66aa345a2358e6b41bd0fa900e112abaf8c380575a92cd7a0310153026cddc1` |
| 5 | `theorem` | [mk_finsupp_lift_of_infinite'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant2f5eae57bf9ba1096f23bbfd7d7e256d738fc1a542463f88adde9ebe1beab0a7.lean/declarations/mk-finsupp-lift-of-infinite--14107e961c4a7d2c90156f0c.md) | 52 | `result-track:14107e961c4a7d2c90156f0cb94894b20d7ce92f56b76cf82f19b1649d13429d` |
| 6 | `theorem` | [mk_finsupp_of_infinite'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant2f5eae57bf9ba1096f23bbfd7d7e256d738fc1a542463f88adde9ebe1beab0a7.lean/declarations/mk-finsupp-of-infinite--bbe9fd9c43a8dae9ab1bd9c2.md) | 61 | `result-track:bbe9fd9c43a8dae9ab1bd9c2c24f39afa27aa1ba26b67be8b13026c1ff4510fe` |
| 7 | `theorem` | [mk_finsupp_nat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant2f5eae57bf9ba1096f23bbfd7d7e256d738fc1a542463f88adde9ebe1beab0a7.lean/declarations/mk-finsupp-nat--ccb2b41ef97e2846f9e980d8.md) | 64 | `result-track:ccb2b41ef97e2846f9e980d842f882109822a28d24d275bbd08a65e8828115e5` |
| 8 | `theorem` | [mk_multiset_of_isEmpty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant2f5eae57bf9ba1096f23bbfd7d7e256d738fc1a542463f88adde9ebe1beab0a7.lean/declarations/mk-multiset-of-isempty--2cf30dba24c331089a5337ab.md) | 66 | `result-track:2cf30dba24c331089a5337ab75dfa076dbaad320ef793f4abb72e1ecfac67ab0` |
| 9 | `theorem` | [mk_multiset_of_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant2f5eae57bf9ba1096f23bbfd7d7e256d738fc1a542463f88adde9ebe1beab0a7.lean/declarations/mk-multiset-of-nonempty--a072cdf8819682c0396eba53.md) | 70 | `result-track:a072cdf8819682c0396eba53d67e0b03ff9b431c34d14ac9e24f5587b2e3d187` |
| 10 | `theorem` | [mk_multiset_of_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant2f5eae57bf9ba1096f23bbfd7d7e256d738fc1a542463f88adde9ebe1beab0a7.lean/declarations/mk-multiset-of-infinite--0bdb106e1948ca5f05057b10.md) | 74 | `result-track:0bdb106e1948ca5f05057b1056fcecab0f4d05e65f0f72a839efed9479a1c906` |
| 11 | `theorem` | [mk_multiset_of_countable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finsupp/Variant2f5eae57bf9ba1096f23bbfd7d7e256d738fc1a542463f88adde9ebe1beab0a7.lean/declarations/mk-multiset-of-countable--64ee5a30efdc18bb3ef816eb.md) | 76 | `result-track:64ee5a30efdc18bb3ef816ebd25f7d3fbc6f40d6c48b53f93e97040fcc7681e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
