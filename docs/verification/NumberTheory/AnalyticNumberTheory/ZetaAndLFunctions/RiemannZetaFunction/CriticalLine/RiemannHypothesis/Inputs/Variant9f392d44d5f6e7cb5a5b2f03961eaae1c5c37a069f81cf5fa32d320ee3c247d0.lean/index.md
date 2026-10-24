# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Inputs.Variant9f392d44d5f6e7cb5a5b2f03961eaae1c5c37a069f81cf5fa32d320ee3c247d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b65cddb229f721bfeeb2eb721a35e01eaf4dca6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant9f392d44d5f6e7cb5a5b2f03961eaae1c5c37a069f81cf5fa32d320ee3c247d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant9f392d44d5f6e7cb5a5b2f03961eaae1c5c37a069f81cf5fa32d320ee3c247d0.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant9f392d44d5f6e7cb5a5b2f03961eaae1c5c37a069f81cf5fa32d320ee3c247d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b65cddb229f721bfeeb2eb721a35e01eaf4dca6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant9f392d44d5f6e7cb5a5b2f03961eaae1c5c37a069f81cf5fa32d320ee3c247d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant9f392d44d5f6e7cb5a5b2f03961eaae1c5c37a069f81cf5fa32d320ee3c247d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Statement` — import line 11; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.PrimeSide.Density` — import line 12; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB.Concrete` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [QpEntry](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant9f392d44d5f6e7cb5a5b2f03961eaae1c5c37a069f81cf5fa32d320ee3c247d0.lean/declarations/qpentry--728ee2173c46ec6cc8e05500.md) | 33 | `declaration-track:728ee2173c46ec6cc8e05500f1318836b0e1f5fef1ab9f00b584ade795b4cdd3` |
| 2 | `def` | [QpMat](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant9f392d44d5f6e7cb5a5b2f03961eaae1c5c37a069f81cf5fa32d320ee3c247d0.lean/declarations/qpmat--c209e3bafd68ba5eae093a0f.md) | 37 | `declaration-track:c209e3bafd68ba5eae093a0fd4929bf27caddeb74eeb6105d5ab3e44955471ae` |
| 3 | `def` | [deltaKL](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant9f392d44d5f6e7cb5a5b2f03961eaae1c5c37a069f81cf5fa32d320ee3c247d0.lean/declarations/deltakl--f70a7875993017a602c716b8.md) | 41 | `declaration-track:f70a7875993017a602c716b802b1b51f718c2517e053d4f3fd387a4c7f3105fd` |
| 4 | `lemma` | [QpEntry_eq_GentryNu](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant9f392d44d5f6e7cb5a5b2f03961eaae1c5c37a069f81cf5fa32d320ee3c247d0.lean/declarations/qpentry-eq-gentrynu--5135d43959939223af7a9f05.md) | 43 | `result-track:5135d43959939223af7a9f052575a487b04fe865ea50662df017d2ed27be7c0e` |
| 5 | `lemma` | [GentryC_eq_GentryW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant9f392d44d5f6e7cb5a5b2f03961eaae1c5c37a069f81cf5fa32d320ee3c247d0.lean/declarations/gentryc-eq-gentryw--a66c74e23a83f94f1de512ab.md) | 47 | `result-track:a66c74e23a83f94f1de512ab80bdff28811b3bbf9815d1f6bd5c1750bffae4d3` |
| 6 | `structure` | [Reexpansion](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant9f392d44d5f6e7cb5a5b2f03961eaae1c5c37a069f81cf5fa32d320ee3c247d0.lean/declarations/reexpansion--fe2a479eb8453d3947f1b3fa.md) | 64 | `declaration-track:fe2a479eb8453d3947f1b3faa5af297f18e14c582d54bbf199a44fbec1e79574` |
| 7 | `def` | [PPUpper](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant9f392d44d5f6e7cb5a5b2f03961eaae1c5c37a069f81cf5fa32d320ee3c247d0.lean/declarations/ppupper--cb71fec32fde81ea2a60c878.md) | 88 | `declaration-track:cb71fec32fde81ea2a60c87849ddc43f69d75021fed08b63ff0a86e7a9681a52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
