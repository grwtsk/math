# Verification target: GRWTSK.Algebra.IsDiscreteValuationRing.Variantf4755921af972fd3675a25805445ded7bf473f320e6af30a3494499bf6192245

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fbf543a5a8edafae111bef4df856d3b69e397d6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsDiscreteValuationRing/Variantf4755921af972fd3675a25805445ded7bf473f320e6af30a3494499bf6192245.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IsDiscreteValuationRing/Variantf4755921af972fd3675a25805445ded7bf473f320e6af30a3494499bf6192245.lean/index.md) · [Full source](../../../../mathematics/Algebra/IsDiscreteValuationRing/Variantf4755921af972fd3675a25805445ded7bf473f320e6af30a3494499bf6192245.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fbf543a5a8edafae111bef4df856d3b69e397d6`.

Source path: `GRWTSK/Algebra/IsDiscreteValuationRing/Variantf4755921af972fd3675a25805445ded7bf473f320e6af30a3494499bf6192245.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsDiscreteValuationRing/Variantf4755921af972fd3675a25805445ded7bf473f320e6af30a3494499bf6192245.lean.json)

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
| 1 | `def` | [maximalIdeal](../../../../mathematics/Algebra/IsDiscreteValuationRing/Variantf4755921af972fd3675a25805445ded7bf473f320e6af30a3494499bf6192245.lean/declarations/maximalideal--9552ac73e48d7ef24fee0c56.md) | 49 | `declaration-track:9552ac73e48d7ef24fee0c5617034531016fea8aaa4b2d8acde3a5a0e790fda9` |
| 2 | `instance` | [isRankOneDiscrete](../../../../mathematics/Algebra/IsDiscreteValuationRing/Variantf4755921af972fd3675a25805445ded7bf473f320e6af30a3494499bf6192245.lean/declarations/isrankonediscrete--ee52ca02f7c4e70d1e2095bb.md) | 54 | `declaration-track:ee52ca02f7c4e70d1e2095bbcd436c874ddba2247fa0f67b27bdd4c841c014aa` |
| 3 | `theorem` | [exists_lift_of_le_one](../../../../mathematics/Algebra/IsDiscreteValuationRing/Variantf4755921af972fd3675a25805445ded7bf473f320e6af30a3494499bf6192245.lean/declarations/exists-lift-of-le-one--25d82f223b68a951bedac3cf.md) | 75 | `result-track:25d82f223b68a951bedac3cfc776cc4a232c832231a308c83d06e1550abfef13` |
| 4 | `lemma` | [mker_valuation_eq_isUnitSubmonoid](../../../../mathematics/Algebra/IsDiscreteValuationRing/Variantf4755921af972fd3675a25805445ded7bf473f320e6af30a3494499bf6192245.lean/declarations/mker-valuation-eq-isunitsubmonoid--8aedbf02ad822e3a88a1d592.md) | 114 | `result-track:8aedbf02ad822e3a88a1d5925d943417af4c1273a980ec9660dbf94a17ba35e1` |
| 5 | `theorem` | [associated_of_valuation_eq](../../../../mathematics/Algebra/IsDiscreteValuationRing/Variantf4755921af972fd3675a25805445ded7bf473f320e6af30a3494499bf6192245.lean/declarations/associated-of-valuation-eq--b0331597bf65972135fc7ca5.md) | 128 | `result-track:b0331597bf65972135fc7ca562c249cf1b57b4b5d95e3e6ff0152095b46ede13` |
| 6 | `theorem` | [map_algebraMap_eq_valuationSubring](../../../../mathematics/Algebra/IsDiscreteValuationRing/Variantf4755921af972fd3675a25805445ded7bf473f320e6af30a3494499bf6192245.lean/declarations/map-algebramap-eq-valuationsubring--ed08464a2365ea2d6b2c3de1.md) | 143 | `result-track:ed08464a2365ea2d6b2c3de119ff9f6893e957fce43cf2baf39d9c509fc25266` |
| 7 | `def` | [equivValuationSubring](../../../../mathematics/Algebra/IsDiscreteValuationRing/Variantf4755921af972fd3675a25805445ded7bf473f320e6af30a3494499bf6192245.lean/declarations/equivvaluationsubring--71ec063d18e8a3377b0e8bc0.md) | 155 | `declaration-track:71ec063d18e8a3377b0e8bc0b0d7ee5b0a917629eefd32284c59a4cb24629966` |
| 8 | `lemma` | [intValuation_maximalIdeal](../../../../mathematics/Algebra/IsDiscreteValuationRing/Variantf4755921af972fd3675a25805445ded7bf473f320e6af30a3494499bf6192245.lean/declarations/intvaluation-maximalideal--7668db5abf89bb2fe2c63db4.md) | 161 | `result-track:7668db5abf89bb2fe2c63db4cc9c3ce67bddc37b4572fc054398b0681f06b1f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
