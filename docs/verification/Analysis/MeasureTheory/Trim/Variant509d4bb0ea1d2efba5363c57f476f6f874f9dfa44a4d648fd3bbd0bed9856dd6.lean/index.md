# Verification target: GRWTSK.Analysis.MeasureTheory.Trim.Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "049c03a340ae63f3d25e3a652fb02c1dc3fe6bc9",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `049c03a340ae63f3d25e3a652fb02c1dc3fe6bc9`.

Source path: `GRWTSK/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Typeclasses.SFinite` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Measure.trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean/declarations/measure-trim--ff036ee58b39b0da1f5d491e.md) | 40 | `declaration-track:ff036ee58b39b0da1f5d491ec55d7009f0cc3181f17d74074a8775ccc19304d5` |
| 2 | `theorem` | [trim_eq_self](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean/declarations/trim-eq-self--90f1575cf1bb46566cba28e3.md) | 44 | `result-track:90f1575cf1bb46566cba28e330c39390a25beb08b80579f2dcf25c846ef2a45e` |
| 3 | `theorem` | [toOuterMeasure_trim_eq_trim_toOuterMeasure](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean/declarations/tooutermeasure-trim-eq-trim-tooutermeasure--4b18e60e855479febf6105d0.md) | 49 | `result-track:4b18e60e855479febf6105d01512e45f8b03d04ad52247fc72b418588020ec77` |
| 4 | `theorem` | [zero_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean/declarations/zero-trim--d112f8592925424b9838a3ef.md) | 54 | `result-track:d112f8592925424b9838a3efbd5c5aa62b63ac4699e1bf10532deb001b4a6b7a` |
| 5 | `theorem` | [trim_measurableSet_eq](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean/declarations/trim-measurableset-eq--63ed2d60e1b993cf69276eb8.md) | 57 | `result-track:63ed2d60e1b993cf69276eb8ae6513ba55b483bc9bd5e8f91def4579bb76139e` |
| 6 | `theorem` | [le_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean/declarations/le-trim--b93b25191302dfe9518d8094.md) | 60 | `result-track:b93b25191302dfe9518d809447e7a10c9ca2e05162327d9065922d80a6c2af7f` |
| 7 | `lemma` | [trim_eq_map](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean/declarations/trim-eq-map--d68512a9752ba1e4092b3280.md) | 64 | `result-track:d68512a9752ba1e4092b3280bb4327c92c57bd34040697cc46784ba6fe89c44a` |
| 8 | `lemma` | [trim_add](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean/declarations/trim-add--a4575238445810254adc19e5.md) | 68 | `result-track:a4575238445810254adc19e5393a396f1e344175b99fa4bd9830ee97c755fc8c` |
| 9 | `theorem` | [measure_eq_zero_of_trim_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean/declarations/measure-eq-zero-of-trim-eq-zero--82579ac9298ff813ce3fc54a.md) | 71 | `result-track:82579ac9298ff813ce3fc54a773b2c00cfc2750a8a1363545e2eef7914b9ad53` |
| 10 | `theorem` | [measure_trim_toMeasurable_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean/declarations/measure-trim-tomeasurable-eq-zero--8eba60cd0fd177ab57c6fd18.md) | 74 | `result-track:8eba60cd0fd177ab57c6fd184e6d2ea57c3c95e7354b62e2cd0da62afac4ac2a` |
| 11 | `theorem` | [ae_of_ae_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean/declarations/ae-of-ae-trim--9696c42304aa591f80ed29a0.md) | 78 | `result-track:9696c42304aa591f80ed29a05419e4a7691e5e49f3106e0f00a44b5180e9d339` |
| 12 | `theorem` | [ae_eq_of_ae_eq_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean/declarations/ae-eq-of-ae-eq-trim--8f79ebcd313f1fe317148f28.md) | 82 | `result-track:8f79ebcd313f1fe317148f28b8b253cc21beab218f1978aaa6cf64e3b0de62c9` |
| 13 | `theorem` | [ae_le_of_ae_le_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean/declarations/ae-le-of-ae-le-trim--3404f3749a041ba722571596.md) | 86 | `result-track:3404f3749a041ba7225715965522270f31372738dfcdd424eba649e8f7d6c7b2` |
| 14 | `theorem` | [trim_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean/declarations/trim-trim--82c88c386ece68afee309684.md) | 90 | `result-track:82c88c386ece68afee3096844b3caa61e74f48ad6d65fc591ac0cb0a6c99873d` |
| 15 | `theorem` | [restrict_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean/declarations/restrict-trim--d3b5978c551983670f06308e.md) | 96 | `result-track:d3b5978c551983670f06308e93b910011c9b94ff43d060c180c2169f750fe4e8` |
| 16 | `instance` | [isFiniteMeasure_trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean/declarations/isfinitemeasure-trim--33845c20bc62f976b3c98bac.md) | 103 | `declaration-track:33845c20bc62f976b3c98bac44720dfb68c83d5319398fd70833a3b418340de5` |
| 17 | `theorem` | [sigmaFiniteTrim_mono](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean/declarations/sigmafinitetrim-mono--310bc43916024487ca19c5fe.md) | 108 | `result-track:310bc43916024487ca19c5fe8e6293c1a3cda1dfdcaa8deefb024e1b9d196489` |
| 18 | `theorem` | [sigmaFinite_trim_bot_iff](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean/declarations/sigmafinite-trim-bot-iff--736a886d157a6c312931d89a.md) | 124 | `result-track:736a886d157a6c312931d89a6330a58530aef85d8062952687e2836c70b0db3a` |
| 19 | `lemma` | [Measure.AbsolutelyContinuous.trim](../../../../../mathematics/Analysis/MeasureTheory/Trim/Variant509d4bb0ea1d2efba5363c57f476f6f874f9dfa44a4d648fd3bbd0bed9856dd6.lean/declarations/measure-absolutelycontinuous-trim--b2a97d576045c0e84775cefd.md) | 130 | `result-track:b2a97d576045c0e84775cefd8e38c63c273bcc8217b2040ac047d3c94fc220cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
