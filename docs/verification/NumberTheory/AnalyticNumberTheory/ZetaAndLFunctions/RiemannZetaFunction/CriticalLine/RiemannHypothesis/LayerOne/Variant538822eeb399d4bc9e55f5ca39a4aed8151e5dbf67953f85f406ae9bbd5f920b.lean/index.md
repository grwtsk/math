# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LayerOne.Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5627e313051e182825d48bb489edc6d136a21ed1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5627e313051e182825d48bb489edc6d136a21ed1`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Coeff.DiagLaw` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_sq_prime_term](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean/declarations/norm-sq-prime-term--dd291bd2577867fd8d6496a1.md) | 26 | `result-track:dd291bd2577867fd8d6496a1ebe7785fa1fbba3f73d70b538e39d7f063dd5040` |
| 2 | `lemma` | [re_sq_add_im_sq_inv](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean/declarations/re-sq-add-im-sq-inv--50ab33f770b5eaa04d285b65.md) | 35 | `result-track:50ab33f770b5eaa04d285b65309aa278d4f4db18175b1e409ae4145935387e72` |
| 3 | `def` | [primeLogPowSum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean/declarations/primelogpowsum--481656f7f8271d8cab2345ea.md) | 42 | `declaration-track:481656f7f8271d8cab2345eaa6e465cc4956d68f4d9c91b466e6a6364bc43b12` |
| 4 | `lemma` | [sfPart_one_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean/declarations/sfpart-one-eq--554133f7c8303a7c4d76ccee.md) | 46 | `result-track:554133f7c8303a7c4d76cceebf7698cc6b8eed4b539aadb4ac6572f440e91d41` |
| 5 | `theorem` | [sfPart_one_asymp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variant538822eeb399d4bc9e55f5ca39a4aed8151e5dbf67953f85f406ae9bbd5f920b.lean/declarations/sfpart-one-asymp--197f3195c4ce442bbec0d696.md) | 64 | `result-track:197f3195c4ce442bbec0d696bd708918474edcbe5f8b4e845057871e571678be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
