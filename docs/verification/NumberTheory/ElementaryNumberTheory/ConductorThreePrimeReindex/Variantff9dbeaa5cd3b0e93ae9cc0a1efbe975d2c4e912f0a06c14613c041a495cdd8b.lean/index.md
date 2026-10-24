# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ConductorThreePrimeReindex.Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42043ac76a121fff2bd2a7740d829b447afdfea0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42043ac76a121fff2bd2a7740d829b447afdfea0`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eligibleResidueSixPrime_iff_prime_and_three_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b.lean/declarations/eligibleresiduesixprime-iff-prime-and-three-lt--45249005f9df32478adef05a.md) | 31 | `result-track:45249005f9df32478adef05ab3de48de3bd2c1529edd2235902680ad5d2e108f` |
| 2 | `theorem` | [nth_eligibleResidueSixPrime_eq_nth_prime_add_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b.lean/declarations/nth-eligibleresiduesixprime-eq-nth-prime-add-two--e71a05edce9d2e644a66502e.md) | 67 | `result-track:e71a05edce9d2e644a66502e7c8cad7c206e1f9f3491a5abac448c4dd1ea7867` |
| 3 | `theorem` | [actualEligiblePrimeCutoff_eq_nthPrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b.lean/declarations/actualeligibleprimecutoff-eq-nthprime--947c8e13056be53d442a4c5d.md) | 115 | `result-track:947c8e13056be53d442a4c5d6db3873a44e161bbb4c6407d116dadcae46c4fbc` |
| 4 | `theorem` | [actualEligiblePrimeCutoff_isEligible](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b.lean/declarations/actualeligibleprimecutoff-iseligible--c28caf4ff2e8ff82f5bcd572.md) | 124 | `result-track:c28caf4ff2e8ff82f5bcd572067505ed52e21756bbcca1d3bc370e3143674f3e` |
| 5 | `theorem` | [count_eligible_below_actualCutoff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b.lean/declarations/count-eligible-below-actualcutoff--a1741d324ac5a603be1a729f.md) | 130 | `result-track:a1741d324ac5a603be1a729fd4ed815014143b21b96345278afdee221424ea30` |
| 6 | `theorem` | [count_eligible_through_actualCutoff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b.lean/declarations/count-eligible-through-actualcutoff--424f7c70cad1251998ef22a0.md) | 136 | `result-track:424f7c70cad1251998ef22a0628ec0908864a75dae30eb20601138be0cbf2717` |
| 7 | `theorem` | [actualEligiblePrimeCutoff_le_iff_count_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b.lean/declarations/actualeligibleprimecutoff-le-iff-count-succ--37c9e52ca3a120317eaca481.md) | 145 | `result-track:37c9e52ca3a120317eaca4815867831bd0de381257c014f9bde17218c2a6cfe2` |
| 8 | `theorem` | [actualEligibleCount_eq_count](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b.lean/declarations/actualeligiblecount-eq-count--4beb6a6b2fbe5e1969349e94.md) | 167 | `result-track:4beb6a6b2fbe5e1969349e9414d060f8cfead3ac5cef2490be71ff9f0eaa76be` |
| 9 | `theorem` | [actualResidueSixCounts_plateau](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b.lean/declarations/actualresiduesixcounts-plateau--ee70c51fae6a953ee83922d3.md) | 176 | `result-track:ee70c51fae6a953ee83922d3a3a1277f8a108c07f02074472402394b3d4524be` |
| 10 | `theorem` | [countDifference_plateau](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b.lean/declarations/countdifference-plateau--c7d1876e10abc5dcb55c8de5.md) | 222 | `result-track:c7d1876e10abc5dcb55c8de5e55dfb051c52a9930b88a7be03f1ce17329113a9` |
| 11 | `theorem` | [conductorThreeIntegerValue_eq_one_iff_residueOne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b.lean/declarations/conductorthreeintegervalue-eq-one-iff-residueone--8134d500fcd5471d9c7f0fd4.md) | 235 | `result-track:8134d500fcd5471d9c7f0fd4080559336b1e915f015d415d8e40829b384d8d28` |
| 12 | `theorem` | [conductorThreeIntegerValue_eq_neg_one_iff_residueFive](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variantff9dbeaa5cd3b0e93ae9cc0a1efbe975d2c4e912f0a06c14613c041a495cdd8b.lean/declarations/conductorthreeintegervalue-eq-neg-one-iff-residuefive--354c67f08769414465a68cfd.md) | 259 | `result-track:354c67f08769414465a68cfd4da5e297f76167b9d61f6f61a20bc16a661e5089` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
