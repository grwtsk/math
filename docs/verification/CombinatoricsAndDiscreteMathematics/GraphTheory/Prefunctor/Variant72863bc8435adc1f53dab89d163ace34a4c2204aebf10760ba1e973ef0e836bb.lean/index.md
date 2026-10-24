# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Prefunctor.Variant72863bc8435adc1f53dab89d163ace34a4c2204aebf10760ba1e973ef0e836bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b361dac50883aa77a1928b10c2c3c593e91b968b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant72863bc8435adc1f53dab89d163ace34a4c2204aebf10760ba1e973ef0e836bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant72863bc8435adc1f53dab89d163ace34a4c2204aebf10760ba1e973ef0e836bb.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant72863bc8435adc1f53dab89d163ace34a4c2204aebf10760ba1e973ef0e836bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b361dac50883aa77a1928b10c2c3c593e91b968b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant72863bc8435adc1f53dab89d163ace34a4c2204aebf10760ba1e973ef0e836bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant72863bc8435adc1f53dab89d163ace34a4c2204aebf10760ba1e973ef0e836bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Prefunctor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant72863bc8435adc1f53dab89d163ace34a4c2204aebf10760ba1e973ef0e836bb.lean/declarations/prefunctor--5488cf35faa7ac2071627c42.md) | 24 | `declaration-track:5488cf35faa7ac2071627c42cb953cac49743c72df181078c0b18843078d4faf` |
| 2 | `lemma` | [mk_obj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant72863bc8435adc1f53dab89d163ace34a4c2204aebf10760ba1e973ef0e836bb.lean/declarations/mk-obj--a7a134dd0549bbfb34ff561b.md) | 35 | `result-track:a7a134dd0549bbfb34ff561b18096fc871e0a692ff4f213ed135c06c8cf3043b` |
| 3 | `lemma` | [mk_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant72863bc8435adc1f53dab89d163ace34a4c2204aebf10760ba1e973ef0e836bb.lean/declarations/mk-map--ae7f228964a7b2aacfa43fad.md) | 38 | `result-track:ae7f228964a7b2aacfa43fade03296468ad8c8e93694a6166bd9ccaea756fd76` |
| 4 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant72863bc8435adc1f53dab89d163ace34a4c2204aebf10760ba1e973ef0e836bb.lean/declarations/ext--b70efbbdfcb6180ab74cc070.md) | 42 | `result-track:b70efbbdfcb6180ab74cc070719db0ea457665cac2e714099bdb597e9a86b5e5` |
| 5 | `theorem` | [ext'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant72863bc8435adc1f53dab89d163ace34a4c2204aebf10760ba1e973ef0e836bb.lean/declarations/ext--e08bba293100ce38937914f3.md) | 56 | `result-track:e08bba293100ce38937914f3a7047f6ec0bfb415b02cd0a0cfd4fdd4e7c500c2` |
| 6 | `def` | [id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant72863bc8435adc1f53dab89d163ace34a4c2204aebf10760ba1e973ef0e836bb.lean/declarations/id--d3241f24ed77d2bc6fb57f69.md) | 69 | `declaration-track:d3241f24ed77d2bc6fb57f69cfd82c3bb04e1ef716ad61c681624a15462646fc` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant72863bc8435adc1f53dab89d163ace34a4c2204aebf10760ba1e973ef0e836bb.lean/declarations/instance--337472a323e6842ad015893a.md) | 73 | `declaration-track:337472a323e6842ad015893ac815e4bf5777930fdb8a22416fb0625b4dc682d2` |
| 8 | `def` | [comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant72863bc8435adc1f53dab89d163ace34a4c2204aebf10760ba1e973ef0e836bb.lean/declarations/comp--175751c52b14d152a3dc3791.md) | 78 | `declaration-track:175751c52b14d152a3dc37911742a881cfbfa628b80ec731ef9f97951dc14160` |
| 9 | `theorem` | [comp_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant72863bc8435adc1f53dab89d163ace34a4c2204aebf10760ba1e973ef0e836bb.lean/declarations/comp-id--805b218ac1094b7ecdd12a9d.md) | 84 | `result-track:805b218ac1094b7ecdd12a9d3d0a1d8b0f1b19900dbd51d577f9c1e9582d3306` |
| 10 | `theorem` | [id_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant72863bc8435adc1f53dab89d163ace34a4c2204aebf10760ba1e973ef0e836bb.lean/declarations/id-comp--06e74785499cc440faee8fd7.md) | 88 | `result-track:06e74785499cc440faee8fd78ce9943afadc920df3791e7023aea8d9eee9307f` |
| 11 | `theorem` | [comp_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant72863bc8435adc1f53dab89d163ace34a4c2204aebf10760ba1e973ef0e836bb.lean/declarations/comp-assoc--f52638fd6b9d092b4f1297d0.md) | 92 | `result-track:f52638fd6b9d092b4f1297d07571baa821d37b1ca6e59fc48711e6b3c1df09d2` |
| 12 | `theorem` | [congr_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant72863bc8435adc1f53dab89d163ace34a4c2204aebf10760ba1e973ef0e836bb.lean/declarations/congr-map--13452c2f6ffdfc477e12f68c.md) | 106 | `result-track:13452c2f6ffdfc477e12f68c442c4ceb5402797331d41d94683ccd5eb3455acb` |
| 13 | `theorem` | [congr_obj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant72863bc8435adc1f53dab89d163ace34a4c2204aebf10760ba1e973ef0e836bb.lean/declarations/congr-obj--b94811059665dffc6e04b2bc.md) | 111 | `result-track:b94811059665dffc6e04b2bc32117f2110d5d3e3b4f89d2cc4f065f957a87b7f` |
| 14 | `theorem` | [congr_hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant72863bc8435adc1f53dab89d163ace34a4c2204aebf10760ba1e973ef0e836bb.lean/declarations/congr-hom--51fdb1f8b479080194543524.md) | 115 | `result-track:51fdb1f8b47908019454352443b7f396839229ff07f52aa6d7875c2ed1742e0d` |
| 15 | `theorem` | [homOfEq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Prefunctor/Variant72863bc8435adc1f53dab89d163ace34a4c2204aebf10760ba1e973ef0e836bb.lean/declarations/homofeq-map--e14b949cec2f51eb9911a179.md) | 122 | `result-track:e14b949cec2f51eb9911a1793d9f940c52de34932c6273f9da2c6a5e2b47e815` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
