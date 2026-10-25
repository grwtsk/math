# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Norm.Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78674d6b948779156e741155f9118c4799b62933",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78674d6b948779156e741155f9118c4799b62933`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto.Types` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [forall_arrow_of_Icc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean/declarations/forall-arrow-of-icc--875d8cec82b4d2925f06e2c9.md) | 33 | `result-track:875d8cec82b4d2925f06e2c99aad34bf96a76e06720e71dec42cc6273eeb435c` |
| 2 | `theorem` | [forall_arrow_of_Icc_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean/declarations/forall-arrow-of-icc-rev--9e4b72010960661bc2bfae28.md) | 39 | `result-track:9e4b72010960661bc2bfae2814a2a3d002124be25f6e34332e97f9236f4a08a0` |
| 3 | `theorem` | [forall_and_of_Icc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean/declarations/forall-and-of-icc--f68887fb3a09b02bbfe0e435.md) | 45 | `result-track:f68887fb3a09b02bbfe0e43502db1bea72a427f4f496c46b0e8d910eb0157a10` |
| 4 | `theorem` | [forall_and_of_Icc_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean/declarations/forall-and-of-icc-rev--47614ce860a103324be2c7fd.md) | 51 | `result-track:47614ce860a103324be2c7fd6861b457a929147cec9a682ccb59272cf4147a04` |
| 5 | `def` | [goalNeedsIccWrapper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean/declarations/goalneedsiccwrapper--eb2366f84b24a63c7ba511ef.md) | 58 | `declaration-track:eb2366f84b24a63c7ba511ef293c2632536c621094dee608f039662281f501df` |
| 6 | `def` | [hasNonPropBinder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean/declarations/hasnonpropbinder--dad6e5c9356f2c674510a34b.md) | 114 | `declaration-track:dad6e5c9356f2c674510a34bd66521ec5b938d9d5c65764ad9c4a536cfa96b39` |
| 7 | `def` | [goalIsMultivariate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean/declarations/goalismultivariate--3242611dff58f1e58bb77be7.md) | 125 | `declaration-track:3242611dff58f1e58bb77be7fe69e306f0f4137be0898ed13f2cadf55b1ff9ab` |
| 8 | `def` | [tryNormalizeGoalToIcc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean/declarations/trynormalizegoaltoicc--ae935e8da0da9289e8d17ef1.md) | 141 | `declaration-track:ae935e8da0da9289e8d17ef1029b03e7bc93445157f6bbacca9036403e39d1be` |
| 9 | `theorem` | [rpow_one_half_eq_sqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean/declarations/rpow-one-half-eq-sqrt--ce8e8e78a32a5cbe5baba2f1.md) | 160 | `result-track:ce8e8e78a32a5cbe5baba2f118cd55b69986933af86a1dfd02652975c5891eb6` |
| 10 | `theorem` | [rpow_inv_two_eq_sqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean/declarations/rpow-inv-two-eq-sqrt--b36e93f2e5d56cdd8457f819.md) | 165 | `result-track:b36e93f2e5d56cdd8457f8198b53aad36747ec74b697a096d6785319da9d371b` |
| 11 | `theorem` | [rpow_three_halves_eq_mul_sqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean/declarations/rpow-three-halves-eq-mul-sqrt--44f3d15607182df8f9d1f751.md) | 171 | `result-track:44f3d15607182df8f9d1f75140fe2564152d289951902264b3322d362ac1a0f4` |
| 12 | `theorem` | [rpow_one_point_five_eq_mul_sqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean/declarations/rpow-one-point-five-eq-mul-sqrt--c4dfca3e4d49cf98414804db.md) | 181 | `result-track:c4dfca3e4d49cf98414804db48f7f79d26d50d8e41df661bf63b1b0b21e9bc3d` |
| 13 | `def` | [intervalNormSafeSimp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean/declarations/intervalnormsafesimp--8717eaed84837449cf0045e9.md) | 189 | `declaration-track:8717eaed84837449cf0045e9429885dfcb71204aa05d8a9d1d407fe4c9727f5e` |
| 14 | `def` | [intervalNormGoalSimp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean/declarations/intervalnormgoalsimp--cb23cdbe1533a47db85198d9.md) | 197 | `declaration-track:cb23cdbe1533a47db85198d9f146d3d093b6f360178c72a0499f680c6077348b` |
| 15 | `def` | [intervalNormCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean/declarations/intervalnormcore--0a9c854998931f2cb940bc05.md) | 203 | `declaration-track:0a9c854998931f2cb940bc0533dcfae163f3a1fae3b5782940cd15752f1aad0e` |
| 16 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean/declarations/syntax--d799e23286b50fd72b4f8b74.md) | 220 | `declaration-track:d799e23286b50fd72b4f8b746ae3bd898e46063fa28f6f0d48058c31ef9e176a` |
| 17 | `def` | [elabIntervalNorm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variante6f36477aa50a4de407ff9770432aee923ea7a7d7337ec7522786b4ef6cd5e27.lean/declarations/elabintervalnorm--c499971ba2a3c35303cc9a6b.md) | 223 | `declaration-track:c499971ba2a3c35303cc9a6b22b0863b298746fdd1762f7f804a9d0ef56d15ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
