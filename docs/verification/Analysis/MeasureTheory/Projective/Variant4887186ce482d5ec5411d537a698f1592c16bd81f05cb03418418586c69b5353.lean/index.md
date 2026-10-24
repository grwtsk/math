# Verification target: GRWTSK.Analysis.MeasureTheory.Projective.Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a58ad567c1eb848f86ebd08b0efa5d58ed07d59f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Projective/Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a58ad567c1eb848f86ebd08b0efa5d58ed07d59f`.

Source path: `GRWTSK/Analysis/MeasureTheory/Projective/Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Projective/Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353.lean.json)

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
| 1 | `def` | [IsProjectiveMeasureFamily](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353.lean/declarations/isprojectivemeasurefamily--0d024558f72eb510e011b1c0.md) | 53 | `declaration-track:0d024558f72eb510e011b1c056c92cef687add63079ca41064a1c18ba62fbd6e` |
| 2 | `lemma` | [eq_zero_of_isEmpty](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353.lean/declarations/eq-zero-of-isempty--497fb5cd49065e4734038ff9.md) | 61 | `result-track:497fb5cd49065e4734038ff9ef751b0d4493c9da73972b511bf5e7f378c7c942` |
| 3 | `lemma` | [measure_univ_eq_of_subset](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353.lean/declarations/measure-univ-eq-of-subset--061ca1da1049fe0f98763e12.md) | 72 | `result-track:061ca1da1049fe0f98763e12ccb5efd823231a64932e225d95b3b19c540618fd` |
| 4 | `lemma` | [measure_univ_eq](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353.lean/declarations/measure-univ-eq--316ac0d516b88feb9c4ec353.md) | 81 | `result-track:316ac0d516b88feb9c4ec353a2f3676829583980267c7b991a0a41699e6db63e` |
| 5 | `lemma` | [congr_cylinder_of_subset](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353.lean/declarations/congr-cylinder-of-subset--1aece3d940971062eaba312c.md) | 87 | `result-track:1aece3d940971062eaba312c9346d839b0fe25ecf0d200036efbf001a7180099` |
| 6 | `lemma` | [congr_cylinder](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353.lean/declarations/congr-cylinder--fc5d09d5eee177341707f926.md) | 103 | `result-track:fc5d09d5eee177341707f9261ef76e0fe783530bcf94090f58661a477e310657` |
| 7 | `def` | [IsProjectiveLimit](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353.lean/declarations/isprojectivelimit--ef97019454106aa5c988172a.md) | 123 | `declaration-track:ef97019454106aa5c988172aa1b73e864978eaad5b9c2b7bd60da77755359912` |
| 8 | `lemma` | [measure_cylinder](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353.lean/declarations/measure-cylinder--f520eb69f9cc01da376653e3.md) | 131 | `result-track:f520eb69f9cc01da376653e3afc4c82cf1b6ab44d1380ab0a87bd1580ce44bfa` |
| 9 | `lemma` | [measure_univ_eq](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353.lean/declarations/measure-univ-eq--371ba2cbf3e4ef4cc8e0476c.md) | 137 | `result-track:371ba2cbf3e4ef4cc8e0476caab59938768edde03b22ce6ca4e636fde371bbba` |
| 10 | `lemma` | [isFiniteMeasure](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353.lean/declarations/isfinitemeasure--19639bb69a959372967f1ee9.md) | 141 | `result-track:19639bb69a959372967f1ee9f1f5280ac2992a101745f7d5f1486f27c7d9a800` |
| 11 | `lemma` | [isProbabilityMeasure](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353.lean/declarations/isprobabilitymeasure--66f63a7baf4484643f01da50.md) | 147 | `result-track:66f63a7baf4484643f01da50db0c2c39e15d621c100b8f89f36f1642fc619f03` |
| 12 | `lemma` | [measure_univ_unique](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353.lean/declarations/measure-univ-unique--045e769be6a4e7035d8fa064.md) | 153 | `result-track:045e769be6a4e7035d8fa064754e3051814b7e3575e9f9d1bd03d3fd7fa1f5e4` |
| 13 | `theorem` | [unique](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4887186ce482d5ec5411d537a698f1592c16bd81f05cb03418418586c69b5353.lean/declarations/unique--df18253b424ffedce2f382f1.md) | 158 | `result-track:df18253b424ffedce2f382f174d39f31ab1a34b7e2cc089cdcd0761cd388c219` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
