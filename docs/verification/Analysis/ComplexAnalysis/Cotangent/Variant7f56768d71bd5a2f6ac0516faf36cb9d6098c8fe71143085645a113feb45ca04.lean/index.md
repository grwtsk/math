# Verification target: GRWTSK.Analysis.ComplexAnalysis.Cotangent.Variant7f56768d71bd5a2f6ac0516faf36cb9d6098c8fe71143085645a113feb45ca04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eaa6a028a8d57984015838f59a7afd37ffb36072",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Cotangent/Variant7f56768d71bd5a2f6ac0516faf36cb9d6098c8fe71143085645a113feb45ca04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Cotangent/Variant7f56768d71bd5a2f6ac0516faf36cb9d6098c8fe71143085645a113feb45ca04.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Cotangent/Variant7f56768d71bd5a2f6ac0516faf36cb9d6098c8fe71143085645a113feb45ca04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eaa6a028a8d57984015838f59a7afd37ffb36072`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Cotangent/Variant7f56768d71bd5a2f6ac0516faf36cb9d6098c8fe71143085645a113feb45ca04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Cotangent/Variant7f56768d71bd5a2f6ac0516faf36cb9d6098c8fe71143085645a113feb45ca04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.Exp` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Complex.cot_eq_exp_ratio](../../../../../mathematics/Analysis/ComplexAnalysis/Cotangent/Variant7f56768d71bd5a2f6ac0516faf36cb9d6098c8fe71143085645a113feb45ca04.lean/declarations/complex-cot-eq-exp-ratio--557860bcce88ed0ee44bbae3.md) | 26 | `result-track:557860bcce88ed0ee44bbae366aa6720f42627b275396e9e9f4f1e81b38ff55e` |
| 2 | `lemma` | [Complex.cot_pi_eq_exp_ratio](../../../../../mathematics/Analysis/ComplexAnalysis/Cotangent/Variant7f56768d71bd5a2f6ac0516faf36cb9d6098c8fe71143085645a113feb45ca04.lean/declarations/complex-cot-pi-eq-exp-ratio--eadfb2c4a8f5221b3ea7ad2c.md) | 41 | `result-track:eadfb2c4a8f5221b3ea7ad2c9679b0971e46f9fc1a6859578a25ecd098a01d0d` |
| 3 | `theorem` | [pi_mul_cot_pi_q_exp](../../../../../mathematics/Analysis/ComplexAnalysis/Cotangent/Variant7f56768d71bd5a2f6ac0516faf36cb9d6098c8fe71143085645a113feb45ca04.lean/declarations/pi-mul-cot-pi-q-exp--1fc7401266c5ddafca078bc7.md) | 47 | `result-track:1fc7401266c5ddafca078bc7027967ee73540b523f703f51e55d60ae5ef11e60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
