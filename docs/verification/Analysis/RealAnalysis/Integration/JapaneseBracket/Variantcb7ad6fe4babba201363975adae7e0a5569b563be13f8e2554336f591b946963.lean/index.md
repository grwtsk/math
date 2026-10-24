# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.JapaneseBracket.Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53624264e17f9f26edf0fb1ce109889ad416f4d7",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53624264e17f9f26edf0fb1ce109889ad416f4d7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Layercake` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean/declarations/macro-rules--61e3c3071d7354550950dfb9.md) | 29 | `declaration-track:61e3c3071d7354550950dfb988df7c628aedf4b0646e139a81c7ef438c99738c` |
| 2 | `theorem` | [sqrt_one_add_norm_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean/declarations/sqrt-one-add-norm-sq-le--e38c2527ee4fae8cfee103ee.md) | 36 | `result-track:e38c2527ee4fae8cfee103ee29dbf5ef7901627a6c1ff35e74ed7ec23eea659f` |
| 3 | `theorem` | [one_add_norm_le_sqrt_two_mul_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean/declarations/one-add-norm-le-sqrt-two-mul-sqrt--9349f5d52cd7f9b15b39596b.md) | 41 | `result-track:9349f5d52cd7f9b15b39596bee7d79a7e236ac4eee8479e4798c65bada5d955b` |
| 4 | `theorem` | [rpow_neg_one_add_norm_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean/declarations/rpow-neg-one-add-norm-sq-le--df725c1615884fedc143bb5f.md) | 49 | `result-track:df725c1615884fedc143bb5f5538567551ad306e94a089ba35dac6cbdbdffcbf` |
| 5 | `theorem` | [le_rpow_one_add_norm_iff_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean/declarations/le-rpow-one-add-norm-iff-norm-le--03a15ac1483971d324dcb150.md) | 62 | `result-track:03a15ac1483971d324dcb1506e0285f3007a7e64669c6c89809536320348102c` |
| 6 | `theorem` | [closedBall_rpow_sub_one_eq_empty_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean/declarations/closedball-rpow-sub-one-eq-empty-aux--94b650bbc4aad8418dd7f2ca.md) | 70 | `result-track:94b650bbc4aad8418dd7f2ca620663d9852ec23904c1fe0016547df9cc00ce2c` |
| 7 | `theorem` | [finite_integral_rpow_sub_one_pow_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean/declarations/finite-integral-rpow-sub-one-pow-aux--c1fa4e5082c999bd3f8de5ee.md) | 80 | `result-track:c1fa4e5082c999bd3f8de5ee13b7d57ee5af2910ca36a045d743bec22e511311` |
| 8 | `theorem` | [finite_integral_one_add_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean/declarations/finite-integral-one-add-norm--ed3406004bfea70abedd8584.md) | 99 | `result-track:ed3406004bfea70abedd85840c25d0a4e4ad104723d1ca782efb3bc1cefe55f0` |
| 9 | `theorem` | [integrable_one_add_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean/declarations/integrable-one-add-norm--7056d59f6226c152898a9461.md) | 142 | `result-track:7056d59f6226c152898a94619bfeb162ecfb422e286a3a8848926766796d43d0` |
| 10 | `theorem` | [integrable_rpow_neg_one_add_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantcb7ad6fe4babba201363975adae7e0a5569b563be13f8e2554336f591b946963.lean/declarations/integrable-rpow-neg-one-add-norm-sq--55468e8ede2e32687df9e34e.md) | 154 | `result-track:55468e8ede2e32687df9e34e0ed6c0f771e918d24de3375c18bed7b9325bca7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
