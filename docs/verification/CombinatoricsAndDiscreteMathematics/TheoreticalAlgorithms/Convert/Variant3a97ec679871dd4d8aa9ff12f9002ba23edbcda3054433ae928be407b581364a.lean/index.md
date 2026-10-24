# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Convert.Variant3a97ec679871dd4d8aa9ff12f9002ba23edbcda3054433ae928be407b581364a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11b302583ed871b6cd60bd726186bc979d8015b3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant3a97ec679871dd4d8aa9ff12f9002ba23edbcda3054433ae928be407b581364a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant3a97ec679871dd4d8aa9ff12f9002ba23edbcda3054433ae928be407b581364a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant3a97ec679871dd4d8aa9ff12f9002ba23edbcda3054433ae928be407b581364a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11b302583ed871b6cd60bd726186bc979d8015b3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant3a97ec679871dd4d8aa9ff12f9002ba23edbcda3054433ae928be407b581364a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant3a97ec679871dd4d8aa9ff12f9002ba23edbcda3054433ae928be407b581364a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Bootstrap` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CNF.lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant3a97ec679871dd4d8aa9ff12f9002ba23edbcda3054433ae928be407b581364a.lean/declarations/cnf-lift--a8a92554d1f6e9d876893956.md) | 29 | `declaration-track:a8a92554d1f6e9d8768939564ef27f6e927d055fd70095891019bd0b8a680f93` |
| 2 | `theorem` | [CNF.unsat_of_lift_unsat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant3a97ec679871dd4d8aa9ff12f9002ba23edbcda3054433ae928be407b581364a.lean/declarations/cnf-unsat-of-lift-unsat--e4283b33c6b9a7429c399226.md) | 33 | `result-track:e4283b33c6b9a7429c399226669e11bab221b9fa5ca352f0032906e1420415a0` |
| 3 | `def` | [CNF.Clause.convertLRAT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant3a97ec679871dd4d8aa9ff12f9002ba23edbcda3054433ae928be407b581364a.lean/declarations/cnf-clause-convertlrat--dbf2c3f0d80574e99abd0bd6.md) | 48 | `declaration-track:dbf2c3f0d80574e99abd0bd66f1e136672c076a739a450a813b787b64b22d979` |
| 4 | `def` | [CNF.convertLRAT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant3a97ec679871dd4d8aa9ff12f9002ba23edbcda3054433ae928be407b581364a.lean/declarations/cnf-convertlrat--6ccaf48e0bf200fd9a7cbed6.md) | 54 | `declaration-track:6ccaf48e0bf200fd9a7cbed64b2b4029adde0fbd3af38f0de999523a0a9ed140` |
| 5 | `theorem` | [CNF.Clause.mem_lrat_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant3a97ec679871dd4d8aa9ff12f9002ba23edbcda3054433ae928be407b581364a.lean/declarations/cnf-clause-mem-lrat-of-mem--9ff3eca250888dcbd7a35bd5.md) | 57 | `result-track:9ff3eca250888dcbd7a35bd51f057f85d4eee8ce1181b36984ed6c33e5e1001c` |
| 6 | `theorem` | [CNF.Clause.convertLRAT_sat_of_sat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant3a97ec679871dd4d8aa9ff12f9002ba23edbcda3054433ae928be407b581364a.lean/declarations/cnf-clause-convertlrat-sat-of-sat--60a4fd583161db042ed54220.md) | 67 | `result-track:60a4fd583161db042ed542204bceb1e33cf2329a5c347722d28b53a6eb7ba3ad` |
| 7 | `def` | [CNF.convertLRAT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant3a97ec679871dd4d8aa9ff12f9002ba23edbcda3054433ae928be407b581364a.lean/declarations/cnf-convertlrat--9687070a2156018497f4e2b0.md) | 90 | `declaration-track:9687070a2156018497f4e2b07807def832d9e29e01493cb99bd66088205aef4a` |
| 8 | `theorem` | [CNF.convertLRAT_readyForRupAdd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant3a97ec679871dd4d8aa9ff12f9002ba23edbcda3054433ae928be407b581364a.lean/declarations/cnf-convertlrat-readyforrupadd--25a6165d9082b73f322ec28c.md) | 95 | `result-track:25a6165d9082b73f322ec28c86a93eccc7abcec49e2299581adac3df662764a4` |
| 9 | `theorem` | [CNF.convertLRAT_readyForRatAdd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant3a97ec679871dd4d8aa9ff12f9002ba23edbcda3054433ae928be407b581364a.lean/declarations/cnf-convertlrat-readyforratadd--092b7a5eed955e8afee9503c.md) | 100 | `result-track:092b7a5eed955e8afee9503c3ff5cfb0ab0573681d2e81f096e7899573dd7a7a` |
| 10 | `theorem` | [unsat_of_cons_none_unsat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant3a97ec679871dd4d8aa9ff12f9002ba23edbcda3054433ae928be407b581364a.lean/declarations/unsat-of-cons-none-unsat--514aa879910b1fe8b711c827.md) | 105 | `result-track:514aa879910b1fe8b711c8275cabeaa000a18f8125dfe38ae73bff120dd85f38` |
| 11 | `theorem` | [CNF.unsat_of_convertLRAT_unsat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant3a97ec679871dd4d8aa9ff12f9002ba23edbcda3054433ae928be407b581364a.lean/declarations/cnf-unsat-of-convertlrat-unsat--4ccd28b8b245ec01df4db8a6.md) | 115 | `result-track:4ccd28b8b245ec01df4db8a6fe17b29914bc671cb5fa20386ffde0e942199604` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
