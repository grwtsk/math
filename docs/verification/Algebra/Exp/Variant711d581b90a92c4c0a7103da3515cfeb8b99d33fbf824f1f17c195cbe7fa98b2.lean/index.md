# Verification target: GRWTSK.Algebra.Exp.Variant711d581b90a92c4c0a7103da3515cfeb8b99d33fbf824f1f17c195cbe7fa98b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1efb3360a88f19fcbd122db47248a01eaf4d9ee9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Exp/Variant711d581b90a92c4c0a7103da3515cfeb8b99d33fbf824f1f17c195cbe7fa98b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Exp/Variant711d581b90a92c4c0a7103da3515cfeb8b99d33fbf824f1f17c195cbe7fa98b2.lean/index.md) · [Full source](../../../../mathematics/Algebra/Exp/Variant711d581b90a92c4c0a7103da3515cfeb8b99d33fbf824f1f17c195cbe7fa98b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1efb3360a88f19fcbd122db47248a01eaf4d9ee9`.

Source path: `GRWTSK/Algebra/Exp/Variant711d581b90a92c4c0a7103da3515cfeb8b99d33fbf824f1f17c195cbe7fa98b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Exp/Variant711d581b90a92c4c0a7103da3515cfeb8b99d33fbf824f1f17c195cbe7fa98b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exp](../../../../mathematics/Algebra/Exp/Variant711d581b90a92c4c0a7103da3515cfeb8b99d33fbf824f1f17c195cbe7fa98b2.lean/declarations/exp--6c9dac3fb8e2bc1bb635bd61.md) | 49 | `declaration-track:6c9dac3fb8e2bc1bb635bd619528201fe267176e2027d371b6bde68f0d57543e` |
| 2 | `theorem` | [coeff_exp](../../../../mathematics/Algebra/Exp/Variant711d581b90a92c4c0a7103da3515cfeb8b99d33fbf824f1f17c195cbe7fa98b2.lean/declarations/coeff-exp--ea2fc0d3022b4b94cc508378.md) | 55 | `result-track:ea2fc0d3022b4b94cc5083782ee89319d0f276b23a719e7db392159ba3d541ff` |
| 3 | `theorem` | [constantCoeff_exp](../../../../mathematics/Algebra/Exp/Variant711d581b90a92c4c0a7103da3515cfeb8b99d33fbf824f1f17c195cbe7fa98b2.lean/declarations/constantcoeff-exp--b0a722f942cd9f3197e7c993.md) | 59 | `result-track:b0a722f942cd9f3197e7c993fe8c67c08e6afee51bf0b3bef3c9a90a912bf61f` |
| 4 | `theorem` | [map_exp](../../../../mathematics/Algebra/Exp/Variant711d581b90a92c4c0a7103da3515cfeb8b99d33fbf824f1f17c195cbe7fa98b2.lean/declarations/map-exp--d348bbccb73d0ce5ace7bc6c.md) | 64 | `result-track:d348bbccb73d0ce5ace7bc6c0b284bfba77200a843e0ea8d9f2e2702fcb7ac97` |
| 5 | `theorem` | [derivative_exp](../../../../mathematics/Algebra/Exp/Variant711d581b90a92c4c0a7103da3515cfeb8b99d33fbf824f1f17c195cbe7fa98b2.lean/declarations/derivative-exp--fb80394f17dc660d1d498d04.md) | 70 | `result-track:fb80394f17dc660d1d498d0431ddbf9e37beddee7538a86a493180eb940e8a54` |
| 6 | `theorem` | [exp_unique_of_derivative_eq_self](../../../../mathematics/Algebra/Exp/Variant711d581b90a92c4c0a7103da3515cfeb8b99d33fbf824f1f17c195cbe7fa98b2.lean/declarations/exp-unique-of-derivative-eq-self--ef4c184fd1553b56f41a78cd.md) | 88 | `result-track:ef4c184fd1553b56f41a78cdd4fe48351c491ba60b9d186f6005224aa43b4974` |
| 7 | `theorem` | [isUnit_exp](../../../../mathematics/Algebra/Exp/Variant711d581b90a92c4c0a7103da3515cfeb8b99d33fbf824f1f17c195cbe7fa98b2.lean/declarations/isunit-exp--d07249357c033ef9e7f00e85.md) | 108 | `result-track:d07249357c033ef9e7f00e8580497f410084fce7f3fdac2ce294c70521f0bbd9` |
| 8 | `theorem` | [order_exp](../../../../mathematics/Algebra/Exp/Variant711d581b90a92c4c0a7103da3515cfeb8b99d33fbf824f1f17c195cbe7fa98b2.lean/declarations/order-exp--e9b5d3f9b953c9585de47f1a.md) | 112 | `result-track:e9b5d3f9b953c9585de47f1a09b85dfd0850f529c8bb763a6558ce3205175fd3` |
| 9 | `theorem` | [exp_mul_exp_eq_exp_add](../../../../mathematics/Algebra/Exp/Variant711d581b90a92c4c0a7103da3515cfeb8b99d33fbf824f1f17c195cbe7fa98b2.lean/declarations/exp-mul-exp-eq-exp-add--86119a767669e900a205cffe.md) | 123 | `result-track:86119a767669e900a205cffedd5f07cefbe0da473ed720d958263ff3fdb7557e` |
| 10 | `theorem` | [exp_mul_exp_neg_eq_one](../../../../mathematics/Algebra/Exp/Variant711d581b90a92c4c0a7103da3515cfeb8b99d33fbf824f1f17c195cbe7fa98b2.lean/declarations/exp-mul-exp-neg-eq-one--b7a0a5fea863349439d28909.md) | 150 | `result-track:b7a0a5fea863349439d289094fb295c6b9205cec00d47d8c3768fa1e64ff115d` |
| 11 | `theorem` | [exp_pow_eq_rescale_exp](../../../../mathematics/Algebra/Exp/Variant711d581b90a92c4c0a7103da3515cfeb8b99d33fbf824f1f17c195cbe7fa98b2.lean/declarations/exp-pow-eq-rescale-exp--165d23585bbf3a84aeea822a.md) | 154 | `result-track:165d23585bbf3a84aeea822a8c12cdae240f3f805e29b75b11df0a553eb9f94a` |
| 12 | `theorem` | [exp_pow_sum](../../../../mathematics/Algebra/Exp/Variant711d581b90a92c4c0a7103da3515cfeb8b99d33fbf824f1f17c195cbe7fa98b2.lean/declarations/exp-pow-sum--789cca8b0f50ece59e31ba29.md) | 165 | `result-track:789cca8b0f50ece59e31ba29aeef58b78c20ad4ba6a1751d8d240af80ed68a8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
