# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variant5b51fc7262b838205b98f0136ab63943f3e9579dec436d67f8b6a41d23f5fbf3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1779f92122ed732e721980373134efd1399ff5b9",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant5b51fc7262b838205b98f0136ab63943f3e9579dec436d67f8b6a41d23f5fbf3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5b51fc7262b838205b98f0136ab63943f3e9579dec436d67f8b6a41d23f5fbf3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5b51fc7262b838205b98f0136ab63943f3e9579dec436d67f8b6a41d23f5fbf3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1779f92122ed732e721980373134efd1399ff5b9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant5b51fc7262b838205b98f0136ab63943f3e9579dec436d67f8b6a41d23f5fbf3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integral/Variant5b51fc7262b838205b98f0136ab63943f3e9579dec436d67f8b6a41d23f5fbf3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [volume_regionBetween_eq_integral'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5b51fc7262b838205b98f0136ab63943f3e9579dec436d67f8b6a41d23f5fbf3.lean/declarations/volume-regionbetween-eq-integral--d10cef94db1e79a986262de0.md) | 22 | `result-track:d10cef94db1e79a986262de067efeb691ebf68f23479b88c14c81179a7b38cf8` |
| 2 | `theorem` | [volume_regionBetween_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5b51fc7262b838205b98f0136ab63943f3e9579dec436d67f8b6a41d23f5fbf3.lean/declarations/volume-regionbetween-eq-integral--b83cb9ebea5ee4d74eb7a304.md) | 37 | `result-track:b83cb9ebea5ee4d74eb7a304d17b2a00d2aa75472e4b2dfa283e80d08de41fd0` |
| 3 | `theorem` | [Real.integrable_of_summable_norm_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5b51fc7262b838205b98f0136ab63943f3e9579dec436d67f8b6a41d23f5fbf3.lean/declarations/real-integrable-of-summable-norm-icc--777d7e65a414b40b338c561e.md) | 55 | `result-track:777d7e65a414b40b338c561e021acfd27d923a78255ecc6bf97dbbdfc48104cf` |
| 4 | `theorem` | [integral_comp_neg_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5b51fc7262b838205b98f0136ab63943f3e9579dec436d67f8b6a41d23f5fbf3.lean/declarations/integral-comp-neg-iic--aaabdedb9a6e31f8ab76ef74.md) | 91 | `result-track:aaabdedb9a6e31f8ab76ef74ad009608c5db31cfd5e6586a7334db9add1632f7` |
| 5 | `theorem` | [integral_comp_neg_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5b51fc7262b838205b98f0136ab63943f3e9579dec436d67f8b6a41d23f5fbf3.lean/declarations/integral-comp-neg-ioi--cfb7402aedf79b51adc5618c.md) | 102 | `result-track:cfb7402aedf79b51adc5618cdb21a864f1ff4b9d89b93021d7196ffc01d46240` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
