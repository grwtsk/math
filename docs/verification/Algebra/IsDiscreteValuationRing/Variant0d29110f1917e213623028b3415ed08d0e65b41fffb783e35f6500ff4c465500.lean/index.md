# Verification target: GRWTSK.Algebra.IsDiscreteValuationRing.Variant0d29110f1917e213623028b3415ed08d0e65b41fffb783e35f6500ff4c465500

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e59c952ac3bca7c7c6878da88c3ab56ba2a9b66e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsDiscreteValuationRing/Variant0d29110f1917e213623028b3415ed08d0e65b41fffb783e35f6500ff4c465500.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IsDiscreteValuationRing/Variant0d29110f1917e213623028b3415ed08d0e65b41fffb783e35f6500ff4c465500.lean/index.md) · [Full source](../../../../mathematics/Algebra/IsDiscreteValuationRing/Variant0d29110f1917e213623028b3415ed08d0e65b41fffb783e35f6500ff4c465500.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e59c952ac3bca7c7c6878da88c3ab56ba2a9b66e`.

Source path: `GRWTSK/Algebra/IsDiscreteValuationRing/Variant0d29110f1917e213623028b3415ed08d0e65b41fffb783e35f6500ff4c465500.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsDiscreteValuationRing/Variant0d29110f1917e213623028b3415ed08d0e65b41fffb783e35f6500ff4c465500.lean.json)

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
| 1 | `def` | [maximalIdeal](../../../../mathematics/Algebra/IsDiscreteValuationRing/Variant0d29110f1917e213623028b3415ed08d0e65b41fffb783e35f6500ff4c465500.lean/declarations/maximalideal--fd03750fe6e3355a38dd2f84.md) | 41 | `declaration-track:fd03750fe6e3355a38dd2f843506f012b819d1459b4eac6888cef864ca6e96e6` |
| 2 | `instance` | [isRankOneDiscrete](../../../../mathematics/Algebra/IsDiscreteValuationRing/Variant0d29110f1917e213623028b3415ed08d0e65b41fffb783e35f6500ff4c465500.lean/declarations/isrankonediscrete--72a36b1fb80288cc16970cb2.md) | 46 | `declaration-track:72a36b1fb80288cc16970cb2b07ab760d3dc17c5244f3851e735a58564f55168` |
| 3 | `theorem` | [exists_lift_of_le_one](../../../../mathematics/Algebra/IsDiscreteValuationRing/Variant0d29110f1917e213623028b3415ed08d0e65b41fffb783e35f6500ff4c465500.lean/declarations/exists-lift-of-le-one--63aeef5cc7a92c47dc8df658.md) | 67 | `result-track:63aeef5cc7a92c47dc8df658c132f3fb342ccce129ffc48f615bbb8c8ef9df46` |
| 4 | `lemma` | [mker_valuation_eq_isUnitSubmonoid](../../../../mathematics/Algebra/IsDiscreteValuationRing/Variant0d29110f1917e213623028b3415ed08d0e65b41fffb783e35f6500ff4c465500.lean/declarations/mker-valuation-eq-isunitsubmonoid--cdbc214e545bc35325069f27.md) | 106 | `result-track:cdbc214e545bc35325069f27165ae7005d7105ebf4c22e4b0c93f4999357e756` |
| 5 | `theorem` | [associated_of_valuation_eq](../../../../mathematics/Algebra/IsDiscreteValuationRing/Variant0d29110f1917e213623028b3415ed08d0e65b41fffb783e35f6500ff4c465500.lean/declarations/associated-of-valuation-eq--6283627a6c206e0c41b5e9b7.md) | 120 | `result-track:6283627a6c206e0c41b5e9b7569c31230edb6dc8daa866d356d66817027c2df3` |
| 6 | `theorem` | [map_algebraMap_eq_valuationSubring](../../../../mathematics/Algebra/IsDiscreteValuationRing/Variant0d29110f1917e213623028b3415ed08d0e65b41fffb783e35f6500ff4c465500.lean/declarations/map-algebramap-eq-valuationsubring--e5ab403a01aa061bc6a36570.md) | 135 | `result-track:e5ab403a01aa061bc6a36570d9fe35c8ae7bd0f58106018feb05ab3b75f9b59d` |
| 7 | `def` | [equivValuationSubring](../../../../mathematics/Algebra/IsDiscreteValuationRing/Variant0d29110f1917e213623028b3415ed08d0e65b41fffb783e35f6500ff4c465500.lean/declarations/equivvaluationsubring--50fe096f49f9bf523f540cfd.md) | 147 | `declaration-track:50fe096f49f9bf523f540cfdc0505a162502b1931b40badfa7b01ea09c308d82` |
| 8 | `lemma` | [intValuation_maximalIdeal](../../../../mathematics/Algebra/IsDiscreteValuationRing/Variant0d29110f1917e213623028b3415ed08d0e65b41fffb783e35f6500ff4c465500.lean/declarations/intvaluation-maximalideal--57a8a7e25d0662d85fc8aa89.md) | 153 | `result-track:57a8a7e25d0662d85fc8aa891dd316df202ea7f66583fa5fb2bcf46f29458a8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
