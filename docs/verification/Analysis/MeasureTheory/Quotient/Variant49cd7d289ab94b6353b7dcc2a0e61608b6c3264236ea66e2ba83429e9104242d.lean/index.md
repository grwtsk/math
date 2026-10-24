# Verification target: GRWTSK.Analysis.MeasureTheory.Quotient.Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83ad2fd7a27d480d662eafb193b8151209876bd6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83ad2fd7a27d480d662eafb193b8151209876bd6`.

Source path: `GRWTSK/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.FundamentalDomain` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [QuotientGroup.measurableSMul](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean/declarations/quotientgroup-measurablesmul--8c040b72ac2c5d19b3d1a216.md) | 64 | `declaration-track:8c040b72ac2c5d19b3d1a21668d28a156f341c988dc40e6676004378afbc7ff2` |
| 2 | `theorem` | [measurePreserving_quotientGroup_mk_of_QuotientMeasureEqMeasurePreimage](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean/declarations/measurepreserving-quotientgroup-mk-of-quotientmeasureeqmeasurepreimage--15291a4a5139743a4766bb17.md) | 82 | `result-track:15291a4a5139743a4766bb17064a8c1602c50b31ad211ad7d3c821c7d6ecd276` |
| 3 | `lemma` | [MeasureTheory.QuotientMeasureEqMeasurePreimage.smulInvariantMeasure_quotient](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean/declarations/measuretheory-quotientmeasureeqmeasurepreimage-smulinvariantmeasure-quot--6d76fee52f6d62ea66322d98.md) | 96 | `result-track:6d76fee52f6d62ea66322d983218fbe5c64c2c69f0a1d1c714f3a80fef2439b5` |
| 4 | `lemma` | [MeasureTheory.QuotientMeasureEqMeasurePreimage.mulInvariantMeasure_quotient](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean/declarations/measuretheory-quotientmeasureeqmeasurepreimage-mulinvariantmeasure-quoti--fecd6c4cb56070720695e39d.md) | 137 | `result-track:fecd6c4cb56070720695e39d9880e384537450340cab3d3b646829816b92d9c5` |
| 5 | `theorem` | [MeasureTheory.Measure.IsMulLeftInvariant.quotientMeasureEqMeasurePreimage_of_set](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean/declarations/measuretheory-measure-ismulleftinvariant-quotientmeasureeqmeasurepreimag--16f68fe112528d3fda93ed96.md) | 164 | `result-track:16f68fe112528d3fda93ed9652b651b9cde99db8b11510ccc47e5d9a20c23358` |
| 6 | `theorem` | [MeasureTheory.leftInvariantIsQuotientMeasureEqMeasurePreimage](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean/declarations/measuretheory-leftinvariantisquotientmeasureeqmeasurepreimage--626f18b44096d66a8cc77e06.md) | 195 | `result-track:626f18b44096d66a8cc77e061e166294f7db71de5313130eef6fb1d02e0bb7e2` |
| 7 | `theorem` | [MeasureTheory.QuotientMeasureEqMeasurePreimage.haarMeasure_quotient](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean/declarations/measuretheory-quotientmeasureeqmeasurepreimage-haarmeasure-quotient--ed99fc5f72fe810576f1ce14.md) | 229 | `result-track:ed99fc5f72fe810576f1ce149c2436245182cb9ec2d688636c660637505988ba` |
| 8 | `theorem` | [IsFundamentalDomain.QuotientMeasureEqMeasurePreimage_HaarMeasure](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean/declarations/isfundamentaldomain-quotientmeasureeqmeasurepreimage-haarmeasure--0dc8a2f027f4b8cbf213f74d.md) | 272 | `result-track:0dc8a2f027f4b8cbf213f74dadd9f0fa1c43fe882d154097c68e3563ac5b5143` |
| 9 | `theorem` | [IsFundamentalDomain.QuotientMeasureEqMeasurePreimage_smulHaarMeasure](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean/declarations/isfundamentaldomain-quotientmeasureeqmeasurepreimage-smulhaarmeasure--2409cf38ddba49ed807b795d.md) | 301 | `result-track:2409cf38ddba49ed807b795ddf6a3ead7ddb59473dd2237d47fd1563a5712bc9` |
| 10 | `lemma` | [essSup_comp_quotientGroup_mk](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean/declarations/esssup-comp-quotientgroup-mk--e080b6076cd335ccf5b03838.md) | 347 | `result-track:e080b6076cd335ccf5b03838fca066fe25b23f50c7746415e9d3bd25f5b79892` |
| 11 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurePreservingQuotientGroupMkOfQuotientMeasureEqMeasurePreimage.Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.MeasureTheory.IsFundamentalDomain.absolutelyContinuous_map](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean/declarations/root-grwtsk-analysis-measuretheory-measurepreservingquotientgroupmkofquo--6daa2acc8353939708648deb.md) | 367 | `result-track:6daa2acc8353939708648deb8d9d37de66d4b7c0ed580190160689e6656ea755` |
| 12 | `lemma` | [QuotientGroup.integral_eq_integral_automorphize](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean/declarations/quotientgroup-integral-eq-integral-automorphize--aabdd71c2b6b345bd91c51f7.md) | 392 | `result-track:aabdd71c2b6b345bd91c51f7940cefd0995b4c5b83defaef158b77591ee89be2` |
| 13 | `lemma` | [QuotientGroup.integral_mul_eq_integral_automorphize_mul](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean/declarations/quotientgroup-integral-mul-eq-integral-automorphize-mul--3d2059cf1b2f08d06b18f360.md) | 412 | `result-track:3d2059cf1b2f08d06b18f360b8d9b18d0caf82e7f830420aea65541e226ce420` |
| 14 | `lemma` | [QuotientAddGroup.integral_mul_eq_integral_automorphize_mul](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variant49cd7d289ab94b6353b7dcc2a0e61608b6c3264236ea66e2ba83429e9104242d.lean/declarations/quotientaddgroup-integral-mul-eq-integral-automorphize-mul--489fa9b220e912fd25bbd4c0.md) | 454 | `result-track:489fa9b220e912fd25bbd4c09ee672c36c21d33266056f6a7e467522c8cb8a41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
