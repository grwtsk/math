# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ThetaPositiveLift.Variant1f69f1fa1a6c3c09d4685bec20c5e60f5be2df41d2e1c0615e7e73badb1283d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adc3fca299e04e0f0a89d955be5712c244f2c507",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1f69f1fa1a6c3c09d4685bec20c5e60f5be2df41d2e1c0615e7e73badb1283d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1f69f1fa1a6c3c09d4685bec20c5e60f5be2df41d2e1c0615e7e73badb1283d7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1f69f1fa1a6c3c09d4685bec20c5e60f5be2df41d2e1c0615e7e73badb1283d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adc3fca299e04e0f0a89d955be5712c244f2c507`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1f69f1fa1a6c3c09d4685bec20c5e60f5be2df41d2e1c0615e7e73badb1283d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1f69f1fa1a6c3c09d4685bec20c5e60f5be2df41d2e1c0615e7e73badb1283d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiSignedMomentFactorization` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Enumerative.Stirling` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exponential` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasSum_descFactorial_mul_pow_div_factorial](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1f69f1fa1a6c3c09d4685bec20c5e60f5be2df41d2e1c0615e7e73badb1283d7.lean/declarations/hassum-descfactorial-mul-pow-div-factorial--d247bdaba60fa179defab0f6.md) | 35 | `result-track:d247bdaba60fa179defab0f6cba2ddf3e9cbb6e811120518bd0a2a1f83520e92` |
| 2 | `theorem` | [descFactorial_mul_self_local](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1f69f1fa1a6c3c09d4685bec20c5e60f5be2df41d2e1c0615e7e73badb1283d7.lean/declarations/descfactorial-mul-self-local--3914e4ee3444dc251022fc9d.md) | 83 | `result-track:3914e4ee3444dc251022fc9d126f8e0a4c685d565cbc7ec11c539bf19e3882e7` |
| 3 | `theorem` | [pow_eq_sum_stirlingSecond_mul_descFactorial_local](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1f69f1fa1a6c3c09d4685bec20c5e60f5be2df41d2e1c0615e7e73badb1283d7.lean/declarations/pow-eq-sum-stirlingsecond-mul-descfactorial-local--1dae19930f6def436600db51.md) | 94 | `result-track:1dae19930f6def436600db512902f8f77e2d6b423c5c52e7449e43cc475645bb` |
| 4 | `def` | [thetaPhiSignedTouchardValue](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1f69f1fa1a6c3c09d4685bec20c5e60f5be2df41d2e1c0615e7e73badb1283d7.lean/declarations/thetaphisignedtouchardvalue--5650354d43fcc650f3571c0d.md) | 135 | `declaration-track:5650354d43fcc650f3571c0d9ea071f737fd39150d281e25ab2907aa4b0401f2` |
| 5 | `theorem` | [hasSum_signedTouchard](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1f69f1fa1a6c3c09d4685bec20c5e60f5be2df41d2e1c0615e7e73badb1283d7.lean/declarations/hassum-signedtouchard--e7821dca850d503f53d764cf.md) | 142 | `result-track:e7821dca850d503f53d764cffd06275fa7f2b50edd7f1f167a89f3c10f7f9c9c` |
| 6 | `def` | [thetaPhiGeneralizedSignedTouchardValue](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1f69f1fa1a6c3c09d4685bec20c5e60f5be2df41d2e1c0615e7e73badb1283d7.lean/declarations/thetaphigeneralizedsignedtouchardvalue--d06015c934ba052a3cf02332.md) | 184 | `declaration-track:d06015c934ba052a3cf0233272e6a23ab93af405cff0f4fa938e4eb53c5816a2` |
| 7 | `theorem` | [hasSum_thetaPhiGeneralizedSignedPoisson](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1f69f1fa1a6c3c09d4685bec20c5e60f5be2df41d2e1c0615e7e73badb1283d7.lean/declarations/hassum-thetaphigeneralizedsignedpoisson--712d4374ff75b2b11a2299b6.md) | 193 | `result-track:712d4374ff75b2b11a2299b6dc4726774333089ecef81fecfecdc41ea157ab04` |
| 8 | `theorem` | [thetaPhiGeneralizedSignedPoisson_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1f69f1fa1a6c3c09d4685bec20c5e60f5be2df41d2e1c0615e7e73badb1283d7.lean/declarations/thetaphigeneralizedsignedpoisson-tsum--6cc8f30dc3ed4dffbfb3c259.md) | 239 | `result-track:6cc8f30dc3ed4dffbfb3c259aaba29f5f951dcb7a29a2b62e7cc1271d7abcf75` |
| 9 | `def` | [ThetaPhiBaseGeneralizedTouchardIdentification](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1f69f1fa1a6c3c09d4685bec20c5e60f5be2df41d2e1c0615e7e73badb1283d7.lean/declarations/thetaphibasegeneralizedtouchardidentification--102118f2f4a478aa77788f26.md) | 252 | `declaration-track:102118f2f4a478aa77788f26c75bc4b0cd5c59af792aa7b0d62391f5b40056b7` |
| 10 | `theorem` | [hasSum_thetaPhiBaseMode_signedMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1f69f1fa1a6c3c09d4685bec20c5e60f5be2df41d2e1c0615e7e73badb1283d7.lean/declarations/hassum-thetaphibasemode-signedmoment--3c8710340828850993247245.md) | 259 | `result-track:3c8710340828850993247245dfa32f6934f47430b0b5b58c2f20caacd5b09f10` |
| 11 | `theorem` | [thetaPhiBaseSignedMomentRepresentation_of_generalizedTouchard](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1f69f1fa1a6c3c09d4685bec20c5e60f5be2df41d2e1c0615e7e73badb1283d7.lean/declarations/thetaphibasesignedmomentrepresentation-of-generalizedtouchard--1ffc003b9111c87f94c5121c.md) | 291 | `result-track:1ffc003b9111c87f94c5121c0ae3233887fe4abc2d1af3f2375364661b48137d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
